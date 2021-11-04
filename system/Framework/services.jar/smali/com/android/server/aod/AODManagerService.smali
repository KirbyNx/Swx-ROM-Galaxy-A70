.class public final Lcom/android/server/aod/AODManagerService;
.super Lcom/android/server/SystemService;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/aod/AODManagerService$AODDozeLock;,
        Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;,
        Lcom/android/server/aod/AODManagerService$AODListenerRecord;,
        Lcom/android/server/aod/AODManagerService$LocalService;,
        Lcom/android/server/aod/AODManagerService$BinderService;,
        Lcom/android/server/aod/AODManagerService$AODHandler;,
        Lcom/android/server/aod/AODManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ANALOG_CLOCK_TYPE_DIVIDER:I = 0x2710

.field private static final AOD_DEBUG:Z = false

.field private static AOD_SCREEN_TURNING_ON_TIMEOUT:I = 0x0

.field private static final AOD_SETTING_CLOCK_TYPE_URI:Ljava/lang/String; = "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

.field private static final AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

.field private static final AOD_TSP_STATE_RETRY_COUNT:I = 0x2

.field private static final AOD_TSP_STATE_RETRY_DELAY:I = 0x1388

.field private static final DEBUG_TURNING_ON_DELAYED:I

.field private static GREAT_SPEN_USP_LEVEL:I = 0x0

.field private static final MSG_AOD_APP_LOG:I = 0x64

.field private static final MSG_EXPAND_NOTI_PANEL:I = 0x3e8

.field private static final PARTIAL_DISP:Ljava/lang/String; = "/sys/class/lcd/panel/partial_disp"

.field public static final SUPPORT_AOD:Z

.field private static final SUPPORT_AOD_LIVE_CLOCK:Z

.field public static final SUPPORT_DUAL_DISPLAY:Z

.field private static final TAG:Ljava/lang/String;

.field private static final TSP_AOD_SETTING_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final TSP_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp/input/enabled"

.field private static final TSP_MAIN_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp1/input/enabled"

.field private static final TSP_SUB_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp2/input/enabled"

.field private static final WACOM_AOD_SETTING_ENABLED:Ljava/lang/String; = "/sys/class/sec/sec_epen/aod_enable"

.field private static final WACOM_SPEN_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/sec_epen/input/enabled"


# instance fields
.field private mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

.field private mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

.field private final mAODDozeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/aod/AODManagerService$AODDozeLock;",
            ">;"
        }
    .end annotation
.end field

.field private final mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

.field private mAODLogHandler:Landroid/os/Handler;

.field private mAODLogHandlerThread:Landroid/os/HandlerThread;

.field private mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

.field private mAODTspStateRetryCount:I

.field private mAppLogger:Lcom/android/server/aod/AODLogger;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCalendarDataDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarDataTimeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mContextForUser:Landroid/content/Context;

.field private mCoverController:Lcom/android/server/aod/AODSCoverController;

.field private mDefaultDisplayState:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExpandPanelTimeStamp:J

.field private mIsAODAnalogLiveClock:Z

.field private mIsAODModeEnabled:Z

.field private mIsAODStartStop:Z

.field private mIsAODTapToShow:Z

.field private mIsFingerScreenLock:Z

.field private mIsFingerScreenOffIconAOD:Z

.field private mIsMPSMEnabled:Z

.field private mIsSingleTouchMode:Z

.field private mIsUPSMEnabled:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/aod/AODManagerService$AODListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveClockImageInfo:Ljava/lang/String;

.field private mLiveClockLogger:Lcom/android/server/aod/AODLogger;

.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field private mNeedToExpandPanel:Z

.field private mNotiExpandHandler:Landroid/os/Handler;

.field private final mRetryAODTspStateRunnable:Ljava/lang/Runnable;

.field private mSbnToExpand:Landroid/service/notification/StatusBarNotification;

.field private mScreenOnListener:Landroid/content/BroadcastReceiver;

.field private final mScreenTurningOnLock:Ljava/lang/Object;

.field private final mScreenTurningOnRunnable:Ljava/lang/Runnable;

.field private mSelfIconImageInfo:Ljava/lang/String;

.field private mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

.field private mSpenUspLevel:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemUiUid:I

.field private mTspH:I

.field private mTspLogger:Lcom/android/server/aod/AODLogger;

.field private final mTspRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTspW:I

.field private mTspX:I

