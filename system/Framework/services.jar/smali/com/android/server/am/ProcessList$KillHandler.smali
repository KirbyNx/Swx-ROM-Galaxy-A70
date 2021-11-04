.class final Lcom/android/server/am/ProcessList$KillHandler;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillHandler"
.end annotation


# static fields
.field static final CLEANUP_DELAY_TIME:I = 0x2710

.field static final KILL_PROCESS_GROUP_CLEANUP_MSG:I = 0xfa2

.field static final KILL_PROCESS_GROUP_MSG:I = 0xfa0

.field static final LMKD_RECONNECT_MSG:I = 0xfa1


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ProcessList;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 768
    iput-object p1, p0, Lcom/android/server/am/ProcessList$KillHandler;->this$0:Lcom/android/server/am/ProcessList;

    .line 769
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 770
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 774
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x40

    packed-switch v0, :pswitch_data_66

    .line 803
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_64

    .line 797
    :pswitch_b
    const-string v0, "cleanUpCgroup"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 798
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3}, Landroid/os/Process;->cleanUpCgroup(II)I

    .line 799
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 800
    goto :goto_64

    .line 787
    :pswitch_1b
    # getter for: Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;
    invoke-static {}, Lcom/android/server/am/ProcessList;->access$000()Lcom/android/server/am/LmkdConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/LmkdConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_64

    .line 788
    const-string v0, "ActivityManager"

    const-string v1, "Failed to connect to lmkd, retry after 1000 ms"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v2, 0xfa1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_64

    .line 776
    :pswitch_3c
    const-string/jumbo v0, "killProcessGroup"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 777
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3}, Landroid/os/Process;->killProcessGroup(II)I

    move-result v0

    .line 779
    .local v0, "result":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_60

    .line 780
    sget-object v3, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v4, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v5, 0xfa2

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 784
    :cond_60
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 785
    nop

    .line 805
    .end local v0    # "result":I
    :cond_64
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0xfa0
        :pswitch_3c
        :pswitch_1b
        :pswitch_b
    .end packed-switch
.end method
