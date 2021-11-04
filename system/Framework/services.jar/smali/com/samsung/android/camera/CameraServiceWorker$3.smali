.class Lcom/samsung/android/camera/CameraServiceWorker$3;
.super Lcom/samsung/android/camera/ICameraServiceWorker$Stub;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 968
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireRequestInjector()Landroid/os/IBinder;
    .registers 3

    .line 1062
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_13

    .line 1067
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1800(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

    move-result-object v0

    return-object v0

    .line 1063
    :cond_13
    const-string v0, "CameraService_worker"

    const-string v1, "Only system user is allowed to call acquireRequestInjector"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1073
    const-string v0, "CameraService_worker is up and running"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    const-string v0, "\tInterface v1 Hash:7b3482c206b81098e1f5ea982136c03996ac4405"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tCamera is opened: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$900(Lcom/samsung/android/camera/CameraServiceWorker;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->COMMON:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v0, p2}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->dumpLog(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/io/PrintWriter;)V

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\tShake EventListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1200(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tLast event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mLastEventMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1000(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1200(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1200(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->dumpLog(Ljava/io/PrintWriter;)V

    .line 1081
    :cond_76
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->SHAKE:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v0, p2}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->dumpLog(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/io/PrintWriter;)V

    .line 1083
    const-string v0, "\n\tFold Event"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t\tLast fold state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J
    invoke-static {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->access$2300(Lcom/samsung/android/camera/CameraServiceWorker;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1800(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->dump(Ljava/io/PrintWriter;)V

    .line 1087
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1700(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->dump(Ljava/io/PrintWriter;)V

    .line 1088
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->REQUEST:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    invoke-static {v0, p2}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->dumpLog(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/io/PrintWriter;)V

    .line 1089
    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 976
    const-string v0, "7b3482c206b81098e1f5ea982136c03996ac4405"

    return-object v0
.end method

.method public final getInterfaceVersion()I
    .registers 2

    .line 971
    const/4 v0, 0x1

    return v0
.end method

.method public notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 14
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I
    .param p3, "facing"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I

    .line 1014
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_28

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return-void

    .line 1019
    :cond_28
    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->cameraStateToString(I)Ljava/lang/String;
    invoke-static {p2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$2000(I)Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, "state":Ljava/lang/String;
    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->cameraFacingToString(I)Ljava/lang/String;
    invoke-static {p3}, Lcom/samsung/android/camera/CameraServiceWorker;->access$2100(I)Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, "facingStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/camera/CameraServiceWorker;->access$2200(Lcom/samsung/android/camera/CameraServiceWorker;Ljava/lang/String;IILjava/lang/String;I)V

    .line 1025
    return-void
.end method

.method public pingForUpdate()V
    .registers 6

    .line 981
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_28

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-void

    .line 986
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 990
    .local v0, "identity":J
    :try_start_2c
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1400(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_67

    .line 991
    :try_start_33
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    const/16 v4, 0x1e

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->notifySCPMParamChangeRetryLocked(I)V
    invoke-static {v3, v4}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1600(Lcom/samsung/android/camera/CameraServiceWorker;I)V

    .line 992
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_64

    .line 994
    :try_start_3b
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;
    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1700(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;->updateCameraService()V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_67

    .line 997
    :try_start_44
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1800(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->sendAllExtraRequestsToRequestInjector()V
    :try_end_4d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_44 .. :try_end_4d} :catch_4e
    .catchall {:try_start_44 .. :try_end_4d} :catchall_67

    .line 1000
    goto :goto_4f

    .line 998
    :catch_4e
    move-exception v2

    .line 1003
    :goto_4f
    :try_start_4f
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->access$700(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_67

    .line 1004
    :try_start_56
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # invokes: Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V
    invoke-static {v3, v4}, Lcom/samsung/android/camera/CameraServiceWorker;->access$1900(Lcom/samsung/android/camera/CameraServiceWorker;I)V

    .line 1005
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_61

    .line 1007
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1008
    nop

    .line 1009
    return-void

    .line 1005
    :catchall_61
    move-exception v3

    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$3;
    :try_start_63
    throw v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_67

    .line 992
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$3;
    :catchall_64
    move-exception v3

    :try_start_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$3;
    :try_start_66
    throw v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    .line 1007
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker$3;
    :catchall_67
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1008
    throw v2
.end method

.method public queryPackageName(II)Ljava/lang/String;
    .registers 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, ""

    const-string v2, "CameraService_worker"

    const/16 v3, 0x417

    if-eq v0, v3, :cond_2a

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling UID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return-object v1

    .line 1035
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1038
    .local v3, "identity":J
    :try_start_2e
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    # getter for: Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    const-string v5, "activity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1039
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1040
    .local v5, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v5, :cond_47

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v5, v6

    .line 1041
    :cond_47
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1042
    .local v7, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, p1, :cond_8a

    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v8, p2, :cond_8a

    .line 1043
    iget-object v6, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v6, :cond_8b

    iget-object v6, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_8b

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package name = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v1, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v1, v1, v8
    :try_end_86
    .catchall {:try_start_2e .. :try_end_86} :catchall_90

    .line 1056
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1049
    return-object v1

    .line 1053
    .end local v7    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_8a
    goto :goto_4b

    .line 1054
    :cond_8b
    nop

    .line 1056
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1054
    return-object v1

    .line 1056
    .end local v0    # "manager":Landroid/app/ActivityManager;
    .end local v5    # "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catchall_90
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1057
    throw v0
.end method
