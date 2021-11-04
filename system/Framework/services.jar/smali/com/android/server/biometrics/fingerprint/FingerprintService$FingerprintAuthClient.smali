.class final Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;
.super Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintAuthClient"
.end annotation


# instance fields
.field private final mDetectOnly:Z

.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZZ)V
    .registers 19
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "targetUserId"    # I
    .param p9, "groupId"    # I
    .param p10, "opId"    # J
    .param p12, "restricted"    # Z
    .param p13, "owner"    # Ljava/lang/String;
    .param p14, "cookie"    # I
    .param p15, "requireConfirmation"    # Z
    .param p16, "detectOnly"    # Z

    .line 169
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 170
    invoke-direct/range {p0 .. p15}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 172
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->mDetectOnly:Z

    .line 173
    return-void
.end method


# virtual methods
.method public handleFailedAttempt()I
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemClientExtension;->canIgnoreLockout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 207
    return v1

    .line 211
    :cond_a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 212
    .local v0, "currentUser":I
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 215
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    if-eqz v1, :cond_3d

    .line 216
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->scheduleLockoutResetForUser(I)V
    invoke-static {v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$300(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 219
    :cond_3d
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->handleFailedAttempt()I

    move-result v1

    return v1
.end method

.method isDetectOnly()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->mDetectOnly:Z

    return v0
.end method

.method protected isFingerprint()Z
    .registers 2

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public isStrongBiometric()Z
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isStrongBiometric()Z

    move-result v0

    return v0
.end method

.method public onAcquired(II)Z
    .registers 6
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 265
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    check-cast v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 266
    .local v0, "ce":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->onAcquired(II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 268
    const-string v1, "BiometricStats"

    const-string/jumbo v2, "onAcquired: Do not forward events to clients"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v1, 0x0

    return v1

    .line 271
    :cond_14
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v1, :cond_21

    .line 272
    const/4 v1, 0x6

    if-ne p1, v1, :cond_21

    const/16 v1, 0x3ed

    if-ne p2, v1, :cond_21

    .line 274
    const/4 p1, 0x0

    .line 275
    const/4 p2, 0x0

    .line 278
    :cond_21
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onAcquired(II)Z

    move-result v1

    return v1
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .registers 6
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "authenticated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 291
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    check-cast v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 292
    .local v0, "ce":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->setAuthenticationResult(Z)V

    .line 294
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z

    move-result v1

    .line 296
    .local v1, "ret":Z
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->handleAuthenticationResult()Z

    .line 297
    return v1
.end method

.method public onError(JII)Z
    .registers 7
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 283
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    check-cast v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 284
    .local v0, "ce":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->onError(II)Z

    .line 285
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onError(JII)Z

    move-result v1

    return v1
.end method

.method public onStop()V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    check-cast v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 259
    .local v0, "ce":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->postAuthStop(Z)V

    .line 260
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onStop()V

    .line 261
    return-void
.end method

.method public resetFailedAttempts()V
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 183
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 182
    const/4 v2, 0x1

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->resetFailedAttemptsForUser(ZI)V
    invoke-static {v0, v2, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/fingerprint/FingerprintService;ZI)V

    .line 184
    return-void
.end method

.method public shouldFrameworkHandleLockout()Z
    .registers 2

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public start()I
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->start()I

    move-result v0

    return v0

    .line 231
    :cond_d
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->mSemClientExt:Lcom/android/server/biometrics/SemClientExtension;

    check-cast v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 232
    .local v0, "ce":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->isKeyguard()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 233
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->forceCloseEnrollSession()V

    goto :goto_3e

    .line 235
    :cond_1f
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_PENDING_FINGER_LEAVE:Z

    if-eqz v1, :cond_3e

    .line 236
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->isIsWaitingFingerUp()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 237
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->postAuthStart()I

    .line 238
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "start: Pending - FINGER UP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x0

    return v1

    .line 243
    :cond_3e
    :goto_3e
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_49

    .line 244
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->requestAspLevel()V

    .line 247
    :cond_49
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getLockForTZCommand()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 248
    :try_start_52
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->start()I

    move-result v2

    .line 249
    .local v2, "ret":I
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_5e

    .line 250
    if-nez v2, :cond_5d

    .line 251
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->postAuthStart()I

    move-result v2

    .line 253
    :cond_5d
    return v2

    .line 249
    .end local v2    # "ret":I
    :catchall_5e
    move-exception v2

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v2
.end method

.method protected statsModality()I
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->statsModality()I

    move-result v0

    return v0
.end method

.method public wasUserDetected()Z
    .registers 2

    .line 194
    const/4 v0, 0x0

    return v0
.end method