.field private mTspY:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 70
    const-class v0, Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    .line 84
    const-string v0, "debug.aod.turningondelay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 145
    const-string v0, "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    .line 154
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    .line 157
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_DOZE_SERVICE_VERSION"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    sput-boolean v1, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD:Z

    .line 159
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "dualdisplay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_DUAL_DISPLAY:Z

    .line 161
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activeclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD_LIVE_CLOCK:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 238
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataTimeInfo:Ljava/util/List;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataDescription:Ljava/util/List;

    .line 132
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    .line 136
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    .line 152
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    .line 171
    new-instance v1, Lcom/android/server/aod/AODLogger;

    const-string v2, "AODManagerService_App"

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    .line 172
    new-instance v1, Lcom/android/server/aod/AODLogger;

    const-string v2, "AODManagerService_LiveClock"

    const/16 v3, 0x96

    invoke-direct {v1, v2, v3}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogger:Lcom/android/server/aod/AODLogger;

    .line 173
    new-instance v1, Lcom/android/server/aod/AODLogger;

    const-string v2, "AODManagerService_TSP"

    invoke-direct {v1, v2, v3}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    .line 175
    new-instance v1, Lcom/android/server/aod/AODManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$1;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    .line 192
    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    .line 194
    new-instance v1, Lcom/android/server/aod/AODManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$2;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mRetryAODTspStateRunnable:Ljava/lang/Runnable;

    .line 208
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mNeedToExpandPanel:Z

    .line 211
    new-instance v1, Lcom/android/server/aod/AODManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$3;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mScreenOnListener:Landroid/content/BroadcastReceiver;

    .line 239
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 240
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContextForUser:Landroid/content/Context;

    .line 241
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mUserManager:Landroid/os/UserManager;

    .line 242
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 243
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    .line 244
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AODManagerService.LogThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandlerThread:Landroid/os/HandlerThread;

    .line 245
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 246
    new-instance v1, Lcom/android/server/aod/AODManagerService$4;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$4;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    .line 260
    new-instance v1, Lcom/android/server/aod/AODSettingHelper;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/aod/AODSettingHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 261
    new-instance v1, Lcom/android/server/aod/AODSCoverController;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-direct {v1, v2, v3}, Lcom/android/server/aod/AODSCoverController;-><init>(Landroid/content/Context;Lcom/android/server/aod/AODSettingHelper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    .line 263
    new-instance v1, Lcom/android/server/aod/AODManagerService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$SettingsObserver;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    .line 265
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 267
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$SettingsObserver;->observe()V

    .line 269
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 270
    new-instance v1, Lcom/android/server/aod/AODManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$5;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 290
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v2, :cond_10f

    .line 291
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 292
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 293
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_10f

    .line 294
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->updateDefaultDisplayState(I)V

    .line 298
    .end local v1    # "display":Landroid/view/Display;
    :cond_10f
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 300
    new-instance v1, Lcom/android/server/aod/AODManagerService$6;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$6;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mNotiExpandHandler:Landroid/os/Handler;

    .line 315
    sput v0, Lcom/android/server/aod/AODManagerService;->AOD_SCREEN_TURNING_ON_TIMEOUT:I

    .line 319
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AOD_SCREEN_TURNING_ON_TIMEOUT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/aod/AODManagerService;->AOD_SCREEN_TURNING_ON_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 68
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiExpandHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODAppLog(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/aod/AODManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->updateDefaultDisplayState(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/aod/AODManagerService;)Landroid/app/StatusBarManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/aod/AODManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/aod/AODManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->updateDozeAlwaysOn()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/aod/AODManager$AODChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODManager$AODChangeListener;)Lcom/samsung/android/aod/AODManager$AODChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Lcom/samsung/android/aod/AODManager$AODChangeListener;

    .line 68
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    return-object p1
.end method

.method static synthetic access$2300()Landroid/net/Uri;
    .registers 1

    .line 68
    sget-object v0, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/aod/AODManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/aod/AODManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/aod/AODManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->getAODClockType()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/aod/AODManagerService;IJJJJJJJJ)I
    .registers 19
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # J
    .param p8, "x5"    # J
    .param p10, "x6"    # J
    .param p12, "x7"    # J
    .param p14, "x8"    # J
    .param p16, "x9"    # J

    .line 68
    invoke-direct/range {p0 .. p17}, Lcom/android/server/aod/AODManagerService;->setLiveClockInfoInternal(IJJJJJJJJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/aod/AODManagerService;[B)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # [B

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->setLiveClockNeedleInternal([B)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/aod/AODManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->getActiveImageInfoInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSettingHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/aod/AODManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/aod/AODManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V

    return-void
.end method

.method static synthetic access$3102(Lcom/android/server/aod/AODManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/aod/AODManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUidOrSystemApp()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/aod/AODManagerService;IIIII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIIII)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/aod/AODManagerService;Landroid/service/notification/StatusBarNotification;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->requestExpandNotificationPanelInternal(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/aod/AODManagerService;II[BLjava/lang/String;)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->setLiveClockImageInternal(II[BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/aod/AODManagerService;III[I)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [I

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->setLiveClockCommandInternal(III[I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->addLogTextInternal(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/aod/AODManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->readyToScreenTurningOnInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->registerAODListenerInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->unregisterAODListenerInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->registerAODDozeCallbackInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->unregisterAODDozeCallbackInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->acquireDozeInternal(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->releaseDozeInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/samsung/android/aod/AODToast;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->requestAODToastInternal(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$4800()I
    .registers 1

    .line 68
    sget v0, Lcom/android/server/aod/AODManagerService;->AOD_SCREEN_TURNING_ON_TIMEOUT:I

    return v0
.end method

.method static synthetic access$4900()I
    .registers 1

    .line 68
    sget v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/aod/AODManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/aod/AODManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->wakeUpInternal()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/aod/AODManagerService;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 68
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->updateAODTspState(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/aod/AODManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mNeedToExpandPanel:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/aod/AODManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mNeedToExpandPanel:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/aod/AODManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-wide v0, p0, Lcom/android/server/aod/AODManagerService;->mExpandPanelTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/aod/AODManagerService;)Landroid/service/notification/StatusBarNotification;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSbnToExpand:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/aod/AODManagerService;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .line 68
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mSbnToExpand:Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method private acquireDozeInternal(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 16
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "pid"    # I

    .line 973
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 974
    :try_start_3
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDozeInternal: mAODCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v3, :cond_16

    const-string v3, "existed"

    goto :goto_19

    :cond_16
    const-string/jumbo v3, "null"

    :goto_19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", display = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    .line 976
    monitor-exit v0

    return-void

    .line 978
    :cond_34
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->findAODDozeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 980
    .local v1, "index":I
    if-gez v1, :cond_7c

    .line 981
    new-instance v9, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/aod/AODManagerService$AODDozeLock;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_85

    move-object v2, v9

    .line 983
    .local v2, "dozeLock":Lcom/android/server/aod/AODManagerService$AODDozeLock;
    const/4 v3, 0x0

    :try_start_48
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4b} :catch_73
    .catchall {:try_start_48 .. :try_end_4b} :catchall_85

    .line 986
    nop

    .line 987
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    .line 988
    .local v3, "isEmpty":Z
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    if-nez v3, :cond_5b

    .line 990
    monitor-exit v0

    return-void

    .line 992
    .end local v3    # "isEmpty":Z
    :cond_5b
    nop

    .line 996
    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_68

    const/4 v4, 0x3

    if-eq v3, v4, :cond_68

    const/4 v4, 0x4

    if-eq v3, v4, :cond_68

    goto :goto_71

    .line 1000
    :cond_68
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v3, :cond_71

    .line 1001
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v3}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeAcquired()V

    .line 1005
    .end local v1    # "index":I
    .end local v2    # "dozeLock":Lcom/android/server/aod/AODManagerService$AODDozeLock;
    :cond_71
    :goto_71
    monitor-exit v0

    .line 1006
    return-void

    .line 984
    .restart local v1    # "index":I
    .restart local v2    # "dozeLock":Lcom/android/server/aod/AODManagerService$AODDozeLock;
    :catch_73
    move-exception v3

    .line 985
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "AOD doze lock is already dead."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/aod/AODManagerService;
    .end local p1    # "binder":Landroid/os/IBinder;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "uid":I
    .end local p5    # "pid":I
    throw v4

    .line 993
    .end local v2    # "dozeLock":Lcom/android/server/aod/AODManagerService$AODDozeLock;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/aod/AODManagerService;
    .restart local p1    # "binder":Landroid/os/IBinder;
    .restart local p2    # "tag":Ljava/lang/String;
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p4    # "uid":I
    .restart local p5    # "pid":I
    :cond_7c
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "acquireDozeInternal: already acquired"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    monitor-exit v0

    return-void

    .line 1005
    .end local v1    # "index":I
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_4c .. :try_end_87} :catchall_85

    throw v1
.end method

.method private addAODAppLog(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1805
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 1806
    return-void

    .line 1808
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1809
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1810
    .local v1, "log":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/aod/AODLogger;->add(Ljava/lang/String;Z)V

    .line 1808
    .end local v1    # "log":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1812
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method private addAODTspLog(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 1819
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/aod/AODLogger;->add(Ljava/lang/String;Z)V

    .line 1821
    return-void
.end method

.method private addLiveClockDumpLog(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 1815
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogger:Lcom/android/server/aod/AODLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/aod/AODLogger;->add(Ljava/lang/String;Z)V

    .line 1816
    return-void
.end method

.method private addLogTextInternal(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 873
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 875
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 876
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 877
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v3, "logs"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 878
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 879
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 880
    return-void
.end method

.method private checkSystemUid()V
    .registers 5

    .line 1781
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1782
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1783
    return-void

    .line 1785
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkSystemUidOrSystemUiUid()V
    .registers 5

    .line 1789
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1790
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUiUid(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2c

    .line 1793
    :cond_11
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1791
    :cond_2c
    :goto_2c
    return-void
.end method

.method private checkSystemUidOrSystemUiUidOrSystemApp()V
    .registers 5

    .line 1797
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1798
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUiUid(I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemApp(I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_32

    .line 1801
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1799
    :cond_32
    :goto_32
    return-void
.end method

.method private displayStateToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .line 1824
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    const/4 v0, 0x4

    if-eq p1, v0, :cond_13

    .line 1836
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1834
    :cond_13
    const-string v0, "DOZE_SUSPEND"

    return-object v0

    .line 1832
    :cond_16
    const-string v0, "DOZE"

    return-object v0

    .line 1830
    :cond_19
    const-string v0, "ON"

    return-object v0

    .line 1828
    :cond_1c
    const-string v0, "OFF"

    return-object v0

    .line 1826
    :cond_1f
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1841
    const-string v0, "AODMANAGER (dumpsys AODManagerService)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1843
    invoke-static {p1}, Lcom/android/server/aod/AODConfig;->dump(Ljava/io/PrintWriter;)V

    .line 1844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager.getCurrentUser()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1846
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1847
    :try_start_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAODCallback= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 1849
    .local v2, "lock":Lcom/android/server/aod/AODManagerService$AODDozeLock;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AODDozeLock= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1850
    .end local v2    # "lock":Lcom/android/server/aod/AODManagerService$AODDozeLock;
    goto :goto_46

    .line 1851
    :cond_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_29 .. :try_end_68} :catchall_155

    .line 1852
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1853
    const-string v0, "----- Regarding AOD TSP -----"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAODModeEnabled(tsp.cmd aod_enable)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsSingleTouchMode(tsp.input.enabled)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1857
    :try_start_a1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1858
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a8
    if-ge v2, v0, :cond_d8

    .line 1859
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1860
    .local v3, "key":I
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 1861
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tsp touch rect(uid :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    .end local v3    # "key":I
    .end local v4    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 1863
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_d8
    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_a1 .. :try_end_d9} :catchall_152

    .line 1864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tsp touch : x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "live clock image info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockImageInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Self Icon image info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSelfIconImageInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1868
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    .line 1869
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogger:Lcom/android/server/aod/AODLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    .line 1870
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    .line 1872
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    if-eqz v0, :cond_151

    .line 1873
    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODSCoverController;->dump(Ljava/io/PrintWriter;)V

    .line 1875
    :cond_151
    return-void

    .line 1863
    :catchall_152
    move-exception v0

    :try_start_153
    monitor-exit v1
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_152

    throw v0

    .line 1851
    :catchall_155
    move-exception v1

    :try_start_156
    monitor-exit v0
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_155

    throw v1
.end method

.method private findAODDozeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "lock"    # Landroid/os/IBinder;

    .line 1053
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1054
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1055
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    .line 1056
    return v1

    .line 1054
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1059
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private getAODClockType()I
    .registers 10

    .line 1133
    const/4 v0, -0x1

    .line 1134
    .local v0, "clockType":I
    const/4 v1, 0x0

    .line 1136
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1137
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 1138
    if-eqz v1, :cond_24

    .line 1139
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_24

    .line 1140
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1141
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_29
    .catchall {:try_start_2 .. :try_end_23} :catchall_27

    move v0, v2

    .line 1147
    :cond_24
    if-eqz v1, :cond_33

    .line 1148
    goto :goto_2f

    .line 1147
    :catchall_27
    move-exception v2

    goto :goto_34

    .line 1144
    :catch_29
    move-exception v2

    .line 1145
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 1147
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_33

    .line 1148
    :goto_2f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1149
    const/4 v1, 0x0

    .line 1152
    :cond_33
    return v0

    .line 1147
    :goto_34
    if-eqz v1, :cond_3a

    .line 1148
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1149
    const/4 v1, 0x0

    .line 1151
    :cond_3a
    throw v2
.end method

.method private getActiveImageInfoInternal()Ljava/lang/String;
    .registers 2

    .line 1079
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 1083
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSystemUiUid()I
    .registers 5

    .line 1741
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1742
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    const-string v1, "com.android.systemui"

    const/high16 v2, 0x100000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method private isSystemApp(I)Z
    .registers 14
    .param p1, "callingUid"    # I

    .line 1755
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1756
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1758
    .local v1, "ident":J
    :try_start_a
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_56

    .line 1760
    .local v3, "packages":[Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1761
    nop

    .line 1762
    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    .line 1763
    array-length v5, v3

    move v6, v4

    :goto_17
    if-ge v6, v5, :cond_55

    aget-object v7, v3, v6

    .line 1765
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x1

    :try_start_1c
    invoke-virtual {v0, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 1766
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_2b

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_26} :catch_2c

    and-int/lit16 v10, v10, 0x81

    if-eqz v10, :cond_2b

    .line 1768
    return v8

    .line 1772
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2b
    goto :goto_3c

    .line 1770
    :catch_2c
    move-exception v9

    .line 1771
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v10, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v4

    const-string v11, "Could not find package [%s]"

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1763
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 1775
    :cond_3f
    sget-object v5, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No known packages with uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_55
    return v4

    .line 1760
    .end local v3    # "packages":[Ljava/lang/String;
    :catchall_56
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1761
    throw v3
.end method

.method private isSystemUiUid(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 1750
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method private isSystemUid(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 1746
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private readyToScreenTurningOnInternal()V
    .registers 4

    .line 892
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 893
    invoke-static {}, Lcom/android/server/aod/AODConfig;->isNeedsScreenTurningOnDelayed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 894
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readyToScreenTurningOn : Not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return-void

    .line 897
    :cond_12
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_15
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readyToScreenTurningOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    if-eqz v1, :cond_31

    .line 900
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    invoke-interface {v1}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    .line 901
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    .line 902
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_39

    .line 904
    :cond_31
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readyToScreenTurningOn : Do nothing, There is no Listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :goto_39
    monitor-exit v0

    .line 907
    return-void

    .line 906
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private registerAODClockContentObserver()V
    .registers 6

    .line 1108
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1109
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1a

    .line 1110
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerAODClockContentObserver unregister before ContentObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Landroid/database/ContentObserver;

    .line 1115
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->getAODClockType()I

    move-result v1

    div-int/lit16 v1, v1, 0x2710

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_25

    goto :goto_26

    :cond_25
    move v3, v2

    :goto_26
    iput-boolean v3, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    .line 1116
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerAODClockContentObserver: mIsAODAnalogLiveClock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    new-instance v1, Lcom/android/server/aod/AODManagerService$7;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/server/aod/AODManagerService$7;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContentObserver:Landroid/database/ContentObserver;

    .line 1128
    sget-object v3, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v4, -0x2

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1130
    return-void
.end method

.method private registerAODDozeCallbackInternal(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 950
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 951
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-nez v1, :cond_1f

    .line 952
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerAODDozeCallbackInternal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    goto :goto_27

    .line 955
    :cond_1f
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerAODDozeCallbackInternal : already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_27
    monitor-exit v0

    .line 958
    return-void

    .line 957
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private registerAODListenerInternal(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 910
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 913
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    .line 914
    .local v2, "listener":Lcom/android/server/aod/AODManagerService$AODListenerRecord;
    if-eqz v2, :cond_2b

    .line 915
    # getter for: Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->access$2100(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 916
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerAODListenerInternal : already registered"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    monitor-exit v0

    return-void

    .line 920
    .end local v2    # "listener":Lcom/android/server/aod/AODManagerService$AODListenerRecord;
    :cond_2b
    goto :goto_9

    .line 921
    :cond_2c
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V

    .line 922
    .local v1, "listener":Lcom/android/server/aod/AODManagerService$AODListenerRecord;
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    nop

    .end local v1    # "listener":Lcom/android/server/aod/AODManagerService$AODListenerRecord;
    monitor-exit v0

    .line 924
    return-void

    .line 923
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private registerScreenOnListener()V
    .registers 4

    .line 1734
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerScreenOnListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1737
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mScreenOnListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1738
    return-void
.end method

.method private releaseDozeInternal(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1009
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1010
    :try_start_3
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseDozeInternal: mAODCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v3, :cond_17

    const-string v3, "existed"

    goto :goto_1a

    :cond_17
    const-string/jumbo v3, "null"

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", display = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5c

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    goto :goto_5c

    .line 1014
    :cond_39
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->findAODDozeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1015
    .local v1, "index":I
    if-gez v1, :cond_49

    .line 1016
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "releaseDozeInternal: cannot find"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    monitor-exit v0

    return-void

    .line 1019
    :cond_49
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 1020
    .local v2, "dozeLock":Lcom/android/server/aod/AODManagerService$AODDozeLock;
    iget-object v3, v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1021
    invoke-direct {p0, v1}, Lcom/android/server/aod/AODManagerService;->removeDozeLockLocked(I)V

    .line 1022
    .end local v1    # "index":I
    .end local v2    # "dozeLock":Lcom/android/server/aod/AODManagerService$AODDozeLock;
    monitor-exit v0

    .line 1023
    return-void

    .line 1012
    :cond_5c
    :goto_5c
    monitor-exit v0

    return-void

    .line 1022
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method private removeDozeLockLocked(I)V
    .registers 3
    .param p1, "index"    # I

    .line 1026
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1027
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1028
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v0, :cond_14

    .line 1029
    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeReleased()V

    .line 1032
    :cond_14
    return-void
.end method

.method private removeDozeLockLocked(Lcom/android/server/aod/AODManagerService$AODDozeLock;Z)V
    .registers 4
    .param p1, "lock"    # Lcom/android/server/aod/AODManagerService$AODDozeLock;
    .param p2, "notify"    # Z

    .line 1035
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1036
    if-eqz p2, :cond_16

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1037
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v0, :cond_16

    .line 1038
    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeReleased()V

    .line 1041
    :cond_16
    return-void
.end method

.method private requestAODToastInternal(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "toast"    # Lcom/samsung/android/aod/AODToast;

    .line 1044
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1045
    :try_start_3
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAODToastInternal: mAODCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v3, :cond_17

    const-string v3, "existed"

    goto :goto_1a

    :cond_17
    const-string/jumbo v3, "null"

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", toast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v1, :cond_35

    .line 1047
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V

    .line 1049
    :cond_35
    monitor-exit v0

    .line 1050
    return-void

    .line 1049
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private requestExpandNotificationPanelInternal(Landroid/service/notification/StatusBarNotification;)V
    .registers 2
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .line 867
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 869
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->updateExpandNotificationPanelInternal(Landroid/service/notification/StatusBarNotification;)V

    .line 870
    return-void
.end method

.method private requestReCalToTSP()V
    .registers 8

    .line 592
    const-string/jumbo v0, "requestReCalToTSP"

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 593
    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v3, "sync_changed,1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method static native setActiveImage(I[B)I
.end method

.method static native setAnalogClockInfo(IIII)I
.end method

.method static native setAnalogClockInfoV4(IIIIII)I
.end method

.method static native setCurrentTime(IIIIII)I
.end method

.method static native setDigitalClockInfo(IIIIIIIIIIIIIIIIIIII)I
.end method

.method static native setDigitalClockInfoV4(IIIIIIIIIIIIIIII)I
.end method

.method static native setLiveClockCommand(III[I)I
.end method

.method private setLiveClockCommandInternal(III[I)I
    .registers 6
    .param p1, "nodeType"    # I
    .param p2, "cmd"    # I
    .param p3, "dataSize"    # I
    .param p4, "dataArray"    # [I

    .line 1101
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 1105
    const/4 v0, -0x1

    return v0
.end method

.method static native setLiveClockImage(II[B)I
.end method

.method private setLiveClockImageInternal(II[BLjava/lang/String;)I
    .registers 6
    .param p1, "nodeType"    # I
    .param p2, "clockType"    # I
    .param p3, "img_buf"    # [B
    .param p4, "info"    # Ljava/lang/String;

    .line 1087
    const/4 v0, -0x1

    .line 1088
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 1097
    return v0
.end method

.method static native setLiveClockInfo(IJJJJJJJJ)I
.end method

.method private setLiveClockInfoInternal(IJJJJJJJJ)I
    .registers 19
    .param p1, "type"    # I
    .param p2, "en"    # J
    .param p4, "interval"    # J
    .param p6, "hour"    # J
    .param p8, "min"    # J
    .param p10, "second"    # J
    .param p12, "ms"    # J
    .param p14, "pos_x"    # J
    .param p16, "pos_y"    # J

    .line 1063
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 1067
    const/4 v0, -0x1

    return v0
.end method

.method static native setLiveClockNeedle([B)V
.end method

.method private setLiveClockNeedleInternal([B)V
    .registers 2
    .param p1, "img_buf"    # [B

    .line 1071
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 1076
    return-void
.end method

.method static native setSelfGridInfo(IIIII)I
.end method

.method static native setSelfIconInfo(IIIIII)I
.end method

.method static native setSelfPartialHLPMScan(IIIIIIIII)I
.end method

.method private supportPartialDisplayOff(Ljava/lang/String;)Z
    .registers 13
    .param p1, "location"    # Ljava/lang/String;

    .line 431
    const-string/jumbo v0, "supportPartialDisplayOff IOException : "

    const/4 v1, 0x0

    .line 432
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    .line 435
    .local v3, "data":[B
    :try_start_10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9e

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_9e

    .line 439
    :cond_1f
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 440
    const/4 v4, 0x0

    .line 441
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_80

    .line 442
    const/4 v6, 0x2

    .line 443
    .local v6, "value":I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_e6
    .catchall {:try_start_10 .. :try_end_37} :catchall_e4

    if-nez v7, :cond_5a

    .line 445
    :try_start_39
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3d} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_e6
    .catchall {:try_start_39 .. :try_end_3d} :catchall_e4

    move v6, v7

    .line 449
    goto :goto_5a

    .line 446
    :catch_3f
    move-exception v7

    .line 447
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_40
    sget-object v8, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "supportPartialDisplayOff NumberFormatException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 451
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_5a
    :goto_5a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5d} :catch_e6
    .catchall {:try_start_40 .. :try_end_5d} :catchall_e4

    .line 452
    const/4 v1, 0x0

    .line 453
    const/4 v7, -0x1

    if-ne v6, v7, :cond_80

    .line 454
    nop

    .line 463
    if-eqz v1, :cond_7e

    .line 464
    :try_start_64
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_7e

    .line 466
    :catch_68
    move-exception v7

    .line 467
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 468
    .end local v7    # "e":Ljava/io/IOException;
    :cond_7e
    :goto_7e
    nop

    .line 454
    :goto_7f
    return v5

    .line 463
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "value":I
    :cond_80
    if-eqz v1, :cond_9d

    .line 464
    :try_start_82
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_9d

    .line 466
    :catch_86
    move-exception v4

    .line 467
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v4    # "e":Ljava/io/IOException;
    goto/16 :goto_111

    .line 468
    :cond_9d
    :goto_9d
    goto :goto_111

    .line 436
    :cond_9e
    :goto_9e
    :try_start_9e
    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "supportPartialDisplayOff file.exists() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , file.canWrite() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_c5} :catch_e6
    .catchall {:try_start_9e .. :try_end_c5} :catchall_e4

    .line 437
    nop

    .line 463
    if-eqz v1, :cond_e2

    .line 464
    :try_start_c8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cc

    goto :goto_e2

    .line 466
    :catch_cc
    move-exception v4

    .line 467
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 468
    .end local v4    # "e":Ljava/io/IOException;
    :cond_e2
    :goto_e2
    nop

    .line 437
    :goto_e3
    return v5

    .line 462
    :catchall_e4
    move-exception v4

    goto :goto_113

    .line 458
    :catch_e6
    move-exception v4

    .line 459
    .local v4, "e":Ljava/lang/Exception;
    :try_start_e7
    sget-object v5, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "supportPartialDisplayOff Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_101
    .catchall {:try_start_e7 .. :try_end_101} :catchall_e4

    .line 463
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_9d

    .line 464
    :try_start_103
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_107

    goto :goto_9d

    .line 466
    :catch_107
    move-exception v4

    .line 467
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_8e

    .line 471
    .end local v4    # "e":Ljava/io/IOException;
    :goto_111
    const/4 v0, 0x1

    return v0

    .line 463
    :goto_113
    if-eqz v1, :cond_12f

    .line 464
    :try_start_115
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_118} :catch_119

    goto :goto_12f

    .line 466
    :catch_119
    move-exception v5

    .line 467
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    .line 468
    .end local v5    # "e":Ljava/io/IOException;
    :cond_12f
    :goto_12f
    nop

    .line 469
    :goto_130
    throw v4
.end method

.method static native turnOffSelfMove()I
.end method

.method static native turnOnSelfMove()I
.end method

.method private unregisterAODDozeCallbackInternal(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 961
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 962
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    # getter for: Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->access$2200(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 963
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterAODDozeCallbackInternal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 965
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    goto :goto_2d

    .line 967
    :cond_25
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterAODDozeCallbackInternal : cannot find matched callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :goto_2d
    monitor-exit v0

    .line 970
    return-void

    .line 969
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private unregisterAODListenerInternal(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 927
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 930
    const/4 v1, 0x0

    .line 931
    .local v1, "listener":Lcom/android/server/aod/AODManagerService$AODListenerRecord;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    .line 932
    .local v3, "temp":Lcom/android/server/aod/AODManagerService$AODListenerRecord;
    if-eqz v3, :cond_23

    .line 933
    # getter for: Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->access$2100(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 934
    move-object v1, v3

    .line 937
    .end local v3    # "temp":Lcom/android/server/aod/AODManagerService$AODListenerRecord;
    :cond_23
    goto :goto_a

    .line 938
    :cond_24
    if-nez v1, :cond_30

    .line 939
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterAODListenerInternal : cannot find the matched host"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    monitor-exit v0

    return-void

    .line 942
    :cond_30
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 943
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 945
    :cond_3d
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 946
    nop

    .end local v1    # "listener":Lcom/android/server/aod/AODManagerService$AODListenerRecord;
    monitor-exit v0

    .line 947
    return-void

    .line 946
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_44

    throw v1
.end method

.method private updateAODChargingMode(Z)V
    .registers 6
    .param p1, "isAODModeEnabled"    # Z

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v0}, Lcom/android/server/aod/AODSettingHelper;->isDozeAlwaysOn()Z

    move-result v0
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_6} :catch_1e

    .line 754
    .local v0, "dozeAlwaysOn":Z
    nop

    .line 756
    if-eq v0, p1, :cond_1d

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v1}, Lcom/android/server/aod/AODSettingHelper;->isAODChargingMode()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 757
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/aod/AODSettingHelper;->setAODChargingMode(Z)V

    .line 758
    const-string/jumbo v1, "updateAODChargingMode: aodChargingMode = true"

    invoke-direct {p0, v1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 761
    :cond_1d
    return-void

    .line 751
    .end local v0    # "dozeAlwaysOn":Z
    :catch_1e
    move-exception v0

    .line 752
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAODChargingMode : doze_always_on doesn\'t exist. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-void
.end method

.method private updateAODTspRectInternal(IIIII)V
    .registers 16
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "callingUid"    # I

    .line 476
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 477
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    monitor-enter v0

    .line 478
    if-gez p3, :cond_14

    if-gez p4, :cond_14

    if-gez p1, :cond_14

    if-gez p2, :cond_14

    .line 479
    :try_start_e
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3a

    .line 481
    :cond_14
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 482
    .local v1, "rect":Landroid/graphics/Rect;
    if-nez v1, :cond_2e

    .line 483
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p3, p1

    add-int v4, p4, p2

    invoke-direct {v2, p3, p4, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v2

    .line 484
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v2, p5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3a

    .line 486
    :cond_2e
    iput p3, v1, Landroid/graphics/Rect;->left:I

    .line 487
    iput p4, v1, Landroid/graphics/Rect;->top:I

    .line 488
    add-int v2, p3, p1

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 489
    add-int v2, p4, p2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 492
    .end local v1    # "rect":Landroid/graphics/Rect;
    :goto_3a
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 493
    .local v1, "N":I
    if-lez v1, :cond_18c

    .line 494
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 495
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_48
    if-ge v3, v1, :cond_58

    .line 496
    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V
    :try_end_55
    .catchall {:try_start_e .. :try_end_55} :catchall_18e

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 498
    .end local v3    # "i":I
    :cond_58
    const/4 v3, 0x0

    .line 499
    .local v3, "fos":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 501
    .local v4, "fosForLightSensor":Ljava/io/OutputStream;
    :try_start_5a
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/sec/tsp/cmd"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_136

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_6f

    goto/16 :goto_136

    .line 505
    :cond_6f
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 506
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iput v6, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    .line 507
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    .line 508
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    .line 509
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    .line 511
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_aod_rect,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "tspCommand":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write([B)V

    .line 513
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 515
    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/sensors/light_sensor/set_aod_rect/"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .local v7, "fileForLightSensor":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_126

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-nez v8, :cond_dd

    goto :goto_126

    .line 519
    :cond_dd
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v8

    .line 520
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 521
    .local v8, "TspCommandForLightSensor":Ljava/lang/String;
    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write([B)V

    .line 522
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_11b
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_11b} :catch_163
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_11b} :catch_14d
    .catchall {:try_start_5a .. :try_end_11b} :catchall_14b

    .line 529
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "tspCommand":Ljava/lang/String;
    .end local v7    # "fileForLightSensor":Ljava/io/File;
    .end local v8    # "TspCommandForLightSensor":Ljava/lang/String;
    nop

    .line 530
    :try_start_11c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 532
    nop

    .line 533
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_123} :catch_124
    .catchall {:try_start_11c .. :try_end_123} :catchall_18e

    goto :goto_176

    .line 535
    :catch_124
    move-exception v5

    goto :goto_15f

    .line 529
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "tspCommand":Ljava/lang/String;
    .restart local v7    # "fileForLightSensor":Ljava/io/File;
    :cond_126
    :goto_126
    nop

    .line 530
    :try_start_127
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 532
    if-eqz v4, :cond_12f

    .line 533
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12f} :catch_130
    .catchall {:try_start_127 .. :try_end_12f} :catchall_18e

    .line 537
    :cond_12f
    goto :goto_134

    .line 535
    :catch_130
    move-exception v8

    .line 536
    .local v8, "e":Ljava/lang/Exception;
    :try_start_131
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 537
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_134
    monitor-exit v0
    :try_end_135
    .catchall {:try_start_131 .. :try_end_135} :catchall_18e

    .line 517
    return-void

    .line 529
    .end local v6    # "tspCommand":Ljava/lang/String;
    .end local v7    # "fileForLightSensor":Ljava/io/File;
    :cond_136
    :goto_136
    if-eqz v3, :cond_13e

    .line 530
    :try_start_138
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_13e

    .line 535
    :catch_13c
    move-exception v6

    goto :goto_144

    .line 532
    :cond_13e
    :goto_13e
    if-eqz v4, :cond_148

    .line 533
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_143} :catch_13c
    .catchall {:try_start_138 .. :try_end_143} :catchall_18e

    goto :goto_148

    .line 536
    .local v6, "e":Ljava/lang/Exception;
    :goto_144
    :try_start_144
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_149

    .line 537
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_148
    :goto_148
    nop

    :goto_149
    monitor-exit v0
    :try_end_14a
    .catchall {:try_start_144 .. :try_end_14a} :catchall_18e

    .line 503
    return-void

    .line 528
    .end local v5    # "file":Ljava/io/File;
    :catchall_14b
    move-exception v5

    goto :goto_177

    .line 525
    :catch_14d
    move-exception v5

    .line 526
    .local v5, "e":Ljava/io/IOException;
    :try_start_14e
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_151
    .catchall {:try_start_14e .. :try_end_151} :catchall_14b

    .line 529
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_159

    .line 530
    :try_start_153
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_159

    .line 535
    :catch_157
    move-exception v5

    goto :goto_15f

    .line 532
    :cond_159
    :goto_159
    if-eqz v4, :cond_176

    .line 533
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_15e} :catch_157
    .catchall {:try_start_153 .. :try_end_15e} :catchall_18e

    goto :goto_176

    .line 536
    .local v5, "e":Ljava/lang/Exception;
    :goto_15f
    :try_start_15f
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_18e

    goto :goto_175

    .line 523
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_163
    move-exception v5

    .line 524
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_164
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_167
    .catchall {:try_start_164 .. :try_end_167} :catchall_14b

    .line 529
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_16f

    .line 530
    :try_start_169
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_16f

    .line 535
    :catch_16d
    move-exception v5

    goto :goto_15f

    .line 532
    :cond_16f
    :goto_16f
    if-eqz v4, :cond_176

    .line 533
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_174} :catch_16d
    .catchall {:try_start_169 .. :try_end_174} :catchall_18e

    goto :goto_176

    .line 538
    :goto_175
    goto :goto_18c

    .line 537
    :cond_176
    :goto_176
    goto :goto_18c

    .line 529
    :goto_177
    if-eqz v3, :cond_17f

    .line 530
    :try_start_179
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_17f

    .line 535
    :catch_17d
    move-exception v6

    goto :goto_185

    .line 532
    :cond_17f
    :goto_17f
    if-eqz v4, :cond_189

    .line 533
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_184} :catch_17d
    .catchall {:try_start_179 .. :try_end_184} :catchall_18e

    goto :goto_189

    .line 536
    .restart local v6    # "e":Ljava/lang/Exception;
    :goto_185
    :try_start_185
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18a

    .line 537
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_189
    :goto_189
    nop

    .line 538
    :goto_18a
    nop

    .end local p0    # "this":Lcom/android/server/aod/AODManagerService;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    .end local p5    # "callingUid":I
    throw v5

    .line 540
    .end local v1    # "N":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .end local v4    # "fosForLightSensor":Ljava/io/OutputStream;
    .restart local p0    # "this":Lcom/android/server/aod/AODManagerService;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    .restart local p3    # "x":I
    .restart local p4    # "y":I
    .restart local p5    # "callingUid":I
    :cond_18c
    :goto_18c
    monitor-exit v0

    .line 541
    return-void

    .line 540
    :catchall_18e
    move-exception v1

    monitor-exit v0
    :try_end_190
    .catchall {:try_start_185 .. :try_end_190} :catchall_18e

    throw v1
.end method

.method private updateAODTspState()V
    .registers 4

    .line 830
    sget-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD:Z

    if-nez v0, :cond_b

    .line 831
    const-string/jumbo v0, "updateAODTspState do not need to update TSP state, Not support AOD"

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 832
    return-void

    .line 834
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAODTspState: mIsAODModeEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 835
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-direct {p0, v1, v0}, Lcom/android/server/aod/AODManagerService;->updateAODTspState(Ljava/lang/String;Z)V

    .line 837
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_53

    .line 838
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    .line 839
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAODTspState: mSpenUspLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_53
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    sget v1, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    if-lt v0, v1, :cond_66

    .line 843
    const-string/jumbo v0, "updateAODWacomState"

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 844
    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    const-string v1, "/sys/class/sec/sec_epen/aod_enable"

    invoke-direct {p0, v1, v0}, Lcom/android/server/aod/AODManagerService;->updateAODWacomState(Ljava/lang/String;Z)V

    .line 846
    :cond_66
    return-void
.end method

.method private updateAODTspState(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 544
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 545
    sget-boolean v0, Lcom/android/server/aod/AODConfig;->isAODTouchDisabled:Z

    if-eqz v0, :cond_e

    .line 546
    const-string/jumbo v0, "updateAODTspState skip -- AOD TSP"

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 547
    return-void

    .line 550
    :cond_e
    if-nez p2, :cond_34

    .line 551
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    monitor-enter v0

    .line 552
    :try_start_13
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 553
    .local v1, "tspRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 555
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIIII)V

    .line 557
    .end local v1    # "tspRect":Landroid/graphics/Rect;
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_31

    throw v1

    .line 560
    :cond_34
    :goto_34
    const/4 v0, 0x0

    .line 562
    .local v0, "fos":Ljava/io/OutputStream;
    :try_start_35
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_92

    .line 566
    :cond_47
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aod_enable,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5c

    const-string v3, "1"

    goto :goto_5e

    :cond_5c
    const-string v3, "0"

    :goto_5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, "tspCommand":Ljava/lang/String;
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 569
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_71} :catch_e2
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_71} :catch_b7
    .catchall {:try_start_35 .. :try_end_71} :catchall_b5

    .line 582
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "tspCommand":Ljava/lang/String;
    nop

    .line 583
    :try_start_72
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_77

    .line 587
    :cond_75
    :goto_75
    goto/16 :goto_f9

    .line 585
    :catch_77
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7d
    const-string/jumbo v3, "updateAODTspState -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 588
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_f9

    .line 582
    .local v1, "file":Ljava/io/File;
    :cond_92
    :goto_92
    if-eqz v0, :cond_b3

    .line 583
    :try_start_94
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_b3

    .line 585
    :catch_98
    move-exception v2

    .line 586
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAODTspState -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    goto :goto_b4

    .line 587
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b3
    :goto_b3
    nop

    .line 564
    :goto_b4
    return-void

    .line 581
    .end local v1    # "file":Ljava/io/File;
    :catchall_b5
    move-exception v1

    goto :goto_fa

    .line 573
    :catch_b7
    move-exception v1

    .line 574
    .local v1, "e":Ljava/io/IOException;
    :try_start_b8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 575
    const-string/jumbo v2, "updateAODTspState -- IOException"

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 576
    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_d5

    .line 577
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mRetryAODTspStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 578
    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I
    :try_end_d5
    .catchall {:try_start_b8 .. :try_end_d5} :catchall_b5

    .line 582
    .end local v1    # "e":Ljava/io/IOException;
    :cond_d5
    if-eqz v0, :cond_75

    .line 583
    :try_start_d7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_75

    .line 585
    :catch_db
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7d

    .line 570
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_e2
    move-exception v1

    .line 571
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_e3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 572
    const-string/jumbo v2, "updateAODTspState -- FileNotFoundException"

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    :try_end_ec
    .catchall {:try_start_e3 .. :try_end_ec} :catchall_b5

    .line 582
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_75

    .line 583
    :try_start_ee
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f1} :catch_f2

    goto :goto_75

    .line 585
    :catch_f2
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7d

    .line 589
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_f9
    return-void

    .line 582
    :goto_fa
    if-eqz v0, :cond_11b

    .line 583
    :try_start_fc
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_ff} :catch_100

    goto :goto_11b

    .line 585
    :catch_100
    move-exception v2

    .line 586
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAODTspState -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    goto :goto_11c

    .line 587
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_11b
    :goto_11b
    nop

    .line 588
    :goto_11c
    throw v1
.end method

.method private updateAODWacomState(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 597
    const-string/jumbo v0, "updateAODWacomState -- "

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 598
    sget-boolean v1, Lcom/android/server/aod/AODConfig;->isAODTouchDisabled:Z

    if-eqz v1, :cond_11

    .line 599
    const-string/jumbo v0, "updateAODWacomState skip -- AOD Wacom"

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 600
    return-void

    .line 602
    :cond_11
    const/4 v1, 0x0

    .line 604
    .local v1, "fos":Ljava/io/OutputStream;
    :try_start_12
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 605
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_5a

    .line 608
    :cond_24
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 609
    if-eqz p2, :cond_2f

    const-string v3, "1"

    goto :goto_31

    :cond_2f
    const-string v3, "0"

    .line 610
    .local v3, "tspCommand":Ljava/lang/String;
    :goto_31
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 611
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_3d} :catch_93
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_3d} :catch_7c
    .catchall {:try_start_12 .. :try_end_3d} :catchall_7a

    .line 620
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "tspCommand":Ljava/lang/String;
    nop

    .line 621
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    .line 625
    :cond_41
    :goto_41
    goto :goto_aa

    .line 623
    :catch_42
    move-exception v2

    .line 624
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 626
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_aa

    .line 620
    .local v2, "file":Ljava/io/File;
    :cond_5a
    :goto_5a
    if-eqz v1, :cond_78

    .line 621
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_78

    .line 623
    :catch_60
    move-exception v3

    .line 624
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    goto :goto_79

    .line 625
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_78
    :goto_78
    nop

    .line 606
    :goto_79
    return-void

    .line 619
    .end local v2    # "file":Ljava/io/File;
    :catchall_7a
    move-exception v2

    goto :goto_ab

    .line 615
    :catch_7c
    move-exception v2

    .line 616
    .local v2, "e":Ljava/io/IOException;
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 617
    const-string/jumbo v3, "updateAODWacomState -- IOException"

    invoke-direct {p0, v3}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_7a

    .line 620
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_41

    .line 621
    :try_start_88
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_41

    .line 623
    :catch_8c
    move-exception v2

    .line 624
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_48

    .line 612
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_93
    move-exception v2

    .line 613
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_94
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 614
    const-string/jumbo v3, "updateAODWacomState -- FileNotFoundException"

    invoke-direct {p0, v3}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_7a

    .line 620
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_41

    .line 621
    :try_start_9f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_41

    .line 623
    :catch_a3
    move-exception v2

    .line 624
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_48

    .line 627
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_aa
    return-void

    .line 620
    :goto_ab
    if-eqz v1, :cond_c9

    .line 621
    :try_start_ad
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_c9

    .line 623
    :catch_b1
    move-exception v3

    .line 624
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    goto :goto_ca

    .line 625
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_c9
    :goto_c9
    nop

    .line 626
    :goto_ca
    throw v2
.end method

.method private updateDefaultDisplayState(I)V
    .registers 8
    .param p1, "displayState"    # I

    .line 372
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    .line 373
    .local v0, "previousDisplayState":I
    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    .line 375
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 376
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_10

    goto/16 :goto_85

    .line 378
    :cond_10
    :try_start_10
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestReCalToTSP IsSingleTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " / previousDisplayState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->displayStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    if-eqz v2, :cond_44

    .line 380
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3f

    const/4 v2, 0x4

    if-ne v0, v2, :cond_42

    .line 381
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->requestReCalToTSP()V

    .line 383
    :cond_42
    iput-boolean v3, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    .line 385
    :cond_44
    if-eq v0, p1, :cond_85

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    .line 386
    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->isAODShowState()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 387
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->clearAODShowState()V

    .line 388
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDefaultDisplayState clear aod_show_state, previousDisplayState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->displayStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 392
    :cond_6f
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    .line 393
    .local v4, "lock":Lcom/android/server/aod/AODManagerService$AODDozeLock;
    invoke-direct {p0, v4, v3}, Lcom/android/server/aod/AODManagerService;->removeDozeLockLocked(Lcom/android/server/aod/AODManagerService$AODDozeLock;Z)V

    .line 394
    .end local v4    # "lock":Lcom/android/server/aod/AODManagerService$AODDozeLock;
    goto :goto_75

    .line 397
    :cond_85
    :goto_85
    monitor-exit v1

    .line 398
    return-void

    .line 397
    :catchall_87
    move-exception v2

    monitor-exit v1
    :try_end_89
    .catchall {:try_start_10 .. :try_end_89} :catchall_87

    throw v2
.end method

.method private updateDozeAlwaysOn()V
    .registers 5

    .line 727
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v1}, Lcom/android/server/aod/AODSettingHelper;->isDozeAlwaysOn()Z

    move-result v1
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_9} :catch_3d
    .catchall {:try_start_3 .. :try_end_9} :catchall_3b

    .line 734
    .local v1, "dozeAlwaysOn":Z
    nop

    .line 736
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDozeAlwaysOn: dozeAlwaysOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 738
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->isAODEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_2c

    .line 739
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/aod/AODSettingHelper;->setAODEnabled(Z)V

    .line 741
    :cond_2c
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->isAODChargingMode()Z

    move-result v2

    if-eq v1, v2, :cond_39

    .line 742
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/aod/AODSettingHelper;->setAODChargingMode(Z)V

    .line 744
    .end local v1    # "dozeAlwaysOn":Z
    :cond_39
    monitor-exit v0

    .line 745
    return-void

    .line 744
    :catchall_3b
    move-exception v1

    goto :goto_59

    .line 731
    :catch_3d
    move-exception v1

    .line 732
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDozeAlwaysOn : doze_always_on doesn\'t exist. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 733
    monitor-exit v0

    return-void

    .line 744
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_a .. :try_end_5a} :catchall_3b

    throw v1
.end method

.method private updateExpandNotificationPanelInternal(Landroid/service/notification/StatusBarNotification;)V
    .registers 4
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .line 883
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateExpandNotificationPanelInternal()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mNeedToExpandPanel:Z

    .line 886
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mSbnToExpand:Landroid/service/notification/StatusBarNotification;

    .line 887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/aod/AODManagerService;->mExpandPanelTimeStamp:J

    .line 888
    return-void
.end method

.method private updateSettings()V
    .registers 17

    .line 764
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 765
    :try_start_5
    iget-object v0, v7, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v0}, Lcom/android/server/aod/AODSettingHelper;->isAODEnabled()Z

    move-result v0

    .line 766
    .local v0, "isAODModeEnabled":Z
    iget-object v1, v7, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v1}, Lcom/android/server/aod/AODSettingHelper;->isAODTapToShow()Z

    move-result v1

    move v9, v1

    .line 767
    .local v9, "isAODTapToShow":Z
    iget-object v1, v7, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v1}, Lcom/android/server/aod/AODSettingHelper;->isFingerScreenLock()Z

    move-result v1

    move v10, v1

    .line 768
    .local v10, "isFingerScreenLock":Z
    iget-object v1, v7, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v1}, Lcom/android/server/aod/AODSettingHelper;->isFingerScreenOffIconAOD()Z

    move-result v1

    move v11, v1

    .line 769
    .local v11, "isFingerScreenOffIconAOD":Z
    iget-object v1, v7, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v1}, Lcom/android/server/aod/AODSettingHelper;->isMPSMEnabled()Z

    move-result v1

    move v12, v1

    .line 770
    .local v12, "isMPSMEnabled":Z
    iget-object v1, v7, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v1}, Lcom/android/server/aod/AODSettingHelper;->isUPSMEnabled()Z

    move-result v1

    move v13, v1

    .line 772
    .local v13, "isUPSMEnabled":Z
    iget-boolean v1, v7, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_43

    iget-boolean v1, v7, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    if-ne v1, v9, :cond_43

    iget-boolean v1, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    if-ne v1, v10, :cond_43

    iget-boolean v1, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    if-eq v1, v11, :cond_41

    goto :goto_43

    :cond_41
    move v1, v2

    goto :goto_44

    :cond_43
    :goto_43
    move v1, v3

    :goto_44
    move v14, v1

    .line 776
    .local v14, "changeSingleTap":Z
    if-nez v14, :cond_50

    iget-boolean v1, v7, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    if-ne v1, v12, :cond_4f

    iget-boolean v1, v7, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    if-eq v1, v13, :cond_50

    :cond_4f
    move v2, v3

    :cond_50
    move v15, v2

    .line 779
    .local v15, "changePowerSavingMode":Z
    if-eqz v14, :cond_124

    .line 780
    iget-boolean v1, v7, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    if-eq v1, v0, :cond_5f

    .line 781
    iput-boolean v0, v7, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/android/server/aod/AODManagerService;->updateAODTspState()V

    .line 783
    invoke-direct {v7, v0}, Lcom/android/server/aod/AODManagerService;->updateAODChargingMode(Z)V

    .line 785
    :cond_5f
    iput-boolean v9, v7, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    .line 786
    iput-boolean v10, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    .line 787
    iput-boolean v11, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    .line 788
    iput-boolean v12, v7, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 789
    iput-boolean v13, v7, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 791
    iget-boolean v1, v7, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    if-eqz v1, :cond_6f

    if-nez v9, :cond_77

    :cond_6f
    iget-boolean v1, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    if-eqz v1, :cond_ce

    iget-boolean v1, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    if-eqz v1, :cond_ce

    .line 793
    :cond_77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings: singletap_enable,1 mIsAODModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAODTapToShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenOffIconAOD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsUPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 799
    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v3, "singletap_enable,1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_124

    .line 801
    :cond_ce
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings: singletap_enable,0 mIsAODModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAODTapToShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenOffIconAOD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsUPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 807
    const-string v2, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v3, "singletap_enable,0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_124
    :goto_124
    if-eqz v15, :cond_173

    .line 812
    iput-boolean v12, v7, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    .line 813
    iput-boolean v13, v7, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings: changePowerSavingMode mIsAODModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAODTapToShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFingerScreenOffIconAOD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenOffIconAOD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsMPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsUPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/server/aod/AODManagerService;->mIsUPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 822
    .end local v0    # "isAODModeEnabled":Z
    .end local v9    # "isAODTapToShow":Z
    .end local v10    # "isFingerScreenLock":Z
    .end local v11    # "isFingerScreenOffIconAOD":Z
    .end local v12    # "isMPSMEnabled":Z
    .end local v13    # "isUPSMEnabled":Z
    .end local v14    # "changeSingleTap":Z
    .end local v15    # "changePowerSavingMode":Z
    :cond_173
    monitor-exit v8

    .line 823
    return-void

    .line 822
    :catchall_175
    move-exception v0

    monitor-exit v8
    :try_end_177
    .catchall {:try_start_5 .. :try_end_177} :catchall_175

    throw v0
.end method

.method private wakeUpInternal()V
    .registers 4

    .line 849
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 851
    invoke-static {}, Lcom/android/server/aod/AODConfig;->canRegisterAODListener()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 852
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 853
    :try_start_c
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_17

    .line 854
    monitor-exit v0

    return-void

    .line 856
    :cond_17
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    .line 857
    .local v2, "listener":Lcom/android/server/aod/AODManagerService$AODListenerRecord;
    if-eqz v2, :cond_2e

    .line 858
    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->onScreenTurningOn()V

    .line 860
    .end local v2    # "listener":Lcom/android/server/aod/AODManagerService$AODListenerRecord;
    :cond_2e
    goto :goto_1d

    .line 861
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_31

    throw v1

    .line 863
    :cond_34
    :goto_34
    return-void
.end method

.method private writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;

    .line 401
    const-string/jumbo v0, "writeAODCommandInternal finally Exception : "

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 402
    const/4 v1, 0x0

    .line 404
    .local v1, "fos":Ljava/io/OutputStream;
    :try_start_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_48

    .line 409
    :cond_19
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 410
    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 411
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_2b} :catch_b9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2b} :catch_8f
    .catchall {:try_start_7 .. :try_end_2b} :catchall_8d

    .line 420
    .end local v2    # "file":Ljava/io/File;
    nop

    .line 421
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_31

    .line 425
    :cond_2f
    :goto_2f
    goto/16 :goto_e5

    .line 423
    :catch_31
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_e5

    .line 406
    .local v2, "file":Ljava/io/File;
    :cond_48
    :goto_48
    :try_start_48
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeAODCommandInternal file.exists() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , file.canWrite() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_6f} :catch_b9
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_6f} :catch_8f
    .catchall {:try_start_48 .. :try_end_6f} :catchall_8d

    .line 420
    if-eqz v1, :cond_8b

    .line 421
    :try_start_71
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_8b

    .line 423
    :catch_75
    move-exception v3

    .line 424
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 425
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8b
    :goto_8b
    nop

    .line 407
    :goto_8c
    return-void

    .line 419
    .end local v2    # "file":Ljava/io/File;
    :catchall_8d
    move-exception v2

    goto :goto_e6

    .line 415
    :catch_8f
    move-exception v2

    .line 416
    .local v2, "e":Ljava/io/IOException;
    :try_start_90
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeAODCommandInternal IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_90 .. :try_end_aa} :catchall_8d

    .line 420
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2f

    .line 421
    :try_start_ac
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_2f

    .line 423
    :catch_b0
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_39

    .line 412
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_b9
    move-exception v2

    .line 413
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_ba
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeAODCommandInternal FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d4
    .catchall {:try_start_ba .. :try_end_d4} :catchall_8d

    .line 420
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_2f

    .line 421
    :try_start_d6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_db

    goto/16 :goto_2f

    .line 423
    :catch_db
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_39

    .line 427
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_e5
    return-void

    .line 420
    :goto_e6
    if-eqz v1, :cond_102

    .line 421
    :try_start_e8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_ec

    goto :goto_102

    .line 423
    :catch_ec
    move-exception v3

    .line 424
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_103

    .line 425
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_102
    :goto_102
    nop

    .line 426
    :goto_103
    throw v2
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 337
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 338
    const/16 v0, 0x258

    if-ne p1, v0, :cond_18

    .line 340
    :try_start_7
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    if-eqz v0, :cond_10

    .line 341
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    invoke-virtual {v0}, Lcom/android/server/aod/AODSCoverController;->register()V

    .line 343
    :cond_10
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->registerScreenOnListener()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    .line 346
    goto :goto_18

    .line 344
    :catch_14
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_18
    :goto_18
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 325
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->getSystemUiUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    .line 327
    if-gtz v0, :cond_f

    .line 328
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SysUI package not found!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_f
    new-instance v0, Lcom/android/server/aod/AODManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V

    const-string v2, "AODManagerService"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/aod/AODManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 332
    const-class v0, Lcom/samsung/android/aod/AODManagerInternal;

    new-instance v2, Lcom/android/server/aod/AODManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/aod/AODManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 6
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserSwitching from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContextForUser:Landroid/content/Context;

    .line 354
    sget-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD_LIVE_CLOCK:Z

    if-eqz v0, :cond_3f

    .line 355
    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    .line 356
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 357
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->registerAODClockContentObserver()V

    .line 360
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    .line 361
    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 365
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked: user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-boolean v0, Lcom/android/server/aod/AODManagerService;->SUPPORT_AOD_LIVE_CLOCK:Z

    if-eqz v0, :cond_1e

    .line 367
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->registerAODClockContentObserver()V

    .line 369
    :cond_1e
    return-void
.end method

.method public updateBatteryStats()V
    .registers 3

    .line 709
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v0}, Lcom/android/server/aod/AODSettingHelper;->isAODShowState()Z

    move-result v0

    .line 710
    .local v0, "isAODStartStop":Z
    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    if-eq v1, v0, :cond_c

    .line 711
    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    .line 724
    :cond_c
    return-void
.end method
