.class public Lcom/android/server/SdpManagerService$KnoxUtil;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxUtil"
.end annotation


# static fields
.field private static mIsDeviceOwnerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4370
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SdpManagerService$KnoxUtil;->mIsDeviceOwnerEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSafe(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 2
    .param p0, "cred"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 4423
    if-nez p0, :cond_7

    .line 4424
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 4426
    :cond_7
    return-object p0
.end method

.method static isCMFAEnabled(I)Z
    .registers 3
    .param p0, "userId"    # I

    .line 4449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMFA is enabled for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    # getter for: Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_CMFA:Z
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$4100()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4452
    const/4 v0, 0x1

    return v0

    .line 4454
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public static isDeviceOwnerUser(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 4399
    if-nez p0, :cond_a

    invoke-static {}, Lcom/android/server/SdpManagerService$KnoxUtil;->isDoEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isDoEnabled()Z
    .registers 2

    .line 4393
    # getter for: Lcom/android/server/SdpManagerService;->mSystemReady:Z
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$4000()Z

    move-result v0

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/android/server/SdpManagerService$KnoxUtil;->mIsDeviceOwnerEnabled:Z

    if-nez v0, :cond_17

    .line 4394
    const-string v0, "SdpManagerService"

    const-string v1, "Device owner status not updated yet..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    return v0

    .line 4397
    :cond_17
    sget-boolean v0, Lcom/android/server/SdpManagerService$KnoxUtil;->mIsDeviceOwnerEnabled:Z

    return v0
.end method

.method public static isEnterpriseUser(Landroid/content/pm/UserInfo;)Z
    .registers 5
    .param p0, "ui"    # Landroid/content/pm/UserInfo;

    .line 4402
    nop

    .line 4403
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_19
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 4404
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isDeviceOwnerUser(I)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 4405
    .local v0, "result":Z
    :goto_24
    const-string v1, "SdpManagerService"

    if-nez v0, :cond_3f

    .line 4406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an enterprise user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 4408
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "is enterprise user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4410
    :goto_56
    return v0
.end method

.method static isFileBasedEncryption()Z
    .registers 5

    .line 4436
    const/4 v0, 0x0

    .line 4437
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4439
    .local v1, "identity":J
    :try_start_5
    const-string/jumbo v3, "ro.crypto.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_16
    .catchall {:try_start_5 .. :try_end_12} :catchall_14

    move v0, v3

    goto :goto_1a

    .line 4443
    :catchall_14
    move-exception v3

    goto :goto_1f

    .line 4440
    :catch_16
    move-exception v3

    .line 4441
    .local v3, "e":Ljava/lang/Exception;
    :try_start_17
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    .line 4443
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4444
    nop

    .line 4445
    return v0

    .line 4443
    :goto_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4444
    throw v3
.end method

.method static isKnoxSupported()Z
    .registers 3

    .line 4430
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 4431
    .local v0, "knoxInfo":Landroid/os/Bundle;
    if-eqz v0, :cond_e

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 4432
    .local v1, "version":Ljava/lang/String;
    :goto_f
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    const-string/jumbo v2, "v00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    return v2
.end method

.method public static isLegacyContainerUser(Landroid/content/pm/UserInfo;)Z
    .registers 4
    .param p0, "ui"    # Landroid/content/pm/UserInfo;

    .line 4414
    nop

    .line 4415
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 4416
    .local v0, "result":Z
    :goto_17
    if-eqz v0, :cond_31

    .line 4417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identified as legacy type container user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    :cond_31
    return v0
.end method

.method public static setDoEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .line 4390
    sput-boolean p0, Lcom/android/server/SdpManagerService$KnoxUtil;->mIsDeviceOwnerEnabled:Z

    .line 4391
    return-void
.end method

.method public static updateDeviceOwnerStatus(Z)V
    .registers 9
    .param p0, "extraFactor"    # Z

    .line 4373
    const-string v0, "SdpManagerService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4375
    .local v1, "identity":J
    const/4 v3, 0x0

    :try_start_7
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v4

    .line 4376
    .local v4, "knoxDoProperty":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Knox device_owner property : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4378
    const-string/jumbo v5, "ro.device_owner"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 4379
    .local v5, "dpmDoProperty":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DPM device_owner property  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extra factor               : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    if-nez v4, :cond_54

    if-nez v5, :cond_54

    if-eqz p0, :cond_55

    :cond_54
    const/4 v3, 0x1

    :cond_55
    invoke-static {v3}, Lcom/android/server/SdpManagerService$KnoxUtil;->setDoEnabled(Z)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_58} :catch_5b
    .catchall {:try_start_7 .. :try_end_58} :catchall_59

    .end local v4    # "knoxDoProperty":Z
    .end local v5    # "dpmDoProperty":Z
    goto :goto_5f

    .line 4385
    :catchall_59
    move-exception v0

    goto :goto_64

    .line 4382
    :catch_5b
    move-exception v0

    .line 4383
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_59

    .line 4385
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4386
    nop

    .line 4387
    return-void

    .line 4385
    :goto_64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4386
    throw v0
.end method
