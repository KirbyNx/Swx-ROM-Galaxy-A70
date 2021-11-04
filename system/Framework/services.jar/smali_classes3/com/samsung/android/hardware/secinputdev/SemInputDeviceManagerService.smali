.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.super Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;
.source "SemInputDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$smiscinputhandler;
    }
.end annotation


# static fields
.field private static final DISPLAY_STATE_AFTER:Z = false

.field private static final DISPLAY_STATE_BEFORE:Z = true

.field public static final ERR_CMD_FAILED:I = -0x4

.field public static final ERR_EXCEPTION:I = -0x5

.field public static final ERR_NONE:I = 0x0

.field public static final ERR_NO_CMD_EXIST:I = -0x3

.field public static final ERR_NO_DEVICE:I = -0x1

.field public static final ERR_NO_HAL_SERVICE:I = -0x2

.field private static final GOS_INTENT:Ljava/lang/String; = "com.samsung.android.game.gos.action.TSP"

.field private static final POWER_STATE_OFF:I = 0x3

.field private static final POWER_STATE_OFF_ON:I = 0x4

.field private static final POWER_STATE_ON:I = 0x1

.field private static final POWER_STATE_ON_OFF:I = 0x2

.field private static final POWER_STATE_SHUTDOWN:I = -0x1

.field private static final SET_AOD_ENABLE:Ljava/lang/String; = "aod_enable"

.field private static final SET_AOD_RECT:Ljava/lang/String; = "set_aod_rect"

.field private static final SET_AUTO_ADJUST_TOUCH:Ljava/lang/String; = "glove_mode"

.field private static final SET_COVER_MODE:Ljava/lang/String; = "clear_cover_mode"

.field private static final SET_EAR_DETECT_ENABLE:Ljava/lang/String; = "ear_detect_enable"

.field private static final SET_EXTERNAL_NOISE_MODE:Ljava/lang/String; = "external_noise_mode"

.field private static final SET_FOD_ENABLE:Ljava/lang/String; = "fod_enable"

.field private static final SET_FOD_ICON_VISIBLE:Ljava/lang/String; = "fod_icon_visible"

.field private static final SET_FOD_LP_MODE:Ljava/lang/String; = "fod_lp_mode"

.field private static final SET_FOD_RECT:Ljava/lang/String; = "set_fod_rect"

.field private static final SET_FP_INT_CONTROL:Ljava/lang/String; = "fp_int_control"

.field private static final SET_GAME_MODE:Ljava/lang/String; = "set_game_mode"

.field private static final SET_GRIP_DATA:Ljava/lang/String; = "set_grip_data"

.field private static final SET_NOTE_MODE:Ljava/lang/String; = "set_note_mode"

.field private static final SET_POCKET_MODE_ENABLE:Ljava/lang/String; = "pocket_mode_enable"

.field private static final SET_PROX_LP_SCAN_MODE:Ljava/lang/String; = "prox_lp_scan_mode"

.field private static final SET_REFRESH_RATE_MODE:Ljava/lang/String; = "refresh_rate_mode"

.field private static final SET_SCAN_RATE:Ljava/lang/String; = "set_scan_rate"

.field private static final SET_SINGLETAP_ENABLE:Ljava/lang/String; = "singletap_enable"

.field private static final SET_SIP_MODE:Ljava/lang/String; = "set_sip_mode"

.field private static final SET_SPAY_ENABLE:Ljava/lang/String; = "spay_enable"

.field private static final SET_SPEN_AOD_ENABLE:Ljava/lang/String; = "set_epen_aod_enable"

.field private static final SET_SPEN_COVER_TYPE:Ljava/lang/String; = "set_cover_type"

.field private static final SET_SYNC_CHANGED:Ljava/lang/String; = "sync_changed"

.field private static final SET_TEMPERATURE:Ljava/lang/String; = "set_temperature"

.field private static final SET_TOUCHABLE_AREA:Ljava/lang/String; = "set_touchable_area"

.field private static final SPEN_SYSFS_PATH:Ljava/lang/String; = "/sys/class/sec/sec_epen"

.field private static final SYSFS_AOD_ACTIVE_AREA:Ljava/lang/String; = "aod_active_area"

.field private static final SYSFS_FOD_INFO:Ljava/lang/String; = "fod_info"

.field private static final SYSFS_FOD_POSITION:Ljava/lang/String; = "fod_pos"

.field private static final SYSFS_GET_LP_DUMP:Ljava/lang/String; = "get_lp_dump"

.field private static final SYSFS_HW_PARAM:Ljava/lang/String; = "hw_param"

.field private static final SYSFS_PROX_POWER_OFF:Ljava/lang/String; = "prox_power_off"

.field private static final SYSFS_SCRUB_POSITION:Ljava/lang/String; = "scrub_pos"

.field private static final SYSFS_SPEN_AOD_ENABLE:Ljava/lang/String; = "aod_enable"

.field private static final SYSFS_SPEN_POSITION:Ljava/lang/String; = "get_epen_pos"

.field private static final TAG:Ljava/lang/String; = "SemInputDeviceManagerService"

.field private static final TSP1_SYSFS_PATH:Ljava/lang/String; = "/sys/class/sec/tsp1"

.field private static final TSP2_SYSFS_PATH:Ljava/lang/String; = "/sys/class/sec/tsp2"

.field private static final TSP_SYSFS_PATH:Ljava/lang/String; = "/sys/class/sec/tsp"


# instance fields
.field private cmdlistSPEN:Ljava/lang/String;

