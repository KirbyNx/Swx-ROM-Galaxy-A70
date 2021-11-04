.class public Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
.super Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub;
.source "BluetoothSecureModePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BTSecureModePolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field private mSecureManager:Landroid/bluetooth/BluetoothSecureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 51
    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->getInstant()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 52
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 53
    return-void
.end method

.method private enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 77
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 57
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 59
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getInstance()Landroid/bluetooth/BluetoothSecureManager;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v0, :cond_a

    .line 67
    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->getInstant()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 69
    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    return-object v0
.end method

.method private shouldAllowDisableSecureMode(I)Z
    .registers 10
    .param p1, "adminUid"    # I

    .line 532
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v0

    .line 533
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 535
    .local v2, "adminId":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 536
    .local v3, "isSecureModeSettingEnabled":Z
    :try_start_17
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v5

    const-string v6, "BluetoothSecureModeTable"

    const-string v7, "BluetoothSecureModeEnabled"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    move v3, v4

    .line 541
    if-eqz v3, :cond_30

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2c} :catch_31

    if-ne p1, v4, :cond_30

    .line 542
    const/4 v1, 0x1

    return v1

    .line 544
    .end local v3    # "isSecureModeSettingEnabled":Z
    :cond_30
    goto :goto_32

    .line 543
    :catch_31
    move-exception v3

    .line 545
    .end local v2    # "adminId":Ljava/lang/Long;
    :goto_32
    goto :goto_a

    .line 547
    :cond_33
    const/4 v1, 0x0

    return v1
.end method

.method private shouldAllowEnableSecureMode()Z
    .registers 9

    .line 513
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v0

    .line 514
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 516
    .local v2, "adminId":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 517
    .local v3, "isSecureModeSettingEnabled":Z
    :try_start_17
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v5

    const-string v6, "BluetoothSecureModeTable"

    const-string v7, "BluetoothSecureModeEnabled"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_25} :catch_2b

    move v3, v4

    .line 522
    if-eqz v3, :cond_2a

    .line 523
    const/4 v1, 0x0

    return v1

    .line 525
    .end local v3    # "isSecureModeSettingEnabled":Z
    :cond_2a
    goto :goto_2c

    .line 524
    :catch_2b
    move-exception v3

    .line 526
    .end local v2    # "adminId":Ljava/lang/Long;
    :goto_2c
    goto :goto_a

    .line 528
    :cond_2d
    const/4 v1, 0x1

    return v1
.end method

