.class public Lcom/android/server/biometrics/Utils$BioFaceMainThread;
.super Lcom/android/server/ServiceThread;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BioFaceMainThread"
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static sInstance:Lcom/android/server/biometrics/Utils$BioFaceMainThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 382
    const-string v0, "biometrics.face"

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 383
    return-void
.end method

.method private static declared-synchronized ensureThreadLocked()V
    .registers 3

    const-class v0, Lcom/android/server/biometrics/Utils$BioFaceMainThread;

    monitor-enter v0

    .line 386
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->sInstance:Lcom/android/server/biometrics/Utils$BioFaceMainThread;

    if-nez v1, :cond_27

    .line 387
    new-instance v1, Lcom/android/server/biometrics/Utils$BioFaceMainThread;

    invoke-direct {v1}, Lcom/android/server/biometrics/Utils$BioFaceMainThread;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->sInstance:Lcom/android/server/biometrics/Utils$BioFaceMainThread;

    .line 388
    invoke-virtual {v1}, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->start()V

    .line 389
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->sInstance:Lcom/android/server/biometrics/Utils$BioFaceMainThread;

    invoke-virtual {v2}, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->sHandler:Landroid/os/Handler;

    .line 390
    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 392
    :cond_27
    monitor-exit v0

    return-void

    .line 385
    :catchall_29
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static get()Lcom/android/server/biometrics/Utils$BioFaceMainThread;
    .registers 2

    .line 395
    const-class v0, Lcom/android/server/biometrics/Utils$BioFaceMainThread;

    monitor-enter v0

    .line 396
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->ensureThreadLocked()V

    .line 397
    sget-object v1, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->sInstance:Lcom/android/server/biometrics/Utils$BioFaceMainThread;

    monitor-exit v0

    return-object v1

    .line 398
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 409
    const-class v0, Lcom/android/server/biometrics/Utils$BioFaceMainThread;

    monitor-enter v0

    .line 410
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->ensureThreadLocked()V

    .line 411
    sget-object v1, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    .line 412
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 402
    const-class v0, Lcom/android/server/biometrics/Utils$BioFaceMainThread;

    monitor-enter v0

    .line 403
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->ensureThreadLocked()V

    .line 404
    sget-object v1, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 405
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
