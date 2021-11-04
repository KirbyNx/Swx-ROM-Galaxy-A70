.class Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;
.super Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiometricPromptServiceListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V
    .registers 3
    .param p2, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 1243
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 1244
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    .line 1245
    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .registers 8
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1253
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1254
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    .line 1255
    invoke-static {p3, p4}, Landroid/hardware/face/FaceManager;->getMappedAcquiredInfo(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 1256
    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3, p4}, Landroid/hardware/face/FaceManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 1254
    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAcquired(ILjava/lang/String;)V

    .line 1258
    :cond_1b
    return-void
.end method

.method public onError(JIII)V
    .registers 9
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I
    .param p5, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1263
    const/16 v0, 0x8

    if-ne p3, v0, :cond_12

    const/16 v1, 0x3ee

    if-ne p4, v1, :cond_12

    .line 1264
    const/4 p3, 0x3

    .line 1265
    const/4 p4, 0x0

    .line 1267
    const-string v1, "GFaceService"

    const-string/jumbo v2, "onMask error (1006) is changed as timeout for BiometricPrompt"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1271
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v1

    invoke-interface {v1, p5, v0, p3, p4}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onError(IIII)V

    .line 1273
    :cond_1f
    return-void
.end method

.method public onSemAuthenticationSucceededInternal(Z[BZLandroid/os/Bundle;)V
    .registers 8
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # [B
    .param p3, "isStrong"    # Z
    .param p4, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1281
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1282
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getFaceClientExtImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    .line 1283
    .local v0, "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    if-nez v0, :cond_12

    const/4 v1, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->getFidoResultData()[B

    move-result-object v1

    .line 1284
    .local v1, "resultData":[B
    :goto_16
    if-nez p4, :cond_1e

    .line 1285
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object p4, v2

    .line 1287
    :cond_1e
    const-string v2, "SEM_KEY_CHALLENGE_TOKEN"

    invoke-virtual {p4, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onSemAuthenticationSucceeded(Z[BZLandroid/os/Bundle;)V

    .line 1291
    .end local v0    # "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    .end local v1    # "resultData":[B
    :cond_2a
    return-void
.end method
