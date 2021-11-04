.class Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;
.super Landroid/os/Handler;
.source "McfDeviceSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/McfDeviceSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# static fields
.field static final MSG_AVAILABLE_MCF:I = 0x5

.field static final MSG_BIND_MCF:I = 0x2

.field static final MSG_REPLACED_PKG:I = 0x4

.field static final MSG_START_USER:I = 0x0

.field static final MSG_STOP_USER:I = 0x1

.field static final MSG_UNBIND_MCF:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 363
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 364
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 365
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 379
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    goto :goto_38

    .line 401
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->registerCachedRemoteListener()V

    .line 402
    goto :goto_38

    .line 397
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # invokes: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->replacedPackage()V
    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$800(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    .line 398
    goto :goto_38

    .line 393
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # invokes: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V
    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$300(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    .line 394
    goto :goto_38

    .line 389
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # invokes: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->bindMcf()V
    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$700(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    .line 390
    goto :goto_38

    .line 385
    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->stopUser()V

    .line 386
    goto :goto_38

    .line 381
    :cond_32
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    # invokes: Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->start()V
    invoke-static {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->access$600(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    .line 382
    nop

    .line 407
    :goto_38
    return-void
.end method

.method removeMessage(I)V
    .registers 3
    .param p1, "msg"    # I

    .line 368
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 369
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->removeMessages(I)V

    .line 371
    :cond_9
    return-void
.end method

.method sendMessageDelayed(IJ)V
    .registers 4
    .param p1, "msg"    # I
    .param p2, "delayMillis"    # J

    .line 374
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->removeMessage(I)V

    .line 375
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 376
    return-void
.end method
