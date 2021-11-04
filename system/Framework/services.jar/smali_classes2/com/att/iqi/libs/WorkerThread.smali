.class public Lcom/att/iqi/libs/WorkerThread;
.super Landroid/os/HandlerThread;
.source "WorkerThread.java"


# static fields
.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0x7530L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x2710L

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/att/iqi/libs/WorkerThread;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 33
    const-string/jumbo v0, "worker.bg"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 5

    .line 37
    sget-object v0, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    if-nez v0, :cond_2e

    .line 38
    new-instance v0, Lcom/att/iqi/libs/WorkerThread;

    invoke-direct {v0}, Lcom/att/iqi/libs/WorkerThread;-><init>()V

    sput-object v0, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    .line 39
    invoke-virtual {v0}, Lcom/att/iqi/libs/WorkerThread;->start()V

    .line 40
    sget-object v0, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    invoke-virtual {v0}, Lcom/att/iqi/libs/WorkerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 41
    .local v0, "looper":Landroid/os/Looper;
    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 42
    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 44
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    invoke-virtual {v2}, Lcom/att/iqi/libs/WorkerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/att/iqi/libs/WorkerThread;->sHandler:Landroid/os/Handler;

    .line 46
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_2e
    return-void
.end method

.method public static get()Lcom/att/iqi/libs/WorkerThread;
    .registers 2

    .line 49
    const-class v0, Lcom/att/iqi/libs/WorkerThread;

    monitor-enter v0

    .line 50
    :try_start_3
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->ensureThreadLocked()V

    .line 51
    sget-object v1, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    monitor-exit v0

    return-object v1

    .line 52
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 56
    const-class v0, Lcom/att/iqi/libs/WorkerThread;

    monitor-enter v0

    .line 57
    :try_start_3
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->ensureThreadLocked()V

    .line 58
    sget-object v1, Lcom/att/iqi/libs/WorkerThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
