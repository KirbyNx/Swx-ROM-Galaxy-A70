.class final Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;
.super Landroid/hardware/face/IFaceService$Stub;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceServiceWrapper"
.end annotation


# static fields
.field private static final ENROLL_TIMEOUT_SEC:I = 0x4b


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/face/FaceService;)V
    .registers 2

    .line 459
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Landroid/hardware/face/IFaceService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/face/FaceService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p2, "x1"    # Lcom/android/server/biometrics/face/FaceService$1;

    .line 459
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    return-void
.end method

.method private getFirstTemplateForUser(I)I
    .registers 5
    .param p1, "user"    # I

    .line 1224
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v0

    .line 1225
    .local v0, "faces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 1226
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v1

    return v1

    .line 1228
    :cond_18
    return v2
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLockoutResetCallback called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_26

    .line 728
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$6900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    goto :goto_2d

    .line 730
    :cond_26
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->checkPermissionForSemBioFaceManager()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$4300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    .line 732
    :goto_2d
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$7001(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    .line 733
    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .registers 35
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;

    .line 569
    move-object/from16 v10, p0

    move-object/from16 v9, p7

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_5b

    .line 570
    iget-object v0, v10, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$3800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 571
    iget-object v0, v10, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move/from16 v8, p4

    invoke-virtual {v0, v8, v9}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 572
    iget-object v0, v10, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$3900(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v0

    .line 573
    .local v0, "restricted":Z
    new-instance v1, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;

    iget-object v12, v10, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v12}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v2, v10, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 574
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v14

    iget-object v2, v10, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$4000(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v15

    new-instance v2, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v3, v10, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v7, p5

    invoke-direct {v2, v3, v7}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    iget-object v3, v10, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 575
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/biometrics/face/FaceService;->access$4100(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v19

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v11, v1

    move-object/from16 v17, p1

    move-object/from16 v18, v2

    move-wide/from16 v21, p2

    move/from16 v23, v0

    move-object/from16 v24, p7

    invoke-direct/range {v11 .. v26}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 577
    .local v1, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    iget-object v2, v10, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-wide/from16 v11, p2

    # invokes: Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    invoke-static {v2, v1, v11, v12, v9}, Lcom/android/server/biometrics/face/FaceService;->access$4200(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    .line 578
    .end local v0    # "restricted":Z
    .end local v1    # "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    goto :goto_76

    .line 579
    :cond_5b
    move-wide/from16 v11, p2

    move/from16 v8, p4

    move-object/from16 v7, p5

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 581
    :goto_76
    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    .registers 31
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "b"    # Landroid/os/Bundle;
    .param p9, "fidoRequestData"    # [B

    .line 588
    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move/from16 v13, p4

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate called token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,opId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,opPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GFaceService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->checkPermissionForSemBioFaceManager()V
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$4300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    .line 595
    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1, v13, v11}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 596
    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$4400(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v17

    .line 597
    .local v17, "restricted":Z
    if-eqz v17, :cond_72

    .line 598
    const-string v1, "authenticate: restricted app"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-eqz v12, :cond_72

    .line 600
    const-string v1, "SEM_KEY_PRIVILEGED_FLAG"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 601
    const-string/jumbo v1, "sem_privileged_attr"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 604
    :cond_72
    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getUserOrWorkProfileId(Ljava/lang/String;I)I
    invoke-static {v1, v11, v13}, Lcom/android/server/biometrics/face/FaceService;->access$4500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;I)I

    move-result v18

    .line 605
    .local v18, "convertedUserId":I
    new-instance v19, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;

    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 606
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$4600(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v7, p5

    invoke-direct {v8, v1, v7}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, v19

    move-object/from16 v7, p1

    move/from16 v9, v18

    move/from16 v10, v18

    move-wide/from16 v11, p2

    move/from16 v13, v17

    move-object/from16 v14, p7

    move/from16 v15, v16

    move/from16 v16, v20

    invoke-direct/range {v1 .. v16}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 610
    .local v1, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 611
    .local v2, "orgId":J
    new-instance v4, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    iget-object v5, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v6, 0x1

    move-object/from16 v7, p8

    invoke-direct {v4, v5, v1, v6, v7}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/ClientMonitor;ILandroid/os/Bundle;)V

    .line 612
    .local v4, "clientExt":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->setExtensionImpl(Lcom/android/server/biometrics/SemClientExtension;)V

    .line 613
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    move-object/from16 v5, p9

    invoke-virtual {v4, v5}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->setFidoRequestData([B)V

    .line 615
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->getHashID()I

    move-result v8

    const-string v9, "A"

    move-object/from16 v10, p7

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v6, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-wide/from16 v8, p2

    # invokes: Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    invoke-static {v6, v1, v8, v9, v10}, Lcom/android/server/biometrics/face/FaceService;->access$4700(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    .line 617
    return-void
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthentication called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,opPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_2e

    .line 654
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$5500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    goto :goto_35

    .line 656
    :cond_2e
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->checkPermissionForSemBioFaceManager()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$4300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    .line 658
    :goto_35
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->access$5600(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I
    .param p6, "fromClient"    # Z

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthenticationFromService called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,opPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_2e

    .line 666
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$5700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    goto :goto_35

    .line 668
    :cond_2e
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->checkPermissionForSemBioFaceManager()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$4300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    .line 670
    :goto_35
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    # invokes: Lcom/android/server/biometrics/face/FaceService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    invoke-static/range {v1 .. v7}, Lcom/android/server/biometrics/face/FaceService;->access$5800(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 672
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelEnrollment called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$3600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->cancelEnrollmentInternal(Landroid/os/IBinder;)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$3700(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)V

    .line 563
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 737
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 738
    return-void

    .line 741
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 743
    .local v0, "ident":J
    :try_start_13
    array-length v2, p3

    const/4 v3, 0x1

    if-le v2, v3, :cond_33

    const-string v2, "--hal"

    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 744
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    array-length v4, p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p3, v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->dumpHal(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    invoke-static {v2, p1, v3}, Lcom/android/server/biometrics/face/FaceService;->access$7100(Lcom/android/server/biometrics/face/FaceService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_38

    .line 746
    :cond_33
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/biometrics/face/FaceService;->access$7200(Lcom/android/server/biometrics/face/FaceService;Ljava/io/PrintWriter;)V
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_3d

    .line 749
    :goto_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 750
    nop

    .line 751
    return-void

    .line 749
    :catchall_3d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 750
    throw v2
.end method

.method public enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)V
    .registers 26
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "cryptoToken"    # [B
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "disabledFeatures"    # [I

    .line 511
    move-object/from16 v15, p0

    move-object/from16 v14, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enroll called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$2500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 513
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move/from16 v13, p1

    invoke-virtual {v0, v13, v14}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 515
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$Tyep82XTVwXOV7Awc-77VWgl82U;

    invoke-direct {v1, v15}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$Tyep82XTVwXOV7Awc-77VWgl82U;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 520
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2700(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v16

    .line 521
    .local v16, "restricted":Z
    new-instance v17, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 522
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2900(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v4

    new-instance v7, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v12, p4

    invoke-direct {v7, v0, v12}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$3000(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v8

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 523
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$3100(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v9

    const/16 v18, 0x4b

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    move-object/from16 v10, p3

    move/from16 v11, v16

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, v18

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[II)V

    .line 547
    .local v0, "client":Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v1, :cond_ad

    .line 548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 549
    .local v1, "orgId":J
    new-instance v3, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    iget-object v4, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/ClientMonitor;ILandroid/os/Bundle;)V

    .line 550
    .local v3, "clientExt":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;->setExtensionImpl(Lcom/android/server/biometrics/SemClientExtension;)V

    .line 551
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->getHashID()I

    move-result v5

    const-string v6, "E"

    move-object/from16 v7, p5

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStart(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    .line 547
    .end local v1    # "orgId":J
    .end local v3    # "clientExt":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    :cond_ad
    move-object/from16 v7, p5

    .line 555
    :goto_af
    iget-object v1, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$3400(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v2

    # invokes: Lcom/android/server/biometrics/face/FaceService;->enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    invoke-static {v1, v0, v2}, Lcom/android/server/biometrics/face/FaceService;->access$3500(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    .line 556
    return-void
.end method

.method public enumerate(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;)V
    .registers 22
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 708
    move-object/from16 v13, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enumerate called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$6500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 711
    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6600(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v15

    .line 712
    .local v15, "restricted":Z
    new-instance v16, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$3;

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 713
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6700(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v12, p3

    invoke-direct {v8, v0, v12}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 714
    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p2

    move v11, v15

    move-object/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$3;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V

    .line 720
    .local v0, "client":Lcom/android/server/biometrics/EnumerateClient;
    iget-object v1, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V
    invoke-static {v1, v0}, Lcom/android/server/biometrics/face/FaceService;->access$6800(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/EnumerateClient;)V

    .line 721
    return-void
.end method

.method public generateChallenge(Landroid/os/IBinder;)J
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "generateChallenge called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/biometrics/face/FaceService;->access$1700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v2

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mRevokeChallengeRunnable:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1800(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 472
    const-string/jumbo v0, "previous revokeChallenge remain, remove revokeChallenge"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mRevokeChallengeRunnable:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1800(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 475
    :cond_4d
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$2102(Lcom/android/server/biometrics/face/FaceService;Z)Z

    .line 477
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->startGenerateChallenge(Landroid/os/IBinder;)J
    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$2200(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAuthenticatorId(I)J
    .registers 8
    .param p1, "callingUserId"    # I

    .line 835
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_12

    .line 836
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$8500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getAuthenticatorId(I)J
    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$8600(Lcom/android/server/biometrics/face/FaceService;I)J

    move-result-wide v0

    return-wide v0

    .line 839
    :cond_12
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->checkPermissionForSemBioFaceManager()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$4300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    .line 840
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 841
    const-wide/16 v0, 0x0

    .line 842
    .local v0, "result":J
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2f

    move v3, v5

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getSecurityLevel(Z)I
    invoke-static {v2, v3}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$8700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)I

    move-result v2

    if-ne v2, v5, :cond_3c

    .line 843
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getAuthenticatorId(I)J
    invoke-static {v2, p1}, Lcom/android/server/biometrics/face/FaceService;->access$8800(Lcom/android/server/biometrics/face/FaceService;I)J

    move-result-wide v0

    .line 845
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAuthenticatorId called from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GFaceService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-wide v0
.end method

.method public getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getEnrolledFaces called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", opPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$8100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 801
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_3b

    .line 802
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 804
    :cond_3b
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v3, 0x0

    .line 805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 806
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 804
    move-object v2, p2

    # invokes: Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/biometrics/face/FaceService;->access$8200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_53

    .line 807
    const/4 v0, 0x0

    return-object v0

    .line 810
    :cond_53
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "feature"    # I
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getFeature called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$9300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILjava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 953
    return-void
.end method

.method public hasEnrolledFaces(ILjava/lang/String;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hasEnrolledFaces called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", opPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_37

    .line 817
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$8300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    goto :goto_3e

    .line 819
    :cond_37
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->checkPermissionForSemBioFaceManager()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$4300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    .line 821
    :goto_3e
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_47

    .line 822
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 824
    :cond_47
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v3, 0x0

    .line 825
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 826
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 824
    move-object v2, p2

    # invokes: Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/biometrics/face/FaceService;->access$8400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 827
    const/4 v0, 0x0

    return v0

    .line 830
    :cond_5f
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v0

    return v0
.end method

.method public initConfiguredStrength(I)V
    .registers 4
    .param p1, "strength"    # I

    .line 1233
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$12400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->initConfiguredStrengthInternal(I)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$12500(Lcom/android/server/biometrics/face/FaceService;I)V

    .line 1235
    return-void
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .registers 10
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isHardwareDetected called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_27

    .line 762
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$7300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    goto :goto_2e

    .line 764
    :cond_27
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->checkPermissionForSemBioFaceManager()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$4300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    .line 766
    :goto_2e
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v3, 0x0

    .line 767
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 768
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 766
    move-object v2, p1

    # invokes: Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/biometrics/face/FaceService;->access$7400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_46

    .line 769
    return v1

    .line 772
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 774
    .local v2, "token":J
    :try_start_4a
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 775
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-eqz v0, :cond_5f

    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    invoke-static {v4}, Lcom/android/server/biometrics/face/FaceService;->access$7600(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v4
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_63

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5f

    const/4 v1, 0x1

    .line 777
    :cond_5f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    return v1

    .line 777
    .end local v0    # "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :catchall_63
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    throw v0
.end method

.method public synthetic lambda$enroll$0$FaceService$FaceServiceWrapper()V
    .registers 5

    .line 516
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$800(Lcom/android/server/biometrics/face/FaceService;)Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "FaceService"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 518
    return-void
.end method

.method public synthetic lambda$getFeature$3$FaceService$FaceServiceWrapper(ILjava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getFeature for user("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$12800(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v0

    if-nez v0, :cond_42

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enrolled biometrics while getting feature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return-void

    .line 936
    :cond_42
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$12900(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->getFirstTemplateForUser(I)I

    move-result v0

    .line 938
    .local v0, "faceId":I
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v2, :cond_55

    .line 939
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 941
    :cond_55
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    if-eqz v2, :cond_a4

    .line 943
    :try_start_5d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 944
    .local v2, "begin":J
    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v4}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v4

    invoke-interface {v4, p3, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object v4

    .line 945
    .local v4, "result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFeature FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms) RESULT: OptionalBool"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget v1, v4, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    if-nez v1, :cond_91

    const/4 v1, 0x1

    goto :goto_92

    :cond_91
    const/4 v1, 0x0

    :goto_92
    iget-boolean v5, v4, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    invoke-interface {p4, v1, p3, v5}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureGet(ZIZ)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_97} :catch_98

    .line 949
    .end local v2    # "begin":J
    .end local v4    # "result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    goto :goto_a4

    .line 947
    :catch_98
    move-exception v1

    .line 948
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to getRequireAttention"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 951
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_a4
    :goto_a4
    return-void
.end method

.method public synthetic lambda$resetLockout$1$FaceService$FaceServiceWrapper([B)V
    .registers 5
    .param p1, "token"    # [B

    .line 857
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$13200(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v0

    const-string v1, "GFaceService"

    if-nez v0, :cond_14

    .line 858
    const-string v0, "Ignoring lockout reset, no templates enrolled"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void

    .line 862
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting lockout for user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$13300(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_49

    .line 865
    :try_start_32
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->resetLockout([B)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3c

    goto :goto_48

    .line 866
    :catch_3c
    move-exception v0

    .line 867
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to reset lockout"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_48
    goto :goto_5a

    .line 870
    :cond_49
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerBg:Landroid/os/Handler;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$13400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 872
    :goto_5a
    return-void
.end method

.method public synthetic lambda$semPauseAuth$6$FaceService$FaceServiceWrapper()V
    .registers 8

    .line 1090
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1091
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1093
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1094
    .local v0, "begin":J
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    invoke-interface {v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPauseEnrollment()I

    move-result v2

    .line 1095
    .local v2, "result":I
    const-string v3, "GFaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehPauseEnrollment(auth) FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms) RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_42} :catch_44

    .line 1098
    nop

    .end local v0    # "begin":J
    .end local v2    # "result":I
    goto :goto_50

    .line 1096
    :catch_44
    move-exception v0

    .line 1097
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to set feature: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1100
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    return-void
.end method

.method public synthetic lambda$semPauseEnroll$4$FaceService$FaceServiceWrapper()V
    .registers 8

    .line 1048
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1049
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1051
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1052
    .local v0, "begin":J
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    invoke-interface {v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehPauseEnrollment()I

    move-result v2

    .line 1053
    .local v2, "result":I
    const-string v3, "GFaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehPauseEnrollment FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms) RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_42} :catch_44

    .line 1056
    nop

    .end local v0    # "begin":J
    .end local v2    # "result":I
    goto :goto_50

    .line 1054
    :catch_44
    move-exception v0

    .line 1055
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to set feature: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    const/4 v1, 0x1

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsEnrollPausing:Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$10502(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z

    .line 1059
    return-void
.end method

.method public synthetic lambda$semResumeAuth$7$FaceService$FaceServiceWrapper()V
    .registers 8

    .line 1112
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1113
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1115
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1116
    .local v0, "begin":J
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    invoke-interface {v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehResumeEnrollment()I

    move-result v2

    .line 1117
    .local v2, "result":I
    const-string v3, "GFaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehResumeEnrollment FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms) RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_42} :catch_44

    .line 1120
    nop

    .end local v0    # "begin":J
    .end local v2    # "result":I
    goto :goto_50

    .line 1118
    :catch_44
    move-exception v0

    .line 1119
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to set feature: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    return-void
.end method

.method public synthetic lambda$semResumeEnroll$5$FaceService$FaceServiceWrapper()V
    .registers 8

    .line 1066
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1067
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1069
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1070
    .local v0, "begin":J
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    invoke-interface {v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehResumeEnrollment()I

    move-result v2

    .line 1071
    .local v2, "result":I
    const-string v3, "GFaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehResumeEnrollment FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms) RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_42} :catch_44

    .line 1074
    nop

    .end local v0    # "begin":J
    .end local v2    # "result":I
    goto :goto_50

    .line 1072
    :catch_44
    move-exception v0

    .line 1073
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to set feature: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1076
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    const/4 v1, 0x0

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsEnrollPausing:Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$10502(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z

    .line 1077
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$12600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const v0, 0xea60

    goto :goto_6c

    .line 1078
    :cond_6a
    const/16 v0, 0x7530

    :goto_6c
    nop

    .line 1079
    .local v0, "timeout":I
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->startOperationTimeout(I)V
    invoke-static {v1, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$12700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V

    .line 1080
    return-void
.end method

.method public synthetic lambda$semSessionClose$9$FaceService$FaceServiceWrapper()V
    .registers 8

    .line 1177
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1178
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1180
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1181
    .local v0, "begin":J
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    invoke-interface {v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehCloseTaSession()I

    move-result v2

    .line 1182
    .local v2, "result":I
    const-string v3, "GFaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehCloseTaSession FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms) RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_42} :catch_44

    .line 1185
    nop

    .end local v0    # "begin":J
    .end local v2    # "result":I
    goto :goto_50

    .line 1183
    :catch_44
    move-exception v0

    .line 1184
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to set feature: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    return-void
.end method

.method public synthetic lambda$semSessionOpen$8$FaceService$FaceServiceWrapper()V
    .registers 8

    .line 1160
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1161
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1163
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1164
    .local v0, "begin":J
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    invoke-interface {v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehOpenTaSession()I

    move-result v2

    .line 1165
    .local v2, "result":I
    const-string v3, "GFaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehOpenTaSession FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms) RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_42} :catch_44

    .line 1168
    nop

    .end local v0    # "begin":J
    .end local v2    # "result":I
    goto :goto_50

    .line 1166
    :catch_44
    move-exception v0

    .line 1167
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to set feature: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_50
    :goto_50
    return-void
.end method

.method public synthetic lambda$setFeature$2$FaceService$FaceServiceWrapper(ILjava/lang/String;I[BZLandroid/hardware/face/IFaceServiceReceiver;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "token"    # [B
    .param p5, "enabled"    # Z
    .param p6, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFeature for user("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$13000(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v0

    if-nez v0, :cond_42

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enrolled biometrics while setting feature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-void

    .line 891
    :cond_42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v0, "byteToken":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_48
    array-length v3, p4

    if-ge v2, v3, :cond_57

    .line 893
    aget-byte v3, p4, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 897
    .end local v2    # "i":I
    :cond_57
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$13100(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->getFirstTemplateForUser(I)I

    move-result v2

    .line 899
    .local v2, "faceId":I
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v3, :cond_6a

    .line 900
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v3}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 902
    :cond_6a
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v3}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v3

    if-eqz v3, :cond_cf

    .line 904
    :try_start_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 905
    .local v3, "begin":J
    iget-object v5, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v5}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v5

    invoke-interface {v5, p3, p5, v0, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    move-result v5

    .line 906
    .local v5, "result":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setFeature FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    if-nez v5, :cond_a7

    const/4 v1, 0x1

    goto :goto_a8

    :cond_a7
    const/4 v1, 0x0

    :goto_a8
    invoke-interface {p6, v1, p3}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureSet(ZI)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_ab} :catch_ac

    .line 911
    .end local v3    # "begin":J
    .end local v5    # "result":I
    goto :goto_cf

    .line 908
    :catch_ac
    move-exception v1

    .line 909
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v3}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set feature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_cf
    :goto_cf
    return-void
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    .registers 42
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "opId"    # J
    .param p5, "groupId"    # I
    .param p6, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "cookie"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUserId"    # I

    .line 625
    move-object/from16 v13, p0

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_21

    .line 626
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->semPrepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIILandroid/os/Bundle;)V

    .line 629
    return-void

    .line 631
    :cond_21
    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$4800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 632
    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move/from16 v1, p5

    move-object/from16 v10, p7

    invoke-virtual {v0, v1, v10}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 633
    const/4 v0, 0x1

    .line 634
    .local v0, "restricted":Z
    new-instance v3, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;

    iget-object v15, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v15}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v16

    iget-object v2, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 635
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v17

    iget-object v2, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$4900(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v18

    new-instance v2, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;

    iget-object v4, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v11, p6

    invoke-direct {v2, v4, v11}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    iget-object v4, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 637
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/biometrics/face/FaceService;->access$5000(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v22

    iget-object v4, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/biometrics/face/FaceService;->access$5100(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v23

    const/16 v26, 0x1

    move-object v14, v3

    move-object/from16 v20, p2

    move-object/from16 v21, v2

    move-wide/from16 v24, p3

    move-object/from16 v27, p7

    move/from16 v28, p8

    move/from16 v29, p1

    invoke-direct/range {v14 .. v29}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 639
    .local v3, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    iget-object v2, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-wide/from16 v4, p3

    move-object/from16 v6, p7

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    # invokes: Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    invoke-static/range {v2 .. v9}, Lcom/android/server/biometrics/face/FaceService;->access$5200(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 641
    return-void
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "faceId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 684
    move-object/from16 v15, p0

    move/from16 v14, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,faceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/biometrics/face/FaceService;->access$6100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 686
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v12, p5

    invoke-virtual {v0, v14, v12}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 688
    if-nez p1, :cond_48

    .line 689
    const-string/jumbo v0, "remove(): token is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return-void

    .line 693
    :cond_48
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6200(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v16

    .line 694
    .local v16, "restricted":Z
    new-instance v17, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$2;

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 695
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6300(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v11, p4

    invoke-direct {v8, v0, v11}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 696
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p3

    move/from16 v12, v16

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$2;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;)V

    .line 702
    .local v0, "client":Lcom/android/server/biometrics/RemovalClient;
    iget-object v1, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V
    invoke-static {v1, v0}, Lcom/android/server/biometrics/face/FaceService;->access$6400(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/RemovalClient;)V

    .line 703
    return-void
.end method

.method public rename(ILjava/lang/String;)V
    .registers 5
    .param p1, "faceId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rename called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$7700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    # invokes: Lcom/android/server/biometrics/face/FaceService;->isCurrentUserOrProfile(I)Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$7800(Lcom/android/server/biometrics/face/FaceService;I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 786
    return-void

    .line 788
    :cond_37
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$8000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 795
    return-void
.end method

.method public resetLockout([B)V
    .registers 4
    .param p1, "token"    # [B

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetLockout called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$8900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$kw0BBGgTrFveHiSJWRbNG8sygqA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$kw0BBGgTrFveHiSJWRbNG8sygqA;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 873
    return-void
.end method

.method public revokeChallenge(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "revokeChallenge called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$2300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 485
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mRevokeChallengeRunnable:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1800(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;->setToken(Landroid/os/IBinder;)V

    .line 486
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # getter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mRevokeChallengeRunnable:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1800(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public semAuthenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;
    .param p9, "fidoRequestData"    # [B

    .line 1027
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 1029
    return-void
.end method

.method public semEnroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "cryptoToken"    # [B
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "disabledFeatures"    # [I
    .param p7, "bundle"    # Landroid/os/Bundle;

    .line 1035
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)V

    .line 1037
    return-void
.end method

.method public semGetSecurityLevel(Z)I
    .registers 4
    .param p1, "isKeyguard"    # Z

    .line 1209
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$12300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semGetSecurityLevel called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getSecurityLevel(Z)I
    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$8700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)I

    move-result v0

    return v0
.end method

.method public semGetTrustAppVersion()Ljava/lang/String;
    .registers 3

    .line 1138
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->hasPermission(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$11400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1139
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "com.samsung.android.bio.face.permission.MANAGE_FACE"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$11500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 1141
    :cond_11
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getTrustAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semIsEnrollSession()Z
    .registers 2

    .line 1041
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->isEnrollSession()Z

    move-result v0

    return v0
.end method

.method public semIsFrameworkHandleLockout()Z
    .registers 2

    .line 1217
    const/4 v0, 0x1

    return v0
.end method

.method public semIsSessionClose()Z
    .registers 8

    .line 1192
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$12200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1194
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 1196
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1197
    .local v0, "begin":J
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    invoke-interface {v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehIsTaSessionClosed()Z

    move-result v2

    .line 1198
    .local v2, "result":Z
    const-string v3, "GFaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sehIsTaSessionClosed FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms) RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_49} :catch_4a

    .line 1199
    return v2

    .line 1200
    .end local v0    # "begin":J
    .end local v2    # "result":Z
    :catch_4a
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to set feature: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_56
    const/4 v0, 0x0

    return v0
.end method

.method public semPauseAuth()V
    .registers 4

    .line 1086
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$10600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$10700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 1088
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_20

    .line 1089
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$10800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$7MhSc8C7XE-PmYdJIRNNiuyShYI;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$7MhSc8C7XE-PmYdJIRNNiuyShYI;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;)V

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 1102
    :cond_20
    const-string v1, "GFaceService"

    const-string/jumbo v2, "semPauseAuth skipped"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :goto_28
    return-void
.end method

.method public semPauseEnroll()V
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$10100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$10200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$sWtcNXuV6LQUM0mei3ckAM1ETKU;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$sWtcNXuV6LQUM0mei3ckAM1ETKU;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1060
    return-void
.end method

.method public semPrepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIILandroid/os/Bundle;)V
    .registers 33
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "opId"    # J
    .param p5, "groupId"    # I
    .param p6, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "cookie"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUserId"    # I
    .param p12, "bundle"    # Landroid/os/Bundle;

    .line 983
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v15, p7

    move-object/from16 v14, p12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semPrepareForAuthentication called token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,opId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p3

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ,userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,opPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p8

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,callingPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p10

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,bundle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GFaceService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v4, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/biometrics/face/FaceService;->access$9700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 991
    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v2, v1, v15}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 992
    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getUserOrWorkProfileId(Ljava/lang/String;I)I
    invoke-static {v2, v15, v1}, Lcom/android/server/biometrics/face/FaceService;->access$9800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;I)I

    move-result v17

    .line 994
    .end local p5    # "groupId":I
    .local v17, "groupId":I
    const/4 v1, 0x1

    .line 995
    .local v1, "restricted":Z
    if-eqz v14, :cond_83

    const/4 v2, 0x0

    const-string v4, "SEM_KEY_PRIVILEGED_FLAG"

    invoke-virtual {v14, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_83

    .line 996
    const/4 v1, 0x0

    move/from16 v18, v1

    goto :goto_8b

    .line 998
    :cond_83
    const-string/jumbo v2, "semPrepareForAuthentication: restricted app"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v1

    .line 1001
    .end local v1    # "restricted":Z
    .local v18, "restricted":Z
    :goto_8b
    new-instance v19, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;

    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 1002
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$9900(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v5

    new-instance v7, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v0, p6

    invoke-direct {v7, v1, v0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    move-object/from16 v1, v19

    move-object/from16 v16, v7

    move-object/from16 v7, p2

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v17

    move-wide/from16 v11, p3

    move/from16 v13, v18

    move-object v0, v14

    move-object/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p1

    invoke-direct/range {v1 .. v16}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    move-object/from16 v9, v19

    .line 1007
    .local v9, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1008
    .local v10, "orgId":J
    new-instance v1, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    move-object/from16 v12, p0

    iget-object v2, v12, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v9, v3, v0}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/ClientMonitor;ILandroid/os/Bundle;)V

    move-object v13, v1

    .line 1009
    .local v13, "clientExt":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    invoke-virtual {v9, v13}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->setExtensionImpl(Lcom/android/server/biometrics/SemClientExtension;)V

    .line 1010
    if-eqz v0, :cond_e3

    .line 1011
    const-string v1, "SEM_KEY_CHALLENGE_DATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1012
    .local v1, "fidoReq":[B
    if-eqz v1, :cond_e3

    .line 1013
    invoke-virtual {v13, v1}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->setFidoRequestData([B)V

    .line 1016
    .end local v1    # "fidoReq":[B
    :cond_e3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1017
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v1

    invoke-virtual {v13}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->getHashID()I

    move-result v2

    const-string v3, "AP"

    move-object/from16 v14, p7

    invoke-virtual {v1, v2, v3, v14}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStart(ILjava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v1, v12, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object v2, v9

    move-wide/from16 v3, p3

    move-object/from16 v5, p7

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    # invokes: Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    invoke-static/range {v1 .. v8}, Lcom/android/server/biometrics/face/FaceService;->access$10000(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 1021
    return-void
.end method

.method public semResetAuthenticationTimeout()Z
    .registers 3

    .line 1130
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->isNeededSetBrightness()Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$11200(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x1388

    goto :goto_f

    .line 1131
    :cond_d
    const/16 v0, 0xfa0

    :goto_f
    nop

    .line 1132
    .local v0, "timeout":I
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v1

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->resetOperationTimeout(I)Z
    invoke-static {v1, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$11300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)Z

    move-result v1

    return v1
.end method

.method public semResumeAuth()V
    .registers 4

    .line 1108
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$10900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$11000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 1110
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_20

    .line 1111
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$11100(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$5rWINC6iWilrZtwzmbTQ_gq69DU;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$5rWINC6iWilrZtwzmbTQ_gq69DU;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;)V

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 1124
    :cond_20
    const-string v1, "GFaceService"

    const-string/jumbo v2, "semResumeAuth skipped"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :goto_28
    return-void
.end method

.method public semResumeEnroll()V
    .registers 3

    .line 1064
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$10300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$10400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$jb84U4V3Ay_EBTKujmse1YsB7u4;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$jb84U4V3Ay_EBTKujmse1YsB7u4;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1081
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    const/4 v1, 0x0

    # setter for: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsEnrollPausing:Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$10502(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z

    .line 1082
    return-void
.end method

.method public semSessionClose()V
    .registers 3

    .line 1175
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$12000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$12100(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$Lpq2jPUdIBKpwJlWIR2f2LAYhLo;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$Lpq2jPUdIBKpwJlWIR2f2LAYhLo;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1188
    return-void
.end method

.method public semSessionOpen()V
    .registers 3

    .line 1158
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$11800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$11900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$4n2SqIJOb2SpKjj220VG9HG8VWg;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$4n2SqIJOb2SpKjj220VG9HG8VWg;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1171
    return-void
.end method

.method public semUpdateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 1148
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->hasPermission(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$11600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1149
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "com.samsung.android.bio.face.permission.MANAGE_FACE"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$11700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 1151
    :cond_11
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->updateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;)V

    .line 1153
    return-void
.end method

.method public setActiveUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setActiveUser called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$5900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->setActiveUserInternal(I)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$6000(Lcom/android/server/biometrics/face/FaceService;I)V

    .line 679
    return-void
.end method

.method public setFeature(IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 20
    .param p1, "userId"    # I
    .param p2, "feature"    # I
    .param p3, "enabled"    # Z
    .param p4, "token"    # [B
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;

    .line 878
    move-object v8, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFeature called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, v8, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$9100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 881
    iget-object v0, v8, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v11

    new-instance v12, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p6

    move v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILjava/lang/String;I[BZLandroid/hardware/face/IFaceServiceReceiver;)V

    invoke-virtual {v11, v12}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 915
    return-void
.end method

.method public startPreparedClient(I)V
    .registers 4
    .param p1, "cookie"    # I

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPreparedClient called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$5300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->startCurrentClient(I)V
    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$5400(Lcom/android/server/biometrics/face/FaceService;I)V

    .line 648
    return-void
.end method

.method public userActivity()V
    .registers 7

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userActivity called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/biometrics/face/FaceService;->access$9500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 960
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v0, :cond_2b

    .line 961
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 963
    :cond_2b
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 965
    :try_start_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 966
    .local v2, "begin":J
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->userActivity()I

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userActivity FINISH ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_60} :catch_62

    .line 970
    nop

    .end local v2    # "begin":J
    goto :goto_6e

    .line 968
    :catch_62
    move-exception v0

    .line 969
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to send userActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6e
    :goto_6e
    return-void
.end method
