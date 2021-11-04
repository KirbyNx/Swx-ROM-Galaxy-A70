.class Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;,
        Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;,
        Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;,
        Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    }
.end annotation


# static fields
.field private static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final DEBUG:Z

.field private static final DESKTOP_SETTINGS_KEY_TOUCH_PAD:Ljava/lang/String; = "touchpad_enabled"

.field private static final DESKTOP_SETTINGS_METHOD_GET:Ljava/lang/String; = "getSettings"

.field private static final DESKTOP_SETTINGS_URI:Landroid/net/Uri;

.field private static final EMERGENCY_MODE_ENABLED:Z

.field private static final MAP_MAX_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_LIMIT:I = 0x2710

.field static final TYPE_NOTIFICATION:I = 0x1


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private final mDesktopSettingsObserver:Landroid/database/ContentObserver;

.field private mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDisableNotificationAlerts:Z

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGearVrDocked:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mIsTouchpadEnabled:Z

.field private mLockState:I

.field private mNm:Landroid/app/INotificationManager;

.field private final mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

.field private final mNotificationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPolicyType:I

.field private mPolicyVersion:J

.field private mPriorityPolicy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResumedComponent:Landroid/content/ComponentName;

.field private mResumedComponentTime:J

.field private mRinging:Z

.field private mStatusBarDisabled1:I

.field private mSuppressed:I

.field private mUseHeadsUp:Z

.field private mUserId:I

.field private mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 70
    const-class v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    .line 72
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 78
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 79
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 80
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 81
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    :goto_36
    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    .line 85
    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    .line 96
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    .line 120
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    .line 122
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 126
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;)V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 130
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 132
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    .line 134
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    .line 136
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 138
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    .line 140
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    .line 142
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    .line 150
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 160
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    .line 187
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 249
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 251
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 252
    const-string v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDexManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 254
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    .line 256
    new-instance v0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 257
    new-instance v0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 258
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->registerReceiver()V

    .line 259
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 261
    const-string/jumbo v2, "heads_up_notifications_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 260
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    nop

    .line 266
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 265
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    .line 267
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 269
    .local v0, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v0, :cond_f4

    .line 270
    :try_start_d6
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_db} :catch_dc

    goto :goto_f4

    .line 272
    :catch_dc
    move-exception v1

    .line 273
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5

    .line 274
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_f4
    :goto_f4
    nop

    .line 275
    :goto_f5
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 68
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .registers 1

    .line 68
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
    .param p1, "x1"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 68
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 68
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
    .param p1, "x1"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mIsTouchpadEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
    .param p1, "x1"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 68
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private cleanUp()V
    .registers 10

    .line 809
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 810
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_f

    .line 811
    monitor-exit v0

    return-void

    .line 813
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 814
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 815
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;>;>;"
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 816
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 817
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    iget-wide v5, v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    cmp-long v5, v5, v1

    if-gez v5, :cond_3b

    .line 818
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 820
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;>;"
    :cond_3b
    goto :goto_1d

    .line 821
    .end local v1    # "now":J
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;>;>;"
    :cond_3c
    monitor-exit v0

    .line 822
    return-void

    .line 821
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 382
    :catch_8
    move-exception v0

    .line 383
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplicationInfo : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "def"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :try_start_10
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const-string v3, "getSettings"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 179
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_26

    .line 180
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_25} :catch_27

    return-object v2

    .line 184
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_26
    goto :goto_2f

    .line 182
    :catch_27
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2f
    return-object p2
.end method