.field private cmdlistTSP1:Ljava/lang/String;

.field private cmdlistTSP2:Ljava/lang/String;

.field private currentGameMode:Ljava/lang/String;

.field private currentPowerState:I

.field private currentProxLpScanMode:Ljava/lang/String;

.field private currentScanRate:Ljava/lang/String;

.field private halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

.field private keepProxLpScanMode:I

.field mBootCompleteBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

.field mGameServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputMonitorMotionEvent:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mShutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mUeventObserver:Landroid/os/SemUEventObserver;

.field mUserSwitchedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private support_feature1:I

.field private support_feature2:I

.field private support_spen_cmd:Z

.field private support_tsp1_sysfs:Z

.field private support_tsp2_cmd:Z

.field private support_tsp_cmd:Z

.field private sysInputEnabledFeature:Z

.field private sysInputRegisterSensorService:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    const-string v0, "SemInputDeviceManagerService"

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;-><init>()V

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    .line 50
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_feature1:I

    .line 51
    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_feature2:I

    .line 53
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp_cmd:Z

    .line 54
    iput-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp2_cmd:Z

    .line 55
    iput-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_spen_cmd:Z

    .line 57
    iput-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp1_sysfs:Z

    .line 59
    const-string v4, ""

    iput-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistTSP1:Ljava/lang/String;

    .line 60
    iput-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistTSP2:Ljava/lang/String;

    .line 61
    iput-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistSPEN:Ljava/lang/String;

    .line 117
    const-string v4, "0"

    iput-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentGameMode:Ljava/lang/String;

    .line 118
    iput-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentScanRate:Ljava/lang/String;

    .line 119
    iput-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentProxLpScanMode:Ljava/lang/String;

    .line 121
    iput-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysInputEnabledFeature:Z

    .line 122
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 132
    iput v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    .line 133
    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    .line 135
    iput-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysInputRegisterSensorService:Z

    .line 139
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    invoke-direct {v2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mInputMonitorMotionEvent:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    .line 185
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mUeventObserver:Landroid/os/SemUEventObserver;

    .line 255
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$4;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mShutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$5;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mBootCompleteBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 281
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$6;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mGameServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 314
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$7;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mUserSwitchedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$8;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mDisplayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    .line 377
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$9;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 142
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mContext:Landroid/content/Context;

    .line 143
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$smiscinputhandler;

    invoke-direct {v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$smiscinputhandler;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$1;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mHandler:Landroid/os/Handler;

    .line 146
    :try_start_71
    invoke-static {}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;->getService()Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_77} :catch_78

    .line 150
    goto :goto_80

    .line 147
    :catch_78
    move-exception v2

    .line 148
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to get ISehInputDevice interface"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    .line 152
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_80
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    if-eqz v1, :cond_af

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSP1Sysfs()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_8d

    .line 154
    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp1_sysfs:Z

    .line 157
    :cond_8d
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getTspSupportFeature(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_feature1:I

    .line 158
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getTspSupportFeature(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_feature2:I

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getSupportCommandList()V

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerUEventObserver()V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerSettingObserver()V

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerBroadcastReceiver()V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerServiceListener()V

    .line 166
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerMonitorMotionEvent(Landroid/content/Context;)V

    goto :goto_b4

    .line 168
    :cond_af
    const-string v1, "hal is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_b4
    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentGameMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentGameMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentScanRate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentScanRate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;ZIII)V
    .registers 5
    .param p0, "x0"    # Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setDisplayStateToDevice(ZIII)V

    return-void
.end method

.method private checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 798
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_spen_cmd:Z

    if-nez v0, :cond_6

    .line 799
    const/4 v0, -0x1

    return v0

    .line 802
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    const-string v1, "SemInputDeviceManagerService"

    if-nez v0, :cond_13

    .line 803
    const-string v0, "checkSPENCmdlistAndRunCmdNoRead: halService is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v0, -0x2

    return v0

    .line 807
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistSPEN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 808
    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->runSpenCmdNoRead(Ljava/lang/String;)I

    move-result v0

    .line 809
    .local v0, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSPENCmdlistAndRunCmdNoRead: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    if-gez v0, :cond_3f

    .line 816
    const/4 v1, -0x4

    return v1

    .line 819
    :cond_3f
    const/4 v1, 0x0

    return v1

    .line 811
    .end local v0    # "ret":I
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSPENCmdlistAndRunCmdNoRead: not supported cmd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v0, -0x3

    return v0
.end method

.method private checkTSP1Sysfs()I
    .registers 4

    .line 1205
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "SemInputDeviceManagerService"

    if-nez v1, :cond_16

    .line 1208
    const-string v1, "checkTSP1Sysfs: single screen"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/4 v1, -0x3

    return v1

    .line 1212
    :cond_16
    const-string v1, "checkTSP1Sysfs: dual screen"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/4 v1, 0x0

    return v1
.end method

.method private checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 759
    const/4 v0, 0x0

    .local v0, "ret1":I
    const/4 v1, 0x0

    .line 760
    .local v1, "ret2":I
    const/4 v2, 0x0

    .line 762
    .local v2, "cmdExist":Z
    iget-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp_cmd:Z

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp2_cmd:Z

    if-nez v3, :cond_d

    .line 763
    const/4 v3, -0x1

    return v3

    .line 766
    :cond_d
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    const-string v4, "SemInputDeviceManagerService"

    if-nez v3, :cond_1a

    .line 767
    const-string v3, "checkTSPCmdlistAndRunCmdNoRead: halService is not enabled"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v3, -0x2

    return v3

    .line 771
    :cond_1a
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistTSP1:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, ", ret="

    if-eqz v3, :cond_44

    .line 772
    const/4 v3, 0x1

    invoke-virtual {p0, v3, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v0

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTSPCmdlistAndRunCmdNoRead[1]: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v2, 0x1

    .line 777
    :cond_44
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistTSP2:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 778
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v1

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTSPCmdlistAndRunCmdNoRead[2]: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v2, 0x1

    .line 783
    :cond_6c
    if-nez v2, :cond_84

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTSPCmdlistAndRunCmdNoRead: not supported cmd: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v3, -0x3

    return v3

    .line 788
    :cond_84
    if-ltz v0, :cond_8b

    if-gez v1, :cond_89

    goto :goto_8b

    .line 792
    :cond_89
    const/4 v3, 0x0

    return v3

    .line 789
    :cond_8b
    :goto_8b
    const/4 v3, -0x4

    return v3
.end method

.method static synthetic lambda$getKeyCodePressed$0(Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 5
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "ret"    # I
    .param p2, "buff"    # Ljava/lang/String;

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKeyCodePressed: ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    return-void
.end method

.method static synthetic lambda$getSpenCommandList$3(Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 5
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "ret"    # I
    .param p2, "buff"    # Ljava/lang/String;

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpenCommandList: ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    return-void
.end method

.method static synthetic lambda$getTspCommandList$2(ILjava/util/ArrayList;ILjava/lang/String;)V
    .registers 6
    .param p0, "devid"    # I
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "ret"    # I
    .param p3, "buff"    # Ljava/lang/String;

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTspCommandList ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") : ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    return-void
.end method

.method static synthetic lambda$getTspSupportFeature$1(ILjava/util/ArrayList;ILjava/lang/String;)V
    .registers 6
    .param p0, "devid"    # I
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "ret"    # I
    .param p3, "buff"    # Ljava/lang/String;

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTspSupportFeature ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") : ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    return-void
.end method

.method static synthetic lambda$runSpenCmd$5(Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 5
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "ret"    # I
    .param p2, "buff"    # Ljava/lang/String;

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runSpenCmd: ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    return-void
.end method

.method static synthetic lambda$runTspCmd$4(ILjava/util/ArrayList;ILjava/lang/String;)V
    .registers 6
    .param p0, "devid"    # I
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "ret"    # I
    .param p3, "buff"    # Ljava/lang/String;

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runTspCmd ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") : ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    return-void
.end method

.method private readSysfs(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "devid"    # I
    .param p2, "filename"    # Ljava/lang/String;

    .line 1118
    monitor-enter p0

    .line 1119
    :try_start_1
    const-string v0, "NG"

    .line 1122
    .local v0, "result":Ljava/lang/String;
    const-string v1, "SemInputDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readSysfs["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3a

    iget-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp1_sysfs:Z

    if-eqz v2, :cond_3a

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/sec/tsp1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "filePath":Ljava/lang/String;
    goto :goto_77

    .line 1126
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_3a
    if-ne p1, v1, :cond_4e

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/sec/tsp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "filePath":Ljava/lang/String;
    goto :goto_77

    .line 1128
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_4e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_63

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/sec/tsp2/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "filePath":Ljava/lang/String;
    goto :goto_77

    .line 1130
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_63
    const/4 v1, 0x3

    if-ne p1, v1, :cond_c0

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/sec/sec_epen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    .restart local v1    # "filePath":Ljava/lang/String;
    :goto_77
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1138
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8b

    .line 1139
    const-string v3, "SemInputDeviceManagerService"

    const-string v4, "file is not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    monitor-exit p0

    return-object v0

    .line 1143
    :cond_8b
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1144
    const-string v3, "SemInputDeviceManagerService"

    const-string v4, "file is not readable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_1 .. :try_end_99} :catchall_c2

    return-object v0

    .line 1148
    :cond_9a
    :try_start_9a
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9f} :catch_ba
    .catchall {:try_start_9a .. :try_end_9f} :catchall_c2

    .line 1149
    .local v3, "fileReader":Ljava/io/FileReader;
    :try_start_9f
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1150
    .local v4, "buffer":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 1151
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_ac
    .catchall {:try_start_9f .. :try_end_ac} :catchall_b0

    .line 1152
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    :try_start_ac
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_ba
    .catchall {:try_start_ac .. :try_end_af} :catchall_c2

    .line 1154
    .end local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_be

    .line 1148
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catchall_b0
    move-exception v4

    :try_start_b1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_b9

    :catchall_b5
    move-exception v5

    :try_start_b6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
    .end local p1    # "devid":I
    .end local p2    # "filename":Ljava/lang/String;
    :goto_b9
    throw v4
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_ba} :catch_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_c2

    .line 1152
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
    .restart local p1    # "devid":I
    .restart local p2    # "filename":Ljava/lang/String;
    :catch_ba
    move-exception v3

    .line 1153
    .local v3, "e":Ljava/lang/Exception;
    :try_start_bb
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1156
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_be
    monitor-exit p0

    return-object v0

    .line 1133
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_c0
    monitor-exit p0

    return-object v0

    .line 1157
    .end local v0    # "result":Ljava/lang/String;
    :catchall_c2
    move-exception v0

    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_bb .. :try_end_c4} :catchall_c2

    throw v0
.end method

.method private registerAutoAdjustTouchSettingObserver()V
    .registers 6

    .line 214
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    const-string v1, "auto_adjust_touch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$3;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Landroid/os/Handler;)V

    .line 214
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 222
    return-void
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysInputEnabledFeature:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 230
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mShutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    :cond_16
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mBootCompleteBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    const-string v1, "com.samsung.android.game.gos.action.TSP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mGameServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mUserSwitchedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    const-string v1, "SemInputDeviceManagerService"

    const-string v2, "registerBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method private registerDisplayRefreshRateModeSettingObserver()V
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    const-string v1, "refresh_rate_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$2;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Landroid/os/Handler;)V

    .line 203
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 211
    return-void
.end method

.method private registerMonitorMotionEvent(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 175
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mInputMonitorMotionEvent:Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_feature1:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputMonitorMotionEvent;->start(Landroid/content/Context;I)V

    .line 176
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "registerMonitorMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method private registerSettingObserver()V
    .registers 3

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->updateRefreshRateFromSettings()V

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerDisplayRefreshRateModeSettingObserver()V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->updateAutoAdjustTouchFromSettings()V

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->registerAutoAdjustTouchSettingObserver()V

    .line 199
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "registerSettingObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method private registerUEventObserver()V
    .registers 4

    .line 180
    const-string v0, "DEVPATH=/devices/virtual/sec/tsp"

    .line 181
    .local v0, "DEVPATH":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mUeventObserver:Landroid/os/SemUEventObserver;

    invoke-virtual {v1, v0}, Landroid/os/SemUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 182
    const-string v1, "SemInputDeviceManagerService"

    const-string v2, "registerUEventObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method private setDisplayStateToDevice(ZIII)V
    .registers 11
    .param p1, "isBefore"    # Z
    .param p2, "stateLogical"    # I
    .param p3, "statePhysical"    # I
    .param p4, "displayType"    # I

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_a

    const-string v1, "EARLY:"

    goto :goto_c

    :cond_a
    const-string v1, "LATE:"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Logical: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Physical: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " displayType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 330
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_42

    .line 331
    if-ne p3, v0, :cond_3e

    .line 332
    const/4 v3, 0x4

    iput v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    goto :goto_42

    .line 333
    :cond_3e
    if-ne p3, v2, :cond_42

    .line 334
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    .line 338
    :cond_42
    :goto_42
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    if-eqz v3, :cond_79

    .line 340
    :try_start_46
    invoke-interface {v3, v2, p3, p1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;->setTspEnable(IIZ)I

    move-result v3

    .line 341
    .local v3, "ret":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableInputDevice: ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5e} :catch_60

    .line 344
    nop

    .end local v3    # "ret":I
    goto :goto_79

    .line 342
    :catch_60
    move-exception v3

    .line 343
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableInputDevice: exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_79
    :goto_79
    if-nez p1, :cond_85

    .line 348
    if-ne p3, v0, :cond_80

    .line 349
    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    goto :goto_85

    .line 350
    :cond_80
    if-ne p3, v2, :cond_85

    .line 351
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    .line 355
    :cond_85
    :goto_85
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    if-ltz v0, :cond_95

    if-ne p3, v2, :cond_95

    .line 356
    const-string v0, "setDisplayStateToDevice: running keeping prox lp scan mode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setProxLpScanMode(I)V

    .line 359
    :cond_95
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 360
    return-void
.end method

.method private writeSysfs(ILjava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "devid"    # I
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;

    .line 1162
    monitor-enter p0

    .line 1163
    :try_start_1
    const-string v0, "SemInputDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSysfs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v0, 0x1

    if-ne p1, v0, :cond_40

    iget-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp1_sysfs:Z

    if-eqz v1, :cond_40

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/sec/tsp1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "filePath":Ljava/lang/String;
    goto :goto_7d

    .line 1168
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_40
    if-ne p1, v0, :cond_54

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/sec/tsp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "filePath":Ljava/lang/String;
    goto :goto_7d

    .line 1170
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_54
    const/4 v0, 0x2

    if-ne p1, v0, :cond_69

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/sec/tsp2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "filePath":Ljava/lang/String;
    goto :goto_7d

    .line 1172
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_69
    const/4 v0, 0x3

    if-ne p1, v0, :cond_cd

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/sec/sec_epen/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1178
    .restart local v0    # "filePath":Ljava/lang/String;
    :goto_7d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_92

    .line 1181
    const-string v2, "SemInputDeviceManagerService"

    const-string v3, "file is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/4 v2, -0x3

    monitor-exit p0

    return v2

    .line 1185
    :cond_92
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_a2

    .line 1186
    const-string v2, "SemInputDeviceManagerService"

    const-string v3, "file is not writable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v2, -0x4

    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_1 .. :try_end_a1} :catchall_d0

    return v2

    .line 1190
    :cond_a2
    :try_start_a2
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a7} :catch_c6
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_d0

    .line 1191
    .local v2, "fileWriter":Ljava/io/FileWriter;
    :try_start_a7
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1192
    .local v3, "buffer":Ljava/io/BufferedWriter;
    invoke-virtual {v3, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1194
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_b5
    .catchall {:try_start_a7 .. :try_end_b5} :catchall_bc

    .line 1195
    .end local v3    # "buffer":Ljava/io/BufferedWriter;
    :try_start_b5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b8} :catch_c6
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_d0

    .line 1198
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    nop

    .line 1200
    const/4 v2, 0x0

    :try_start_ba
    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_d0

    return v2

    .line 1190
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :catchall_bc
    move-exception v3

    :try_start_bd
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c1

    goto :goto_c5

    :catchall_c1
    move-exception v4

    :try_start_c2
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
    .end local p1    # "devid":I
    .end local p2    # "filename":Ljava/lang/String;
    .end local p3    # "cmd":Ljava/lang/String;
    :goto_c5
    throw v3
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c6} :catch_c6
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_d0

    .line 1195
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v0    # "filePath":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
    .restart local p1    # "devid":I
    .restart local p2    # "filename":Ljava/lang/String;
    .restart local p3    # "cmd":Ljava/lang/String;
    :catch_c6
    move-exception v2

    .line 1196
    .local v2, "e":Ljava/lang/Exception;
    :try_start_c7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1197
    const/4 v3, -0x5

    monitor-exit p0

    return v3

    .line 1175
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_cd
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 1201
    :catchall_d0
    move-exception v0

    monitor-exit p0
    :try_end_d2
    .catchall {:try_start_c7 .. :try_end_d2} :catchall_d0

    throw v0
.end method


# virtual methods
.method public clearHwParam(I)I
    .registers 4
    .param p1, "devid"    # I

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearHwParam: devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v0, "hw_param"

    const-string v1, "0"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->writeSysfs(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAodActiveArea(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAodActiveArea: devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v0, "aod_active_area"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->readSysfs(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFodInfo(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFodInfo: devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v0, "fod_info"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->readSysfs(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFodPosition(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFodPosition: devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v0, "fod_pos"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->readSysfs(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHwParam(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLpDump: devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v0, "hw_param"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->readSysfs(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyCodePressed(I)Ljava/lang/String;
    .registers 7
    .param p1, "keycode"    # I

    .line 869
    const-string v0, ""

    .line 870
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$-sVXTUafejbm3ouYEwqIJ6K3wCw;

    invoke-direct {v3, v1}, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$-sVXTUafejbm3ouYEwqIJ6K3wCw;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v2, p1, v3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;->getKeyCodePressed(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_2f

    .line 879
    nop

    .line 881
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 882
    return-object v0

    .line 885
    :cond_20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 876
    :catch_2f
    move-exception v2

    .line 877
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeyCodePressed: exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemInputDeviceManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return-object v0
.end method

.method public getKeyPressStateAll()Ljava/lang/String;
    .registers 11

    .line 824
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    const-string v1, ""

    const-string v2, "SemInputDeviceManagerService"

    if-nez v0, :cond_e

    .line 825
    const-string v0, "getKeyPressStateAll: service is not enabled"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-object v1

    .line 829
    :cond_e
    const-string v0, "getKeyPressStateAll ++"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "volumedown":Ljava/lang/String;
    const/16 v3, 0x73

    invoke-virtual {p0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, "volumeup":Ljava/lang/String;
    const/16 v4, 0x74

    invoke-virtual {p0, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v4

    .line 834
    .local v4, "power":Ljava/lang/String;
    const/16 v5, 0xfc

    invoke-virtual {p0, v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v5

    .line 835
    .local v5, "hot":Ljava/lang/String;
    const/16 v6, 0x2a0

    invoke-virtual {p0, v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v6

    .line 837
    .local v6, "emergency":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    .line 838
    .local v1, "strbuilder":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "114:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "115:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "116:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "252:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "672:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getKeyPressStateAll: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLpDump(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLpDump: devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v0, "get_lp_dump"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->readSysfs(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxPowerOff(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProxPowerOff: devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v0, "prox_power_off"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->readSysfs(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScrubPosition(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScrubPosition: devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v0, "scrub_pos"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->readSysfs(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpenCommandList()Ljava/lang/String;
    .registers 7

    .line 1020
    monitor-enter p0

    .line 1021
    :try_start_1
    const-string v0, "NG"

    .line 1022
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_60

    .line 1024
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$NfGFSdx2IsBTSVP-tkilVJndrD0;

    invoke-direct {v3, v1}, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$NfGFSdx2IsBTSVP-tkilVJndrD0;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;->getSpenCommandList(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_43
    .catchall {:try_start_8 .. :try_end_12} :catchall_60

    .line 1031
    nop

    .line 1033
    const/4 v2, 0x0

    :try_start_14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1034
    monitor-exit p0

    return-object v0

    .line 1037
    :cond_22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1038
    monitor-exit p0

    return-object v0

    .line 1041
    :cond_30
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_spen_cmd:Z

    .line 1043
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 1028
    :catch_43
    move-exception v2

    .line 1029
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SemInputDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpenCommandList: exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    monitor-exit p0

    return-object v0

    .line 1044
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_60
    move-exception v0

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_14 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public getSpenPosition()Ljava/lang/String;
    .registers 3

    .line 753
    const-string v0, "SemInputDeviceManagerService"

    const-string v1, "getSpenPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v0, 0x3

    const-string v1, "get_epen_pos"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->readSysfs(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCommandList()V
    .registers 4

    .line 977
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getTspCommandList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistTSP1:Ljava/lang/String;

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportCommandList: TSP1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistTSP1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getTspCommandList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistTSP2:Ljava/lang/String;

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportCommandList: TSP2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistTSP2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getSpenCommandList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistSPEN:Ljava/lang/String;

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportCommandList: SPEN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->cmdlistSPEN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void
.end method

.method public getSupportDevice(I)I
    .registers 5
    .param p1, "devid"    # I

    .line 890
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "SemInputDeviceManagerService"

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_30

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportDevice: devid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is wrong"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 904
    :cond_26
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_spen_cmd:Z

    if-eqz v0, :cond_44

    .line 905
    const-string v0, "getSupportDevice: spen supported"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return v1

    .line 898
    :cond_30
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp2_cmd:Z

    if-eqz v0, :cond_44

    .line 899
    const-string v0, "getSupportDevice: tsp2 supported"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return v1

    .line 892
    :cond_3a
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp_cmd:Z

    if-eqz v0, :cond_44

    .line 893
    const-string v0, "getSupportDevice: tsp supported"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return v1

    .line 914
    :cond_44
    :goto_44
    const/4 v0, -0x1

    return v0
.end method

.method public getTspCommandList(I)Ljava/lang/String;
    .registers 8
    .param p1, "devid"    # I

    .line 988
    monitor-enter p0

    .line 989
    :try_start_1
    const-string v0, "NG"

    .line 990
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_68

    .line 992
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$-sIhFrQNJFA2C4KjfTcLmL3mHUU;

    invoke-direct {v3, p1, v1}, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$-sIhFrQNJFA2C4KjfTcLmL3mHUU;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {v2, p1, v3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;->getTspCommandList(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_4b
    .catchall {:try_start_8 .. :try_end_12} :catchall_68

    .line 999
    nop

    .line 1001
    const/4 v2, 0x0

    :try_start_14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1002
    monitor-exit p0

    return-object v0

    .line 1005
    :cond_22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1006
    monitor-exit p0

    return-object v0

    .line 1009
    :cond_30
    const/4 v3, 0x1

    if-ne p1, v3, :cond_36

    .line 1010
    iput-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp_cmd:Z

    goto :goto_3b

    .line 1011
    :cond_36
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3b

    .line 1012
    iput-boolean v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_tsp2_cmd:Z

    .line 1015
    :cond_3b
    :goto_3b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 996
    :catch_4b
    move-exception v2

    .line 997
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SemInputDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTspCommandList: exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    monitor-exit p0

    return-object v0

    .line 1016
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_68
    move-exception v0

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_14 .. :try_end_6a} :catchall_68

    throw v0
.end method

.method public getTspSupportFeature(I)I
    .registers 10
    .param p1, "devid"    # I

    .line 919
    const-string v0, "0x%X"

    const/4 v1, 0x1

    const-string v2, "SemInputDeviceManagerService"

    const/4 v3, 0x0

    if-ne p1, v1, :cond_31

    .line 920
    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_feature1:I

    if-ltz v4, :cond_31

    .line 921
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTspSupportFeature1: get previous feautre: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_feature1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_feature1:I

    return v0

    .line 926
    :cond_31
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5d

    .line 927
    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_feature2:I

    if-ltz v4, :cond_5d

    .line 928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTspSupportFeature2: get previous feautre: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_feature2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->support_feature2:I

    return v0

    .line 933
    :cond_5d
    const/4 v0, 0x0

    .line 934
    .local v0, "value":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_63
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    new-instance v6, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$GEQKa-Rt4weMQ3-lZxpVXT7-Sck;

    invoke-direct {v6, p1, v4}, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$GEQKa-Rt4weMQ3-lZxpVXT7-Sck;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {v5, p1, v6}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;->getTspSupportFeature(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6d} :catch_e3

    .line 944
    nop

    .line 946
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 947
    const-string v1, "getTspSupportFeature: is empty"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return v3

    .line 951
    :cond_80
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "NG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 952
    const-string v1, "getTspSupportFeature: is NG"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return v3

    .line 957
    :cond_94
    :try_start_94
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a6} :catch_c9

    move v0, v3

    .line 961
    nop

    .line 963
    and-int/lit8 v3, v0, 0x20

    if-lez v3, :cond_ae

    .line 964
    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysInputEnabledFeature:Z

    .line 967
    :cond_ae
    and-int/lit8 v3, v0, 0x40

    if-lez v3, :cond_b4

    .line 968
    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysInputRegisterSensorService:Z

    .line 971
    :cond_b4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTspSupportFeature: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return v0

    .line 958
    :catch_c9
    move-exception v1

    .line 959
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTspSupportFeature: not numeric: e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return v3

    .line 941
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_e3
    move-exception v1

    .line 942
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTspSupportFeature: exception e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return v3
.end method

.method public isKeyPressedByKeycode(I)Z
    .registers 7
    .param p1, "keycode"    # I

    .line 851
    const/4 v0, 0x0

    .line 853
    .local v0, "keystate":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    const/4 v2, 0x0

    const-string v3, "SemInputDeviceManagerService"

    if-nez v1, :cond_e

    .line 854
    const-string v1, "isKeyPressedByKeycode: service is not enabled"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return v2

    .line 858
    :cond_e
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->getKeyCodePressed(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKeyPressedByKeycode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 862
    return v1

    .line 864
    :cond_3b
    return v2
.end method

.method public registerServiceListener()V
    .registers 6

    .line 397
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysInputEnabledFeature:Z

    const/4 v1, 0x1

    const-string v2, "SemInputDeviceManagerService"

    if-ne v0, v1, :cond_3d

    .line 399
    :try_start_7
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 400
    if-eqz v0, :cond_1e

    .line 401
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mDisplayStateListener:Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    .line 402
    const-string v0, "power manager listener register"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 404
    :cond_1e
    const-string v0, "Failed to get DisplayManagerInternal service"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_24

    .line 408
    :goto_23
    goto :goto_3d

    .line 406
    :catch_24
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerServiceListener: pms : exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3d
    :goto_3d
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->sysInputRegisterSensorService:Z

    if-ne v0, v1, :cond_9b

    .line 413
    :try_start_41
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 414
    if-eqz v0, :cond_7c

    .line 415
    const v3, 0x10055

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 416
    .local v0, "lpScanSensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_76

    .line 417
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 418
    .local v1, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sensor listener register: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    nop

    .end local v1    # "ret":Z
    goto :goto_7b

    .line 420
    :cond_76
    const-string v1, "lpscanSensor is null"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v0    # "lpScanSensor":Landroid/hardware/Sensor;
    :goto_7b
    goto :goto_81

    .line 423
    :cond_7c
    const-string v0, "Failed to get Sensor service"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_81} :catch_82

    .line 427
    :goto_81
    goto :goto_9b

    .line 425
    :catch_82
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerServiceListener: sensor : exception e:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9b
    :goto_9b
    const-string v0, "registerServiceListener"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void
.end method

.method public runSpenCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cmdname"    # Ljava/lang/String;

    .line 1070
    monitor-enter p0

    .line 1071
    :try_start_1
    const-string v0, "NG"

    .line 1072
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4f

    .line 1074
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$BfytOGcbJy35LKlcgnNOMJbxQqo;

    invoke-direct {v3, v1}, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$BfytOGcbJy35LKlcgnNOMJbxQqo;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v2, p1, v3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;->runSpenCmd(Ljava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_32
    .catchall {:try_start_8 .. :try_end_12} :catchall_4f

    .line 1081
    nop

    .line 1083
    const/4 v2, 0x0

    :try_start_14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1084
    monitor-exit p0

    return-object v0

    .line 1087
    :cond_22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 1078
    :catch_32
    move-exception v2

    .line 1079
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SemInputDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runSpenCmd: exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    monitor-exit p0

    return-object v0

    .line 1088
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_4f
    move-exception v0

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_14 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public runSpenCmdNoRead(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmdname"    # Ljava/lang/String;

    .line 1105
    monitor-enter p0

    .line 1106
    const/4 v0, -0x5

    .line 1108
    .local v0, "ret":I
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    invoke-interface {v1, p1}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;->runSpenCmdNoRead(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 1109
    const-string v1, "SemInputDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runSpenCmdNoRead: ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_22
    .catchall {:try_start_2 .. :try_end_1f} :catchall_20

    .line 1112
    goto :goto_3d

    .line 1114
    .end local v0    # "ret":I
    :catchall_20
    move-exception v0

    goto :goto_3f

    .line 1110
    .restart local v0    # "ret":I
    :catch_22
    move-exception v1

    .line 1111
    .local v1, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v2, "SemInputDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runSpenCmdNoRead: exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3d
    monitor-exit p0

    return v0

    .line 1114
    .end local v0    # "ret":I
    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_23 .. :try_end_40} :catchall_20

    throw v0
.end method

.method public runTspCmd(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;

    .line 1048
    monitor-enter p0

    .line 1049
    :try_start_1
    const-string v0, "NG"

    .line 1050
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4f

    .line 1052
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$7MoL4AOhnoO-acT1vD-qccs5AT8;

    invoke-direct {v3, p1, v1}, Lcom/samsung/android/hardware/secinputdev/-$$Lambda$SemInputDeviceManagerService$7MoL4AOhnoO-acT1vD-qccs5AT8;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {v2, p1, p2, v3}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;->runTspCmd(ILjava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_32
    .catchall {:try_start_8 .. :try_end_12} :catchall_4f

    .line 1059
    nop

    .line 1061
    const/4 v2, 0x0

    :try_start_14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1062
    monitor-exit p0

    return-object v0

    .line 1065
    :cond_22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 1056
    :catch_32
    move-exception v2

    .line 1057
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SemInputDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runTspCmd: exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    monitor-exit p0

    return-object v0

    .line 1066
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_4f
    move-exception v0

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_14 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public runTspCmdNoRead(ILjava/lang/String;)I
    .registers 8
    .param p1, "devid"    # I
    .param p2, "cmdname"    # Ljava/lang/String;

    .line 1092
    monitor-enter p0

    .line 1093
    const/4 v0, -0x5

    .line 1095
    .local v0, "ret":I
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->halService:Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;

    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/sysinput/V1_1/ISehSysInputDev;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v1

    move v0, v1

    .line 1096
    const-string v1, "SemInputDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runTspCmdNoRead: ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_22
    .catchall {:try_start_2 .. :try_end_1f} :catchall_20

    .line 1099
    goto :goto_3d

    .line 1101
    .end local v0    # "ret":I
    :catchall_20
    move-exception v0

    goto :goto_3f

    .line 1097
    .restart local v0    # "ret":I
    :catch_22
    move-exception v1

    .line 1098
    .local v1, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v2, "SemInputDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runTspCmdNoRead: exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3d
    monitor-exit p0

    return v0

    .line 1101
    .end local v0    # "ret":I
    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_23 .. :try_end_40} :catchall_20

    throw v0
.end method

.method public setAodEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aod_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "command":Ljava/lang/String;
    const-string v1, "aod_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setAodRect(Ljava/lang/String;)I
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_aod_rect,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_aod_rect"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setAutoAdjustTouch(I)V
    .registers 6
    .param p1, "mode"    # I

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glove_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 513
    .local v1, "ret":I
    const-string v2, "glove_mode"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoAdjustTouch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputDeviceManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void
.end method

.method public setCoverMode(II)I
    .registers 5
    .param p1, "mode"    # I
    .param p2, "type"    # I

    .line 554
    const-string v0, "clear_cover_mode,"

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1d

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "command":Ljava/lang/String;
    goto :goto_2c

    .line 557
    .end local v0    # "command":Ljava/lang/String;
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    .restart local v0    # "command":Ljava/lang/String;
    :goto_2c
    const-string v1, "clear_cover_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setEarDetectEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ear_detect_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "command":Ljava/lang/String;
    const-string v1, "ear_detect_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setFodEnable(III)I
    .registers 6
    .param p1, "mode"    # I
    .param p2, "pressFast"    # I
    .param p3, "strictMode"    # I

    .line 595
    const-string v0, "fod_enable,"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_23

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "command":Ljava/lang/String;
    goto :goto_32

    .line 598
    .end local v0    # "command":Ljava/lang/String;
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .restart local v0    # "command":Ljava/lang/String;
    :goto_32
    const-string v1, "fod_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setFodIconVisible(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fod_icon_visible,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "command":Ljava/lang/String;
    const-string v1, "fod_icon_visible"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setFodLpMode(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fod_lp_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "command":Ljava/lang/String;
    const-string v1, "fod_lp_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setFodRect(Ljava/lang/String;)I
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_fod_rect,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_fod_rect"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setFpIntControl(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fp_int_control,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "command":Ljava/lang/String;
    const-string v1, "fp_int_control"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setGameMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "mode"    # Ljava/lang/String;

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_game_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 477
    .local v1, "ret":I
    const-string v2, "set_game_mode"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGameMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputDeviceManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method public setGripData(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_grip_data,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_grip_data"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setNoteMode(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_note_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_note_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setPocketModeEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pocket_mode_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "command":Ljava/lang/String;
    const-string v1, "pocket_mode_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setProxLpScanMode(I)V
    .registers 7
    .param p1, "mode"    # I

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prox_lp_scan_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "command":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->currentPowerState:I

    const/4 v2, -0x1

    const-string v3, "SemInputDeviceManagerService"

    const/4 v4, 0x1

    if-eq v1, v4, :cond_30

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1d

    goto :goto_30

    .line 498
    :cond_1d
    const/4 v4, 0x2

    if-ne v1, v4, :cond_28

    .line 499
    const-string v1, "setProxLpScanMode: keep: on ~ off"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    .line 501
    return-void

    .line 504
    :cond_28
    const-string v1, "prox_lp_scan_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    .line 507
    return-void

    .line 493
    :cond_30
    :goto_30
    const-string v1, "setProxLpScanMode: skip: screen on"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->keepProxLpScanMode:I

    .line 495
    return-void
.end method

.method public setProxPowerOff(II)I
    .registers 5
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProxPowerOff: devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prox_power_off"

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->writeSysfs(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setRefreshRateMode(I)V
    .registers 5
    .param p1, "enable"    # I

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh_rate_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "command":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRefreshRateMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemInputDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v1, "refresh_rate_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method public setScanRate(Ljava/lang/String;)V
    .registers 6
    .param p1, "mode"    # Ljava/lang/String;

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_scan_rate,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 485
    .local v1, "ret":I
    const-string v2, "set_scan_rate"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScanRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputDeviceManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method public setSingletapEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "singletap_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "command":Ljava/lang/String;
    const-string v1, "singletap_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSipMode(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_sip_mode,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_sip_mode"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSpayEnable(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spay_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "command":Ljava/lang/String;
    const-string v1, "spay_enable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSpenAodEnable(I)I
    .registers 7
    .param p1, "mode"    # I

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_epen_aod_enable,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "command":Ljava/lang/String;
    const/4 v1, 0x0

    .line 735
    .local v1, "ret":I
    const-string v2, "set_epen_aod_enable"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 736
    const/4 v2, -0x3

    if-ne v1, v2, :cond_3a

    .line 737
    const-string v2, "SemInputDeviceManagerService"

    const-string v3, "spen has no cmd \"set_epen_aod_enable\", try to write sysfs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "aod_enable"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->writeSysfs(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 741
    :cond_3a
    return v1
.end method

.method public setSpenCoverType(I)I
    .registers 4
    .param p1, "type"    # I

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_cover_type,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_cover_type"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkSPENCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSyncChanged(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync_changed,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "command":Ljava/lang/String;
    const-string v1, "sync_changed"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setTemperature(I)I
    .registers 4
    .param p1, "value"    # I

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_temperature,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_temperature"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setTouchableArea(I)I
    .registers 4
    .param p1, "mode"    # I

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_touchable_area,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "command":Ljava/lang/String;
    const-string v1, "set_touchable_area"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->checkTSPCmdlistAndRunCmdNoRead(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public updateAutoAdjustTouchFromSettings()V
    .registers 6

    .line 448
    const/4 v0, 0x0

    .line 451
    .local v0, "mode":I
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_adjust_touch"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_12

    move v0, v1

    .line 456
    nop

    .line 462
    return-void

    .line 453
    :catch_12
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAutoAdjustTouchFromSettings: Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputDeviceManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method public updateRefreshRateFromSettings()V
    .registers 7

    .line 433
    const-string v0, "SemInputDeviceManagerService"

    const/4 v1, 0x0

    .line 436
    .local v1, "mode":I
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "refresh_rate_mode"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_2b

    move v1, v2

    .line 441
    nop

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRefreshRateFromSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->setRefreshRateMode(I)V

    .line 445
    return-void

    .line 438
    :catch_2b
    move-exception v2

    .line 439
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRefreshRateFromSettings: Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void
.end method
