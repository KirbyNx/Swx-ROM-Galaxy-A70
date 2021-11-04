.class public Lcom/android/server/biometrics/Utils$BioFpMainThread;
.super Lcom/android/server/ServiceThread;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BioFpMainThread"
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static sInstance:Lcom/android/server/biometrics/Utils$BioFpMainThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 423
    const-string v0, "biometrics.fp"

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 424
    return-void
.end method

.method private static declared-synchronized ensureThreadLocked()V
    .registers 3

    const-class v0, Lcom/android/server/biometrics/Utils$BioFpMainThread;

    monitor-enter v0

    .line 427
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/Utils$BioFpMainThread;->sInstance:Lcom/android/server/biometrics/Utils$BioFpMainThread;

    if-nez v1, :cond_27

    .line 428
    new-instance v1, Lcom/android/server/biometrics/Utils$BioFpMainThread;

    invoke-direct {v1}, Lcom/android/server/biometrics/Utils$BioFpMainThread;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/Utils$BioFpMainThread;->sInstance:Lcom/android/server/biometrics/Utils$BioFpMainThread;

    .line 429
    invoke-virtual {v1}, Lcom/android/server/biometrics/Utils$BioFpMainThread;->start()V

    .line 430
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/biometrics/Utils$BioFpMainThread;->sInstance:Lcom/android/server/biometrics/Utils$BioFpMainThread;

    invoke-virtual {v2}, Lcom/android/server/biometrics/Utils$BioFpMainThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/biometrics/Utils$BioFpMainThread;->sHandler:Landroid/os/Handler;

    .line 431
    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/biometrics/Utils$BioFpMainThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/server/biometrics/Utils$BioFpMainThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 433
    :cond_27
    monitor-exit v0

    return-void

    .line 426
    :catchall_29
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static get()Lcom/android/server/biometrics/Utils$BioFpMainThread;
    .registers 2

    .line 436
    const-class v0, Lcom/android/server/biometrics/Utils$BioFpMainThread;

    monitor-enter v0

    .line 437
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioFpMainThread;->ensureThreadLocked()V

    .line 438
    sget-object v1, Lcom/android/server/biometrics/Utils$BioFpMainThread;->sInstance:Lcom/android/server/biometrics/Utils$BioFpMainThread;

    monitor-exit v0

    return-object v1

    .line 439
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 450
    const-class v0, Lcom/android/server/biometrics/Utils$BioFpMainThread;

    monitor-enter v0

    .line 451
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioFpMainThread;->ensureThreadLocked()V

    .line 452
    sget-object v1, Lcom/android/server/biometrics/Utils$BioFpMainThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    .line 453
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 443
    const-class v0, Lcom/android/server/biometrics/Utils$BioFpMainThread;

    monitor-enter v0

    .line 444
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioFpMainThread;->ensureThreadLocked()V

    .line 445
    sget-object v1, Lcom/android/server/biometrics/Utils$BioFpMainThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 446
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
