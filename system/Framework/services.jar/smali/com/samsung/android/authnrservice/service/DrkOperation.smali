.class final Lcom/samsung/android/authnrservice/service/DrkOperation;
.super Ljava/lang/Object;
.source "DrkOperation.java"


# static fields
.field private static final AUTHNR_SERVICE_NAME:Ljava/lang/String; = "AUTHNR"

.field private static final TAG:Ljava/lang/String; = "DO"

.field private static sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;


# instance fields
.field private mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/DrkOperation;

    monitor-enter v0

    .line 41
    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;

    if-nez v1, :cond_e

    .line 42
    new-instance v1, Lcom/samsung/android/authnrservice/service/DrkOperation;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/DrkOperation;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;

    .line 45
    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 40
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method declared-synchronized getDrkKeyHandle()[B
    .registers 8

    monitor-enter p0

    .line 102
    :try_start_1
    const-string v0, "DO"

    const-string/jumbo v1, "getDrkKeyHandle"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 105
    const-string v0, "DO"

    const-string/jumbo v2, "not initialized"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-array v0, v1, [B
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_5f

    monitor-exit p0

    return-object v0

    .line 111
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/DrkOperation;
    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 112
    .local v2, "token":J
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const-string v4, "AUTHNR"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v0

    .line 114
    .local v0, "drkKeyHandle":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    if-eqz v0, :cond_34

    array-length v4, v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2e} :catch_3f
    .catchall {:try_start_1a .. :try_end_2e} :catchall_5f

    if-nez v4, :cond_31

    goto :goto_34

    .line 122
    .end local v2    # "token":J
    :cond_31
    nop

    .line 124
    monitor-exit p0

    return-object v0

    .line 116
    .restart local v2    # "token":J
    :cond_34
    :goto_34
    :try_start_34
    const-string v4, "DO"

    const-string v5, "createServiceKeySession failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-array v1, v1, [B
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_3f
    .catchall {:try_start_34 .. :try_end_3d} :catchall_5f

    monitor-exit p0

    return-object v1

    .line 119
    .end local v0    # "drkKeyHandle":[B
    .end local v2    # "token":J
    :catch_3f
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    :try_start_40
    const-string v2, "DO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get drk fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-array v1, v1, [B
    :try_end_5d
    .catchall {:try_start_40 .. :try_end_5d} :catchall_5f

    monitor-exit p0

    return-object v1

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 49
    :try_start_1
    const-string v0, "DO"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v0, :cond_14

    .line 52
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 55
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/DrkOperation;
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 56
    const-string v0, "DO"

    const-string/jumbo v2, "isAliveDeviceRootKeyService failed"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_61

    .line 57
    monitor-exit p0

    return v1

    .line 61
    :cond_27
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 62
    .local v2, "token":J
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v0

    .line 63
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    if-nez v0, :cond_41

    .line 65
    const-string v4, "DO"

    const-string/jumbo v5, "isExistDeviceRootKey failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3f} :catch_44
    .catchall {:try_start_27 .. :try_end_3f} :catchall_61

    .line 66
    monitor-exit p0

    return v1

    .line 71
    .end local v0    # "ret":Z
    .end local v2    # "token":J
    :cond_41
    nop

    .line 73
    monitor-exit p0

    return v4

    .line 68
    :catch_44
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v2, "DO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drk init failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_61

    .line 70
    monitor-exit p0

    return v1

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_61
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminate()Z
    .registers 7

    monitor-enter p0

    .line 77
    :try_start_1
    const-string v0, "DO"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 80
    const-string v0, "DO"

    const-string/jumbo v2, "not initialized"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_55

    .line 81
    monitor-exit p0

    return v1

    .line 85
    .end local p0    # "this":Lcom/samsung/android/authnrservice/service/DrkOperation;
    :cond_18
    :try_start_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 86
    .local v2, "token":J
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->releaseServiceKeySession()I

    move-result v0

    .line 87
    .local v0, "ret":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    if-eqz v0, :cond_31

    .line 89
    const-string v4, "DO"

    const-string/jumbo v5, "releaseServiceKeySession failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_38
    .catchall {:try_start_18 .. :try_end_2f} :catchall_55

    .line 90
    monitor-exit p0

    return v1

    .line 92
    :cond_31
    const/4 v4, 0x0

    :try_start_32
    iput-object v4, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_34} :catch_38
    .catchall {:try_start_32 .. :try_end_34} :catchall_55

    .line 96
    .end local v0    # "ret":I
    .end local v2    # "token":J
    nop

    .line 98
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 93
    :catch_38
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    :try_start_39
    const-string v2, "DO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drk terminate failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_55

    .line 95
    monitor-exit p0

    return v1

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method
