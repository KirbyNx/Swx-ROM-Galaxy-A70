.class final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final MSG_DEVICE_IDLE:I = 0x0

.field static final MSG_UID_GONE:I = 0x1

.field static final MSG_UID_STATE_CHANGED:I = 0x2


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 4775
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 4776
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4777
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 4781
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_23

    .line 4789
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleUidStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->access$300(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;II)V

    goto :goto_23

    .line 4786
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleUidGone(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->access$200(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;I)V

    .line 4787
    goto :goto_23

    .line 4783
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    # invokes: Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleDeviceIdle()V
    invoke-static {v0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->access$100(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    .line 4784
    nop

    .line 4792
    :goto_23
    return-void
.end method