.method private getEdgeLightingRestrictState(I)I
    .registers 7
    .param p1, "range"    # I

    .line 860
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5e

    .line 861
    const/4 v0, 0x1

    .line 862
    .local v0, "coverOpen":Z
    const/4 v2, 0x2

    .line 863
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-nez v3, :cond_1e

    .line 864
    new-instance v3, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 866
    :cond_1e
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 867
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    .line 868
    .local v3, "cs":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 869
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    .line 871
    .end local v3    # "cs":Lcom/samsung/android/cover/CoverState;
    :cond_34
    if-nez v0, :cond_5e

    invoke-direct {p0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isSupportedCover(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    if-eq p1, v1, :cond_5e

    .line 872
    :cond_3e
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEdgeLightingRestrictState coverOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v1, 0x2

    return v1

    .line 877
    .end local v0    # "coverOpen":Z
    .end local v2    # "type":I
    :cond_5e
    iget v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mLockState:I

    if-eqz v0, :cond_64

    .line 878
    const/4 v0, 0x3

    return v0

    .line 882
    :cond_64
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 883
    const/16 v0, 0xa

    return v0

    .line 886
    :cond_73
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v0, v1, :cond_8b

    .line 887
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "Desktop mode enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/16 v0, 0xb

    return v0

    .line 891
    :cond_8b
    const/4 v0, 0x0

    return v0
.end method

.method private getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "range"    # I

    .line 512
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_b

    .line 513
    return-object v1

    .line 515
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v0

    .line 516
    .local v0, "policyInfo":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    if-nez v0, :cond_14

    .line 517
    return-object v1

    .line 519
    :cond_14
    iget v2, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_1a

    .line 520
    return-object v0

    .line 522
    :cond_1a
    return-object v1
.end method

.method private isDeviceInVrMode()Z
    .registers 2

    .line 372
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mGearVrDocked:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isEmptyText(Landroid/os/Bundle;)Z
    .registers 5
    .param p0, "extra"    # Landroid/os/Bundle;

    .line 790
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 791
    return v0

    .line 793
    :cond_4
    const-string/jumbo v1, "tickerText"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_14

    .line 794
    return v3

    .line 796
    :cond_14
    const-string/jumbo v1, "titleText"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 797
    return v3

    .line 799
    :cond_22
    const-string/jumbo v1, "text"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 800
    return v3

    .line 802
    :cond_30
    const-string/jumbo v1, "subText"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 803
    return v3

    .line 805
    :cond_3e
    return v0
.end method

.method private isMirrorLinkOn()Z
    .registers 3

    .line 376
    const-string/jumbo v0, "net.mirrorlink.on"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSupportedCover(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 895
    nop

    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 389
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 390
    return v0

    .line 392
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isValidApplication(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 400
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    return v2
.end method

.method private synthetic lambda$onBootCompleted$0(II)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "type"    # I

    .line 284
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    goto :goto_e

    .line 289
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mGearVrDocked:Z

    .line 290
    goto :goto_e

    .line 286
    :cond_b
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mGearVrDocked:Z

    .line 287
    nop

    .line 294
    :goto_e
    return-void
.end method

.method private manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 11
    .param p1, "what"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 629
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 630
    .local v0, "N":I
    const/4 v1, 0x0

    .line 632
    .local v1, "record":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_8
    if-ge v2, v0, :cond_1f

    .line 633
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    .line 634
    .local v3, "t":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    iget-object v4, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v4, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 635
    move-object v1, v3

    .line 636
    goto :goto_1f

    .line 632
    .end local v3    # "t":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 639
    :cond_1f
    :goto_1f
    const/4 v3, 0x0

    if-eqz p1, :cond_60

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_60

    .line 645
    :cond_29
    if-nez v1, :cond_59

    .line 646
    new-instance v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;)V

    move-object v1, v4

    .line 648
    :try_start_32
    invoke-interface {p3, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_3c

    .line 652
    nop

    .line 653
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 649
    :catch_3c
    move-exception v3

    .line 650
    .local v3, "ex":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "manageDisableRecoredLocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void

    .line 655
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    iput p1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    .line 656
    iput-object p3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    .line 657
    iput-object p2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    goto :goto_6c

    .line 640
    :cond_60
    :goto_60
    if-eqz v1, :cond_6c

    .line 641
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 642
    iget-object v4, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v4, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 659
    :cond_6c
    :goto_6c
    return-void
.end method

.method private registerReceiver()V
    .registers 4

    .line 301
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$4;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V

    .line 310
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    return-void
.end method


# virtual methods
.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 608
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 609
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->manageDisableRecoredLocked(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 610
    monitor-exit v0

    .line 611
    return-void

    .line 610
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public disableEdgeLighting(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "disable"    # Z

    .line 614
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 615
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 616
    .local v1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_18

    .line 617
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 618
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    :cond_18
    if-eqz p3, :cond_1e

    .line 621
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 623
    :cond_1e
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 625
    .end local v1    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_21
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-EdgeLightingPolicy start : type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_28

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_6e

    .line 920
    :cond_28
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 921
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 922
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;>;>;"
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 923
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 924
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;>;"
    goto :goto_35

    .line 926
    :cond_68
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;>;>;"
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_2b .. :try_end_6e} :catchall_127

    .line 929
    :cond_6e
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 930
    :try_start_71
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    .line 931
    .local v2, "record":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  [DisableRecord] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    .end local v2    # "record":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;
    goto :goto_77

    .line 933
    :cond_a4
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_71 .. :try_end_aa} :catchall_124

    .line 935
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 936
    :try_start_ad
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 937
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b4
    if-ge v2, v1, :cond_e7

    .line 938
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 939
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 940
    .local v4, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  [DisabledPackages] : type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    .end local v3    # "type":I
    .end local v4    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 942
    .end local v2    # "i":I
    :cond_e7
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    .end local v1    # "N":I
    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_ad .. :try_end_ed} :catchall_121

    .line 944
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_f5

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_104

    .line 945
    :cond_f5
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string/jumbo v1, "white"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string v1, "black"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSuppressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    return-void

    .line 943
    :catchall_121
    move-exception v1

    :try_start_122
    monitor-exit v0
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    throw v1

    .line 934
    :catchall_124
    move-exception v0

    :try_start_125
    monitor-exit v1
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_124

    throw v0

    .line 927
    :catchall_127
    move-exception v1

    :try_start_128
    monitor-exit v0
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_127

    throw v1
.end method

.method getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "range"    # I

    .line 498
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_b

    .line 499
    return-object v1

    .line 501
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v0

    .line 502
    .local v0, "policyInfo":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    if-nez v0, :cond_14

    .line 503
    return-object v1

    .line 505
    :cond_14
    iget v2, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_1a

    .line 506
    return-object v0

    .line 508
    :cond_1a
    return-object v1
.end method

.method public getGroupNotificationData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .registers 3
    .param p1, "groupKey"    # Ljava/lang/String;

    .line 1062
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getGroupData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    move-result-object v0

    return-object v0
.end method

.method getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .registers 6
    .param p1, "category"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "policy":Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 528
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    goto :goto_c

    .line 529
    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_c

    .line 530
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 532
    :cond_c
    :goto_c
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v2

    if-ge v2, v1, :cond_15

    goto :goto_1a

    .line 535
    :cond_15
    invoke-virtual {v0, p2}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v1

    return-object v1

    .line 533
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public getResumedComponent()Landroid/content/ComponentName;
    .registers 2

    .line 850
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getValidNotificationData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 825
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 826
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 827
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 828
    .local v3, "data":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    const/4 v4, 0x0

    if-nez v3, :cond_14

    .line 829
    monitor-exit v0

    return-object v4

    .line 831
    :cond_14
    sget-boolean v5, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v5, :cond_1c

    sget-boolean v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v5, :cond_51

    .line 832
    :cond_1c
    sget-object v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getValidNotificationData packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long v7, v1, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_51
    iget-wide v5, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0xfa0

    cmp-long v5, v5, v7

    if-gez v5, :cond_5d

    .line 836
    monitor-exit v0

    return-object v3

    .line 838
    :cond_5d
    monitor-exit v0

    return-object v4

    .line 839
    .end local v1    # "now":J
    .end local v3    # "data":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method isAcceptableApplication(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "range"    # I
    .param p3, "userId"    # I

    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(Ljava/lang/String;IZI)Z

    move-result v0

    return v0
.end method

.method isAcceptableApplication(Ljava/lang/String;IZI)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "range"    # I
    .param p3, "includeAllApp"    # Z
    .param p4, "userId"    # I

    .line 411
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getPolicyByCategory(ILjava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v1

    .line 413
    .local v1, "info":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const/4 v3, 0x0

    if-nez v2, :cond_e

    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v2, :cond_5b

    .line 414
    :cond_e
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "isAcceptableApplication: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, "debugString":Ljava/lang/StringBuffer;
    const-string v4, " pkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    const-string v4, " , range="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 417
    const-string v4, " , includeAllApp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 418
    const-string v4, " , userId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 419
    const-string v4, " , infoRange="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_40

    iget v4, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    goto :goto_41

    :cond_40
    move v4, v3

    :goto_41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 420
    const-string v4, " , infoCategory="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_4e

    iget v4, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    goto :goto_4f

    :cond_4e
    move v4, v3

    :goto_4f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 421
    sget-object v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v2    # "debugString":Ljava/lang/StringBuffer;
    :cond_5b
    const v2, 0xff00

    and-int/2addr v2, p2

    if-eqz v2, :cond_6b

    .line 426
    if-eqz v1, :cond_69

    iget v2, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_69

    goto :goto_6a

    :cond_69
    move v0, v3

    :goto_6a
    return v0

    .line 429
    :cond_6b
    if-nez p3, :cond_99

    iget v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_73

    goto :goto_99

    .line 435
    :cond_73
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getAcceptablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v2

    if-eqz v2, :cond_7b

    move v2, v0

    goto :goto_7c

    :cond_7b
    move v2, v3

    .line 436
    .local v2, "accept":Z
    :goto_7c
    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v4, :cond_84

    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v4, :cond_a7

    .line 437
    :cond_84
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "isAcceptableApplication: getAcceptablePolicy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 438
    .local v4, "debugString":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 439
    sget-object v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 430
    .end local v2    # "accept":Z
    .end local v4    # "debugString":Ljava/lang/StringBuffer;
    :cond_99
    :goto_99
    invoke-direct {p0, p1, p4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isValidApplication(Ljava/lang/String;I)Z

    move-result v2

    .line 431
    .restart local v2    # "accept":Z
    if-eqz v2, :cond_a7

    if-eqz v1, :cond_a7

    iget v4, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v4, p2

    if-nez v4, :cond_a7

    .line 432
    const/4 v2, 0x0

    .line 442
    :cond_a7
    :goto_a7
    if-eqz v2, :cond_bf

    iget v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_bf

    .line 443
    invoke-direct {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 444
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_bd

    invoke-direct {p0, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_bd

    move v5, v0

    goto :goto_be

    :cond_bd
    move v5, v3

    :goto_be
    move v2, v5

    .line 446
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_bf
    const/4 v4, 0x0

    .line 448
    .local v4, "uid":I
    if-gez p4, :cond_cc

    .line 449
    :try_start_c2
    iget-object v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    invoke-virtual {v5, p1, v3, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    goto :goto_d3

    .line 451
    :cond_cc
    iget-object v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1, v3, p4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v5
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d2} :catch_d4

    move v4, v5

    .line 455
    :goto_d3
    goto :goto_eb

    .line 453
    :catch_d4
    move-exception v5

    .line 454
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPackageUidAsUser failed - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_eb
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_14b

    .line 458
    :try_start_ef
    iget-object v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-nez v5, :cond_100

    .line 459
    const-string/jumbo v5, "notification"

    .line 460
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 459
    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    .line 462
    :cond_100
    iget-object v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-eqz v5, :cond_10b

    .line 463
    iget-object v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    invoke-interface {v5, p1, v4}, Landroid/app/INotificationManager;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result v5

    move v2, v5

    .line 465
    :cond_10b
    sget-boolean v5, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v5, :cond_113

    sget-boolean v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v5, :cond_132

    .line 466
    :cond_113
    sget-object v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAcceptableApplication - accept rechecked by isEdgeLightingAllowed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_132} :catch_133

    .line 471
    :cond_132
    goto :goto_14b

    .line 469
    :catch_133
    move-exception v5

    .line 470
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEdgeLightingAllowed failed - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_14b
    :goto_14b
    if-eqz v2, :cond_1ae

    iget v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1ae

    .line 474
    move v5, v2

    .line 475
    .local v5, "privAccept":Z
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getRejectablePolicy(Ljava/lang/String;I)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v6

    if-nez v6, :cond_15b

    goto :goto_15c

    :cond_15b
    move v0, v3

    :goto_15c
    move v2, v0

    .line 476
    if-eqz v5, :cond_192

    if-nez v2, :cond_192

    .line 478
    :try_start_161
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-eqz v0, :cond_16a

    .line 479
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, v4, v3}, Landroid/app/INotificationManager;->setAllowEdgeLighting(Ljava/lang/String;IZ)V

    .line 481
    :cond_16a
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_172

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_179

    .line 482
    :cond_172
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Block list app so setAllowEdgeLighting to false"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_179} :catch_17a

    .line 486
    :cond_179
    goto :goto_192

    .line 484
    :catch_17a
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAllowEdgeLighting failed - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_192
    :goto_192
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_19a

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_1ae

    .line 489
    :cond_19a
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "isAcceptableApplication: getRejectablePolicy "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 490
    .local v0, "debugString":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 491
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .end local v0    # "debugString":Ljava/lang/StringBuffer;
    .end local v5    # "privAccept":Z
    :cond_1ae
    return v2
.end method

.method public isAllowEdgelighting(Z)Z
    .registers 4
    .param p1, "isInteractive"    # Z

    .line 602
    iget v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 603
    return v1

    .line 605
    :cond_6
    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public isDexTouchpadEnabled()Z
    .registers 2

    .line 368
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mIsTouchpadEnabled:Z

    return v0
.end method

.method isEdgeLightingDisabled()Z
    .registers 4

    .line 552
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 553
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 554
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "EdgeLighting is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 557
    :cond_15
    monitor-exit v0

    .line 558
    const/4 v0, 0x0

    return v0

    .line 557
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method isEdgeLightingDisabledByPackage(ILjava/lang/String;)Z
    .registers 7
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 562
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 563
    return v0

    .line 565
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v1

    .line 566
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_11

    .line 567
    monitor-exit v1

    return v0

    .line 569
    :cond_11
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 570
    .local v2, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_22

    goto :goto_2d

    .line 573
    :cond_22
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 574
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 576
    .end local v2    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2b
    monitor-exit v1

    .line 577
    return v0

    .line 571
    .restart local v2    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2d
    :goto_2d
    monitor-exit v1

    return v0

    .line 576
    .end local v2    # "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method isEdgeLightingRestricted(I)Z
    .registers 6
    .param p1, "range"    # I

    .line 543
    invoke-direct {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getEdgeLightingRestrictState(I)I

    move-result v0

    .line 544
    .local v0, "restrictState":I
    if-eqz v0, :cond_26

    .line 545
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EdgeLighting is Restricted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v1, 0x1

    return v1

    .line 548
    :cond_26
    const/4 v1, 0x0

    return v1
.end method

.method public isEnabledHeadsUp()Z
    .registers 4

    .line 360
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    if-nez v0, :cond_1f

    .line 361
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isHUNPeeked : UseHeadsUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    return v0

    .line 364
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public isHUNPeeked()Z
    .registers 4

    .line 345
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isDeviceInVrMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 346
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isHUNPeeked : Vr mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return v1

    .line 351
    :cond_10
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->isMirrorLinkOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 352
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isHUNPeeked : mirror link on"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return v1

    .line 356
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public isNotificationForEdgeLighting(Landroid/service/notification/StatusBarNotification;)Z
    .registers 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 662
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 663
    .local v0, "n":Landroid/app/Notification;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 664
    return v1

    .line 667
    :cond_8
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 668
    sget-object v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNotificationForEdgeLighting : small icon is null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return v1

    .line 671
    :cond_2a
    const/4 v1, 0x1

    return v1
.end method

.method public isRecommendPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method onBootCompleted()V
    .registers 3

    .line 278
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 314
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    .line 315
    return-void
.end method

.method public putNotification(Landroid/service/notification/StatusBarNotification;ZZI)Landroid/os/Bundle;
    .registers 12
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isHeadUp"    # Z
    .param p3, "isUpdate"    # Z
    .param p4, "visiblity"    # I

    .line 679
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;
    .registers 28
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isHeadUp"    # Z
    .param p3, "isUpdate"    # Z
    .param p4, "visiblity"    # I
    .param p5, "hasAudibleAlert"    # Z
    .param p6, "canBubble"    # Z

    .line 682
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 683
    return-object v2

    .line 685
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 686
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_20

    :cond_1f
    move-object v0, v2

    :goto_20
    move-object v4, v0

    .line 687
    .local v4, "tickerText":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 688
    .local v5, "smallIcon":Landroid/graphics/drawable/Icon;
    const/4 v0, 0x0

    .line 689
    .local v0, "titleText":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 690
    .local v6, "text":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 691
    .local v7, "subText":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    .line 693
    .local v8, "groupKey":Ljava/lang/String;
    if-eqz v3, :cond_48

    .line 694
    const-string v9, "android.title"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 695
    const-string v9, "android.text"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 696
    const-string v9, "android.subText"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v0

    goto :goto_4b

    .line 693
    :cond_48
    move-object v9, v7

    move-object v7, v6

    move-object v6, v0

    .line 698
    .end local v0    # "titleText":Ljava/lang/CharSequence;
    .local v6, "titleText":Ljava/lang/CharSequence;
    .local v7, "text":Ljava/lang/CharSequence;
    .local v9, "subText":Ljava/lang/CharSequence;
    :goto_4b
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_8a

    .line 699
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "putNotification tickerText:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",titleText:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",text:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",sub:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "cn= + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 701
    :cond_8a
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "putNotification tickerText:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_9b

    const/4 v13, 0x1

    goto :goto_9c

    :cond_9b
    move v13, v11

    :goto_9c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",titleText:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_a8

    const/4 v13, 0x1

    goto :goto_a9

    :cond_a8
    move v13, v11

    :goto_a9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",text:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_b5

    const/4 v13, 0x1

    goto :goto_b6

    :cond_b5
    move v13, v11

    :goto_b6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",sub:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_c2

    const/4 v13, 0x1

    goto :goto_c3

    :cond_c2
    move v13, v11

    :goto_c3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "cn= + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_d7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->cleanUp()V

    .line 704
    iget-object v12, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 705
    :try_start_dd
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->ledARGB:I
    :try_end_e3
    .catchall {:try_start_dd .. :try_end_e3} :catchall_3b9

    .line 706
    .local v0, "ledColor":I
    if-nez v0, :cond_10c

    .line 707
    :try_start_e5
    iget-object v13, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 708
    .local v13, "oldData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    if-eqz v13, :cond_10c

    .line 709
    iget-object v14, v13, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string v15, "color"

    invoke-virtual {v14, v15, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14
    :try_end_fb
    .catchall {:try_start_e5 .. :try_end_fb} :catchall_fd

    move v0, v14

    goto :goto_10c

    .line 785
    .end local v0    # "ledColor":I
    .end local v13    # "oldData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    :catchall_fd
    move-exception v0

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v19, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_3c6

    .line 713
    .restart local v0    # "ledColor":I
    :cond_10c
    :goto_10c
    :try_start_10c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 714
    .local v13, "now":J
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 715
    .local v15, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "isHeadup"
    :try_end_118
    .catchall {:try_start_10c .. :try_end_118} :catchall_3b9

    move/from16 v10, p2

    :try_start_11a
    invoke-virtual {v15, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 716
    const-string/jumbo v2, "isUpdate"
    :try_end_120
    .catchall {:try_start_11a .. :try_end_120} :catchall_3b7

    move/from16 v11, p3

    :try_start_122
    invoke-virtual {v15, v2, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 717
    const-string/jumbo v2, "tickerText"

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 718
    const-string/jumbo v2, "titleText"

    invoke-virtual {v15, v2, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 719
    const-string/jumbo v2, "text"

    invoke-virtual {v15, v2, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 720
    const-string/jumbo v2, "subText"

    invoke-virtual {v15, v2, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 721
    const-string/jumbo v2, "smallIcon"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 722
    const-string v2, "flag"
    :try_end_145
    .catchall {:try_start_122 .. :try_end_145} :catchall_3b5

    move-object/from16 v19, v3

    .end local v3    # "extras":Landroid/os/Bundle;
    .local v19, "extras":Landroid/os/Bundle;
    :try_start_147
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    const-string v2, "color"

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 724
    const-string/jumbo v2, "notification_color"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->color:I

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 725
    const-string/jumbo v2, "priority"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->priority:I

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 726
    const-string v2, "component"

    iget-object v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;
    :try_end_171
    .catchall {:try_start_147 .. :try_end_171} :catchall_3ad

    if-eqz v3, :cond_183

    :try_start_173
    iget-object v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3
    :try_end_179
    .catchall {:try_start_173 .. :try_end_179} :catchall_17a

    goto :goto_184

    .line 785
    .end local v0    # "ledColor":I
    .end local v13    # "now":J
    .end local v15    # "data":Landroid/os/Bundle;
    :catchall_17a
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_3c6

    .line 726
    .restart local v0    # "ledColor":I
    .restart local v13    # "now":J
    .restart local v15    # "data":Landroid/os/Bundle;
    :cond_183
    const/4 v3, 0x0

    :goto_184
    :try_start_184
    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v2, "component_time"
    :try_end_189
    .catchall {:try_start_184 .. :try_end_189} :catchall_3ad

    move-object/from16 v16, v4

    .end local v4    # "tickerText":Ljava/lang/CharSequence;
    .local v16, "tickerText":Ljava/lang/CharSequence;
    :try_start_18b
    iget-wide v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    invoke-virtual {v15, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 728
    const-string/jumbo v2, "group_key"

    invoke-virtual {v15, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v2, "content_intent"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 730
    const-string/jumbo v2, "user_id"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 731
    const-string/jumbo v2, "noti_key"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string/jumbo v2, "noti_id"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 733
    const-string/jumbo v2, "noti_tag"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string/jumbo v2, "noti_visiblity"

    move/from16 v3, p4

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 735
    const-string v2, "alert_group"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4
    :try_end_1db
    .catchall {:try_start_18b .. :try_end_1db} :catchall_3a7

    if-eqz v4, :cond_1f0

    :try_start_1dd
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v4
    :try_end_1e5
    .catchall {:try_start_1dd .. :try_end_1e5} :catchall_1e9

    if-eqz v4, :cond_1f0

    const/4 v4, 0x1

    goto :goto_1f1

    .line 785
    .end local v0    # "ledColor":I
    .end local v13    # "now":J
    .end local v15    # "data":Landroid/os/Bundle;
    :catchall_1e9
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_3c6

    .line 735
    .restart local v0    # "ledColor":I
    .restart local v13    # "now":J
    .restart local v15    # "data":Landroid/os/Bundle;
    :cond_1f0
    const/4 v4, 0x0

    :goto_1f1
    :try_start_1f1
    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    const-string v2, "category"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 737
    const-string v2, "audible_alert"

    move/from16 v4, p5

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 738
    const-string v2, "channel_id"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move/from16 v20, v0

    .end local v0    # "ledColor":I
    .local v20, "ledColor":I
    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 739
    const-string v0, "bubble"

    move/from16 v2, p6

    invoke-virtual {v15, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;
    :try_end_222
    .catchall {:try_start_1f1 .. :try_end_222} :catchall_3a7

    if-eqz v0, :cond_24a

    .line 742
    :try_start_224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_231
    if-ge v4, v3, :cond_244

    aget-object v17, v2, v4

    move-object/from16 v18, v17

    .line 744
    .local v18, "action":Landroid/app/Notification$Action;
    move-object/from16 v17, v2

    move-object/from16 v2, v18

    .end local v18    # "action":Landroid/app/Notification$Action;
    .local v2, "action":Landroid/app/Notification$Action;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    nop

    .end local v2    # "action":Landroid/app/Notification$Action;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    goto :goto_231

    .line 747
    :cond_244
    const-string/jumbo v2, "noti_actions"

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_24a
    .catchall {:try_start_224 .. :try_end_24a} :catchall_1e9

    .line 750
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    :cond_24a
    :try_start_24a
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;-><init>(JLandroid/os/Bundle;)V
    :try_end_24f
    .catchall {:try_start_24a .. :try_end_24f} :catchall_3a7

    .line 751
    .local v0, "newData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    if-eqz v8, :cond_262

    .line 752
    :try_start_251
    iget-object v2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;
    :try_end_253
    .catchall {:try_start_251 .. :try_end_253} :catchall_259

    move-object/from16 v3, p1

    :try_start_255
    invoke-virtual {v2, v3, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->updateNotificationData(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V
    :try_end_258
    .catchall {:try_start_255 .. :try_end_258} :catchall_1e9

    goto :goto_264

    .line 785
    .end local v0    # "newData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .end local v13    # "now":J
    .end local v15    # "data":Landroid/os/Bundle;
    .end local v20    # "ledColor":I
    :catchall_259
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_3c6

    .line 751
    .restart local v0    # "newData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .restart local v13    # "now":J
    .restart local v15    # "data":Landroid/os/Bundle;
    .restart local v20    # "ledColor":I
    :cond_262
    move-object/from16 v3, p1

    .line 754
    :goto_264
    :try_start_264
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_388

    .line 755
    iget-object v2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getGroupData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    move-result-object v2

    .line 756
    .local v2, "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    if-eqz v2, :cond_383

    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v4

    if-eqz v4, :cond_383

    .line 757
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .local v4, "debugTicker":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "tickerText"

    invoke-virtual {v15, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 759
    const-string v3, " -> "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;
    :try_end_29a
    .catchall {:try_start_264 .. :try_end_29a} :catchall_3a7

    move-object/from16 v17, v5

    .end local v5    # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v17, "smallIcon":Landroid/graphics/drawable/Icon;
    :try_start_29c
    const-string/jumbo v5, "tickerText"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string/jumbo v3, "tickerText"

    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;
    :try_end_2b4
    .catchall {:try_start_29c .. :try_end_2b4} :catchall_37f

    move-object/from16 v18, v6

    .end local v6    # "titleText":Ljava/lang/CharSequence;
    .local v18, "titleText":Ljava/lang/CharSequence;
    :try_start_2b6
    const-string/jumbo v6, "tickerText"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 762
    const-string/jumbo v3, "titleText"

    invoke-virtual {v15, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 763
    const-string v3, " -> "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "titleText"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string/jumbo v3, "titleText"

    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "titleText"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 766
    const-string/jumbo v3, "text"

    invoke-virtual {v15, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 767
    const-string v3, " -> "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "text"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string/jumbo v3, "text"

    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 770
    const-string/jumbo v3, "subText"

    invoke-virtual {v15, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 771
    const-string v3, " -> "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "subText"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 772
    const-string/jumbo v3, "subText"

    invoke-virtual {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "subText"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 774
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    if-eqz v3, :cond_38c

    .line 775
    sget-object v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Summary notification display. Change text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38c

    .line 785
    .end local v0    # "newData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .end local v2    # "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .end local v4    # "debugTicker":Ljava/lang/StringBuilder;
    .end local v13    # "now":J
    .end local v15    # "data":Landroid/os/Bundle;
    .end local v18    # "titleText":Ljava/lang/CharSequence;
    .end local v20    # "ledColor":I
    .restart local v6    # "titleText":Ljava/lang/CharSequence;
    :catchall_37f
    move-exception v0

    move-object/from16 v18, v6

    .end local v6    # "titleText":Ljava/lang/CharSequence;
    .restart local v18    # "titleText":Ljava/lang/CharSequence;
    goto :goto_3c6

    .line 756
    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v18    # "titleText":Ljava/lang/CharSequence;
    .restart local v0    # "newData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .restart local v2    # "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .restart local v5    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "titleText":Ljava/lang/CharSequence;
    .restart local v13    # "now":J
    .restart local v15    # "data":Landroid/os/Bundle;
    .restart local v20    # "ledColor":I
    :cond_383
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v6    # "titleText":Ljava/lang/CharSequence;
    .restart local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v18    # "titleText":Ljava/lang/CharSequence;
    goto :goto_38c

    .line 754
    .end local v2    # "groupData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v18    # "titleText":Ljava/lang/CharSequence;
    .restart local v5    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "titleText":Ljava/lang/CharSequence;
    :cond_388
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 780
    .end local v5    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v6    # "titleText":Ljava/lang/CharSequence;
    .restart local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v18    # "titleText":Ljava/lang/CharSequence;
    :cond_38c
    :goto_38c
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-nez v2, :cond_3a5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-nez v2, :cond_3a5

    .line 781
    iget-object v2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_3a5
    monitor-exit v12

    return-object v15

    .line 785
    .end local v0    # "newData":Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .end local v13    # "now":J
    .end local v15    # "data":Landroid/os/Bundle;
    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v18    # "titleText":Ljava/lang/CharSequence;
    .end local v20    # "ledColor":I
    .restart local v5    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "titleText":Ljava/lang/CharSequence;
    :catchall_3a7
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v6    # "titleText":Ljava/lang/CharSequence;
    .restart local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v18    # "titleText":Ljava/lang/CharSequence;
    goto :goto_3c6

    .end local v16    # "tickerText":Ljava/lang/CharSequence;
    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v18    # "titleText":Ljava/lang/CharSequence;
    .local v4, "tickerText":Ljava/lang/CharSequence;
    .restart local v5    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "titleText":Ljava/lang/CharSequence;
    :catchall_3ad
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v4    # "tickerText":Ljava/lang/CharSequence;
    .end local v5    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v6    # "titleText":Ljava/lang/CharSequence;
    .restart local v16    # "tickerText":Ljava/lang/CharSequence;
    .restart local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v18    # "titleText":Ljava/lang/CharSequence;
    goto :goto_3c6

    .end local v16    # "tickerText":Ljava/lang/CharSequence;
    .end local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v18    # "titleText":Ljava/lang/CharSequence;
    .end local v19    # "extras":Landroid/os/Bundle;
    .restart local v3    # "extras":Landroid/os/Bundle;
    .restart local v4    # "tickerText":Ljava/lang/CharSequence;
    .restart local v5    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v6    # "titleText":Ljava/lang/CharSequence;
    :catchall_3b5
    move-exception v0

    goto :goto_3be

    :catchall_3b7
    move-exception v0

    goto :goto_3bc

    :catchall_3b9
    move-exception v0

    move/from16 v10, p2

    :goto_3bc
    move/from16 v11, p3

    :goto_3be
    move-object/from16 v19, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "tickerText":Ljava/lang/CharSequence;
    .end local v5    # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v6    # "titleText":Ljava/lang/CharSequence;
    .restart local v16    # "tickerText":Ljava/lang/CharSequence;
    .restart local v17    # "smallIcon":Landroid/graphics/drawable/Icon;
    .restart local v18    # "titleText":Ljava/lang/CharSequence;
    .restart local v19    # "extras":Landroid/os/Bundle;
    :goto_3c6
    monitor-exit v12
    :try_end_3c7
    .catchall {:try_start_2b6 .. :try_end_3c7} :catchall_3c8

    throw v0

    :catchall_3c8
    move-exception v0

    goto :goto_3c6
.end method

.method public removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .registers 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 675
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->remove(Landroid/service/notification/StatusBarNotification;)V

    .line 676
    return-void
.end method

.method public setResumedComponent(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 843
    if-eqz p1, :cond_a

    .line 844
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    .line 845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    .line 847
    :cond_a
    return-void
.end method

.method setRinging(Z)V
    .registers 2
    .param p1, "ringing"    # Z

    .line 539
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mRinging:Z

    .line 540
    return-void
.end method

.method public setSuppressed(I)V
    .registers 2
    .param p1, "suppressed"    # I

    .line 598
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    .line 599
    return-void
.end method

.method public statusBarDisabled(II)V
    .registers 9
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .line 581
    iget v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 582
    .local v0, "old1":I
    xor-int v1, p1, v0

    .line 583
    .local v1, "diff1":I
    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .local v2, "flagdbg":Ljava/lang/StringBuilder;
    const-string v3, "disable: < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const/high16 v3, 0x40000

    and-int v4, p1, v3

    if-eqz v4, :cond_19

    const-string v4, "ALERTS"

    goto :goto_1b

    :cond_19
    const-string v4, "alerts"

    :goto_1b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    and-int v4, v1, v3

    if-eqz v4, :cond_25

    const-string v4, "* "

    goto :goto_27

    :cond_25
    const-string v4, " "

    :goto_27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateEventHistory(Ljava/lang/String;)V

    .line 591
    and-int v4, v1, v3

    if-eqz v4, :cond_4c

    .line 592
    and-int/2addr v3, p1

    const/4 v4, 0x1

    if-eqz v3, :cond_44

    move v3, v4

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    :goto_45
    iput-boolean v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    .line 593
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 595
    :cond_4c
    return-void
.end method

.method public updateEdgeLightingPolicyFromHost(Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .registers 8
    .param p1, "policy"    # Lcom/samsung/android/edge/EdgeLightingPolicy;

    .line 318
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    .line 319
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->clear()V

    .line 320
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 321
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyType()I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    .line 322
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getPolicyVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 323
    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .line 324
    .local v1, "info":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    iget v2, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 325
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_44

    .line 326
    :cond_3a
    iget v2, v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_44

    .line 327
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    .line 329
    .end local v1    # "info":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    :cond_44
    :goto_44
    goto :goto_23

    .line 331
    :cond_45
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "edge_lighting_recommend_app_list"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "priorityList":Ljava/lang/String;
    if-eqz v0, :cond_68

    .line 333
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "recommendPackageList":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_5c
    if-ge v3, v2, :cond_68

    aget-object v4, v1, v3

    .line 335
    .local v4, "string":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v4    # "string":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 338
    .end local v1    # "recommendPackageList":[Ljava/lang/String;
    :cond_68
    return-void
.end method
