.class public Lcom/android/server/vr/GearVrManagerService;
.super Lcom/android/server/SystemService;
.source "GearVrManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;,
        Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;,
        Lcom/android/server/vr/GearVrManagerService$LocalService;,
        Lcom/android/server/vr/GearVrManagerService$GearVrHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DELAY_LOW_PERSISTENCE_MODE:I = 0x96

.field private static final MESSAGE_HIDE_CUTOUT:I = 0xb

.field private static final MESSAGE_LOW_PERSISTENCE_ALLOWED_CHANGE:I = 0x3

.field private static final MESSAGE_LOW_PERSISTENCE_STATE_CHANGE:I = 0x2

.field private static final MESSAGE_VR_OVERLAY_RESTRICTION_STATE_CHANGE:I = 0xa

.field private static final MESSAGE_VR_STATE_CHANGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GearVrManagerService"


# instance fields
.field private mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mBootCompleted:Z

.field private mBootsToXr:Z

.field private mContext:Landroid/content/Context;

.field private final mDeviceController:Lcom/android/server/vr/DeviceController;

.field private mDeviceId:Ljava/lang/String;

.field private mDocked:Z

.field private mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

.field private final mGearVrManagerStubAdapter:Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;

.field private final mHandler:Landroid/os/Handler;

.field private mHasHmtFeature:Z

.field private mHasHmtTetheredFeature:Z

.field private mHideCutout:Z

.field private mHideCutoutAllowed:Z

.field private mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

.field private final mHmtManager:Lcom/android/server/vr/HmtManager;

.field private mIsAwake:Z

.field private mKeyguardUnlocked:Z

.field private final mLock:Ljava/lang/Object;

.field private mLowPersistenceMode:Z

.field private mLowPersistenceModeAllowed:Z

.field private mMounted:Z

.field private final mOverlayToken:Landroid/os/IBinder;

.field private mPersistentVrMode:Z

.field private mPersistentVrModeEnabled:Z

.field private mProximityNear:Z

.field private mReady:Z

.field private final mRefreshRateModeController:Lcom/android/server/vr/RefreshRateModeController;

.field private final mRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/vr/IGearVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mShowMetaScreen:Z

.field private mSystemUiUid:I

.field private mTaState:I

.field private mTetheredDisplayConnected:Z

.field private mUpmsMonitor:Lcom/android/server/vr/UpmsMonitor;

.field private mUserUnlocked:Z

.field private mVrImmersiveMode:Z

.field private mVrImmersiveModeAllowed:Z

.field private mVrModeAllowed:Z

.field private mVrModes:Landroid/util/SparseBooleanArray;

.field private final mVrPackageHelper:Lcom/android/server/vr/VrPackageHelper;

.field private mVrServicePackageAvailable:Z

.field private mWindowManager:Landroid/view/IWindowManager;

.field mXrActivityInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

