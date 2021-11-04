.class Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;
.super Ljava/lang/Object;
.source "FaceService.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListenerImpl"
.end annotation


# instance fields
.field private mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V
    .registers 3
    .param p2, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 1302
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1303
    iput-object p2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 1304
    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .registers 6
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1327
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_7

    .line 1328
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onAcquired(JII)V

    .line 1330
    :cond_7
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .registers 4
    .param p1, "deviceId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_7

    .line 1353
    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFailed(J)V

    .line 1355
    :cond_7
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 13
    .param p1, "deviceId"    # J
    .param p3, "biometric"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1336
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_44

    .line 1337
    if-eqz p3, :cond_14

    instance-of v0, p3, Landroid/hardware/face/Face;

    if-eqz v0, :cond_b

    goto :goto_14

    .line 1345
    :cond_b
    const-string v0, "GFaceService"

    const-string/jumbo v1, "onAuthenticationSucceeded received non-face biometric"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 1338
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getFaceClientExtImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    .line 1339
    .local v0, "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    move-object v4, p3

    check-cast v4, Landroid/hardware/face/Face;

    .line 1341
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_27

    :cond_25
    move v6, v2

    goto :goto_36

    :cond_27
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->isKeyguard()Z

    move-result v6

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getSecurityLevel(Z)I
    invoke-static {v5, v6}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$8700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)I

    move-result v5

    if-ne v5, v3, :cond_25

    move v6, v3

    .line 1342
    :goto_36
    if-nez v0, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->getFidoResultData()[B

    move-result-object v2

    :goto_3e
    move-object v7, v2

    .line 1339
    move-wide v2, p1

    move v5, p4

    invoke-interface/range {v1 .. v7}, Landroid/hardware/face/IFaceServiceReceiver;->onSemAuthenticationSucceeded(JLandroid/hardware/face/Face;IZ[B)V

    .line 1348
    .end local v0    # "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    :cond_44
    :goto_44
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_30

    .line 1311
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_23

    .line 1312
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$13500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 1313
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_23

    instance-of v1, v0, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_23

    .line 1314
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->onEnrollResult(Ljava/lang/String;II)V
    invoke-static {v1, v2, v3, p2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$13600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Ljava/lang/String;II)V

    .line 1318
    .end local v0    # "client":Lcom/android/server/biometrics/ClientMonitor;
    :cond_23
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 1319
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 1318
    invoke-interface {v0, v1, v2, v3, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollResult(JII)V

    .line 1322
    :cond_30
    return-void
.end method

.method public onEnumerated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_f

    .line 1388
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 1389
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 1388
    invoke-interface {v0, v1, v2, v3, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnumerated(JII)V

    .line 1391
    :cond_f
    return-void
.end method

.method public onError(JIII)V
    .registers 7
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I
    .param p5, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1360
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_b

    .line 1361
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->onError(II)V
    invoke-static {v0, p3, p4}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$13700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;II)V

    .line 1363
    :cond_b
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_12

    .line 1364
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onError(JII)V

    .line 1366
    :cond_12
    return-void
.end method

.method public onImageProcessed([BIIII)V
    .registers 12
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I
    .param p5, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_c

    .line 1398
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceServiceReceiver;->onSemImageProcessed([BIIII)V

    .line 1400
    :cond_c
    return-void
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_30

    .line 1373
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_23

    .line 1374
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$13800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 1375
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_23

    instance-of v1, v0, Lcom/android/server/biometrics/RemovalClient;

    if-eqz v1, :cond_23

    .line 1376
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->onRemoved(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$13900(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Ljava/lang/String;I)V

    .line 1379
    .end local v0    # "client":Lcom/android/server/biometrics/ClientMonitor;
    :cond_23
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 1380
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 1379
    invoke-interface {v0, v1, v2, v3, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onRemoved(JII)V

    .line 1382
    :cond_30
    return-void
.end method

.method public onSemStatusUpdate(ILjava/lang/String;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1405
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_7

    .line 1406
    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onSemStatusUpdate(ILjava/lang/String;)V

    .line 1408
    :cond_7
    return-void
.end method
