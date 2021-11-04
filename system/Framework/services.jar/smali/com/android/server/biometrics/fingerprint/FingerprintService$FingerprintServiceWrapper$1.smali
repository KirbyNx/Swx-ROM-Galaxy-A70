.class Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;
.super Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[II)V
    .registers 31
    .param p1, "this$1"    # Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "userId"    # I
    .param p9, "groupId"    # I
    .param p10, "cryptoToken"    # [B
    .param p11, "restricted"    # Z
    .param p12, "owner"    # Ljava/lang/String;
    .param p13, "disabledFeatures"    # [I
    .param p14, "timeoutSec"    # I

    .line 357
    move-object/from16 v0, p1

    move-object/from16 v15, p0

    iput-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[II)V

    return-void
.end method


# virtual methods
.method public onAcquired(II)Z
    .registers 4
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 398
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/SemClientExtension;->onAcquired(II)Z

    .line 399
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v0, :cond_12

    .line 400
    const/4 v0, 0x6

    if-ne p1, v0, :cond_12

    const/16 v0, 0x3ed

    if-ne p2, v0, :cond_12

    .line 402
    const/4 p1, 0x0

    .line 403
    const/4 p2, 0x0

    .line 406
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;->onAcquired(II)Z

    move-result v0

    return v0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 6
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 417
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    check-cast v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 418
    .local v0, "ce":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    move-object v1, p1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->getFingerprintWithExtraInfo(Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    .line 419
    .local v1, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-super {p0, v1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v2

    return v2
.end method

.method public onError(JII)Z
    .registers 6
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 411
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/SemClientExtension;->onError(II)Z

    .line 412
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;->onError(JII)Z

    move-result v0

    return v0
.end method

.method public shouldVibrate()Z
    .registers 2

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public start()I
    .registers 5

    .line 372
    const/4 v0, -0x1

    .line 374
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    invoke-virtual {v1}, Lcom/android/server/biometrics/SemClientExtension;->preEnrollStart()V

    .line 375
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;->start()I

    move-result v1

    move v0, v1

    .line 376
    if-nez v0, :cond_12

    .line 377
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    invoke-virtual {v1}, Lcom/android/server/biometrics/SemClientExtension;->postEnrollStart()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    .line 381
    :cond_12
    goto :goto_2e

    .line 379
    :catch_13
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enroll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricStats"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2e
    return v0
.end method

.method protected statsModality()I
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->statsModality()I

    move-result v0

    return v0
.end method

.method public stop(Z)I
    .registers 6
    .param p1, "initiatedByClient"    # Z

    .line 387
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;->stop(Z)I

    move-result v0

    .line 389
    .local v0, "result":I
    :try_start_4
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    invoke-virtual {v1}, Lcom/android/server/biometrics/SemClientExtension;->postEnrollStop()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 392
    goto :goto_26

    .line 390
    :catch_a
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricStats"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_26
    return v0
.end method
