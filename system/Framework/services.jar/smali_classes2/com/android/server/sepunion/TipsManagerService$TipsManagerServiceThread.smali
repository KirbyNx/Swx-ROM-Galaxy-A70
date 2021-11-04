.class Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;
.super Ljava/lang/Thread;
.source "TipsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/TipsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TipsManagerServiceThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .registers 2

    .line 588
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    .line 589
    const-string p1, "TipsManagerService"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 590
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 595
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 597
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    monitor-enter v0

    .line 598
    :try_start_6
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    new-instance v2, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    iget-object v3, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    # setter for: Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
    invoke-static {v1, v2}, Lcom/android/server/sepunion/TipsManagerService;->access$602(Lcom/android/server/sepunion/TipsManagerService;Lcom/android/server/sepunion/TipsManagerService$TipsHandler;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    .line 601
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 602
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    .line 603
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 604
    return-void

    .line 602
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method
