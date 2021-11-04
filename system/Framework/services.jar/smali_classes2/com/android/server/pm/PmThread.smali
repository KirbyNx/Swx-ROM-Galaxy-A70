.class public final Lcom/android/server/pm/PmThread;
.super Lcom/android/server/ServiceThread;
.source "PmThread.java"


# static fields
.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static sInstance:Lcom/android/server/pm/PmThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 29
    const-string v0, "PackageManagerHandlerThread"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 30
    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 5

    .line 33
    sget-object v0, Lcom/android/server/pm/PmThread;->sInstance:Lcom/android/server/pm/PmThread;

    if-nez v0, :cond_37

    .line 34
    new-instance v0, Lcom/android/server/pm/PmThread;

    invoke-direct {v0}, Lcom/android/server/pm/PmThread;-><init>()V

    sput-object v0, Lcom/android/server/pm/PmThread;->sInstance:Lcom/android/server/pm/PmThread;

    .line 35
    invoke-virtual {v0}, Lcom/android/server/pm/PmThread;->start()V

    .line 36
    sget-object v0, Lcom/android/server/pm/PmThread;->sInstance:Lcom/android/server/pm/PmThread;

    invoke-virtual {v0}, Lcom/android/server/pm/PmThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 37
    .local v0, "looper":Landroid/os/Looper;
    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 38
    const-wide/16 v1, 0x64

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 40
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/pm/PmThread;->sInstance:Lcom/android/server/pm/PmThread;

    invoke-virtual {v2}, Lcom/android/server/pm/PmThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/pm/PmThread;->sHandler:Landroid/os/Handler;

    .line 41
    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/pm/PmThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/server/pm/PmThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 43
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_37
    return-void
.end method

.method public static get()Lcom/android/server/pm/PmThread;
    .registers 2

    .line 46
    const-class v0, Lcom/android/server/pm/PmThread;

    monitor-enter v0

    .line 47
    :try_start_3
    invoke-static {}, Lcom/android/server/pm/PmThread;->ensureThreadLocked()V

    .line 48
    sget-object v1, Lcom/android/server/pm/PmThread;->sInstance:Lcom/android/server/pm/PmThread;

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 60
    const-class v0, Lcom/android/server/pm/PmThread;

    monitor-enter v0

    .line 61
    :try_start_3
    invoke-static {}, Lcom/android/server/pm/PmThread;->ensureThreadLocked()V

    .line 62
    sget-object v1, Lcom/android/server/pm/PmThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    .line 63
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 53
    const-class v0, Lcom/android/server/pm/PmThread;

    monitor-enter v0

    .line 54
    :try_start_3
    invoke-static {}, Lcom/android/server/pm/PmThread;->ensureThreadLocked()V

    .line 55
    sget-object v1, Lcom/android/server/pm/PmThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 56
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
