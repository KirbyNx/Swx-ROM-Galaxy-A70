.class Lcom/android/server/biometrics/face/FaceService$1;
.super Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPreviewImage:[B

.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 1435
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;-><init>()V

    .line 1645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->mPreviewImage:[B

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAcquired$1$FaceService$1(JII)V
    .registers 6
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 1483
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleAcquired(JII)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->access$18001(Lcom/android/server/biometrics/face/FaceService;JII)V

    .line 1484
    return-void
.end method

.method public synthetic lambda$onAcquired$2$FaceService$1(IIJ)V
    .registers 9
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I
    .param p3, "deviceId"    # J

    .line 1505
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOperationType:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$17400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v0

    const/16 v1, 0x3f7

    const/16 v2, 0x16

    const/4 v3, 0x2

    if-ne v0, v3, :cond_54

    if-ne p1, v2, :cond_54

    if-ne p2, v1, :cond_54

    .line 1508
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsReadyToSetMaxBrightness:Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$17500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1509
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelMax:I
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$17600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v1

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setBrightness(I)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$17700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set Brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelMax:I
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$17600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    const/4 v1, 0x0

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsReadyToSetMaxBrightness:Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$17502(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z

    .line 1513
    :cond_53
    return-void

    .line 1514
    :cond_54
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOperationType:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$17400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6d

    if-ne p1, v2, :cond_63

    if-eq p2, v1, :cond_66

    :cond_63
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6d

    .line 1517
    :cond_66
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsCheckedTooDark:Z
    invoke-static {v0, v3}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$17802(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z

    .line 1519
    :cond_6d
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleAcquired(JII)V
    invoke-static {v0, p3, p4, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->access$17901(Lcom/android/server/biometrics/face/FaceService;JII)V

    .line 1520
    return-void
.end method

.method public synthetic lambda$onAuthenticated$3$FaceService$1(IJZLjava/util/ArrayList;)V
    .registers 8
    .param p1, "faceId"    # I
    .param p2, "deviceId"    # J
    .param p4, "authenticated"    # Z
    .param p5, "token"    # Ljava/util/ArrayList;

    .line 1530
    new-instance v0, Landroid/hardware/face/Face;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 1531
    .local v0, "face":Landroid/hardware/face/Face;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    invoke-static {v1, p4, v0, p5}, Lcom/android/server/biometrics/face/FaceService;->access$17301(Lcom/android/server/biometrics/face/FaceService;ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    .line 1532
    return-void
.end method

.method public synthetic lambda$onAuthenticated$4$FaceService$1(IJZLjava/util/ArrayList;)V
    .registers 8
    .param p1, "faceId"    # I
    .param p2, "deviceId"    # J
    .param p4, "authenticated"    # Z
    .param p5, "token"    # Ljava/util/ArrayList;

    .line 1540
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->preOnAuthenticated(I)I
    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$15900(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)I

    move-result v0

    if-nez v0, :cond_b

    .line 1541
    return-void

    .line 1543
    :cond_b
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->stopOperation()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    .line 1544
    new-instance v0, Landroid/hardware/face/Face;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 1545
    .local v0, "face":Landroid/hardware/face/Face;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    invoke-static {v1, p4, v0, p5}, Lcom/android/server/biometrics/face/FaceService;->access$17201(Lcom/android/server/biometrics/face/FaceService;ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    .line 1546
    return-void
.end method

.method public synthetic lambda$onEnrollResult$0$FaceService$1(IIIJ)V
    .registers 13
    .param p1, "remaining"    # I
    .param p2, "userId"    # I
    .param p3, "faceId"    # I
    .param p4, "deviceId"    # J

    .line 1444
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    const-string v1, "GFaceService"

    if-nez v0, :cond_4c

    .line 1445
    if-nez p1, :cond_4c

    .line 1446
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->stopOperation()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    .line 1447
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14100(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1448
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    const/4 v2, 0x0

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z
    invoke-static {v0, v2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14102(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z

    .line 1450
    :try_start_21
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->remove(II)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_2b

    .line 1453
    goto :goto_45

    .line 1451
    :catch_2b
    move-exception v0

    .line 1452
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnrollResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_45
    const-string/jumbo v0, "onEnrollResult: remove registered face as enrollment is cancelling"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    return-void

    .line 1459
    :cond_4c
    new-instance v0, Landroid/hardware/face/Face;

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 1460
    invoke-virtual {v3}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/android/server/biometrics/BiometricUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2, p3, p4, p5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 1461
    .local v0, "face":Landroid/hardware/face/Face;
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    invoke-static {v2, v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$18101(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 1464
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    .line 1465
    .local v2, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez p1, :cond_99

    if-eqz v2, :cond_99

    .line 1467
    :try_start_70
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mAuthenticatorIds:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/biometrics/face/FaceService;->access$18200(Lcom/android/server/biometrics/face/FaceService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1468
    iget-object v5, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v5, p2}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v5

    iget-wide v5, v5, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    goto :goto_8b

    .line 1469
    :cond_89
    const-wide/16 v5, 0x0

    .line 1468
    :goto_8b
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1467
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_92} :catch_93

    .line 1472
    goto :goto_99

    .line 1470
    :catch_93
    move-exception v3

    .line 1471
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Unable to get authenticatorId"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1474
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_99
    :goto_99
    return-void
.end method

.method public synthetic lambda$onEnumerate$7$FaceService$1(JLjava/util/ArrayList;I)V
    .registers 9
    .param p1, "deviceId"    # J
    .param p3, "faceIds"    # Ljava/util/ArrayList;
    .param p4, "userId"    # I

    .line 1607
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_b

    .line 1608
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->doTemplateSyncForUser(JLjava/util/ArrayList;I)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$16400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;JLjava/util/ArrayList;I)V

    .line 1610
    :cond_b
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 1611
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 1612
    new-instance v1, Landroid/hardware/face/Face;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, ""

    invoke-direct {v1, v3, v2, p1, p2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 1614
    .local v1, "face":Landroid/hardware/face/Face;
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    invoke-static {v2, v1, v3}, Lcom/android/server/biometrics/face/FaceService;->access$16501(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 1611
    .end local v1    # "face":Landroid/hardware/face/Face;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .end local v0    # "i":I
    :cond_38
    goto :goto_40

    .line 1620
    :cond_39
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/face/FaceService;->access$16601(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 1622
    :goto_40
    return-void
.end method

.method public synthetic lambda$onError$5$FaceService$1(JII)V
    .registers 8
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 1568
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->access$16901(Lcom/android/server/biometrics/face/FaceService;JII)V

    .line 1571
    const/4 v0, 0x1

    if-ne p3, v0, :cond_29

    .line 1573
    const-string v0, "GFaceService"

    const-string v1, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    monitor-enter p0

    .line 1575
    :try_start_10
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$9602(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1576
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-wide/16 v1, 0x0

    # setter for: Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/face/FaceService;->access$17002(Lcom/android/server/biometrics/face/FaceService;J)J

    .line 1577
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/16 v1, -0x2710

    # setter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$17102(Lcom/android/server/biometrics/face/FaceService;I)I

    .line 1578
    monitor-exit p0

    goto :goto_29

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw v0

    .line 1580
    :cond_29
    :goto_29
    return-void
.end method

.method public synthetic lambda$onLockoutChanged$8$FaceService$1(J)V
    .registers 5
    .param p1, "duration"    # J

    .line 1638
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 1639
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->notifyLockoutResetMonitors()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$16300(Lcom/android/server/biometrics/face/FaceService;)V

    .line 1641
    :cond_b
    return-void
.end method

.method public synthetic lambda$onRemoved$6$FaceService$1(Ljava/util/ArrayList;J)V
    .registers 10
    .param p1, "faceIds"    # Ljava/util/ArrayList;
    .param p2, "deviceId"    # J

    .line 1587
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    .line 1588
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2e

    .line 1589
    new-instance v3, Landroid/hardware/face/Face;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v1, v4, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 1591
    .local v3, "face":Landroid/hardware/face/Face;
    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    invoke-static {v4, v3, v5}, Lcom/android/server/biometrics/face/FaceService;->access$16701(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 1588
    .end local v3    # "face":Landroid/hardware/face/Face;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v0    # "i":I
    :cond_2e
    goto :goto_39

    .line 1594
    :cond_2f
    new-instance v0, Landroid/hardware/face/Face;

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 1595
    .local v0, "face":Landroid/hardware/face/Face;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    invoke-static {v1, v0, v2}, Lcom/android/server/biometrics/face/FaceService;->access$16801(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 1597
    .end local v0    # "face":Landroid/hardware/face/Face;
    :goto_39
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v3, "face_unlock_re_enroll"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1599
    return-void
.end method

.method public synthetic lambda$sehOnAuthenticated$11$FaceService$1(ILjava/util/ArrayList;JLjava/util/ArrayList;)V
    .registers 9
    .param p1, "faceId"    # I
    .param p2, "Object"    # Ljava/util/ArrayList;
    .param p3, "deviceId"    # J
    .param p5, "token"    # Ljava/util/ArrayList;

    .line 1707
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->preOnAuthenticated(I)I
    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$15900(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)I

    move-result v0

    if-nez v0, :cond_b

    .line 1708
    return-void

    .line 1710
    :cond_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 1711
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getFaceClientExtImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    .line 1712
    .local v0, "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    if-eqz v0, :cond_1e

    .line 1713
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->setFidoResultData(Ljava/util/ArrayList;)V

    .line 1716
    .end local v0    # "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    :cond_1e
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->stopOperation()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    .line 1717
    new-instance v0, Landroid/hardware/face/Face;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p3, p4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 1718
    .local v0, "face":Landroid/hardware/face/Face;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    if-lez p1, :cond_32

    const/4 v2, 0x1

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    invoke-static {v1, v2, v0, p5}, Lcom/android/server/biometrics/face/FaceService;->access$16001(Lcom/android/server/biometrics/face/FaceService;ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    .line 1719
    return-void
.end method

.method public synthetic lambda$sehOnPreviewFrame$10$FaceService$1(IIII)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I
    .param p4, "format"    # I

    .line 1694
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->mPreviewImage:[B

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleImageProcessed([BIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/face/FaceService;->access$16101(Lcom/android/server/biometrics/face/FaceService;[BIIII)V

    .line 1695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->mPreviewImage:[B

    .line 1696
    return-void
.end method

.method public synthetic lambda$sehOnPreviewUpdated$9$FaceService$1(IIII)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I
    .param p4, "format"    # I

    .line 1669
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->mPreviewImage:[B

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleImageProcessed([BIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/face/FaceService;->access$16201(Lcom/android/server/biometrics/face/FaceService;[BIIII)V

    .line 1670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->mPreviewImage:[B

    .line 1671
    return-void
.end method

.method public onAcquired(JIII)V
    .registers 14
    .param p1, "deviceId"    # J
    .param p3, "userId"    # I
    .param p4, "acquiredInfo"    # I
    .param p5, "vendorCode"    # I

    .line 1481
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_19

    .line 1482
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$14300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$7DzDQwoPfgYi40WuB8Xi0hA3qVQ;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$7DzDQwoPfgYi40WuB8Xi0hA3qVQ;-><init>(Lcom/android/server/biometrics/face/FaceService$1;JII)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_dd

    .line 1486
    :cond_19
    const/16 v0, 0x16

    if-eq p4, v0, :cond_27

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredInfo:I
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v1

    if-eq p4, v1, :cond_33

    :cond_27
    if-ne p4, v0, :cond_40

    .line 1487
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredVendorInfo:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v0

    if-ne p5, v0, :cond_40

    .line 1488
    :cond_33
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # ++operator for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSkipAcquiredEventCount:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14604(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_40

    .line 1489
    return-void

    .line 1492
    :cond_40
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    const/4 v1, 0x0

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSkipAcquiredEventCount:I
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14602(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)I

    .line 1493
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredInfo:I
    invoke-static {v0, p4}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14402(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)I

    .line 1494
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredVendorInfo:I
    invoke-static {v0, p5}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14502(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)I

    .line 1496
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsOperationStarted:Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z

    move-result v0

    const-string v1, "GFaceService"

    const-string v2, ", "

    if-nez v0, :cond_85

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAcquired: skip ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") after stop()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return-void

    .line 1501
    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAcquired: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    invoke-static {p4}, Landroid/hardware/face/FaceManager;->getAcquiredName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-static {p5}, Landroid/hardware/face/FaceManager;->getAcquiredName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1501
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$14800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$nAJW2CUiRVwKodf4dyKLiDFm0M4;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p5

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$nAJW2CUiRVwKodf4dyKLiDFm0M4;-><init>(Lcom/android/server/biometrics/face/FaceService$1;IIJ)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1522
    :goto_dd
    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 22
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1527
    .local p5, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v13, p0

    move/from16 v14, p3

    if-lez v14, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v5, v0

    .line 1528
    .local v5, "authenticated":Z
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_2a

    .line 1529
    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$14900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v7

    new-instance v8, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$xnaoCOBjrToYOR8urAWfagS9ox0;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-wide/from16 v3, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$xnaoCOBjrToYOR8urAWfagS9ox0;-><init>(Lcom/android/server/biometrics/face/FaceService$1;IJZLjava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v2, p1

    move/from16 v15, p4

    goto :goto_90

    .line 1534
    :cond_2a
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsOperationStarted:Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z

    move-result v0

    const-string v1, "GFaceService"

    if-nez v0, :cond_51

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticated: skip ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") after stop()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    return-void

    .line 1538
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticated: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p4

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$15000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;

    move-object v6, v1

    move-object/from16 v7, p0

    move/from16 v8, p3

    move-wide/from16 v9, p1

    move v11, v5

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$-bIqr0Xgotsgi7BRoqLNe0KC2sE;-><init>(Lcom/android/server/biometrics/face/FaceService$1;IJZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1548
    :goto_90
    return-void
.end method

.method public onEnrollResult(JIII)V
    .registers 15
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "userId"    # I
    .param p5, "remaining"    # I

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnrollResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    if-nez p5, :cond_3f

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mDaemonIsCancelling:Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14000(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1441
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    const/4 v1, 0x1

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14102(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z

    .line 1443
    :cond_3f
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$14200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move v4, p4

    move v5, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$5KX0mKSLUDfwmHyM1U0_Ru2XGJA;-><init>(Lcom/android/server/biometrics/face/FaceService$1;IIIJ)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1475
    return-void
.end method

.method public onEnumerate(JLjava/util/ArrayList;I)V
    .registers 13
    .param p1, "deviceId"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1605
    .local p3, "faceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnumerate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$15300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$PXsPzWofb8YhEBWqHqnzFnKx3nY;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$PXsPzWofb8YhEBWqHqnzFnKx3nY;-><init>(Lcom/android/server/biometrics/face/FaceService$1;JLjava/util/ArrayList;I)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1623
    return-void
.end method

.method public onError(JIII)V
    .registers 14
    .param p1, "deviceId"    # J
    .param p3, "userId"    # I
    .param p4, "error"    # I
    .param p5, "vendorCode"    # I

    .line 1553
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    const-string v1, "GFaceService"

    if-nez v0, :cond_35

    .line 1555
    const/4 v0, 0x5

    if-ne p4, v0, :cond_10

    .line 1556
    const-string/jumbo v0, "onError: skip error (5:cancel) from daemon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    return-void

    .line 1559
    :cond_10
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsOperationStarted:Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: skip ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") after stop()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    return-void

    .line 1564
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    invoke-static {p4}, Landroid/hardware/face/FaceManager;->getErrorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-static {p5}, Landroid/hardware/face/FaceManager;->getErrorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1564
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$15100(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$7UqzxHikvXrRa8XMUOUE7TVup-0;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$7UqzxHikvXrRa8XMUOUE7TVup-0;-><init>(Lcom/android/server/biometrics/face/FaceService$1;JII)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1581
    return-void
.end method

.method public onLockoutChanged(J)V
    .registers 5
    .param p1, "duration"    # J

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLockoutChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_24

    .line 1630
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$15402(Lcom/android/server/biometrics/face/FaceService;I)I

    goto :goto_41

    .line 1631
    :cond_24
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3b

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_34

    goto :goto_3b

    .line 1634
    :cond_34
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$15402(Lcom/android/server/biometrics/face/FaceService;I)I

    goto :goto_41

    .line 1632
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x2

    # setter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$15402(Lcom/android/server/biometrics/face/FaceService;I)I

    .line 1637
    :goto_41
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$15500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GYxYVZWEz4paxsWQaFKy8r8lgyk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$GYxYVZWEz4paxsWQaFKy8r8lgyk;-><init>(Lcom/android/server/biometrics/face/FaceService$1;J)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1642
    return-void
.end method

.method public onRemoved(JLjava/util/ArrayList;I)V
    .registers 7
    .param p1, "deviceId"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1585
    .local p3, "faceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$15200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$CmihN_QSZoIUet5wm3MGDPVXpQs;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$CmihN_QSZoIUet5wm3MGDPVXpQs;-><init>(Lcom/android/server/biometrics/face/FaceService$1;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1600
    return-void
.end method

.method public sehOnAuthenticated(JIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 16
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1701
    .local p5, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .local p6, "Object":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsOperationStarted:Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$14700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z

    move-result v0

    const-string v1, "GFaceService"

    if-nez v0, :cond_27

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sehOnAuthenticated: skip ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") after stop()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    return-void

    .line 1705
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sehOnAuthenticated: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$15800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move-object v4, p6

    move-wide v5, p1

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$rN7zX0AiI5Gi0i98OfP_mPmJUQo;-><init>(Lcom/android/server/biometrics/face/FaceService$1;ILjava/util/ArrayList;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1720
    return-void
.end method

.method public sehOnPreviewFrame(Landroid/os/HidlMemory;IIII)V
    .registers 14
    .param p1, "hidlMem"    # Landroid/os/HidlMemory;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I
    .param p5, "orientation"    # I

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sehOnPreviewFrame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    if-nez p1, :cond_34

    .line 1679
    const-string/jumbo v0, "sehOnPreviewUpdated: preview data is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    return-void

    .line 1683
    :cond_34
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->mPreviewImage:[B

    if-eqz v0, :cond_40

    .line 1684
    const-string/jumbo v0, "sehOnPreviewUpdated: previous preview is not processed yet"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    const/4 p1, 0x0

    .line 1686
    return-void

    .line 1689
    :cond_40
    invoke-static {p1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->mPreviewImage:[B

    .line 1691
    const/4 p1, 0x0

    .line 1693
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$15700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$bE5xNaPt5mwAI-x1WlUzkEXb6s0;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$bE5xNaPt5mwAI-x1WlUzkEXb6s0;-><init>(Lcom/android/server/biometrics/face/FaceService$1;IIII)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1697
    return-void
.end method

.method public sehOnPreviewUpdated(Ljava/util/ArrayList;IIII)V
    .registers 14
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;IIII)V"
        }
    .end annotation

    .line 1649
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sehOnPreviewUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    if-eqz p1, :cond_76

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_34

    goto :goto_76

    .line 1656
    :cond_34
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->mPreviewImage:[B

    if-eqz v0, :cond_40

    .line 1657
    const-string/jumbo v0, "sehOnPreviewUpdated: previous preview is not processed yet"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const/4 p1, 0x0

    .line 1659
    return-void

    .line 1662
    :cond_40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->mPreviewImage:[B

    .line 1663
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_49
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 1664
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$1;->mPreviewImage:[B

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 1663
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 1666
    .end local v0    # "i":I
    :cond_60
    const/4 p1, 0x0

    .line 1668
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$1;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$15600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$1$KoCirE4vRtPVFDvGghE2c9CgneM;-><init>(Lcom/android/server/biometrics/face/FaceService$1;IIII)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1672
    return-void

    .line 1652
    :cond_76
    :goto_76
    const-string/jumbo v0, "sehOnPreviewUpdated: preview data is null or size is 0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    return-void
.end method
