.class Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;
.super Lcom/android/server/vr/GearVrManagerServiceStubAdapter;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GearVrManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 352
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cpu"    # I
    .param p4, "gpu"    # I

    .line 371
    const-string v0, "acquireVrClocks"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 547
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    .line 414
    return-void
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public getPowerLevelState()I
    .registers 2

    .line 401
    const-string v0, "getPowerLevelState"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->getPowerLevelState()I

    move-result v0

    return v0
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "option"    # Ljava/lang/String;

    .line 389
    const-string/jumbo v0, "getSystemOption"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId(ILjava/lang/String;I)[I
    .registers 6
    .param p1, "pid"    # I
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 453
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "getThreadId"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vr/DeviceController;->getThreadId(ILjava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public is3rdPartyDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ids"    # Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->is3rdPartyDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDock()Z
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v0

    return v0
.end method

.method public isHmtDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ids"    # Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->isHmtDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMount()Z
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v0

    return v0
.end method

.method public isPersistentVrMode()Z
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "isPersistentVrMode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v0

    return v0
.end method

.method public isPowerLimitingDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ids"    # Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->isPowerLimitingDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v0

    return v0
.end method

.method public readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "node"    # Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "readSysNode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/vr/DeviceController;->readSysNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 4
    .param p1, "cb"    # Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 507
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "registerVrStateListener"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 509
    return-void
.end method

.method public releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 377
    const-string/jumbo v0, "releaseVrClocks"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeSysNode(Ljava/lang/String;)Z
    .registers 4
    .param p1, "node"    # Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "removeSysNode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/vr/DeviceController;->removeSysNode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public retrieveEnableFrequencyLevels()[I
    .registers 2

    .line 395
    const-string/jumbo v0, "retrieveEnableFrequencyLevels"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->retrieveEnableFrequencyLevels()[I

    move-result-object v0

    return-object v0
.end method

.method public setOverlayRestriction(Z[Ljava/lang/String;I)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "exemptedPackages"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 441
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setOverlayRestriction"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->setOverlayRestriction(Z[Ljava/lang/String;I)V

    .line 443
    return-void
.end method

.method public setPermissions(Ljava/lang/String;III)I
    .registers 7
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "uid"    # I
    .param p4, "gid"    # I

    .line 477
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setPermissions"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/vr/DeviceController;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public setPersistentVrMode(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 518
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setPersistentVrMode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->setPersistentVrMode(Z)V

    .line 520
    return-void
.end method

.method public setSystemMouseControlType(I)V
    .registers 4
    .param p1, "type"    # I

    .line 495
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setSystemMouseControlType"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->setSystemMouseControlType(I)V

    .line 497
    return-void
.end method

.method public setSystemMouseShowMouseEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 501
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setSystemMouseShowMouseEnabled"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->setSystemMouseShowMouseEnabled(Z)V

    .line 503
    return-void
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 383
    const-string/jumbo v0, "setSystemOption"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public setThreadAffinity(I[I)I
    .registers 5
    .param p1, "tid"    # I
    .param p2, "cpus"    # [I

    .line 447
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadAffinity"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/DeviceController;->setThreadAffinity(I[I)I

    move-result v0

    return v0
.end method

.method public setThreadGroup(II)Z
    .registers 5
    .param p1, "tid"    # I
    .param p2, "group"    # I

    .line 483
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadGroup"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/DeviceController;->setThreadGroup(II)Z

    move-result v0

    return v0
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "priority"    # I

    .line 407
    const-string/jumbo v0, "setThreadSchedFifo"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public setThreadScheduler(III)Z
    .registers 6
    .param p1, "tid"    # I
    .param p2, "policy"    # I
    .param p3, "priority"    # I

    .line 489
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadScheduler"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vr/DeviceController;->setThreadScheduler(III)Z

    move-result v0

    return v0
.end method

.method public setVrMode(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setVrMode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->setVrMode(Z)V

    .line 430
    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 4
    .param p1, "cb"    # Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 513
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "unregisterVrStateListener"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 515
    return-void
.end method

.method public writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "makeDir"    # Z

    .line 465
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "writeSysNode"

    # invokes: Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vr/DeviceController;->writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
