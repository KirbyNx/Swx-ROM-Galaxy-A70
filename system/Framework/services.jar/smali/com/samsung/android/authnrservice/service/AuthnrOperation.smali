.class final Lcom/samsung/android/authnrservice/service/AuthnrOperation;
.super Ljava/lang/Object;
.source "AuthnrOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AO"

.field private static sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;


# instance fields
.field private mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/AuthnrOperation;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    monitor-enter v0

    .line 37
    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    if-nez v1, :cond_e

    .line 38
    new-instance v1, Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/AuthnrOperation;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    .line 41
    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 36
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized initialize(Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 12
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 46
    if-nez p1, :cond_e

    .line 47
    :try_start_3
    const-string v0, "AO"

    const-string/jumbo v1, "initialize TA: fd is null"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2f

    .line 48
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 51
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/AuthnrOperation;
    :cond_e
    :try_start_e
    const-string v0, "AO"

    const-string/jumbo v1, "initialize TA"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    if-nez v0, :cond_21

    .line 53
    new-instance v0, Lcom/samsung/android/authnrservice/service/AuthnrTaController;

    invoke-direct {v0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    .line 56
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/authnrservice/service/ITaController;->initialize(IJJ)Z

    move-result v0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return v0

    .line 45
    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "offset":J
    .end local p4    # "len":J
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized process([B)[B
    .registers 4
    .param p1, "blobInput"    # [B

    monitor-enter p0

    .line 77
    :try_start_1
    const-string v0, "AO"

    const-string/jumbo v1, "process"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    if-nez v0, :cond_19

    .line 80
    const-string v0, "AO"

    const-string v1, "controller is null."

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    monitor-exit p0

    return-object v0

    .line 84
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/AuthnrOperation;
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    invoke-interface {v0, p1}, Lcom/samsung/android/authnrservice/service/ITaController;->process([B)[B

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    .line 76
    .end local p1    # "blobInput":[B
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminate()Z
    .registers 4

    monitor-enter p0

    .line 60
    :try_start_1
    const-string v0, "AO"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    if-nez v0, :cond_17

    .line 63
    const-string v0, "AO"

    const-string v1, "controller is null"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_2d

    .line 64
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 67
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/AuthnrOperation;
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    invoke-interface {v0}, Lcom/samsung/android/authnrservice/service/ITaController;->terminate()Z

    move-result v0

    .line 68
    .local v0, "ret":Z
    if-nez v0, :cond_27

    .line 69
    const-string v1, "AO"

    const-string/jumbo v2, "terminate failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2d

    .line 73
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 59
    .end local v0    # "ret":Z
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