.method private validateBluetoothWhiteListConfig(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .line 494
    .local p1, "btList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;>;"
    const/4 v0, 0x0

    .line 496
    .local v0, "ret":Z
    const-string v1, "BTSecureModePolicyService"

    if-eqz p1, :cond_36

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_36

    .line 501
    :cond_c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 502
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    .line 503
    .local v3, "btConfig":Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;
    iget-object v4, v3, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    if-eqz v4, :cond_2e

    iget v4, v3, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->cod:I

    if-ltz v4, :cond_2e

    iget-object v4, v3, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    if-eqz v4, :cond_2e

    iget-object v4, v3, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    array-length v4, v4

    if-gtz v4, :cond_2b

    goto :goto_2e

    .line 501
    .end local v3    # "btConfig":Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 504
    .restart local v3    # "btConfig":Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;
    :cond_2e
    :goto_2e
    const-string v4, "Bluetooth securemode whitelist values are invalid"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v0

    .line 509
    .end local v2    # "i":I
    .end local v3    # "btConfig":Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;
    :cond_34
    const/4 v1, 0x1

    return v1

    .line 497
    :cond_36
    :goto_36
    const-string v2, "Bluetooth securemode whitelist is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return v0
.end method


# virtual methods
.method public addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .line 390
    .local p2, "whiteListConfig":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;>;"
    const-string v0, "BTSecureModePolicyService"

    const/4 v1, 0x1

    .line 391
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 393
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->validateBluetoothWhiteListConfig(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 394
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 397
    .local v2, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v4

    if-eqz v4, :cond_6a

    .line 400
    if-eqz p2, :cond_67

    .line 401
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    :try_start_1c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_67

    .line 402
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    .line 403
    .local v5, "deviceInfo":Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;
    iget-object v6, v5, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    .line 404
    .local v6, "name":Ljava/lang/String;
    iget v7, v5, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->cod:I

    .line 405
    .local v7, "cod":I
    iget-object v8, v5, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;

    .line 406
    .local v8, "uuids":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v9, v6, v7, v8}, Landroid/bluetooth/BluetoothSecureManager;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v9

    move v1, v9

    .line 407
    if-nez v1, :cond_56

    .line 408
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addBluetoothDevicesToWhiteList failed: name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "cod: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_53} :catch_5b
    .catchall {:try_start_1c .. :try_end_53} :catchall_59

    .line 409
    const/4 v0, 0x0

    .line 410
    .end local v1    # "ret":Z
    .local v0, "ret":Z
    move v1, v0

    goto :goto_67

    .line 401
    .end local v0    # "ret":Z
    .end local v5    # "deviceInfo":Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "cod":I
    .end local v8    # "uuids":[Ljava/lang/String;
    .restart local v1    # "ret":Z
    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 419
    .end local v4    # "i":I
    :catchall_59
    move-exception v0

    goto :goto_63

    .line 415
    :catch_5b
    move-exception v4

    .line 416
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_5c
    const-string v5, "Failed talking to BT Secure Manager "

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_59

    .line 417
    const/4 v1, 0x0

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_67

    .line 419
    :goto_63
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    throw v0

    .line 419
    :cond_67
    :goto_67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 422
    :cond_6a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 423
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    .line 424
    return v1
.end method

.method public disableSecureMode(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 183
    const-string v0, "BluetoothSecureModeEnabled"

    const-string v1, "BluetoothSecureModeTable"

    const-string v2, "BTSecureModePolicyService"

    const/4 v3, 0x0

    .line 184
    .local v3, "res":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 185
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 186
    .local v4, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 187
    .local v5, "token":J
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 188
    .local v7, "containerId":I
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->shouldAllowDisableSecureMode(I)Z

    move-result v8

    .line 190
    .local v8, "isDisableSecureModeAllowed":Z
    nop

    .line 191
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v9

    if-eqz v9, :cond_d7

    if-eqz v8, :cond_d7

    .line 195
    :try_start_20
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v1, v0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 199
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v11, "scan_mode"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 201
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v11, "pairing_mode"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 203
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v11, "hfp_enable"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 205
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v11, "a2dp_enable"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 207
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v11, "hid_enable"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 209
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v11, "pan_enable"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 211
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v11, "opp_enable"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 213
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v11, "pbap_enable"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 215
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v11, "gatt_enable"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 217
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v11, "map_enable"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 219
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v11, "ftp_enable"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 221
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v11, "sap_enable"

    invoke-virtual {v9, v11, v10}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 223
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    .line 225
    iget-object v9, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    .line 226
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v9, "whitelistDevices":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v11

    move-object v9, v11

    .line 229
    if-eqz v9, :cond_a4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_a4

    .line 230
    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 233
    :cond_a4
    const-string v11, "disableSecureMode BT shutdown"

    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    .line 235
    .local v11, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    .line 237
    iget-object v12, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v12, v10}, Landroid/bluetooth/BluetoothSecureManager;->enableSecureMode(Z)Z

    move-result v0
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_b6} :catch_bd
    .catchall {:try_start_20 .. :try_end_b6} :catchall_bb

    move v3, v0

    .line 248
    .end local v9    # "whitelistDevices":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;>;"
    .end local v11    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :goto_b7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    goto :goto_d7

    .line 248
    :catchall_bb
    move-exception v0

    goto :goto_d3

    .line 238
    :catch_bd
    move-exception v9

    .line 239
    .local v9, "re":Landroid/os/RemoteException;
    :try_start_be
    const-string v10, "Failed talking to BT Secure Manager "

    invoke-static {v2, v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_bb

    .line 241
    :try_start_c3
    iget-object v10, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v11, 0x1

    invoke-virtual {v10, v4, v1, v0, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c9} :catch_ca
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_bb

    .line 246
    goto :goto_b7

    .line 244
    :catch_ca
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    :try_start_cb
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_bb

    goto :goto_b7

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "re":Landroid/os/RemoteException;
    :goto_d3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    throw v0

    .line 252
    :cond_d7
    :goto_d7
    return v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 552
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 554
    const-string v0, "Permission Denial: can\'t dump SecurityPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    return-void

    .line 557
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v1, "BluetoothSecureModeEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothSecureModeTable"

    invoke-virtual {v0, p2, v2, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public enableDeviceWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "res":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 331
    .local v1, "token":J
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 332
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    move-result v3
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_1d
    .catchall {:try_start_9 .. :try_end_15} :catchall_1b

    move v0, v3

    .line 337
    :cond_16
    nop

    :goto_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    goto :goto_27

    .line 337
    :catchall_1b
    move-exception v3

    goto :goto_2f

    .line 334
    :catch_1d
    move-exception v3

    .line 335
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string v4, "BTSecureModePolicyService"

    const-string v5, "Failed talking to BT Secure Manager "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    .line 337
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_17

    .line 339
    :goto_27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 340
    .local v3, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    .line 341
    return v0

    .line 337
    .end local v3    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :goto_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    throw v3
.end method

.method public enableSecureMode(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;Ljava/util/List;)Z
    .registers 21
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "configObj"    # Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .line 87
    .local p3, "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 88
    .local v4, "res":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    .line 89
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v5, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget v6, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 90
    .local v6, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 91
    .local v7, "token":J
    iget v9, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 92
    .local v9, "containerId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->shouldAllowEnableSecureMode()Z

    move-result v10

    .line 94
    .local v10, "isEnableSecureModeAllowed":Z
    const-string v11, "BTSecureModePolicyService"

    const-string v0, "enableSecureMode"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    nop

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    if-eqz v0, :cond_191

    if-eqz v10, :cond_191

    .line 100
    const-string v12, "BluetoothSecureModeEnabled"

    const-string v13, "BluetoothSecureModeTable"

    const/4 v14, 0x0

    if-eqz v3, :cond_87

    :try_start_2e
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 101
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->validateBluetoothWhiteListConfig(Ljava/util/List;)Z

    move-result v0
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_38} :catch_82
    .catchall {:try_start_2e .. :try_end_38} :catchall_7d

    if-nez v0, :cond_3f

    .line 102
    nop

    .line 171
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    return v14

    .line 104
    :cond_3f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_40
    :try_start_40
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v0, v15, :cond_7a

    .line 105
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_70

    .line 106
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    iget-object v15, v15, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    .line 107
    .local v15, "name":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    iget v14, v14, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->cod:I

    .line 108
    .local v14, "cod":I
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    iget-object v3, v3, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->uuids:[Ljava/lang/String;
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_68} :catch_82
    .catchall {:try_start_40 .. :try_end_68} :catchall_7d

    .line 109
    .local v3, "uuids":[Ljava/lang/String;
    move/from16 v16, v4

    .end local v4    # "res":Z
    .local v16, "res":Z
    :try_start_6a
    iget-object v4, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v4, v15, v14, v3}, Landroid/bluetooth/BluetoothSecureManager;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    goto :goto_72

    .line 105
    .end local v3    # "uuids":[Ljava/lang/String;
    .end local v14    # "cod":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "res":Z
    .restart local v4    # "res":Z
    :cond_70
    move/from16 v16, v4

    .line 104
    .end local v4    # "res":Z
    .restart local v16    # "res":Z
    :goto_72
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p3

    move/from16 v4, v16

    const/4 v14, 0x0

    goto :goto_40

    .end local v16    # "res":Z
    .restart local v4    # "res":Z
    :cond_7a
    move/from16 v16, v4

    .end local v4    # "res":Z
    .restart local v16    # "res":Z
    goto :goto_89

    .line 171
    .end local v0    # "i":I
    .end local v16    # "res":Z
    .restart local v4    # "res":Z
    :catchall_7d
    move-exception v0

    move/from16 v16, v4

    .end local v4    # "res":Z
    .restart local v16    # "res":Z
    goto/16 :goto_187

    .line 161
    .end local v16    # "res":Z
    .restart local v4    # "res":Z
    :catch_82
    move-exception v0

    move/from16 v16, v4

    .end local v4    # "res":Z
    .restart local v16    # "res":Z
    goto/16 :goto_16e

    .line 100
    .end local v16    # "res":Z
    .restart local v4    # "res":Z
    :cond_87
    move/from16 v16, v4

    .line 114
    .end local v4    # "res":Z
    .restart local v16    # "res":Z
    :goto_89
    if-eqz v2, :cond_18b

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configObj.whitelistEnable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->whitelistEnable:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v0, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->whitelistEnable:Z

    const/4 v3, 0x1

    if-ne v0, v3, :cond_ab

    .line 117
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothSecureManager;->enableWhiteList(Z)Z

    .line 119
    :cond_ab
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v6, v13, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 123
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "scan_mode"

    .line 124
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->scanMode:Z

    if-eqz v14, :cond_bb

    move v14, v3

    goto :goto_bc

    :cond_bb
    const/4 v14, 0x0

    .line 123
    :goto_bc
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 125
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "pairing_mode"

    .line 127
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pairingMode:Z

    if-eqz v14, :cond_ca

    move v14, v3

    goto :goto_cb

    :cond_ca
    const/4 v14, 0x0

    .line 125
    :goto_cb
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 128
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "hfp_enable"

    .line 129
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hfpEnable:Z

    if-eqz v14, :cond_d9

    move v14, v3

    goto :goto_da

    .line 130
    :cond_d9
    const/4 v14, 0x0

    .line 128
    :goto_da
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 131
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v4, "a2dp_enable"

    .line 132
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->a2dpEnable:Z

    if-eqz v14, :cond_e7

    move v14, v3

    goto :goto_e8

    .line 133
    :cond_e7
    const/4 v14, 0x0

    .line 131
    :goto_e8
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 134
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "hid_enable"

    .line 135
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hidEnable:Z

    if-eqz v14, :cond_f6

    move v14, v3

    goto :goto_f7

    .line 136
    :cond_f6
    const/4 v14, 0x0

    .line 134
    :goto_f7
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 137
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "pan_enable"

    .line 138
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->panEnable:Z

    if-eqz v14, :cond_105

    move v14, v3

    goto :goto_106

    .line 139
    :cond_105
    const/4 v14, 0x0

    .line 137
    :goto_106
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 140
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "opp_enable"

    .line 141
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->oppEnable:Z

    if-eqz v14, :cond_114

    move v14, v3

    goto :goto_115

    .line 142
    :cond_114
    const/4 v14, 0x0

    .line 140
    :goto_115
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 143
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "pbap_enable"

    .line 144
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pbapEnable:Z

    if-eqz v14, :cond_123

    move v14, v3

    goto :goto_124

    .line 145
    :cond_123
    const/4 v14, 0x0

    .line 143
    :goto_124
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 146
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "gatt_enable"

    .line 147
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->gattEnable:Z

    if-eqz v14, :cond_132

    move v14, v3

    goto :goto_133

    .line 148
    :cond_132
    const/4 v14, 0x0

    .line 146
    :goto_133
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 149
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "map_enable"

    .line 150
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->mapEnable:Z

    if-eqz v14, :cond_141

    move v14, v3

    goto :goto_142

    .line 151
    :cond_141
    const/4 v14, 0x0

    .line 149
    :goto_142
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 152
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "ftp_enable"

    .line 153
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->ftpEnable:Z

    if-eqz v14, :cond_150

    move v14, v3

    goto :goto_151

    .line 154
    :cond_150
    const/4 v14, 0x0

    .line 152
    :goto_151
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 155
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "sap_enable"

    .line 156
    iget-boolean v14, v2, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->sapEnable:Z

    if-eqz v14, :cond_15f

    move v14, v3

    goto :goto_160

    .line 157
    :cond_15f
    const/4 v14, 0x0

    .line 155
    :goto_160
    invoke-virtual {v0, v4, v14}, Landroid/bluetooth/BluetoothSecureManager;->setSecureModeSetting(Ljava/lang/String;I)Z

    .line 159
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothSecureManager;->enableSecureMode(Z)Z

    move-result v0
    :try_end_169
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_169} :catch_16d
    .catchall {:try_start_6a .. :try_end_169} :catchall_16b

    move v4, v0

    .end local v16    # "res":Z
    .local v0, "res":Z
    goto :goto_18d

    .line 171
    .end local v0    # "res":Z
    .restart local v16    # "res":Z
    :catchall_16b
    move-exception v0

    goto :goto_187

    .line 161
    :catch_16d
    move-exception v0

    :goto_16e
    move-object v3, v0

    .line 162
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_16f
    const-string v0, "Failed talking to BT Secure Manager "

    invoke-static {v11, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_174
    .catchall {:try_start_16f .. :try_end_174} :catchall_16b

    .line 164
    :try_start_174
    iget-object v0, v1, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v4, 0x0

    invoke-virtual {v0, v6, v13, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_17a} :catch_17b
    .catchall {:try_start_174 .. :try_end_17a} :catchall_16b

    .line 169
    goto :goto_183

    .line 167
    :catch_17b
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    :try_start_17c
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catchall {:try_start_17c .. :try_end_183} :catchall_16b

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_183
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    goto :goto_193

    .line 171
    :goto_187
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    throw v0

    .line 114
    :cond_18b
    move/from16 v4, v16

    .line 171
    .end local v16    # "res":Z
    .restart local v4    # "res":Z
    :goto_18d
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    goto :goto_195

    .line 96
    :cond_191
    move/from16 v16, v4

    .line 174
    .end local v4    # "res":Z
    .restart local v16    # "res":Z
    :goto_193
    move/from16 v4, v16

    .end local v16    # "res":Z
    .restart local v4    # "res":Z
    :goto_195
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 175
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    .line 176
    return v4
.end method

.method public getBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;"
        }
    .end annotation

    .line 364
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 365
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListFirstIndex()I

    move-result v0

    .line 366
    .local v0, "index":I
    const/4 v1, 0x0

    .line 367
    .local v1, "whiteListSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v2, "whiteListDevices":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;>;"
    :goto_12
    if-ltz v0, :cond_38

    .line 369
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListCod(I)I

    move-result v4

    .line 371
    .local v4, "cod":I
    iget-object v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "uuids":[Ljava/lang/String;
    new-instance v6, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    invoke-direct {v6, v3, v4, v5}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v1, v1, 0x1

    .line 374
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothSecureManager;->getWhiteListNextIndex(I)I

    move-result v6
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_36} :catch_3a

    move v0, v6

    .line 375
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "cod":I
    .end local v5    # "uuids":[Ljava/lang/String;
    goto :goto_12

    .line 376
    :cond_38
    return-object v2

    .line 380
    .end local v0    # "index":I
    .end local v1    # "whiteListSize":I
    .end local v2    # "whiteListDevices":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;>;"
    :cond_39
    goto :goto_44

    .line 378
    :catch_3a
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTSecureModePolicyService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecureModeConfiguration(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 259
    new-instance v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;

    invoke-direct {v0}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;-><init>()V

    .line 260
    .local v0, "currentConfig":Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v1

    if-eqz v1, :cond_ee

    .line 262
    nop

    .line 264
    :try_start_c
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v2, "scan_mode"

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1b

    move v1, v3

    goto :goto_1c

    .line 265
    :cond_1b
    move v1, v2

    :goto_1c
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->scanMode:Z

    .line 266
    nop

    .line 267
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "pairing_mode"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2c

    move v1, v3

    goto :goto_2d

    .line 268
    :cond_2c
    move v1, v2

    :goto_2d
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pairingMode:Z

    .line 269
    nop

    .line 270
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "hfp_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_3d

    move v1, v3

    goto :goto_3e

    .line 271
    :cond_3d
    move v1, v2

    :goto_3e
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hfpEnable:Z

    .line 272
    nop

    .line 273
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string v4, "a2dp_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_4d

    move v1, v3

    goto :goto_4e

    .line 274
    :cond_4d
    move v1, v2

    :goto_4e
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->a2dpEnable:Z

    .line 275
    nop

    .line 276
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "hid_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_5e

    move v1, v3

    goto :goto_5f

    .line 277
    :cond_5e
    move v1, v2

    :goto_5f
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->hidEnable:Z

    .line 278
    nop

    .line 279
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "pan_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_6f

    move v1, v3

    goto :goto_70

    .line 280
    :cond_6f
    move v1, v2

    :goto_70
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->panEnable:Z

    .line 281
    nop

    .line 282
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "opp_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_80

    move v1, v3

    goto :goto_81

    .line 283
    :cond_80
    move v1, v2

    :goto_81
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->oppEnable:Z

    .line 284
    nop

    .line 285
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "pbap_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_91

    move v1, v3

    goto :goto_92

    .line 286
    :cond_91
    move v1, v2

    :goto_92
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->pbapEnable:Z

    .line 287
    nop

    .line 288
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "gatt_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_a2

    move v1, v3

    goto :goto_a3

    .line 289
    :cond_a2
    move v1, v2

    :goto_a3
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->gattEnable:Z

    .line 290
    nop

    .line 291
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "map_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_b3

    move v1, v3

    goto :goto_b4

    .line 292
    :cond_b3
    move v1, v2

    :goto_b4
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->mapEnable:Z

    .line 293
    nop

    .line 294
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "ftp_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_c4

    move v1, v3

    goto :goto_c5

    .line 295
    :cond_c4
    move v1, v2

    :goto_c5
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->ftpEnable:Z

    .line 296
    nop

    .line 297
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    const-string/jumbo v4, "sap_enable"

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothSecureManager;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_d5

    move v1, v3

    goto :goto_d6

    .line 298
    :cond_d5
    move v1, v2

    :goto_d6
    iput-boolean v1, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->sapEnable:Z

    .line 299
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSecureManager;->isWhiteListEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_e2

    move v2, v3

    goto :goto_e3

    .line 300
    :cond_e2
    nop

    :goto_e3
    iput-boolean v2, v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->whitelistEnable:Z
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_e5} :catch_e6

    .line 301
    return-object v0

    .line 302
    :catch_e6
    move-exception v1

    .line 303
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BTSecureModePolicyService"

    const-string v3, "Failed talking to BT Secure Manager "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_ee
    const/4 v1, 0x0

    return-object v1
