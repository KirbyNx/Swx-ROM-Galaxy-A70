.class Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;
.super Ljava/util/TimerTask;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallDurationTask"
.end annotation


# instance fields
.field private prevSecond:B

.field final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;


# direct methods
.method private constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .registers 2

    .line 1370
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1371
    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Lcom/android/server/sepunion/cover/NfcLedCoverController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/sepunion/cover/NfcLedCoverController;
    .param p2, "x1"    # Lcom/android/server/sepunion/cover/NfcLedCoverController$1;

    .line 1370
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1378
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1380
    :try_start_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1700(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1381
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->getCallDuration()[B
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1800(Lcom/android/server/sepunion/cover/NfcLedCoverController;)[B

    move-result-object v0

    .line 1382
    .local v0, "data":[B
    const/4 v1, 0x3

    aget-byte v2, v0, v1

    iget-byte v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    if-eq v2, v3, :cond_39

    .line 1383
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V
    invoke-static {v2, v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$400(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    .line 1384
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    invoke-static {v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1385
    aget-byte v1, v0, v1

    iput-byte v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    .line 1391
    :cond_34
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # invokes: Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V
    invoke-static {v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$100(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_44

    .line 1395
    .end local v0    # "data":[B
    :cond_39
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1396
    nop

    .line 1397
    return-void

    .line 1395
    :catchall_44
    move-exception v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    # getter for: Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1396
    throw v0
.end method
