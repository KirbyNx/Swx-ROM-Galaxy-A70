.class public Lcom/android/server/biometrics/Utils$BioBgThread;
.super Lcom/android/server/ServiceThread;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BioBgThread"
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static sInstance:Lcom/android/server/biometrics/Utils$BioBgThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 464
    const-string v0, "biometrics.bg"

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 465
    return-void
.end method

.method private static declared-synchronized ensureThreadLocked()V
    .registers 3

    const-class v0, Lcom/android/server/biometrics/Utils$BioBgThread;

    monitor-enter v0

    .line 468
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/Utils$BioBgThread;->sInstance:Lcom/android/server/biometrics/Utils$BioBgThread;

    if-nez v1, :cond_27

    .line 469
    new-instance v1, Lcom/android/server/biometrics/Utils$BioBgThread;

    invoke-direct {v1}, Lcom/android/server/biometrics/Utils$BioBgThread;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/Utils$BioBgThread;->sInstance:Lcom/android/server/biometrics/Utils$BioBgThread;

    .line 470
    invoke-virtual {v1}, Lcom/android/server/biometrics/Utils$BioBgThread;->start()V

    .line 472
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/biometrics/Utils$BioBgThread;->sInstance:Lcom/android/server/biometrics/Utils$BioBgThread;

    invoke-virtual {v2}, Lcom/android/server/biometrics/Utils$BioBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/biometrics/Utils$BioBgThread;->sHandler:Landroid/os/Handler;

    .line 473
    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/biometrics/Utils$BioBgThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/server/biometrics/Utils$BioBgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 475
    :cond_27
    monitor-exit v0

    return-void

    .line 467
    :catchall_29
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static get()Lcom/android/server/biometrics/Utils$BioBgThread;
    .registers 2

    .line 478
    const-class v0, Lcom/android/server/biometrics/Utils$BioBgThread;

    monitor-enter v0

    .line 479
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->ensureThreadLocked()V

    .line 480
    sget-object v1, Lcom/android/server/biometrics/Utils$BioBgThread;->sInstance:Lcom/android/server/biometrics/Utils$BioBgThread;

    monitor-exit v0

    return-object v1

    .line 481
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 492
    const-class v0, Lcom/android/server/biometrics/Utils$BioBgThread;

    monitor-enter v0

    .line 493
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->ensureThreadLocked()V

    .line 494
    sget-object v1, Lcom/android/server/biometrics/Utils$BioBgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    .line 495
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 485
    const-class v0, Lcom/android/server/biometrics/Utils$BioBgThread;

    monitor-enter v0

    .line 486
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->ensureThreadLocked()V

    .line 487
    sget-object v1, Lcom/android/server/biometrics/Utils$BioBgThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 488
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
