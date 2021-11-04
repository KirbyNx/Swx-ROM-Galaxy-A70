.class final Lcom/android/server/vr/GearVrManagerService$LocalService;
.super Lcom/samsung/android/vr/GearVrManagerInternal;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/GearVrManagerService;Lcom/android/server/vr/GearVrManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/vr/GearVrManagerService;
    .param p2, "x1"    # Lcom/android/server/vr/GearVrManagerService$1;

    .line 233
    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService$LocalService;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    return-void
.end method


# virtual methods
.method public getHmtDevice()Lcom/samsung/android/vr/HmtDevice;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->getHmtDevice()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v0

    return-object v0
.end method

.method public getMetaScreenDisplayId()I
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->getMetaScreenDisplayId()I
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$800(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public getPreferredXrDisplayId()I
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->getPreferredXrDisplayId()I
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$500(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public getTetheredDisplayId()I
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->getTetheredDisplayId()I
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$600(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public getXrScreenDisplayId()I
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->getXrScreenDisplayId()I
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$700(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public is3rdPartyDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ids"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->is3rdPartyDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDeveloperMode()Z
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isDeveloperMode()Z

    move-result v0

    return v0
.end method

.method public isDock()Z
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v0

    return v0
.end method

.method public isGearVrInputDevice(Landroid/view/InputDevice;)Z
    .registers 3
    .param p1, "device"    # Landroid/view/InputDevice;

    .line 298
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # getter for: Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;
    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$900(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/HmtManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/vr/HmtManager;->isDeviceMatched(Landroid/view/InputDevice;)Z

    move-result v0

    return v0
.end method

.method public isHmtDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ids"    # Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->isHmtDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMount()Z
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v0

    return v0
.end method

.method public isPersistentVrMode()Z
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v0

    return v0
.end method

.method public isPowerLimitingDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ids"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->isPowerLimitingDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v0

    return v0
.end method

.method public isVrMode(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 333
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->isVrMode(I)Z

    move-result v0

    return v0
.end method

.method public notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V
    .registers 3
    .param p1, "hmtEvent"    # Lcom/samsung/android/vr/HmtEvent;

    .line 236
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    .line 237
    return-void
.end method

.method public notifyVrAppError(Landroid/app/ApplicationErrorReport;)V
    .registers 3
    .param p1, "report"    # Landroid/app/ApplicationErrorReport;

    .line 257
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    # invokes: Lcom/android/server/vr/GearVrManagerService;->notifyVrAppError(Landroid/app/ApplicationErrorReport;)V
    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->access$400(Lcom/android/server/vr/GearVrManagerService;Landroid/app/ApplicationErrorReport;)V

    .line 258
    return-void
.end method

.method public notifyXrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)Z
    .registers 12
    .param p1, "xrFlags"    # I
    .param p2, "requestedVrComponent"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;
    .param p5, "displayId"    # I

    .line 252
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    # invokes: Lcom/android/server/vr/GearVrManagerService;->notifyActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/vr/GearVrManagerService;->access$300(Lcom/android/server/vr/GearVrManagerService;ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public onScreenStateChanged(Z)V
    .registers 3
    .param p1, "isScreenOn"    # Z

    .line 313
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->setScreenState(Z)V

    .line 314
    return-void
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 3
    .param p1, "cb"    # Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 241
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 242
    return-void
.end method

.method public setPersistentVrMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 303
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->setPersistentVrMode(Z)V

    .line 304
    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 3
    .param p1, "cb"    # Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 246
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$LocalService;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 247
    return-void
.end method
