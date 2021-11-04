.class Lcom/android/server/display/DisplayManagerService$DexEmulator;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexEmulator"
.end annotation


# static fields
.field private static final CMD_DUAL_OVERLAY:Ljava/lang/String; = "dual-overlay"

.field private static final CMD_DUAL_SWITCH:Ljava/lang/String; = "dual-switch"

.field private static final OVERLAY_DISPLAY_DEFAULT:Ljava/lang/String; = "dex#1080x2220/320#2"

.field private static final OVERLAY_DISPLAY_DEX:Ljava/lang/String; = "dex#1920x1080/320#0"


# instance fields
.field private mDualOverlayEnabled:Z

.field private mDualSwitchEnabled:Z

.field private mSystemReady:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 5186
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5192
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    .line 5193
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    .line 5194
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "x1"    # Lcom/android/server/display/DisplayManagerService$1;

    .line 5186
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayManagerService$DexEmulator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$DexEmulator;

    .line 5186
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->onSystemReadyLocked()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/display/DisplayManagerService$DexEmulator;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$DexEmulator;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 5186
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayManagerService$DexEmulator;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$DexEmulator;
    .param p1, "x1"    # Lcom/android/server/display/LogicalDisplay;

    .line 5186
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->onLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/display/DisplayManagerService$DexEmulator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$DexEmulator;

    .line 5186
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    return v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 5291
    const/4 v0, 0x0

    if-eqz p2, :cond_7c

    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_9

    goto/16 :goto_7c

    .line 5294
    :cond_9
    aget-object v1, p2, v0

    .line 5295
    .local v1, "commandStr":Ljava/lang/String;
    const-string v3, "dual-switch"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5296
    .local v3, "dualSwitchRequested":Z
    const-string v4, "dual-overlay"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 5297
    .local v4, "dualOverlayRequested":Z
    if-nez v3, :cond_1d

    if-eqz v4, :cond_1c

    goto :goto_1d

    .line 5323
    :cond_1c
    return v0

    .line 5298
    :cond_1d
    :goto_1d
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->access$2200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v5

    monitor-enter v5

    .line 5299
    :try_start_24
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->hasDexDisplayDeviceLocked()Z

    move-result v6

    if-nez v6, :cond_40

    .line 5300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[cmd desktopmode on] before enable "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5301
    monitor-exit v5

    return v2

    .line 5303
    :cond_40
    if-eqz v3, :cond_56

    .line 5304
    iget-boolean v6, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    if-nez v6, :cond_48

    move v6, v2

    goto :goto_49

    :cond_48
    move v6, v0

    :goto_49
    iput-boolean v6, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    .line 5305
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualSwitchStateLocked()V

    .line 5306
    iget-boolean v6, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-eqz v6, :cond_64

    .line 5307
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    goto :goto_64

    .line 5309
    :cond_56
    if-eqz v4, :cond_64

    .line 5310
    iget-boolean v6, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-nez v6, :cond_5e

    move v6, v2

    goto :goto_5f

    :cond_5e
    move v6, v0

    :goto_5f
    iput-boolean v6, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    .line 5311
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    .line 5313
    :cond_64
    :goto_64
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V
    invoke-static {v6, v0}, Lcom/android/server/display/DisplayManagerService;->access$3000(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 5314
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$9900(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v6, Lcom/android/server/display/DisplayManagerService$DexEmulator$1;

    invoke-direct {v6, p0, v1}, Lcom/android/server/display/DisplayManagerService$DexEmulator$1;-><init>(Lcom/android/server/display/DisplayManagerService$DexEmulator;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5320
    monitor-exit v5

    return v2

    .line 5321
    :catchall_79
    move-exception v0

    monitor-exit v5
    :try_end_7b
    .catchall {:try_start_24 .. :try_end_7b} :catchall_79

    throw v0

    .line 5292
    .end local v1    # "commandStr":Ljava/lang/String;
    .end local v3    # "dualSwitchRequested":Z
    .end local v4    # "dualOverlayRequested":Z
    :cond_7c
    :goto_7c
    return v0
.end method

.method private hasDexDisplayDeviceLocked()Z
    .registers 5

    .line 5243
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$7300(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 5244
    .local v1, "displayDevice":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 5245
    .local v2, "flags":I
    const/high16 v3, 0x100000

    and-int/2addr v3, v2

    if-eqz v3, :cond_23

    .line 5246
    const/4 v0, 0x1

    return v0

    .line 5248
    .end local v1    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    .end local v2    # "flags":I
    :cond_23
    goto :goto_a

    .line 5249
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private hasDualOverlaySettingsLocked()Z
    .registers 5

    .line 5265
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 5266
    return v1

    .line 5268
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$500(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5269
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "overlay_display_devices"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5270
    .local v2, "value":Ljava/lang/String;
    const-string v3, "dex#1080x2220/320#2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "dex#1920x1080/320#0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    return v1
.end method

.method private initDualOverlayStateLocked()V
    .registers 3

    .line 5259
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->hasDualOverlaySettingsLocked()Z

    move-result v1

    if-eq v0, v1, :cond_b

    .line 5260
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    .line 5262
    :cond_b
    return-void
.end method

.method private isDualSwitchEnabledLocked()Z
    .registers 2

    .line 5206
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    return v0
.end method

.method private isExternalLogicalDisplayForDexLocked(Landroid/view/DisplayInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 5253
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    iget v0, p1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    iget v0, p1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method static synthetic lambda$updateDualOverlayStateLocked$1(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "value"    # Ljava/lang/String;

    .line 5280
    const-string/jumbo v0, "overlay_display_devices"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private needToConfigureDefaultDisplayLocked(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .registers 4
    .param p1, "currentDeviceInfo"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 5225
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5226
    # invokes: Lcom/android/server/display/DisplayManagerService;->hasExternalDisplayDeviceForDexLocked()Z
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$9700(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 5225
    :goto_18
    return v0
.end method

.method private needToConfigureDexDisplayLocked(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .registers 6
    .param p1, "currentDeviceInfo"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 5213
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 5214
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    return v0

    .line 5215
    :cond_9
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_22

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    if-nez v0, :cond_22

    .line 5216
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->hasExternalDisplayDeviceForDexLocked()Z
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$9700(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v3

    :goto_21
    return v1

    .line 5218
    :cond_22
    return v3
.end method

.method private onLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 5230
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 5231
    .local v0, "info":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->isExternalLogicalDisplayForDexLocked(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5233
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    .line 5234
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualSwitchStateLocked()V

    .line 5235
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->updateDualOverlayStateLocked()V

    .line 5237
    :cond_15
    return-void
.end method

.method private onSystemReadyLocked()V
    .registers 3

    .line 5197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    .line 5198
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$400(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$gjSFbbqOVtj-KaJUfo0nz0EQTK0;

    invoke-direct {v1, p0}, Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$gjSFbbqOVtj-KaJUfo0nz0EQTK0;-><init>(Lcom/android/server/display/DisplayManagerService$DexEmulator;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5203
    return-void
.end method

.method private updateDualOverlayStateLocked()V
    .registers 5

    .line 5274
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mSystemReady:Z

    if-nez v0, :cond_5

    .line 5275
    return-void

    .line 5277
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$500(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5278
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualOverlayEnabled:Z

    if-eqz v1, :cond_1d

    .line 5279
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    if-eqz v1, :cond_1a

    const-string v1, "dex#1080x2220/320#2"

    goto :goto_1f

    :cond_1a
    const-string v1, "dex#1920x1080/320#0"

    goto :goto_1f

    :cond_1d
    const-string v1, ""

    .line 5280
    .local v1, "value":Ljava/lang/String;
    :goto_1f
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$400(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$7mc8_TuulBygzKPeSRCO0UHoyls;

    invoke-direct {v3, v0, v1}, Lcom/android/server/display/-$$Lambda$DisplayManagerService$DexEmulator$7mc8_TuulBygzKPeSRCO0UHoyls;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5281
    return-void
.end method

.method private updateDualSwitchStateLocked()V
    .registers 3

    .line 5284
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/DisplayManagerService;->getDexLogicalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/LogicalDisplay;
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayManagerService;->access$9800(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    .line 5285
    .local v0, "dexDisplay":Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_d

    .line 5286
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->mDualSwitchEnabled:Z

    iput-boolean v1, v0, Lcom/android/server/display/LogicalDisplay;->mDualSwitchApplied:Z

    .line 5288
    :cond_d
    return-void
.end method


# virtual methods
.method public synthetic lambda$onSystemReadyLocked$0$DisplayManagerService$DexEmulator()V
    .registers 3

    .line 5199
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 5200
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService$DexEmulator;->initDualOverlayStateLocked()V

    .line 5201
    monitor-exit v0

    .line 5202
    return-void

    .line 5201
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method
