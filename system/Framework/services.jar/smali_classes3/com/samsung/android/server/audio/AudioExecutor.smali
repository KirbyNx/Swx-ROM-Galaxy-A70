.class public Lcom/samsung/android/server/audio/AudioExecutor;
.super Ljava/lang/Object;
.source "AudioExecutor.java"


# static fields
.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "AS.AudioExecutor"

.field private static sExecutor:Landroid/os/HandlerExecutor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 29
    invoke-static {}, Lcom/samsung/android/server/audio/AudioExecutor;->init()V

    .line 31
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "caller":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    new-instance v2, Lcom/samsung/android/server/audio/-$$Lambda$AudioExecutor$R0RVAY90ieyUYv4EJ8UJpsLQ5so;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/server/audio/-$$Lambda$AudioExecutor$R0RVAY90ieyUYv4EJ8UJpsLQ5so;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 46
    invoke-static {}, Lcom/samsung/android/server/audio/AudioExecutor;->init()V

    .line 47
    sget-object v0, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    return-object v0
.end method

.method private static declared-synchronized init()V
    .registers 4

    const-class v0, Lcom/samsung/android/server/audio/AudioExecutor;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    if-nez v1, :cond_1c

    .line 22
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AS.AudioExecutor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 23
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    .line 26
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_1c
    monitor-exit v0

    return-void

    .line 20
    :catchall_1e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$execute$0(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 8
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "caller"    # Ljava/lang/String;

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 36
    .local v0, "dispatchStart":J
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 39
    .local v2, "actualTime":J
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-lez v4, :cond_30

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slow "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.AudioExecutor"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_30
    return-void
.end method
