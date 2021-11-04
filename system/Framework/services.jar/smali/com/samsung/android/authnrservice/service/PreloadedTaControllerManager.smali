.class public Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;
.super Ljava/lang/Object;
.source "PreloadedTaControllerManager.java"


# static fields
.field public static final DEVICE_ROOT_KEY_TRUSTED_APP_HANDLE:I = 0x2

.field public static final FINGERPRINT_TRUSTED_APP_HANDLE:I = 0x1

.field public static final TAD_TRUSTED_APP_HANDLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PTCM"

.field private static sControllerManager:Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;


# instance fields
.field private final mTrustedApplications:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/authnrservice/service/IPreloadedTaController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->mTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    .line 28
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;

    monitor-enter v0

    .line 19
    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->sControllerManager:Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;

    if-nez v1, :cond_e

    .line 20
    new-instance v1, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->sControllerManager:Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;

    .line 23
    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->sControllerManager:Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 18
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPreloadedTaController(I)Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
    .registers 5
    .param p1, "trustedAppType"    # I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "private IPreloadedTaController getPreloadedTaController(int trustedAppType)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PTCM"

    invoke-static {v1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->mTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    .line 82
    .local v0, "ta":Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
    if-nez v0, :cond_3f

    .line 83
    const/4 v2, 0x3

    if-eq p1, v2, :cond_2f

    .line 88
    const-string v2, "Not supported type"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x0

    return-object v1

    .line 85
    :cond_2f
    new-instance v1, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;

    invoke-direct {v1, v2}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;-><init>(I)V

    move-object v0, v1

    .line 86
    nop

    .line 91
    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->mTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_3f
    return-object v0
.end method


# virtual methods
.method public declared-synchronized initialize(I)Z
    .registers 6
    .param p1, "trustedAppType"    # I

    monitor-enter p0

    .line 31
    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 32
    :try_start_4
    const-string v1, "PTCM"

    const-string/jumbo v2, "type is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_24

    .line 33
    monitor-exit p0

    return v0

    .line 36
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;
    :cond_e
    :try_start_e
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->getPreloadedTaController(I)Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    move-result-object v1

    .line 37
    .local v1, "ta":Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
    if-nez v1, :cond_1e

    .line 38
    const-string v2, "PTCM"

    const-string/jumbo v3, "gptc failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_24

    .line 39
    monitor-exit p0

    return v0

    .line 42
    :cond_1e
    :try_start_1e
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->initialize()Z

    move-result v0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_24

    monitor-exit p0

    return v0

    .line 30
    .end local v1    # "ta":Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
    .end local p1    # "trustedAppType":I
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized process(I[B)[B
    .registers 7
    .param p1, "trustedAppType"    # I
    .param p2, "blobInput"    # [B

    monitor-enter p0

    .line 64
    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 65
    :try_start_4
    const-string v1, "PTCM"

    const-string/jumbo v2, "type is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_24

    .line 66
    monitor-exit p0

    return-object v0

    .line 69
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;
    :cond_e
    :try_start_e
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->getPreloadedTaController(I)Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    move-result-object v1

    .line 70
    .local v1, "ta":Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
    if-nez v1, :cond_1e

    .line 71
    const-string v2, "PTCM"

    const-string/jumbo v3, "gptc failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_24

    .line 72
    monitor-exit p0

    return-object v0

    .line 75
    :cond_1e
    :try_start_1e
    invoke-interface {v1, p2}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->process([B)[B

    move-result-object v0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v0

    .line 63
    .end local v1    # "ta":Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
    .end local p1    # "trustedAppType":I
    .end local p2    # "blobInput":[B
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminate(I)Z
    .registers 6
    .param p1, "trustedAppType"    # I

    monitor-enter p0

    .line 47
    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 48
    :try_start_4
    const-string v1, "PTCM"

    const-string/jumbo v2, "type is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_2d

    .line 49
    monitor-exit p0

    return v0

    .line 52
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;
    :cond_e
    :try_start_e
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->getPreloadedTaController(I)Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    move-result-object v1

    .line 53
    .local v1, "ta":Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
    if-nez v1, :cond_1e

    .line 54
    const-string v2, "PTCM"

    const-string/jumbo v3, "gptc failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_2d

    .line 55
    monitor-exit p0

    return v0

    .line 57
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->mTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->terminate()Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return v0

    .line 46
    .end local v1    # "ta":Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
    .end local p1    # "trustedAppType":I
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
