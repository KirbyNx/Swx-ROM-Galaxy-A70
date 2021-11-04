.class public Lcom/android/server/ibs/IbsQuickDim;
.super Ljava/lang/Object;
.source "IbsQuickDim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;,
        Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;,
        Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;,
        Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;
    }
.end annotation


# static fields
.field private static final Default_SCREEN_OFF_TIMEOUT:I = 0x7530

.field private static final FRAME_MILISECONDS:I = 0x3e8

.field private static final MSG_CANCEL_QKDIM_ACTION:I = 0x3

.field private static final MSG_CHECK_QKDIM_STATUS:I = 0x1

.field private static final MSG_REMOVE_ALL_CMD:I = 0x4

.field private static final MSG_SET_QKDIM_ACTION:I = 0x2

.field private static final PERIOD_CHECK_TIME:I = 0xbb8

.field public static final QUICK_DIM_MODE_CONTINUE:I = 0x4

.field public static final QUICK_DIM_MODE_DIM:I = 0x1

.field public static final QUICK_DIM_MODE_NORMAL:I = 0x2

.field public static final QUICK_DIM_MODE_STOP:I = 0x3

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static final quickDimUsePkg:[Ljava/lang/String;


# instance fields
.field private SQDGainMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final TAG:Ljava/lang/String;

.field public mBlockUnDimUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mBrightness:I

.field private mCharging:Z

.field private mChargingFinishTime:J

.field private mContext:Landroid/content/Context;

.field private mDimStartTime:J

.field private mFgUid:I

.field private mIbsService:Lcom/android/server/ibs/IntelligentBatterySaverService;

.field private mLastFPS:I

.field private mLastPagecount:J

.field private mLastTime:J

.field private final mLock:Ljava/lang/Object;

.field private mManager:Landroid/app/ActivityManager;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field final mProcessObserver:Landroid/app/IProcessObserver;

.field private mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

.field private mQuickDimMode:I

.field private mQuickdimEnable:Z

.field private mResolver:Landroid/content/ContentResolver;

.field mSFSevices:Landroid/os/IBinder;

.field public mSQDPowerSave:F

.field private mSQLiteSQDwhilteList:Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;

.field private mScreenOffTimeoutSetting:J

.field private mScreenOn:Z

.field private mSettingsObserver:Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;

.field private mSmartStayEnabledSetting:Z

.field private mUiControlEnabled:Z

.field private mWMS:Lcom/android/server/wm/WindowManagerService;

.field private quickDimUserUid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 79
    const-string v0, "com.android.settings"

    const-string v1, "com.sec.android.app.launcher"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ibs/IbsQuickDim;->quickDimUsePkg:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "IbsQuickDim"

    iput-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->TAG:Ljava/lang/String;

    .line 76
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v1, Lcom/android/server/ibs/IbsQuickDim$1;

    invoke-direct {v1, p0}, Lcom/android/server/ibs/IbsQuickDim$1;-><init>(Lcom/android/server/ibs/IbsQuickDim;)V

    iput-object v1, p0, Lcom/android/server/ibs/IbsQuickDim;->SQDGainMap:Ljava/util/Map;

    .line 95
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mSQDPowerSave:F

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mBrightness:I

    .line 97
    iput-boolean v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mCharging:Z

    .line 98
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/ibs/IbsQuickDim;->mChargingFinishTime:J

    .line 99
    iput-wide v2, p0, Lcom/android/server/ibs/IbsQuickDim;->mDimStartTime:J

    .line 105
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mManager:Landroid/app/ActivityManager;

    .line 106
    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 109
    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;

    .line 110
    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;

    .line 114
    iput-wide v2, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastPagecount:J

    .line 115
    iput-wide v2, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastTime:J

    .line 116
    iput-boolean v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mUiControlEnabled:Z

    .line 118
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I

    .line 120
    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    .line 121
    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    .line 122
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I

    .line 123
    iput-boolean v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mScreenOn:Z

    .line 125
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickdimEnable:Z

    .line 135
    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 237
    new-instance v4, Lcom/android/server/ibs/IbsQuickDim$2;

    invoke-direct {v4, p0}, Lcom/android/server/ibs/IbsQuickDim$2;-><init>(Lcom/android/server/ibs/IbsQuickDim;)V

    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 315
    new-instance v4, Lcom/android/server/ibs/IbsQuickDim$3;

    invoke-direct {v4, p0}, Lcom/android/server/ibs/IbsQuickDim$3;-><init>(Lcom/android/server/ibs/IbsQuickDim;)V

    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 138
    iput-object p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/server/ibs/IbsQuickDim;->mIbsService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 140
    new-instance v4, Landroid/os/HandlerThread;

    invoke-direct {v4, v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/ibs/IbsQuickDim;->mHandlerThread:Landroid/os/HandlerThread;

    .line 141
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 142
    new-instance v4, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    sget-object v5, Lcom/android/server/ibs/IbsQuickDim;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;-><init>(Lcom/android/server/ibs/IbsQuickDim;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    .line 143
    iget-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mPm:Landroid/content/pm/PackageManager;

    .line 146
    nop

    .line 147
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 146
    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerService;

    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 148
    iget-object v5, p0, Lcom/android/server/ibs/IbsQuickDim;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 150
    const-class v4, Landroid/os/PowerManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManagerInternal;

    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 152
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    .line 153
    iget-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mManager:Landroid/app/ActivityManager;

    .line 155
    iget-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "screen_off_timeout"

    const/16 v6, 0x7530

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    int-to-long v8, v4

    iput-wide v8, p0, Lcom/android/server/ibs/IbsQuickDim;->mScreenOffTimeoutSetting:J

    .line 158
    iget-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "intelligent_sleep_mode"

    invoke-static {v4, v6, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_c7

    goto :goto_c8

    :cond_c7
    move v3, v1

    :goto_c8
    iput-boolean v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mSmartStayEnabledSetting:Z

    .line 160
    iget-object v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "screen_brightness"

    invoke-static {v3, v4, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mBrightness:I

    .line 163
    new-instance v3, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;

    iget-object v7, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    invoke-direct {v3, p0, v7}, Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;-><init>(Lcom/android/server/ibs/IbsQuickDim;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;

    .line 164
    new-instance v3, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/ibs/IbsQuickDim$IntentReceiver;-><init>(Lcom/android/server/ibs/IbsQuickDim;)V

    .line 165
    iget-object v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 166
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/ibs/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;

    .line 165
    invoke-virtual {v3, v5, v1, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 168
    iget-object v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 169
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ibs/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;

    .line 168
    invoke-virtual {v3, v5, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 171
    iget-object v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 172
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ibs/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/IbsQuickDim$SettingsObserver;

    .line 171
    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 175
    new-instance v2, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;

    invoke-direct {v2, p0, p1}, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;-><init>(Lcom/android/server/ibs/IbsQuickDim;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/ibs/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;

    .line 177
    :try_start_10b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_114
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_114} :catch_115

    .line 181
    goto :goto_11e

    .line 178
    :catch_115
    move-exception v2

    .line 179
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException - registerProcessObserver"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 182
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_11e
    invoke-virtual {p0}, Lcom/android/server/ibs/IbsQuickDim;->readDBWhiteList()V

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ibs/IbsQuickDim;->quickDimUserUid:Ljava/util/List;

    .line 185
    sget-object v2, Lcom/android/server/ibs/IbsQuickDim;->quickDimUsePkg:[Ljava/lang/String;

    array-length v3, v2

    :goto_12b
    if-ge v1, v3, :cond_155

    aget-object v4, v2, v1

    .line 186
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/ibs/IbsQuickDim;->getUidForPackageName(Ljava/lang/String;)I

    move-result v5

    .line 187
    .local v5, "uid":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-lez v5, :cond_152

    .line 189
    iget-object v6, p0, Lcom/android/server/ibs/IbsQuickDim;->quickDimUserUid:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "uid":I
    :cond_152
    add-int/lit8 v1, v1, 0x1

    goto :goto_12b

    .line 192
    :cond_155
    invoke-virtual {p0}, Lcom/android/server/ibs/IbsQuickDim;->getSurfaceFlingerServices()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ibs/IbsQuickDim;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickdimEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/ibs/IbsQuickDim;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickdimEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/ibs/IbsQuickDim;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/ibs/IbsQuickDim;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p1, "x1"    # J

    .line 59
    iput-wide p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mDimStartTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/server/ibs/IbsQuickDim;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/ibs/IbsQuickDim;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    invoke-direct {p0}, Lcom/android/server/ibs/IbsQuickDim;->removeAllmessage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ibs/IbsQuickDim;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/ibs/IbsQuickDim;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mFgUid:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/ibs/IbsQuickDim;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/ibs/IbsQuickDim;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    invoke-direct {p0}, Lcom/android/server/ibs/IbsQuickDim;->quitDimMode()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/ibs/IbsQuickDim;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p1, "x1"    # J

    .line 59
    iput-wide p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mChargingFinishTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/server/ibs/IbsQuickDim;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/ibs/IbsQuickDim;->setQuickDimModeFromPms(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/ibs/IbsQuickDim;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget-wide v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mScreenOffTimeoutSetting:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/server/ibs/IbsQuickDim;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p1, "x1"    # J

    .line 59
    iput-wide p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mScreenOffTimeoutSetting:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/server/ibs/IbsQuickDim;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ibs/IbsQuickDim;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mUiControlEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/ibs/IbsQuickDim;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mSmartStayEnabledSetting:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/ibs/IbsQuickDim;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mSmartStayEnabledSetting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/ibs/IbsQuickDim;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mCharging:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/ibs/IbsQuickDim;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mCharging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/ibs/IbsQuickDim;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/ibs/IbsQuickDim;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/ibs/IbsQuickDim;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    invoke-direct {p0}, Lcom/android/server/ibs/IbsQuickDim;->checkQuickDimStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ibs/IbsQuickDim;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    invoke-direct {p0}, Lcom/android/server/ibs/IbsQuickDim;->getFpsFromSurfaceFlinger()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ibs/IbsQuickDim;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/ibs/IbsQuickDim;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/ibs/IbsQuickDim;)Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/ibs/IbsQuickDim;)Landroid/os/PowerManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IbsQuickDim;

    .line 59
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method private calcDimActionGain()V
    .registers 8

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 399
    .local v0, "DimEndTime":J
    const/4 v2, 0x0

    .line 400
    .local v2, "currentmA":I
    iget-object v3, p0, Lcom/android/server/ibs/IbsQuickDim;->SQDGainMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 401
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v5, p0, Lcom/android/server/ibs/IbsQuickDim;->mBrightness:I

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_34

    .line 402
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 405
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_f

    .line 407
    :cond_34
    iget-wide v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mDimStartTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    .line 408
    .local v3, "time":F
    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v4, v3, v4

    const/high16 v5, 0x45610000    # 3600.0f

    div-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v4, v5

    .line 409
    .local v4, "gainTemp":F
    iget v5, p0, Lcom/android/server/ibs/IbsQuickDim;->mSQDPowerSave:F

    add-float/2addr v5, v4

    iput v5, p0, Lcom/android/server/ibs/IbsQuickDim;->mSQDPowerSave:F

    .line 410
    return-void
.end method

.method private checkQuickDimStatus()V
    .registers 7

    .line 271
    iget v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1b

    .line 272
    const-string v0, "IbsQuickDim"

    const-string v4, "checkQuickDimStatus first check!"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/android/server/ibs/IbsQuickDim;->getFpsFromSurfaceFlinger()I

    move-result v0

    iput v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I

    .line 274
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_35

    .line 276
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/ibs/IbsQuickDim;->getFpsFromSurfaceFlinger()I

    move-result v0

    .line 277
    .local v0, "nowFPS":I
    iget v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I

    if-ne v4, v0, :cond_2e

    const/16 v5, 0xa

    if-ge v4, v5, :cond_2e

    .line 278
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_35

    .line 280
    :cond_2e
    iput v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I

    .line 281
    iget-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 284
    .end local v0    # "nowFPS":I
    :goto_35
    return-void
.end method

.method private getFpsFromSurfaceFlinger()I
    .registers 12

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, "fps":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/server/ibs/IbsQuickDim;->getSurfaceFlingerServices()Landroid/os/IBinder;

    .line 292
    :cond_8
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-eqz v1, :cond_57

    .line 293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 294
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 295
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    const/16 v4, 0x3f5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 298
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-long v3, v3

    .line 299
    .local v3, "pageCount":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 300
    .local v5, "time":J
    iget-wide v7, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4d

    iget-wide v7, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastPagecount:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_4d

    iget-wide v7, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastTime:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_4d

    .line 301
    iget-wide v7, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastTime:J

    sub-long v7, v5, v7

    long-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    .line 302
    .local v7, "seconds":F
    iget-wide v8, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastPagecount:J

    sub-long v8, v3, v8

    long-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v0, v8

    .line 304
    .end local v7    # "seconds":F
    :cond_4d
    iput-wide v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastPagecount:J

    .line 305
    iput-wide v5, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastTime:J

    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_57} :catch_58

    .line 311
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "pageCount":J
    .end local v5    # "time":J
    :cond_57
    goto :goto_5c

    .line 309
    :catch_58
    move-exception v1

    .line 310
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 312
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5c
    return v0
.end method

.method private quitDimMode()V
    .registers 3

    .line 390
    iget v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " quit dim mode mQuickDimMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IbsQuickDim"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setScreenDimDurationOverrideFromSqd(Z)V

    .line 393
    invoke-direct {p0}, Lcom/android/server/ibs/IbsQuickDim;->calcDimActionGain()V

    .line 395
    :cond_26
    return-void
.end method

.method private removeAllmessage()V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->removeMessages(I)V

    .line 414
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->removeMessages(I)V

    .line 415
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->removeMessages(I)V

    .line 416
    return-void
.end method

.method private setQuickDimModeFromPms(I)V
    .registers 7
    .param p1, "flag"    # I

    .line 367
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    const-string v1, "IbsQuickDim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2a

    .line 370
    invoke-direct {p0}, Lcom/android/server/ibs/IbsQuickDim;->removeAllmessage()V

    .line 371
    const-string v1, "IbsQuickDim"

    const-string v3, "PMS set dim "

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iput v2, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I

    goto :goto_5f

    .line 373
    :cond_2a
    if-ne p1, v2, :cond_5f

    .line 374
    invoke-direct {p0}, Lcom/android/server/ibs/IbsQuickDim;->quitDimMode()V

    .line 375
    invoke-direct {p0}, Lcom/android/server/ibs/IbsQuickDim;->removeAllmessage()V

    .line 376
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mLastFPS:I

    .line 377
    iget-object v3, p0, Lcom/android/server/ibs/IbsQuickDim;->quickDimUserUid:Ljava/util/List;

    iget v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mFgUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 378
    const-string v3, "IbsQuickDim"

    const-string/jumbo v4, "screen on and start check"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iput v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I

    .line 380
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessage(I)Z

    .line 381
    monitor-exit v0

    return-void

    .line 383
    :cond_54
    const-string v1, "IbsQuickDim"

    const-string/jumbo v2, "pause check dim"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I

    .line 386
    :cond_5f
    :goto_5f
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw v1
.end method


# virtual methods
.method public addBlockList(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " addWhiteList uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IbsQuickDim"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 464
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 467
    .local v0, "value":Landroid/content/ContentValues;
    const-string v2, "PackageName"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Uid"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    iget-object v2, p0, Lcom/android/server/ibs/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;

    invoke-virtual {v2, v0}, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->insert(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 470
    .local v2, "ret":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_68

    const/4 v1, 0x0

    return v1

    .line 472
    :cond_68
    const/4 v1, 0x1

    return v1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 593
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const-string v0, "SQD Version: 1.0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    const-string v0, "SQD swich status : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI on-off : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mUiControlEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mQuickdimEnable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickdimEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCharging : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSQDPowerSave : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mSQDPowerSave:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "policy status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const-string v0, "block List:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6d
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9a

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ibs/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 605
    .end local v0    # "i":I
    :cond_9a
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_ba

    .line 606
    const/4 v0, 0x0

    aget-object v2, p2, v0

    const-string/jumbo v3, "sqd_swich"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 607
    aget-object v2, p2, v1

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 608
    iput-boolean v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mUiControlEnabled:Z

    goto :goto_ba

    .line 610
    :cond_b8
    iput-boolean v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mUiControlEnabled:Z

    .line 614
    :cond_ba
    :goto_ba
    return-void
.end method

.method public getBlockList()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 490
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;

    iget-object v2, v1, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 491
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_34

    .line 492
    :goto_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 493
    const-string v2, "PackageName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "Uid"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "uid":Ljava/lang/String;
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uid":Ljava/lang/String;
    goto :goto_13

    .line 497
    :cond_31
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_34
    return-object v0
.end method

.method public getGain()[J
    .registers 7

    .line 532
    iget v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mSQDPowerSave:F

    float-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 533
    .local v0, "gain":J
    const/4 v2, 0x2

    new-array v2, v2, [J

    iget-wide v3, p0, Lcom/android/server/ibs/IbsQuickDim;->mChargingFinishTime:J

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    const/4 v3, 0x1

    aput-wide v0, v2, v3

    return-object v2
.end method

.method public getSQDUiControlEnable()Z
    .registers 2

    .line 528
    iget-boolean v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mUiControlEnabled:Z

    return v0
.end method

.method public getSurfaceFlingerServices()Landroid/os/IBinder;
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 420
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 421
    if-eqz v0, :cond_f

    .line 422
    return-object v0

    .line 424
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUidForPackageName(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 579
    const/4 v0, 0x0

    .line 581
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 584
    goto :goto_f

    .line 582
    :catch_b
    move-exception v1

    .line 583
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 585
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_f
    if-eqz v0, :cond_14

    .line 586
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1

    .line 588
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public readDBWhiteList()V
    .registers 8

    .line 503
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    iget-object v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;

    iget-object v2, v1, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 505
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_34

    .line 506
    :goto_13
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 507
    const-string v1, "Uid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "uid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ibs/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    .end local v1    # "uid":Ljava/lang/String;
    goto :goto_13

    .line 510
    :cond_31
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 512
    :cond_34
    return-void
.end method

.method public removeBlockList(ILjava/lang/String;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " removeBlockList uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IbsQuickDim"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 478
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mBlockUnDimUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 480
    :cond_33
    const-string v0, "PackageName = ? AND Uid = ?"

    .line 481
    .local v0, "whereClause":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 482
    .local v2, "whereArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ibs/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;

    invoke-virtual {v4, v0, v2}, Lcom/android/server/ibs/IbsQuickDim$SQLiteSQDwhilteList;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 483
    .local v4, "ret":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v1, -0x1

    if-ne v4, v1, :cond_60

    return v3

    .line 485
    :cond_60
    return v5
.end method

.method public setUicontrolEnable(Z)V
    .registers 5
    .param p1, "value"    # Z

    .line 515
    const-string v0, "IbsQuickDim"

    const-string v1, "UI set SQD switch"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-boolean v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mUiControlEnabled:Z

    if-eq v0, p1, :cond_2d

    .line 517
    const/4 v1, 0x2

    if-nez v0, :cond_17

    .line 518
    iput v1, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I

    .line 519
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessage(I)Z

    goto :goto_2d

    .line 520
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickdimEnable:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mScreenOn:Z

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQuickDimMode:I

    if-ne v0, v1, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mCharging:Z

    if-nez v0, :cond_2d

    .line 521
    iget-object v0, p0, Lcom/android/server/ibs/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IbsQuickDim$qkDimHandler;->sendEmptyMessage(I)Z

    .line 524
    :cond_2d
    :goto_2d
    iput-boolean p1, p0, Lcom/android/server/ibs/IbsQuickDim;->mUiControlEnabled:Z

    .line 525
    return-void
.end method
