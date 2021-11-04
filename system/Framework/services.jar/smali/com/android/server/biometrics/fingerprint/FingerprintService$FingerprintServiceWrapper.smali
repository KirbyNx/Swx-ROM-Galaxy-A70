.class final Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintServiceWrapper"
.end annotation


# static fields
.field private static final ENROLL_TIMEOUT_SEC:I = 0x3c


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p2, "x1"    # Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    .line 306
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    return-void
.end method


# virtual methods
.method public addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 765
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    return-void
.end method

.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLockoutResetCallback called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-eqz p1, :cond_22

    .line 656
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5801(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    .line 657
    return-void

    .line 652
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 39
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;

    .line 447
    move-object/from16 v10, p0

    move/from16 v15, p4

    move-object/from16 v14, p5

    move-object/from16 v13, p7

    iget-object v0, v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v28

    .line 450
    .local v28, "isKeyguard":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v29

    .line 452
    .local v29, "identity":J
    if-eqz v28, :cond_4b

    :try_start_18
    iget-object v0, v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_44

    if-eqz v0, :cond_4b

    const/16 v0, 0x1000

    move/from16 v12, p6

    if-eq v12, v0, :cond_4d

    .line 456
    const v0, 0x534e4554

    :try_start_2d
    const-string v1, "79776455"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 457
    const-string v0, "FingerprintService"

    const-string v1, "Authenticate invoked when user is encrypted or lockdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v14, v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendErrorEvent(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_42

    .line 465
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    return-void

    .line 465
    :catchall_42
    move-exception v0

    goto :goto_47

    :catchall_44
    move-exception v0

    move/from16 v12, p6

    :goto_47
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw v0

    .line 452
    :cond_4b
    move/from16 v12, p6

    .line 465
    :cond_4d
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    nop

    .line 469
    iget-object v0, v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 470
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->semAuthenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 472
    return-void

    .line 475
    :cond_70
    iget-object v0, v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, v15, v13}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 476
    iget-object v0, v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    .local v0, "restricted":Z
    move/from16 v23, v0

    .line 477
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    move-object v11, v1

    iget-object v2, v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object v12, v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v13

    move-object v13, v2

    iget-object v2, v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 478
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v2

    move-object v4, v14

    move-object v14, v2

    iget-object v2, v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v5

    move-wide v15, v5

    new-instance v2, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    move-object/from16 v18, v2

    iget-object v5, v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {v2, v5, v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v2, v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 479
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v19

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, p1

    move/from16 v20, p4

    move-wide/from16 v21, p2

    move-object/from16 v24, p7

    invoke-direct/range {v11 .. v27}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZZ)V

    .line 481
    .local v1, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    iget-object v2, v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-wide/from16 v5, p2

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    invoke-static {v2, v1, v5, v6, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    .line 482
    return-void
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockForAuthentication:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 573
    :try_start_7
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V
    invoke-static {v1, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 574
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I
    .param p6, "fromClient"    # Z

    .line 591
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 592
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 594
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 437
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelEnrollmentInternal(Landroid/os/IBinder;)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)V

    .line 439
    return-void
.end method

.method public cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelFingerprintDetect called from non-sysui package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void

    .line 585
    :cond_2a
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public detectFingerprint(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 487
    move-object/from16 v0, p0

    move/from16 v14, p2

    move-object/from16 v10, p4

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 488
    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "FingerprintService"

    if-nez v1, :cond_30

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detectFingerprint called from non-sysui package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void

    .line 493
    :cond_30
    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    if-nez v1, :cond_42

    .line 496
    const-string v1, "detectFingerprint invoked when user is not encrypted or lockdown"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 500
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detectFingerprint, owner: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 503
    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1, v14, v10}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 506
    :cond_6b
    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v18

    .local v18, "restricted":Z
    move/from16 v13, v18

    .line 507
    const/16 v19, 0x0

    .line 508
    .local v19, "operationId":I
    new-instance v20, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    move-object/from16 v1, v20

    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object v2, v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 509
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v5

    new-instance v7, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    move-object v8, v7

    iget-object v9, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v15, p3

    invoke-direct {v7, v9, v15}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v7, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 510
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v9

    const-wide/16 v11, 0x0

    const/4 v7, 0x0

    move v15, v7

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v7, p1

    move/from16 v10, p2

    move-object/from16 v14, p4

    invoke-direct/range {v1 .. v17}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZZ)V

    .line 514
    .local v1, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 515
    .local v2, "orgId":J
    new-instance v4, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 516
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v7

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;-><init>(Lcom/android/server/biometrics/ClientMonitor;ILandroid/os/Bundle;Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)V

    .line 515
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->setExtensionImpl(Lcom/android/server/biometrics/SemClientExtension;)V

    .line 517
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    iget-object v4, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-wide/16 v5, 0x0

    move-object/from16 v7, p4

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    invoke-static {v4, v1, v5, v6, v7}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    .line 521
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 662
    return-void

    .line 665
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 667
    .local v0, "ident":J
    :try_start_13
    array-length v2, p3

    if-lez v2, :cond_27

    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 668
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->dumpProto(Ljava/io/FileDescriptor;)V
    invoke-static {v2, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V

    goto :goto_2c

    .line 670
    :cond_27
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_31

    .line 673
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    nop

    .line 675
    return-void

    .line 673
    :catchall_31
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    throw v2
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 28
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;

    .line 329
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move/from16 v0, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p6

    iget-object v1, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v2, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enroll: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] from pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v1, 0x0

    if-eqz v14, :cond_fa

    array-length v3, v14

    if-lez v3, :cond_fa

    .line 334
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1200()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    array-length v4, v14

    move v5, v1

    :goto_42
    if-ge v5, v4, :cond_5d

    aget-byte v6, v14, v5

    .line 337
    .local v6, "b":B
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v8, v6, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "%02x "

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 339
    :cond_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enroll: len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v3    # "strBuilder":Ljava/lang/StringBuilder;
    goto :goto_94

    .line 341
    :cond_7f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_94
    iget-object v2, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I
    invoke-static {v2, v12, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;I)I

    move-result v11

    .line 352
    .end local p3    # "userId":I
    .local v11, "userId":I
    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v16

    .line 353
    .local v16, "restricted":Z
    move v9, v11

    .line 354
    .local v9, "groupId":I
    new-instance v17, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 355
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v4

    new-instance v7, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {v7, v0, v13}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v8

    new-array v10, v1, [I

    const/16 v18, 0x3c

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v19, v10

    move-object/from16 v10, p2

    move/from16 v20, v11

    .end local v11    # "userId":I
    .local v20, "userId":I
    move/from16 v11, v16

    move-object/from16 v12, p6

    move-object/from16 v13, v19

    move/from16 v14, v18

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[II)V

    .line 426
    .local v0, "client":Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 427
    .local v1, "orgId":J
    new-instance v3, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 428
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;-><init>(Lcom/android/server/biometrics/ClientMonitor;ILandroid/os/Bundle;Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)V

    .line 427
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;->setExtensionImpl(Lcom/android/server/biometrics/SemClientExtension;)V

    .line 429
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 432
    iget-object v3, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move/from16 v4, v20

    .end local v20    # "userId":I
    .local v4, "userId":I
    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    invoke-static {v3, v0, v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    .line 433
    return-void

    .line 344
    .end local v0    # "client":Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    .end local v1    # "orgId":J
    .end local v4    # "userId":I
    .end local v9    # "groupId":I
    .end local v16    # "restricted":Z
    .restart local p3    # "userId":I
    :cond_fa
    const-string v3, "enroll: invalided cryptoToken"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v2, 0x5

    move-object/from16 v3, p4

    invoke-static {v3, v2, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendErrorEvent(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V

    .line 347
    return-void
.end method

.method public enumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 21
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 631
    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 633
    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v14

    .line 634
    .local v14, "restricted":Z
    new-instance v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$3;

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 635
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v12, p3

    invoke-direct {v8, v0, v12}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 636
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p2

    move v11, v14

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$3;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V

    .line 642
    .local v0, "client":Lcom/android/server/biometrics/EnumerateClient;
    iget-object v1, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V
    invoke-static {v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/EnumerateClient;)V

    .line 643
    return-void
.end method

.method public getAuthenticatorId(I)J
    .registers 4
    .param p1, "callingUserId"    # I

    .line 738
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getAuthenticatorId(I)J
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7000(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 717
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 718
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 716
    const/4 v2, 0x0

    move-object v1, p2

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 719
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 722
    :cond_1b
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasEnrolledFingerprints(ILjava/lang/String;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 729
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 727
    const/4 v2, 0x0

    move-object v1, p2

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_18

    .line 730
    const/4 v0, 0x0

    return v0

    .line 733
    :cond_18
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasEnrolledBiometrics(I)Z

    move-result v0

    return v0
.end method

.method public initConfiguredStrength(I)V
    .registers 4
    .param p1, "strength"    # I

    .line 777
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->initConfiguredStrengthInternal(I)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8100(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 779
    return-void
.end method

.method public isClientActive()Z
    .registers 3

    .line 757
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    monitor-enter v0

    .line 759
    :try_start_a
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    :goto_1e
    monitor-exit v0

    return v1

    .line 760
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .registers 10
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 685
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 686
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 684
    const/4 v2, 0x0

    move-object v1, p1

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 687
    return v1

    .line 690
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 692
    .local v2, "token":J
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 693
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-eqz v0, :cond_31

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v4
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_35

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_31

    const/4 v1, 0x1

    .line 695
    :cond_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    return v1

    .line 695
    .end local v0    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :catchall_35
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    throw v0
.end method

.method public synthetic lambda$startPreparedClient$0$FingerprintService$FingerprintServiceWrapper(I)V
    .registers 3
    .param p1, "cookie"    # I

    .line 561
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->startCurrentClient(I)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9700(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    return-void
.end method

.method public postEnroll(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 321
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public preEnroll(Landroid/os/IBinder;)J
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 315
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->startPreEnroll(Landroid/os/IBinder;)J
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public prepareForAuthentication(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    .registers 41
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "cookie"    # I
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "callingUserId"    # I

    .line 528
    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 529
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->semPrepareForAuthentication(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIII)V

    .line 531
    return-void

    .line 534
    :cond_23
    iget-object v0, v12, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 535
    iget-object v0, v12, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move/from16 v1, p4

    move-object/from16 v10, p6

    invoke-virtual {v0, v1, v10}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 536
    const/4 v0, 0x1

    .line 537
    .local v0, "restricted":Z
    new-instance v3, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    move-object v13, v3

    iget-object v2, v12, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object v14, v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v15

    iget-object v2, v12, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 538
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v16

    iget-object v2, v12, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v17

    new-instance v2, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;

    move-object/from16 v20, v2

    iget-object v4, v12, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v11, p5

    invoke-direct {v2, v4, v11}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    iget-object v2, v12, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 540
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v21

    const/16 v25, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v19, p1

    move/from16 v22, p4

    move-wide/from16 v23, p2

    move-object/from16 v26, p6

    move/from16 v27, p7

    invoke-direct/range {v13 .. v29}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZZ)V

    .line 542
    .local v3, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    iget-object v2, v12, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-wide/from16 v4, p2

    move-object/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    invoke-static/range {v2 .. v9}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 544
    return-void
.end method

.method public remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "groupId"    # I
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 606
    move-object/from16 v15, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p3

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v2, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 611
    if-nez p1, :cond_35

    .line 612
    const-string/jumbo v0, "remove(): token is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void

    .line 616
    :cond_35
    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v16

    .line 617
    .local v16, "restricted":Z
    new-instance v17, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$2;

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 618
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v12, p5

    invoke-direct {v8, v0, v12}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 619
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, v16

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$2;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;)V

    .line 625
    .local v0, "client":Lcom/android/server/biometrics/RemovalClient;
    iget-object v1, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V
    invoke-static {v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/RemovalClient;)V

    .line 626
    return-void
.end method

.method public removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 771
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 773
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z
    invoke-static {v0, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6500(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 703
    return-void

    .line 705
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 712
    return-void
.end method

.method public request(Landroid/os/IBinder;I[B[BIILjava/lang/String;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    .registers 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cmd"    # I
    .param p3, "inputBuf"    # [B
    .param p4, "outputBuf"    # [B
    .param p5, "inParam"    # I
    .param p6, "groupId"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 897
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v0

    .line 898
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 897
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->startRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public resetTimeout([B)V
    .registers 4
    .param p1, "token"    # [B

    .line 744
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasEnrolledBiometrics(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 747
    const-string v0, "FingerprintService"

    const-string v1, "Ignoring lockout reset, no templates enrolled"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void

    .line 752
    :cond_1b
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    iget-object v1, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 753
    return-void
.end method

.method public semAuthenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 35
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;

    .line 788
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semAuthenticate: ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] from pkg="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "FingerprintService"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getBootPhase()I

    move-result v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    if-ge v0, v6, :cond_43

    .line 790
    const-string v0, "FingerprintService"

    const-string/jumbo v6, "semAuthenticate: system not ready"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-static {v3, v4, v5}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendErrorEvent(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V

    .line 793
    return-void

    .line 795
    :cond_43
    iget-object v0, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockForAuthentication:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 797
    :try_start_4a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_167

    move-wide/from16 v22, v6

    .line 799
    .local v22, "identity":J
    :try_start_50
    iget-object v0, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/server/biometrics/Utils;->isUserEncryptedOrLockdown(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_15d

    if-eqz v0, :cond_8d

    :try_start_5c
    iget-object v0, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 800
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_88

    if-eqz v0, :cond_85

    const/16 v0, 0x1000

    move/from16 v13, p6

    if-eq v13, v0, :cond_8f

    .line 804
    const v0, 0x534e4554

    :try_start_71
    const-string v6, "79776455"

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 805
    const-string v0, "FingerprintService"

    const-string v6, "Authenticate invoked when user is encrypted or lockdown"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-static {v3, v4, v5}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendErrorEvent(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_15d

    .line 813
    :try_start_80
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v21

    .line 810
    return-void

    .line 800
    :cond_85
    move/from16 v13, p6

    goto :goto_8f

    .line 813
    :catchall_88
    move-exception v0

    move/from16 v13, p6

    goto/16 :goto_15e

    .line 799
    :cond_8d
    move/from16 v13, p6

    .line 813
    :cond_8f
    :goto_8f
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 814
    nop

    .line 816
    const/4 v0, 0x1

    .line 817
    .local v0, "restricted":Z
    if-eqz v15, :cond_d1

    .line 818
    iget-object v4, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v6, "com.samsung.android.permission.FINGERPRINT_PRIVILEGED"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z
    invoke-static {v4, v6}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c9

    iget-object v4, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v6, "android.permission.MANAGE_BIOMETRIC"

    .line 819
    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z
    invoke-static {v4, v6}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c9

    iget-object v4, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 820
    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z
    invoke-static {v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v4

    if-eqz v4, :cond_c9

    iget-object v4, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v6, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    .line 821
    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z
    invoke-static {v4, v6}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bd

    goto :goto_c9

    .line 825
    :cond_bd
    const-string/jumbo v4, "sem_privileged_attr"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 826
    const-string v4, "SEM_KEY_PRIVILEGED_FLAG"

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_d1

    .line 822
    :cond_c9
    :goto_c9
    const/4 v0, 0x0

    .line 823
    const-string v4, "FingerprintService"

    const-string v6, "authenticate : GRANTED for FINGERPRINT_PRIVILEGED"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_d1
    :goto_d1
    iget-object v4, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I
    invoke-static {v4, v14, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;I)I

    move-result v4

    move v12, v4

    .line 832
    .local v12, "userId":I
    iget-object v4, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v6}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v4, v6, v12}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_fc

    .line 833
    const-string v4, "FingerprintService"

    const-string v6, "No enrolled fingerprint"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/16 v4, 0xb

    invoke-static {v3, v4, v5}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendErrorEvent(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V

    .line 836
    monitor-exit v21

    return-void

    .line 839
    :cond_fc
    new-instance v24, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    iget-object v5, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    iget-object v4, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v4, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 840
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v7

    iget-object v4, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v8

    new-instance v11, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v4, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {v11, v4, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v4, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 841
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v16
    :try_end_11f
    .catchall {:try_start_80 .. :try_end_11f} :catchall_167

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v4, v24

    move-object/from16 v10, p1

    move/from16 v25, v12

    .end local v12    # "userId":I
    .local v25, "userId":I
    move/from16 v12, v16

    move/from16 v13, v25

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v14, p2

    move/from16 v16, v0

    move-object/from16 v17, p7

    :try_start_137
    invoke-direct/range {v4 .. v20}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZZ)V

    move-object/from16 v4, v24

    .line 845
    .local v4, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 846
    .local v5, "orgId":J
    new-instance v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    const/4 v8, 0x1

    .line 847
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v9

    invoke-direct {v7, v4, v8, v3, v9}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;-><init>(Lcom/android/server/biometrics/ClientMonitor;ILandroid/os/Bundle;Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)V

    .line 846
    invoke-virtual {v4, v7}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->setExtensionImpl(Lcom/android/server/biometrics/SemClientExtension;)V

    .line 848
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 850
    iget-object v7, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;
    :try_end_152
    .catchall {:try_start_137 .. :try_end_152} :catchall_159

    move-wide/from16 v8, p2

    :try_start_154
    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    invoke-static {v7, v4, v8, v9, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    .line 851
    .end local v0    # "restricted":Z
    .end local v4    # "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .end local v5    # "orgId":J
    .end local v22    # "identity":J
    .end local v25    # "userId":I
    monitor-exit v21

    .line 852
    return-void

    .line 851
    :catchall_159
    move-exception v0

    move-wide/from16 v8, p2

    goto :goto_16c

    .line 813
    .restart local v22    # "identity":J
    :catchall_15d
    move-exception v0

    :goto_15e
    move-wide/from16 v8, p2

    move-object v2, v14

    move-object v3, v15

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 814
    nop

    .end local p0    # "this":Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "opId":J
    .end local p4    # "groupId":I
    .end local p5    # "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local p6    # "flags":I
    .end local p7    # "opPackageName":Ljava/lang/String;
    .end local p8    # "bundle":Landroid/os/Bundle;
    throw v0

    .line 851
    .end local v22    # "identity":J
    .restart local p0    # "this":Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "opId":J
    .restart local p4    # "groupId":I
    .restart local p5    # "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .restart local p6    # "flags":I
    .restart local p7    # "opPackageName":Ljava/lang/String;
    .restart local p8    # "bundle":Landroid/os/Bundle;
    :catchall_167
    move-exception v0

    move-wide/from16 v8, p2

    move-object v2, v14

    move-object v3, v15

    :goto_16c
    monitor-exit v21
    :try_end_16d
    .catchall {:try_start_154 .. :try_end_16d} :catchall_16e

    throw v0

    :catchall_16e
    move-exception v0

    goto :goto_16c
.end method

.method public semBioSysUiRequest(IIJLjava/lang/String;)I
    .registers 13
    .param p1, "cmd"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # J
    .param p5, "arg3"    # Ljava/lang/String;

    .line 939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 940
    const/4 v0, -0x1

    return v0

    .line 942
    :cond_a
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleBioSysUiRequest(IIJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public semGetIconBottomMargin()I
    .registers 2

    .line 918
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getSensorAreaMarginFromBottomForFod()I

    move-result v0

    return v0
.end method

.method public semGetInDisplaySensorInfo(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 947
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    .line 948
    return-void

    .line 950
    :cond_9
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInDisplaySensorArea(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 951
    return-void
.end method

.method public semGetSensorAreaInDisplay(IILandroid/graphics/Point;)Landroid/graphics/Rect;
    .registers 5
    .param p1, "type"    # I
    .param p2, "rotation"    # I
    .param p3, "size"    # Landroid/graphics/Point;

    .line 926
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_18

    .line 927
    if-nez p1, :cond_f

    .line 928
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getFodSensorAreaRectForKeyguard()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 930
    :cond_f
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getFodSensorAreaRect(ILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 933
    :cond_18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public semPrepareForAuthentication(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIII)V
    .registers 35
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "cookie"    # I
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "callingUserId"    # I
    .param p11, "extraFlag"    # I

    .line 860
    move-object/from16 v0, p0

    move/from16 v1, p11

    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v3, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 863
    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move/from16 v3, p4

    move-object/from16 v15, p6

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I
    invoke-static {v2, v15, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;I)I

    move-result v2

    .line 864
    .end local p4    # "groupId":I
    .local v2, "groupId":I
    const/4 v3, 0x1

    .line 865
    .local v3, "restricted":Z
    const/4 v4, 0x0

    .line 866
    .local v4, "requireConfirmation":Z
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v13, v5

    .line 867
    .local v13, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_46

    .line 868
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_24

    .line 869
    const/4 v4, 0x1

    .line 871
    :cond_24
    const/4 v3, 0x0

    .line 872
    const-string v5, "SEM_KEY_PRIVILEGED_FLAG"

    invoke-virtual {v13, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 873
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepare authentication: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FingerprintService"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v3

    move/from16 v21, v4

    goto :goto_4a

    .line 867
    :cond_46
    move/from16 v20, v3

    move/from16 v21, v4

    .line 876
    .end local v3    # "restricted":Z
    .end local v4    # "requireConfirmation":Z
    .local v20, "restricted":Z
    .local v21, "requireConfirmation":Z
    :goto_4a
    new-instance v22, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    move-object/from16 v3, v22

    iget-object v5, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object v4, v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 877
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v6}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v7}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v7

    new-instance v9, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;

    move-object v10, v9

    iget-object v11, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v14, p5

    invoke-direct {v9, v11, v14}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    iget-object v9, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 879
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v11

    const/16 v19, 0x0

    move-object/from16 v9, p1

    move v12, v2

    move-object v1, v13

    .end local v13    # "b":Landroid/os/Bundle;
    .local v1, "b":Landroid/os/Bundle;
    move-wide/from16 v13, p2

    move/from16 v15, v20

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, v21

    invoke-direct/range {v3 .. v19}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZZ)V

    move-object/from16 v11, v22

    .line 883
    .local v11, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 884
    .local v12, "orgId":J
    new-instance v3, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 885
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v11, v5, v1, v4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;-><init>(Lcom/android/server/biometrics/ClientMonitor;ILandroid/os/Bundle;Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)V

    .line 884
    invoke-virtual {v11, v3}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->setExtensionImpl(Lcom/android/server/biometrics/SemClientExtension;)V

    .line 886
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 888
    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object v4, v11

    move-wide/from16 v5, p2

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    invoke-static/range {v3 .. v10}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 890
    return-void
.end method

.method public semRegisterFingerprintViewListener(Landroid/os/IBinder;ZLcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "internal"    # Z
    .param p3, "callback"    # Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 906
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 907
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->registerAodListener(Landroid/os/IBinder;ZLcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)V

    .line 908
    return-void
.end method

.method public semUnregisterFingerprintViewListener(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "internal"    # Z

    .line 912
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 913
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->unregisterAodListener(Landroid/os/IBinder;Z)V

    .line 914
    return-void
.end method

.method public setActiveUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 598
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->setActiveUserInternal(I)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4900(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 600
    return-void
.end method

.method public startPreparedClient(I)V
    .registers 5
    .param p1, "cookie"    # I

    .line 548
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 551
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1200()Z

    move-result v0

    const-string v1, "FingerprintService"

    if-eqz v0, :cond_31

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreparedClient: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_31
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_PENDING_FINGER_LEAVE:Z

    if-eqz v0, :cond_46

    .line 555
    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->isIsWaitingFingerUp()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 556
    const-string/jumbo v0, "startPreparedClient: WAITING FINGER UP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void

    .line 561
    :cond_46
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$FingerprintServiceWrapper$oPW6zKCj-WNgETvsHOsGjs94Dmc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$FingerprintServiceWrapper$oPW6zKCj-WNgETvsHOsGjs94Dmc;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 562
    return-void

    .line 565
    :cond_55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/biometrics/fingerprint/FingerprintService;->startCurrentClient(I)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4100(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 566
    return-void
.end method