.end method

.method public isDeviceWhiteListEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 350
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSecureManager;->isWhiteListEnabled()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    .line 354
    :cond_d
    goto :goto_16

    .line 352
    :catch_e
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BTSecureModePolicyService"

    const-string v2, "Failed talking to BT Secure Manager "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public isSecureModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 313
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 315
    :try_start_6
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSecureManager;->isSecureModeEnabled()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 316
    :catch_d
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BTSecureModePolicyService"

    const-string v2, "Failed talking to BT Secure Manager "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 550
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 475
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 491
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 479
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-eqz v0, :cond_12

    .line 481
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 482
    .local v0, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->isSecureModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 483
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->disableSecureMode(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 486
    .end local v0    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_12
    return-void
.end method

.method public removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    .line 432
    .local p2, "whiteListConfig":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;>;"
    const-string v0, "BTSecureModePolicyService"

    const/4 v1, 0x1

    .line 433
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->enforceOwnerOnlyBluetoothSecureModePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 435
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->validateBluetoothWhiteListConfig(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 436
    const/4 v0, 0x0

    return v0

    .line 438
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 439
    .local v2, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getInstance()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v4

    if-eqz v4, :cond_68

    .line 442
    if-eqz p2, :cond_65

    .line 443
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    :try_start_1c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_65

    .line 444
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;

    .line 445
    .local v5, "deviceInfo":Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;
    iget-object v6, v5, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->name:Ljava/lang/String;

    .line 446
    .local v6, "name":Ljava/lang/String;
    iget v7, v5, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->cod:I

    .line 447
    .local v7, "cod":I
    iget-object v8, p0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->mSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v8, v6, v7}, Landroid/bluetooth/BluetoothSecureManager;->removeWhiteList(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_54

    .line 448
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeWhiteList failed: name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "cod: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_51} :catch_59
    .catchall {:try_start_1c .. :try_end_51} :catchall_57

    .line 449
    const/4 v0, 0x0

    .line 450
    .end local v1    # "ret":Z
    .local v0, "ret":Z
    move v1, v0

    goto :goto_65

    .line 443
    .end local v0    # "ret":Z
    .end local v5    # "deviceInfo":Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "cod":I
    .restart local v1    # "ret":Z
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 459
    .end local v4    # "i":I
    :catchall_57
    move-exception v0

    goto :goto_61

    .line 455
    :catch_59
    move-exception v4

    .line 456
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_5a
    const-string v5, "Failed talking to BT Secure Manager"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_57

    .line 457
    const/4 v1, 0x0

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_65

    .line 459
    :goto_61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 460
    throw v0

    .line 459
    :cond_65
    :goto_65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    :cond_68
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 463
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    .line 464
    return v1
.end method

.method public systemReady()V
    .registers 1

    .line 470
    return-void
.end method