.field private final mXrSettings:Lcom/android/server/vr/XrSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/vr/GearVrManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 552
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLowPersistenceModeAllowed:Z

    .line 135
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    .line 138
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeAllowed:Z

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrModeEnabled:Z

    .line 142
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;

    .line 144
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 150
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mIsAwake:Z

    .line 152
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mKeyguardUnlocked:Z

    .line 160
    iput v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    .line 164
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrImmersiveModeAllowed:Z

    .line 166
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHideCutoutAllowed:Z

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    .line 350
    new-instance v0, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerStubAdapter:Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;

    .line 553
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    .line 554
    new-instance v0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;-><init>(Lcom/android/server/vr/GearVrManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    .line 555
    new-instance v0, Lcom/android/server/vr/VrPackageHelper;

    invoke-direct {v0, p1}, Lcom/android/server/vr/VrPackageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrPackageHelper:Lcom/android/server/vr/VrPackageHelper;

    .line 556
    new-instance v0, Lcom/android/server/vr/HmtManager;

    invoke-direct {v0, p1}, Lcom/android/server/vr/HmtManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    .line 557
    new-instance v0, Lcom/android/server/vr/DeviceController;

    invoke-direct {v0, p0}, Lcom/android/server/vr/DeviceController;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    .line 558
    new-instance v0, Lcom/android/server/vr/XrSettings;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/vr/XrSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    .line 559
    new-instance v0, Lcom/android/server/vr/UpmsMonitor;

    invoke-direct {v0, p1}, Lcom/android/server/vr/UpmsMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mUpmsMonitor:Lcom/android/server/vr/UpmsMonitor;

    .line 560
    new-instance v0, Lcom/android/server/vr/RefreshRateModeController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/vr/RefreshRateModeController;-><init>(Landroid/content/Context;Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRefreshRateModeController:Lcom/android/server/vr/RefreshRateModeController;

    .line 561
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/GearVrManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->handleVrStateChange(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # I

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->handleOverlayRestriction(Z[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/DeviceController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/vr/GearVrManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTetheredDisplayStateLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateMetaScreenLocked()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/vr/GearVrManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;
    .param p1, "x1"    # Z

    .line 96
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mUserUnlocked:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateReadyLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vr/GearVrManagerService;)Landroid/view/IWindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/vr/GearVrManagerService;ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/ComponentName;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/content/ComponentName;
    .param p5, "x5"    # I

    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/android/server/vr/GearVrManagerService;->notifyActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/vr/GearVrManagerService;Landroid/app/ApplicationErrorReport;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;
    .param p1, "x1"    # Landroid/app/ApplicationErrorReport;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->notifyVrAppError(Landroid/app/ApplicationErrorReport;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/vr/GearVrManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getPreferredXrDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/vr/GearVrManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getTetheredDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/vr/GearVrManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getXrScreenDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/vr/GearVrManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getMetaScreenDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/vr/GearVrManagerService;)Lcom/android/server/vr/HmtManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/GearVrManagerService;

    .line 96
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    return-object v0
.end method

.method private broadcastRemoteCallbacks(II)V
    .registers 5
    .param p1, "deviceState"    # I
    .param p2, "type"    # I

    .line 1121
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1122
    .local v0, "i":I
    :goto_6
    if-lez v0, :cond_18

    .line 1123
    add-int/lit8 v0, v0, -0x1

    .line 1125
    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/IGearVrStateCallbacks;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrStateCallbacks;->onGearVrStateChanged(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_17

    .line 1126
    :catch_16
    move-exception v1

    .line 1128
    :goto_17
    goto :goto_6

    .line 1130
    :cond_18
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1131
    return-void
.end method

.method private checkVrServiceSignature()Z
    .registers 4

    .line 1233
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android"

    const-string v2, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 1234
    const/4 v0, 0x1

    return v0

    .line 1236
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private enforceCallingSystemPermission(Ljava/lang/String;)V
    .registers 9
    .param p1, "method"    # Ljava/lang/String;

    .line 1300
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1301
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1304
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_f

    .line 1305
    return-void

    .line 1309
    :cond_f
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_18

    .line 1310
    return-void

    .line 1314
    :cond_18
    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mSystemUiUid:I

    if-ne v1, v2, :cond_1d

    .line 1315
    return-void

    .line 1318
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", you need system uid."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "GearVrManagerService"

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getMetaScreenDisplayId()I
    .registers 3

    .line 1074
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1075
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    invoke-virtual {v1}, Lcom/android/server/vr/XrDisplayManager;->getMetaScreenDisplayId()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1076
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private getPreferredXrDisplayId()I
    .registers 5

    .line 1048
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 1050
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getTetheredDisplayId()I

    move-result v1

    .line 1051
    .local v1, "tetheredDisplay":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_13

    .line 1052
    monitor-exit v0

    return v1

    .line 1054
    :cond_13
    monitor-exit v0

    return v2

    .line 1057
    .end local v1    # "tetheredDisplay":I
    :cond_15
    monitor-exit v0

    return v2

    .line 1058
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private getTetheredDisplayId()I
    .registers 3

    .line 1062
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1063
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    invoke-virtual {v1}, Lcom/android/server/vr/XrDisplayManager;->getTetheredDisplayId()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1064
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private getXrScreenDisplayId()I
    .registers 3

    .line 1068
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    invoke-virtual {v1}, Lcom/android/server/vr/XrDisplayManager;->getXrScreenDisplayId()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1070
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private handleOverlayRestriction(Z[Ljava/lang/String;I)V
    .registers 21
    .param p1, "enabled"    # Z
    .param p2, "exemptedPackages"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1245
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleOverlayRestriction enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " exemptedPackages="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p3

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GearVrManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1248
    .local v15, "identity":J
    :try_start_35
    iget-object v0, v1, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager;

    .line 1250
    .local v3, "appOpsManager":Landroid/app/AppOpsManager;
    if-nez p2, :cond_47

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    goto :goto_49

    .line 1251
    :cond_47
    move-object/from16 v7, p2

    :goto_49
    nop

    .line 1253
    .local v7, "exemptions":[Ljava/lang/String;
    const/16 v4, 0x18

    iget-object v6, v1, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move/from16 v5, p1

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 1255
    const/16 v9, 0x64

    iget-object v11, v1, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move-object v8, v3

    move/from16 v10, p1

    move-object v12, v7

    move/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 1257
    const/16 v9, 0x2d

    iget-object v11, v1, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move-object v8, v3

    move/from16 v10, p1

    move-object v12, v7

    move/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V
    :try_end_6f
    .catchall {:try_start_35 .. :try_end_6f} :catchall_74

    .line 1260
    .end local v3    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v7    # "exemptions":[Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1261
    nop

    .line 1262
    return-void

    .line 1260
    :catchall_74
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1261
    throw v0
.end method

.method private handleVrStateChange(II)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "type"    # I

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleVrStateChange state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GearVrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->broadcastRemoteCallbacks(II)V

    .line 1008
    return-void
.end method

.method private notifyActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)Z
    .registers 16
    .param p1, "xrFlags"    # I
    .param p2, "requestedVrComponent"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;
    .param p5, "displayId"    # I

    .line 976
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    const/4 v1, -0x1

    if-eq p5, v1, :cond_16

    .line 978
    :try_start_6
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;-><init>(Lcom/android/server/vr/GearVrManagerService;ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    invoke-virtual {v1, p5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 980
    :cond_16
    invoke-virtual {p0, p5}, Lcom/android/server/vr/GearVrManagerService;->isVrMode(I)Z

    move-result v1

    .line 982
    .local v1, "oldVrMode":Z
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    .line 984
    invoke-virtual {p0, p5}, Lcom/android/server/vr/GearVrManagerService;->isVrMode(I)Z

    move-result v2

    .line 985
    .local v2, "newVrMode":Z
    sget-boolean v3, Lcom/android/server/vr/GearVrManagerService;->DEBUG:Z

    if-eqz v3, :cond_68

    .line 986
    if-nez v1, :cond_2d

    if-nez v2, :cond_2d

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    if-eqz v3, :cond_68

    .line 987
    :cond_2d
    const-string v3, "GearVrManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyActivityFocusChanged xrFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "(0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") callingPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vrMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_68
    if-nez v2, :cond_7e

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    if-eqz v3, :cond_6f

    goto :goto_7e

    .line 998
    :cond_6f
    if-eqz v1, :cond_88

    if-nez v2, :cond_88

    .line 999
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/vr/GearVrManagerExternal;->notifyXrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)V

    goto :goto_88

    .line 997
    :cond_7e
    :goto_7e
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/vr/GearVrManagerExternal;->notifyXrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)V

    .line 1001
    .end local v1    # "oldVrMode":Z
    .end local v2    # "newVrMode":Z
    :cond_88
    :goto_88
    monitor-exit v0

    .line 1002
    const/4 v0, 0x1

    return v0

    .line 1001
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_6 .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method private notifyVrAppError(Landroid/app/ApplicationErrorReport;)V
    .registers 5
    .param p1, "report"    # Landroid/app/ApplicationErrorReport;

    .line 1265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1266
    .local v0, "reportIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1267
    const-string v1, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1268
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1269
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1270
    return-void
.end method

.method private sendVrStateChangeMessage(II)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "type"    # I

    .line 889
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 890
    return-void
.end method

.method private setHideCutOutAllowed(Z)V
    .registers 4
    .param p1, "allowed"    # Z

    .line 840
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 841
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mHideCutoutAllowed:Z

    if-eq v1, p1, :cond_c

    .line 842
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mHideCutoutAllowed:Z

    .line 843
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateHideCutoutLocked()V

    .line 845
    :cond_c
    monitor-exit v0

    .line 846
    return-void

    .line 845
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private setVrImmersiveModeAllowed(Z)V
    .registers 4
    .param p1, "allowed"    # Z

    .line 860
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrImmersiveModeAllowed:Z

    if-eq v1, p1, :cond_c

    .line 862
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrImmersiveModeAllowed:Z

    .line 863
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrImmersiveModeLocked()V

    .line 865
    :cond_c
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private setVrMode(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "displayId"    # I

    .line 1024
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1025
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;

    .line 1026
    .local v1, "xrActivityInfo":Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;
    if-eqz v1, :cond_1c

    .line 1027
    if-eqz p1, :cond_16

    .line 1028
    iget v2, v1, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->xrFlags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v1, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->xrFlags:I

    goto :goto_1c

    .line 1030
    :cond_16
    iget v2, v1, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->xrFlags:I

    and-int/lit8 v2, v2, -0x4

    iput v2, v1, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->xrFlags:I

    .line 1033
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    .line 1034
    .end local v1    # "xrActivityInfo":Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;
    monitor-exit v0

    .line 1035
    return-void

    .line 1034
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private setVrModeAllowed(Z)V
    .registers 4
    .param p1, "allowed"    # Z

    .line 1011
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeAllowed:Z

    if-eq v1, p1, :cond_c

    .line 1013
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeAllowed:Z

    .line 1014
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    .line 1016
    :cond_c
    monitor-exit v0

    .line 1017
    return-void

    .line 1016
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private updateDockStateLocked()V
    .registers 6

    .line 723
    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 724
    .local v0, "docked":Z
    :goto_f
    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    if-eq v3, v0, :cond_64

    .line 725
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDockStateLocked docked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mHmtDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mDeviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GearVrManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    if-eqz v0, :cond_44

    move v3, v2

    goto :goto_45

    :cond_44
    const/4 v3, 0x2

    .line 729
    .local v3, "state":I
    :goto_45
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    if-eqz v4, :cond_4d

    invoke-virtual {v4}, Lcom/samsung/android/vr/HmtDevice;->getDeviceId()I

    move-result v1

    .line 730
    .local v1, "type":I
    :cond_4d
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4, v3, v1}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    .line 731
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 733
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTetheredDisplayStateLocked()V

    .line 734
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateMountStateLocked()V

    .line 735
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTaStateLocked()V

    .line 737
    .end local v1    # "type":I
    .end local v3    # "state":I
    :cond_64
    return-void
.end method

.method private updateHideCutoutLocked()V
    .registers 6

    .line 849
    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHideCutoutAllowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    if-nez v0, :cond_f

    invoke-virtual {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->isVrMode(I)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v1

    .line 850
    .local v0, "hideCutout":Z
    :goto_12
    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHideCutout:Z

    if-eq v2, v0, :cond_46

    .line 851
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHideCutout:Z

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHideCutoutLocked hideCutout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GearVrManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v4, p0, Lcom/android/server/vr/GearVrManagerService;->mHideCutout:Z

    if-eqz v4, :cond_3e

    const/4 v4, 0x2

    goto :goto_3f

    :cond_3e
    move v4, v1

    :goto_3f
    invoke-virtual {v2, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 857
    :cond_46
    return-void
.end method

.method private updateLowPersistenceModeLocked()V
    .registers 9

    .line 768
    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    invoke-virtual {p0, v2}, Lcom/android/server/vr/GearVrManagerService;->isVrMode(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    move v0, v2

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v1

    .line 769
    .local v0, "isRunning":Z
    :goto_10
    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mIsAwake:Z

    if-eqz v3, :cond_1a

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mScreenOn:Z

    if-eqz v3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v2

    .line 770
    .local v3, "isInteractive":Z
    :goto_1b
    if-eqz v3, :cond_24

    iget-boolean v4, p0, Lcom/android/server/vr/GearVrManagerService;->mTetheredDisplayConnected:Z

    if-nez v4, :cond_24

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    .line 772
    .local v1, "isLowPersistenceMode":Z
    :goto_25
    iget-boolean v4, p0, Lcom/android/server/vr/GearVrManagerService;->mLowPersistenceMode:Z

    if-eq v4, v1, :cond_5f

    .line 773
    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLowPersistenceMode:Z

    .line 774
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLowPersistenceMode isLowPersistenceMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GearVrManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    if-eqz v1, :cond_47

    const/high16 v4, 0x10000

    goto :goto_49

    :cond_47
    const/high16 v4, 0x20000

    .line 776
    .local v4, "state":I
    :goto_49
    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v5, v4, v2}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    .line 777
    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 780
    .end local v4    # "state":I
    :cond_5f
    return-void
.end method

.method private updateMetaScreenLocked()V
    .registers 5

    .line 879
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getPreferredXrDisplayId()I

    move-result v0

    .line 880
    .local v0, "preferredXrDisplayId":I
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    if-eqz v1, :cond_27

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getMetaScreenDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    invoke-virtual {v1}, Lcom/android/server/vr/XrDisplayManager;->isMetaScreenDisplayOn()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTetheredDisplayConnected:Z

    if-nez v1, :cond_27

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode(I)Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 881
    .local v1, "showMetaScreen":Z
    :goto_28
    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mShowMetaScreen:Z

    if-eq v2, v1, :cond_57

    .line 882
    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mShowMetaScreen:Z

    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMetaScreenLocked showMetaScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " preferredXrDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GearVrManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    if-eqz v1, :cond_52

    const/high16 v2, 0x1000000

    goto :goto_54

    :cond_52
    const/high16 v2, 0x2000000

    :goto_54
    invoke-direct {p0, v2, v0}, Lcom/android/server/vr/GearVrManagerService;->sendVrStateChangeMessage(II)V

    .line 886
    :cond_57
    return-void
.end method

.method private updateMountStateLocked()V
    .registers 5

    .line 757
    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    .line 758
    .local v0, "mounted":Z
    :goto_e
    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mMounted:Z

    if-eq v2, v0, :cond_3a

    .line 759
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mMounted:Z

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMountStateLocked mounted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GearVrManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    if-eqz v0, :cond_30

    const/16 v2, 0x10

    goto :goto_32

    :cond_30
    const/16 v2, 0x20

    .line 762
    .local v2, "state":I
    :goto_32
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    .line 763
    invoke-direct {p0, v2, v1}, Lcom/android/server/vr/GearVrManagerService;->sendVrStateChangeMessage(II)V

    .line 765
    .end local v2    # "state":I
    :cond_3a
    return-void
.end method

.method private updatePersistentVrModeLocked()V
    .registers 5

    .line 823
    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 824
    .local v0, "persistentVrMode":Z
    :goto_c
    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    if-eq v2, v0, :cond_45

    .line 825
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePersistentVrModeLocked mPersistentVrMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GearVrManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    .line 829
    if-eqz v0, :cond_32

    const/high16 v2, 0x100000

    goto :goto_34

    :cond_32
    const/high16 v2, 0x200000

    .line 830
    .local v2, "state":I
    :goto_34
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    .line 831
    invoke-direct {p0, v2, v1}, Lcom/android/server/vr/GearVrManagerService;->sendVrStateChangeMessage(II)V

    .line 833
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateLowPersistenceModeLocked()V

    .line 834
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateHideCutoutLocked()V

    .line 835
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateMetaScreenLocked()V

    .line 837
    .end local v2    # "state":I
    :cond_45
    return-void
.end method

.method private updateReadyLocked()V
    .registers 5

    .line 704
    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServicePackageAvailable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->checkVrServiceSignature()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 705
    .local v0, "isValidVrServicePackage":Z
    :goto_f
    if-eqz v0, :cond_2a

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mBootCompleted:Z

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mUserUnlocked:Z

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mUpmsMonitor:Lcom/android/server/vr/UpmsMonitor;

    invoke-virtual {v3}, Lcom/android/server/vr/UpmsMonitor;->isUPSMEnabled()Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    invoke-virtual {v3}, Lcom/android/server/vr/XrSettings;->isDeviceProvisoned()Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    .line 707
    .local v1, "isReady":Z
    :goto_2b
    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    if-eq v2, v1, :cond_65

    .line 708
    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateReadyLocked mReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GearVrManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    if-eqz v2, :cond_65

    .line 711
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v2}, Lcom/android/server/vr/HmtManager;->loadSupportedHmtDevices()V

    .line 712
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateDockStateLocked()V

    .line 713
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTetheredDisplayStateLocked()V

    .line 714
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateMountStateLocked()V

    .line 715
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    .line 716
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updatePersistentVrModeLocked()V

    .line 717
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTaStateLocked()V

    .line 720
    :cond_65
    return-void
.end method

.method private updateTaStateLocked()V
    .registers 4

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTaStateLocked taState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GearVrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    .line 797
    return-void
.end method

.method private updateTetheredDisplayStateLocked()V
    .registers 7

    .line 740
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getTetheredDisplayId()I

    move-result v0

    .line 741
    .local v0, "tetheredDisplayId":I
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 743
    .local v1, "tetheredDisplayConnected":Z
    :goto_15
    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mTetheredDisplayConnected:Z

    if-eq v3, v1, :cond_53

    .line 744
    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTetheredDisplayConnected:Z

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTetheredDisplayStateLocked tetheredDisplayConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " tetheredDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GearVrManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    if-eqz v1, :cond_3f

    const/16 v3, 0x1000

    goto :goto_41

    :cond_3f
    const/16 v3, 0x2000

    .line 748
    .local v3, "state":I
    :goto_41
    const/4 v4, 0x0

    .line 749
    .local v4, "type":I
    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    .line 750
    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 752
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateLowPersistenceModeLocked()V

    .line 754
    .end local v3    # "state":I
    .end local v4    # "type":I
    :cond_53
    return-void
.end method

.method private updateVrImmersiveModeLocked()V
    .registers 5

    .line 869
    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrImmersiveModeAllowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->isVrMode(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    .line 870
    .local v0, "vrImmersiveMode":Z
    :goto_e
    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mVrImmersiveMode:Z

    if-eq v2, v0, :cond_35

    .line 871
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrImmersiveMode:Z

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVrImmersiveModeLocked vrImmersiveMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GearVrManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    if-eqz v0, :cond_30

    const/high16 v2, 0x400000

    goto :goto_32

    :cond_30
    const/high16 v2, 0x800000

    :goto_32
    invoke-direct {p0, v2, v1}, Lcom/android/server/vr/GearVrManagerService;->sendVrStateChangeMessage(II)V

    .line 876
    :cond_35
    return-void
.end method

.method private updateVrModeLocked()V
    .registers 7

    .line 800
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7d

    .line 801
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 802
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 803
    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeAllowed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;

    invoke-virtual {v2}, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;->isXrActivity()Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    move v2, v3

    .line 804
    .local v2, "vrMode":Z
    :goto_2d
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eq v4, v2, :cond_74

    .line 805
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVrModeLocked vrMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GearVrManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    if-eqz v2, :cond_5e

    const/16 v4, 0x40

    goto :goto_60

    :cond_5e
    const/16 v4, 0x80

    .line 808
    .local v4, "state":I
    :goto_60
    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    .line 809
    invoke-direct {p0, v4, v3}, Lcom/android/server/vr/GearVrManagerService;->sendVrStateChangeMessage(II)V

    .line 811
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateLowPersistenceModeLocked()V

    .line 812
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrImmersiveModeLocked()V

    .line 813
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateHideCutoutLocked()V

    .line 814
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateMetaScreenLocked()V

    .line 816
    .end local v2    # "vrMode":Z
    .end local v4    # "state":I
    :cond_74
    goto :goto_7a

    .line 817
    :cond_75
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 800
    .end local v1    # "displayId":I
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 820
    .end local v0    # "i":I
    :cond_7d
    return-void
.end method


# virtual methods
.method public acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    .registers 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cpu"    # I
    .param p4, "gpu"    # I

    .line 1186
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vr/GearVrManagerExternal;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;III)[I

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1330
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump GearVrManagerService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1332
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    return-void

    .line 1337
    :cond_2f
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    const/4 v1, 0x0

    if-eqz p3, :cond_1e1

    :try_start_35
    array-length v2, p3

    if-eqz v2, :cond_1e1

    const-string v2, "-a"

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    goto/16 :goto_1e1

    .line 1428
    :cond_44
    aget-object v2, p3, v1

    .line 1429
    .local v2, "cmd":Ljava/lang/String;
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v3, v5, :cond_4f

    aget-object v3, p3, v6

    goto :goto_50

    :cond_4f
    move-object v3, v4

    .line 1430
    .local v3, "key":Ljava/lang/String;
    :goto_50
    array-length v7, p3

    const/4 v8, 0x3

    if-lt v7, v8, :cond_57

    aget-object v7, p3, v5

    goto :goto_58

    :cond_57
    move-object v7, v4

    .line 1431
    .local v7, "value":Ljava/lang/String;
    :goto_58
    array-length v9, p3

    const/4 v10, 0x4

    if-lt v9, v10, :cond_5e

    aget-object v4, p3, v8
    :try_end_5e
    .catchall {:try_start_35 .. :try_end_5e} :catchall_5ca

    .line 1433
    .local v4, "value2":Ljava/lang/String;
    :cond_5e
    :try_start_5e
    const-string/jumbo v9, "set"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_187

    .line 1434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_6b} :catch_1ca
    .catchall {:try_start_5e .. :try_end_6b} :catchall_5ca

    .line 1436
    .local v9, "ident":J
    :try_start_6b
    const-string v11, "dock"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_82

    .line 1437
    if-eqz v7, :cond_77

    move-object v5, v7

    goto :goto_79

    :cond_77
    const-string v5, "Gear VR"

    :goto_79
    invoke-static {v6, v5}, Lcom/samsung/android/vr/HmtEvent;->obtain(ILjava/lang/String;)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/vr/GearVrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    goto/16 :goto_17c

    .line 1438
    :cond_82
    const-string/jumbo v6, "undock"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 1439
    if-eqz v7, :cond_8f

    move-object v6, v7

    goto :goto_91

    :cond_8f
    const-string v6, "Gear VR"

    :goto_91
    invoke-static {v5, v6}, Lcom/samsung/android/vr/HmtEvent;->obtain(ILjava/lang/String;)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/vr/GearVrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    goto/16 :goto_17c

    .line 1440
    :cond_9a
    const-string v5, "abnormal"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 1441
    if-eqz v7, :cond_a6

    move-object v5, v7

    goto :goto_a8

    :cond_a6
    const-string v5, "Gear VR"

    :goto_a8
    invoke-static {v8, v5}, Lcom/samsung/android/vr/HmtEvent;->obtain(ILjava/lang/String;)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/vr/GearVrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    goto/16 :goto_17c

    .line 1442
    :cond_b1
    const-string/jumbo v5, "mount"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 1443
    const/16 v5, 0xb

    invoke-static {v5}, Lcom/samsung/android/vr/HmtEvent;->obtain(I)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/vr/GearVrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    goto/16 :goto_17c

    .line 1444
    :cond_c5
    const-string/jumbo v5, "unmount"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 1445
    const/16 v5, 0xc

    invoke-static {v5}, Lcom/samsung/android/vr/HmtEvent;->obtain(I)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/vr/GearVrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    goto/16 :goto_17c

    .line 1446
    :cond_d9
    const-string/jumbo v5, "state"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 1447
    if-eqz v7, :cond_f5

    .line 1448
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/vr/HmtEvent;->obtain(I)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/vr/GearVrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    goto/16 :goto_17c

    .line 1450
    :cond_f5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17c

    .line 1452
    :cond_10b
    const-string/jumbo v5, "vr"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    .line 1453
    if-eqz v4, :cond_11b

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_11c

    :cond_11b
    move v5, v1

    .line 1454
    .local v5, "displayId":I
    :goto_11c
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {p0, v6, v5}, Lcom/android/server/vr/GearVrManagerService;->setVrMode(ZI)V

    .line 1455
    .end local v5    # "displayId":I
    goto :goto_17c

    :cond_124
    const-string/jumbo v5, "vr_allowed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 1456
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/vr/GearVrManagerService;->setVrModeAllowed(Z)V

    goto :goto_17c

    .line 1457
    :cond_135
    const-string/jumbo v5, "hide_cutout_allowed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_146

    .line 1458
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/vr/GearVrManagerService;->setHideCutOutAllowed(Z)V

    goto :goto_17c

    .line 1459
    :cond_146
    const-string/jumbo v5, "vr_immersive_allowed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_157

    .line 1460
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/vr/GearVrManagerService;->setVrImmersiveModeAllowed(Z)V

    goto :goto_17c

    .line 1461
    :cond_157
    const-string/jumbo v5, "persistent_vr"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_168

    .line 1462
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/vr/GearVrManagerService;->setPersistentVrMode(Z)V

    goto :goto_17c

    .line 1464
    :cond_168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown set option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17c
    .catchall {:try_start_6b .. :try_end_17c} :catchall_181

    .line 1467
    :goto_17c
    :try_start_17c
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1468
    nop

    .line 1469
    .end local v9    # "ident":J
    goto :goto_1c8

    .line 1467
    .restart local v9    # "ident":J
    :catchall_181
    move-exception v5

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1468
    nop

    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value2":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    throw v5

    .line 1470
    .end local v9    # "ident":J
    .restart local v2    # "cmd":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value2":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_187
    const-string v5, "Dump current vr state, or:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    const-string v5, "  set vr <true/false>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    const-string v5, "     set vr state directly."

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    const-string v5, "  set state <value>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    const-string v5, "     set vr state value directly."

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1475
    const-string v5, "  set dock"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    const-string v5, "     set vr state docked."

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    const-string v5, "  set undock"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    const-string v5, "     set vr state undocked."

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    const-string v5, "  set mount"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    const-string v5, "     set vr state mount."

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    const-string v5, "  set unmount"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    const-string v5, "     set vr state unmount."

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c8
    .catch Ljava/lang/NumberFormatException; {:try_start_17c .. :try_end_1c8} :catch_1ca
    .catchall {:try_start_17c .. :try_end_1c8} :catchall_5ca

    .line 1486
    :goto_1c8
    goto/16 :goto_59c

    .line 1484
    :catch_1ca
    move-exception v5

    .line 1485
    .local v5, "ex":Ljava/lang/NumberFormatException;
    :try_start_1cb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad value: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_59c

    .line 1339
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value2":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1e1
    :goto_1e1
    const-string v2, "\n##### GearVrManagerService #####\n##### (dumpsys sepunion vr) #####\n"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    const-string v2, "********* Dump of GearVrManagerService *********"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1342
    const-string v2, "VR API Version:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    const-string v2, "    VRAPI=34"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    const-string v2, "    VRAPI_MINOR=0"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    const-string v2, "    VRAPI_PATCH=0"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    const-string v2, "    GEAR_VR_MANAGER_SERVICE_VERSION_CODE=5"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1348
    const-string v2, "Features:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1356
    const-string v2, "State:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mBootsToXr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mBootsToXr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mHasHmtFeature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtFeature:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mHasHmtTetheredFeature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtTetheredFeature:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mVrServicePackageAvailable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServicePackageAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mBootCompleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mBootCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mUserUnlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mUserUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mIsAwake="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mIsAwake:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mKeyguardUnlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mKeyguardUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mDocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mMounted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mMounted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mDeviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mHmtDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    if-eqz v3, :cond_368

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " flags=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    invoke-virtual {v4}, Lcom/samsung/android/vr/HmtDevice;->toFlagsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_36a

    :cond_368
    const-string v3, ""

    :goto_36a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mProximityNear="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mProximityNear:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mTaState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "(0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getPreferredXrDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getPreferredXrDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mTetheredDisplayConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mTetheredDisplayConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " tetheredDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getTetheredDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mVrModeAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isVrMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mPersistentVrMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mPersistentVrModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mLowPersistenceModeAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mLowPersistenceModeAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLowPersistenceMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mLowPersistenceMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mHideCutoutAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHideCutoutAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHideCutout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHideCutout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mVrImmersiveModeAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mVrImmersiveModeAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mVrImmersiveMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mVrImmersiveMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mShowMetaScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mShowMetaScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1388
    const-string v2, "    mXrActivityInfos:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4be
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f3

    .line 1390
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1391
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mXrActivityInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;

    .line 1392
    .local v4, "xrActivityInfo":Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " xrActivityInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    .end local v3    # "displayId":I
    .end local v4    # "xrActivityInfo":Lcom/android/server/vr/GearVrManagerService$XrActivityInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4be

    .line 1394
    .end local v2    # "i":I
    :cond_4f3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1395
    const-string v2, "    mVrModes:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4fc
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_52f

    .line 1397
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 1398
    .restart local v3    # "displayId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vrMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    .end local v3    # "displayId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4fc

    .line 1400
    .end local v2    # "i":I
    :cond_52f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1401
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    invoke-virtual {v2, p2}, Lcom/android/server/vr/DeviceController;->dump(Ljava/io/PrintWriter;)V

    .line 1402
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1403
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v2, p2}, Lcom/android/server/vr/HmtManager;->dump(Ljava/io/PrintWriter;)V

    .line 1404
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1405
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mRefreshRateModeController:Lcom/android/server/vr/RefreshRateModeController;

    invoke-virtual {v2, p2}, Lcom/android/server/vr/RefreshRateModeController;->dump(Ljava/io/PrintWriter;)V

    .line 1406
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1407
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mUpmsMonitor:Lcom/android/server/vr/UpmsMonitor;

    invoke-virtual {v2, p2}, Lcom/android/server/vr/UpmsMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 1408
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1409
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mVrPackageHelper:Lcom/android/server/vr/VrPackageHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/vr/VrPackageHelper;->dump(Ljava/io/PrintWriter;)V

    .line 1410
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1411
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    invoke-virtual {v2, p2}, Lcom/android/server/vr/XrDisplayManager;->dump(Ljava/io/PrintWriter;)V

    .line 1412
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1413
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    invoke-virtual {v2, p2}, Lcom/android/server/vr/XrSettings;->dump(Ljava/io/PrintWriter;)V

    .line 1415
    const-string v2, "    "

    .line 1416
    .local v2, "tab":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1417
    const-string v3, "Remote Callbacks:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1419
    .local v3, "i":I
    :goto_577
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_590

    .line 1420
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1421
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1422
    if-lez v4, :cond_58e

    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    :cond_58e
    move v3, v4

    goto :goto_577

    .line 1424
    :cond_590
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1425
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1426
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1427
    .end local v2    # "tab":Ljava/lang/String;
    .end local v4    # "i":I
    nop

    .line 1488
    :goto_59c
    monitor-exit v0
    :try_end_59d
    .catchall {:try_start_1cb .. :try_end_59d} :catchall_5ca

    .line 1491
    if-eqz p3, :cond_5ac

    array-length v0, p3

    if-eqz v0, :cond_5ac

    aget-object v0, p3, v1

    const-string v1, "-a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c9

    .line 1492
    :cond_5ac
    const-string v0, "********* Dump of GearVrManagerExternal *********"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    invoke-virtual {v0}, Lcom/android/server/vr/XrSettings;->getSetupWizardComplete()I

    move-result v0

    if-eqz v0, :cond_5c3

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    if-eqz v0, :cond_5c3

    .line 1494
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerExternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_5c9

    .line 1496
    :cond_5c3
    const-string/jumbo v0, "mGearVrManagerExternal is not ready to dump."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    :cond_5c9
    :goto_5c9
    return-void

    .line 1488
    :catchall_5ca
    move-exception v1

    :try_start_5cb
    monitor-exit v0
    :try_end_5cc
    .catchall {:try_start_5cb .. :try_end_5cc} :catchall_5ca

    throw v1
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;

    .line 1290
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerExternal;->enforceCallingPermission(IILjava/lang/String;)V

    .line 1291
    return-void
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .line 1294
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1295
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1296
    .local v1, "uid":I
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    .line 1297
    return-void
.end method

.method getHmtDevice()Lcom/samsung/android/vr/HmtDevice;
    .registers 2

    .line 971
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    return-object v0
.end method

.method public getPowerLevelState()I
    .registers 2

    .line 1206
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->getPowerLevelState()I

    move-result v0

    return v0
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "option"    # Ljava/lang/String;

    .line 1198
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerExternal;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is3rdPartyDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "idsOrDisplayName"    # Ljava/lang/String;

    .line 1172
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/HmtManager;->is3rdPartyDeviceMatched(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isDeveloperMode()Z
    .registers 3

    .line 1180
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1181
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    invoke-virtual {v1}, Lcom/android/server/vr/XrSettings;->isDeveloperMode()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1182
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isDock()Z
    .registers 3

    .line 1144
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1145
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 1146
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isHmtDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "idsOrDisplayName"    # Ljava/lang/String;

    .line 1168
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/HmtManager;->isDeviceMatched(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMount()Z
    .registers 3

    .line 1150
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1151
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mProximityNear:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 1152
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public isPersistentVrMode()Z
    .registers 3

    .line 1162
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1163
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrMode:Z

    monitor-exit v0

    return v1

    .line 1164
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isPowerLimitingDevice(Ljava/lang/String;)Z
    .registers 3
    .param p1, "idsOrDisplayName"    # Ljava/lang/String;

    .line 1176
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/HmtManager;->isPowerLimitingDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .registers 3

    .line 1156
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1157
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getPreferredXrDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->isVrMode(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1158
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method isVrMode(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 964
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 965
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 967
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method protected isVrServiceAvailable()Z
    .registers 3

    .line 1227
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mReady:Z

    monitor-exit v0

    return v1

    .line 1229
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public synthetic lambda$onBootPhase$0$GearVrManagerService()V
    .registers 3

    .line 649
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateReadyLocked()V

    .line 651
    monitor-exit v0

    .line 652
    return-void

    .line 651
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$onBootPhase$1$GearVrManagerService(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 656
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateReadyLocked()V

    .line 658
    monitor-exit v0

    .line 659
    return-void

    .line 658
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$onBootPhase$2$GearVrManagerService(Z)V
    .registers 4
    .param p1, "available"    # Z

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVrServicePackageChanged available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GearVrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_1a
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServicePackageAvailable:Z

    if-eq v1, p1, :cond_23

    .line 668
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServicePackageAvailable:Z

    .line 669
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateReadyLocked()V

    .line 671
    :cond_23
    monitor-exit v0

    .line 672
    return-void

    .line 671
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_25

    throw v1
.end method

.method notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/samsung/android/vr/HmtEvent;

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyHmtEventChanged event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GearVrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p1}, Lcom/samsung/android/vr/HmtEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_77

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_6a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6a

    const/16 v3, 0xb

    if-eq v0, v3, :cond_64

    const/16 v2, 0xc

    if-eq v0, v2, :cond_5e

    packed-switch v0, :pswitch_data_8a

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown device state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 925
    :pswitch_46
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    .line 926
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTaStateLocked()V

    .line 927
    goto :goto_89

    .line 921
    :pswitch_4e
    const/16 v0, 0x200

    iput v0, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    .line 922
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTaStateLocked()V

    .line 923
    goto :goto_89

    .line 917
    :pswitch_56
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    .line 918
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTaStateLocked()V

    .line 919
    goto :goto_89

    .line 913
    :cond_5e
    iput-boolean v4, p0, Lcom/android/server/vr/GearVrManagerService;->mProximityNear:Z

    .line 914
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateMountStateLocked()V

    .line 915
    goto :goto_89

    .line 909
    :cond_64
    iput-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mProximityNear:Z

    .line 910
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateMountStateLocked()V

    .line 911
    goto :goto_89

    .line 902
    :cond_6a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceId:Ljava/lang/String;

    .line 903
    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    .line 904
    iput-boolean v4, p0, Lcom/android/server/vr/GearVrManagerService;->mProximityNear:Z

    .line 905
    iput v4, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    .line 906
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateDockStateLocked()V

    .line 907
    goto :goto_89

    .line 896
    :cond_77
    invoke-virtual {p1}, Lcom/samsung/android/vr/HmtEvent;->getIds()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceId:Ljava/lang/String;

    .line 897
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v1, v0}, Lcom/android/server/vr/HmtManager;->findHmtDevice(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    .line 898
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateDockStateLocked()V

    .line 899
    nop

    .line 932
    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x29
        :pswitch_56
        :pswitch_4e
        :pswitch_46
    .end packed-switch
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2
    .param p1, "isAwake"    # Z

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setAwakeState(Z)V

    .line 1082
    return-void
.end method

.method public onBootPhase(I)V
    .registers 10
    .param p1, "phase"    # I

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---- GearVrManagerService onBootPhase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GearVrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v0, 0x1

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_113

    .line 568
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_23
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mWindowManager:Landroid/view/IWindowManager;

    .line 571
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 572
    invoke-virtual {v2, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 574
    new-instance v2, Lcom/android/server/vr/GearVrManagerExternal;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/server/vr/GearVrManagerExternal;-><init>(Landroid/content/Context;Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    .line 577
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 578
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.samsung.feature.hmt"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtFeature:Z

    .line 579
    const-string v3, "com.samsung.feature.hmt.tethered"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtTetheredFeature:Z

    .line 581
    new-instance v3, Lcom/android/server/vr/XrDisplayManager;

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/android/server/vr/XrDisplayManager;-><init>(Landroid/content/Context;Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    .line 582
    new-instance v4, Lcom/android/server/vr/GearVrManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/vr/GearVrManagerService$1;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    invoke-virtual {v3, v4}, Lcom/android/server/vr/XrDisplayManager;->setOnXrDisplayListener(Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;)V

    .line 612
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mXrDisplayManager:Lcom/android/server/vr/XrDisplayManager;

    invoke-virtual {v3}, Lcom/android/server/vr/XrDisplayManager;->register()V
    :try_end_72
    .catchall {:try_start_23 .. :try_end_72} :catchall_110

    .line 615
    const/4 v3, -0x1

    .line 617
    .local v3, "sysUiUid":I
    const/4 v4, 0x0

    :try_start_74
    const-string v5, "com.android.systemui"

    const/high16 v6, 0x100000

    invoke-virtual {v2, v5, v6, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v5
    :try_end_7c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_74 .. :try_end_7c} :catch_7e
    .catchall {:try_start_74 .. :try_end_7c} :catchall_110

    move v3, v5

    .line 621
    goto :goto_86

    .line 618
    :catch_7e
    move-exception v5

    .line 620
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_7f
    const-string v6, "GearVrManagerService"

    const-string v7, "Unable to resolve SystemUI\'s UID."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_86
    iput v3, p0, Lcom/android/server/vr/GearVrManagerService;->mSystemUiUid:I

    .line 624
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 625
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string/jumbo v6, "sec.app.policy.UPDATE.HmtThridPartyDevicePolicy"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/vr/GearVrManagerService$2;

    invoke-direct {v7, p0}, Lcom/android/server/vr/GearVrManagerService$2;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 648
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    new-instance v7, Lcom/android/server/vr/-$$Lambda$GearVrManagerService$RorJUHmUkj0mjkxKuyP2mHPWEOE;

    invoke-direct {v7, p0}, Lcom/android/server/vr/-$$Lambda$GearVrManagerService$RorJUHmUkj0mjkxKuyP2mHPWEOE;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    invoke-virtual {v6, v7}, Lcom/android/server/vr/XrSettings;->setXrSettingsListener(Lcom/android/server/vr/XrSettings$OnXrSettingsListener;)V

    .line 653
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mXrSettings:Lcom/android/server/vr/XrSettings;

    invoke-virtual {v6}, Lcom/android/server/vr/XrSettings;->updateSettingsLocked()V

    .line 655
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mUpmsMonitor:Lcom/android/server/vr/UpmsMonitor;

    new-instance v7, Lcom/android/server/vr/-$$Lambda$GearVrManagerService$AsE8-19L9B-goodBIuuLYLIoqG4;

    invoke-direct {v7, p0}, Lcom/android/server/vr/-$$Lambda$GearVrManagerService$AsE8-19L9B-goodBIuuLYLIoqG4;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    invoke-virtual {v6, v7}, Lcom/android/server/vr/UpmsMonitor;->setOnUpmsListener(Lcom/android/server/vr/UpmsMonitor$OnUpmsListener;)V

    .line 660
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mUpmsMonitor:Lcom/android/server/vr/UpmsMonitor;

    invoke-virtual {v6}, Lcom/android/server/vr/UpmsMonitor;->register()V

    .line 662
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mRefreshRateModeController:Lcom/android/server/vr/RefreshRateModeController;

    invoke-virtual {v6}, Lcom/android/server/vr/RefreshRateModeController;->onSystemServiceReady()V

    .line 664
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mVrPackageHelper:Lcom/android/server/vr/VrPackageHelper;

    new-instance v7, Lcom/android/server/vr/-$$Lambda$GearVrManagerService$UyIvMESuwmftEB_oYGp_2h4LeX0;

    invoke-direct {v7, p0}, Lcom/android/server/vr/-$$Lambda$GearVrManagerService$UyIvMESuwmftEB_oYGp_2h4LeX0;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    invoke-virtual {v6, v7}, Lcom/android/server/vr/VrPackageHelper;->setOnVrServicePackageListener(Lcom/android/server/vr/VrPackageHelper$OnVrServicePackageListener;)V

    .line 673
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mVrPackageHelper:Lcom/android/server/vr/VrPackageHelper;

    invoke-virtual {v6}, Lcom/android/server/vr/VrPackageHelper;->register()V

    .line 676
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v6}, Lcom/android/server/vr/HmtManager;->loadSupportedHmtDevices()V

    .line 679
    const-string/jumbo v6, "ro.boot.xr"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/vr/GearVrManagerService;->mBootsToXr:Z

    .line 680
    if-eqz v4, :cond_10e

    .line 681
    const-string v4, "GearVrManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mBootsToXr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/vr/GearVrManagerService;->mBootsToXr:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceId:Ljava/lang/String;

    .line 683
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v6, v4}, Lcom/android/server/vr/HmtManager;->findHmtDevice(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mHmtDevice:Lcom/samsung/android/vr/HmtDevice;

    .line 684
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrModeEnabled:Z

    .line 685
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updatePersistentVrModeLocked()V

    .line 687
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "sysUiUid":I
    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    :cond_10e
    monitor-exit v1

    goto :goto_124

    :catchall_110
    move-exception v0

    monitor-exit v1
    :try_end_112
    .catchall {:try_start_7f .. :try_end_112} :catchall_110

    throw v0

    .line 688
    :cond_113
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_124

    .line 689
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 690
    :try_start_11a
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mBootCompleted:Z

    .line 691
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateReadyLocked()V

    .line 692
    monitor-exit v1

    goto :goto_124

    :catchall_121
    move-exception v0

    monitor-exit v1
    :try_end_123
    .catchall {:try_start_11a .. :try_end_123} :catchall_121

    throw v0

    .line 694
    :cond_124
    :goto_124
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 3
    .param p1, "isShowing"    # Z

    .line 1086
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService;->setKeyguardUnlocked(Z)V

    .line 1087
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 698
    const-string v0, "GearVrManagerService"

    const-string v1, "---- GearVrManagerService onStart ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    new-instance v1, Lcom/android/server/vr/GearVrManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vr/GearVrManagerService$LocalService;-><init>(Lcom/android/server/vr/GearVrManagerService;Lcom/android/server/vr/GearVrManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/GearVrManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerStubAdapter:Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService$GearVrManagerServiceStub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string/jumbo v1, "vr"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/vr/GearVrManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 701
    return-void
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 4
    .param p1, "cb"    # Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerVrStateListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GearVrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1136
    return-void
.end method

.method public releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerExternal;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public retrieveEnableFrequencyLevels()[I
    .registers 2

    .line 1202
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->retrieveEnableFrequencyLevels()[I

    move-result-object v0

    return-object v0
.end method

.method public setAwakeState(Z)V
    .registers 4
    .param p1, "isAwake"    # Z

    .line 1090
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mIsAwake:Z

    if-eq v1, p1, :cond_f

    .line 1092
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mIsAwake:Z

    .line 1093
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    .line 1094
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateLowPersistenceModeLocked()V

    .line 1096
    :cond_f
    monitor-exit v0

    .line 1097
    return-void

    .line 1096
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public setKeyguardUnlocked(Z)V
    .registers 4
    .param p1, "keyguardUnlocked"    # Z

    .line 1100
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1101
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mKeyguardUnlocked:Z

    if-eq v1, p1, :cond_f

    .line 1102
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mKeyguardUnlocked:Z

    .line 1103
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    .line 1104
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateLowPersistenceModeLocked()V

    .line 1106
    :cond_f
    monitor-exit v0

    .line 1107
    return-void

    .line 1106
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public setOverlayRestriction(Z[Ljava/lang/String;I)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "exemptedPackages"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOverlayRestriction enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " exemptedPackages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GearVrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1242
    return-void
.end method

.method public setPersistentVrMode(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 1038
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1039
    move v1, p1

    .line 1040
    .local v1, "persistentVrModeEnabled":Z
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrModeEnabled:Z

    if-eq v2, v1, :cond_d

    .line 1041
    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrModeEnabled:Z

    .line 1042
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updatePersistentVrModeLocked()V

    .line 1044
    .end local v1    # "persistentVrModeEnabled":Z
    :cond_d
    monitor-exit v0

    .line 1045
    return-void

    .line 1044
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public setScreenState(Z)V
    .registers 4
    .param p1, "screenOn"    # Z

    .line 1110
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1111
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mScreenOn:Z

    if-eq v1, p1, :cond_f

    .line 1112
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mScreenOn:Z

    .line 1113
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    .line 1114
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateLowPersistenceModeLocked()V

    .line 1116
    :cond_f
    monitor-exit v0

    .line 1117
    return-void

    .line 1116
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public setSystemMouseControlType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 1273
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    .line 1274
    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_d

    .line 1275
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseControlType(I)V

    .line 1277
    :cond_d
    return-void
.end method

.method public setSystemMouseShowMouseEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1280
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    .line 1281
    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_d

    .line 1282
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseCursorVisibility(Z)V

    .line 1284
    :cond_d
    return-void
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1194
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerExternal;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    return-void
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "priority"    # I

    .line 1211
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1213
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1214
    .local v2, "callingUid":I
    const-string v3, "GearVrManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setThreadSchedFifo pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " priority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_59

    if-ne v1, p2, :cond_39

    goto :goto_59

    .line 1216
    :cond_39
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not allowed to change SchedFIFO. setThreadSchedFifo can only used by itself or system uid. pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callingPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "tid":I
    .end local p4    # "priority":I
    throw v3

    .line 1218
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "pid":I
    .restart local p3    # "tid":I
    .restart local p4    # "priority":I
    :cond_59
    :goto_59
    invoke-static {p2, p3}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1221
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerExternal;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v3

    move v1, v3

    .line 1222
    .end local v2    # "callingUid":I
    .local v1, "result":Z
    monitor-exit v0

    .line 1223
    return v1

    .line 1219
    .local v1, "callingPid":I
    .restart local v2    # "callingUid":I
    :cond_68
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "vr thread does not belong to process"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/vr/GearVrManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "tid":I
    .end local p4    # "priority":I
    throw v3

    .line 1222
    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/vr/GearVrManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "pid":I
    .restart local p3    # "tid":I
    .restart local p4    # "priority":I
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public setVrMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1020
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vr/GearVrManagerService;->setVrMode(ZI)V

    .line 1021
    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 4
    .param p1, "cb"    # Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterVrStateListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GearVrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1141
    return-void
.end method

.method updateLowPersistenceModeAllowedLocked()V
    .registers 7

    .line 783
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRefreshRateModeController:Lcom/android/server/vr/RefreshRateModeController;

    invoke-virtual {v0}, Lcom/android/server/vr/RefreshRateModeController;->isNormalRefreshRate()Z

    move-result v0

    .line 784
    .local v0, "isLowPersistenceModeAllowed":Z
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLowPersistenceModeAllowed:Z

    if-eq v1, v0, :cond_41

    .line 785
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLowPersistenceModeAllowed:Z

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLowPersistenceModeAllowed isLowPersistenceModeAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GearVrManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-eqz v0, :cond_28

    const/high16 v1, 0x40000

    goto :goto_2a

    :cond_28
    const/high16 v1, 0x80000

    .line 788
    .local v1, "state":I
    :goto_2a
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    .line 789
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 790
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 792
    .end local v1    # "state":I
    :cond_41
    return-void
.end method
