.class public Lcom/android/server/appop/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/AppOpsService$NoteOpTrace;,
        Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;,
        Lcom/android/server/appop/AppOpsService$ClientRestrictionState;,
        Lcom/android/server/appop/AppOpsService$Shell;,
        Lcom/android/server/appop/AppOpsService$ChangeRec;,
        Lcom/android/server/appop/AppOpsService$NotedCallback;,
        Lcom/android/server/appop/AppOpsService$StartedCallback;,
        Lcom/android/server/appop/AppOpsService$ActiveCallback;,
        Lcom/android/server/appop/AppOpsService$ModeCallback;,
        Lcom/android/server/appop/AppOpsService$Op;,
        Lcom/android/server/appop/AppOpsService$AttributedOp;,
        Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;,
        Lcom/android/server/appop/AppOpsService$Ops;,
        Lcom/android/server/appop/AppOpsService$UidState;,
        Lcom/android/server/appop/AppOpsService$Constants;,
        Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;,
        Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field static final DEBUG:Z

.field private static final DEBUG_FGS_ALLOW_WHILE_IN_USE:I = 0x0

.field private static final DEBUG_FGS_ENFORCE_TYPE:I = 0x1

.field private static final MAX_UNFORWARDED_OPS:I = 0xa

.field private static final MAX_UNUSED_POOLED_OBJECTS:I = 0x3

.field private static final NO_VERSION:I = -0x1

.field private static final OPS_RESTRICTED_ON_SUSPEND:[I

.field private static final PROCESS_STATE_TO_UID_STATE:[I

.field private static final RARELY_USED_PACKAGES_INITIALIZATION_DELAY_MILLIS:I = 0x493e0

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final UID_ANY:I = -0x2

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field private final dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

.field private mAcceptableLeftDistance:I

.field final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$ActiveCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

.field private mAppOpsPublished:Z

.field private final mAsyncOpWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/app/IAppOpsAsyncNotedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

.field private mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

.field private mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

.field final mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field final mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field volatile mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

.field private final mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

.field mLastRealtime:J

.field private mMessagesCollectedCount:F

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoteOpCallerStacktraces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$NoteOpTrace;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoteOpCallerStacktracesFile:Ljava/io/File;

.field final mNotedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$NotedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private final mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ClientRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfileOwners:Landroid/util/SparseIntArray;

.field private mRarelyUsedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSampledAppOpCode:I

.field private mSampledPackage:Ljava/lang/String;

.field private mSamplingStrategy:I

.field final mStartedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$StartedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSwitchedOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;>;"
        }
    .end annotation
.end field

.field mWriteNoteOpsScheduled:Z

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 209
    const-string/jumbo v0, "ro.boot.debug_level"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4948"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 231
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    .line 255
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    sput-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-void

    :array_24
    .array-data 4
        0x64
        0x64
        0xc8
        0x1f4
        0x190
        0x1f4
        0x258
        0x258
        0x258
        0x258
        0x258
        0x258
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
    .end array-data

    :array_52
    .array-data 4
        0x1c
        0x1b
        0x1a
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 8
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 1507
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 214
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    .line 276
    new-instance v0, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    .line 280
    new-instance v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    .line 284
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$1;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 287
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 289
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 298
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 310
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    .line 318
    new-instance v0, Lcom/android/server/appop/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 334
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 338
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {v0, p0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 345
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 356
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 361
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 377
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 1267
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1268
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1269
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 1270
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 1271
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 1272
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 1273
    new-instance v2, Lcom/android/server/appop/AudioRestrictionManager;

    invoke-direct {v2}, Lcom/android/server/appop/AudioRestrictionManager;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 1538
    new-instance v2, Lcom/android/server/appop/AppOpsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 1508
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1509
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsPublished:Z

    .line 1511
    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1512
    new-instance v0, Landroid/util/AtomicFile;

    const-string v2, "appops"

    invoke-direct {v0, p1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 1518
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    .line 1520
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 1521
    new-instance v0, Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$Constants;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 1522
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 1524
    const/4 v0, 0x0

    .local v0, "switchedCode":I
    :goto_c3
    const/16 v1, 0x65

    if-ge v0, v1, :cond_dd

    .line 1525
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 1526
    .local v1, "switchCode":I
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 1527
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 1526
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1524
    .end local v1    # "switchCode":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    .line 1529
    .end local v0    # "switchedCode":I
    :cond_dd
    return-void
.end method

.method static synthetic access$1100()[I
    .registers 1

    .line 207
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/ArraySet;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/appop/AppOpsService;Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 207
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .line 207
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 207
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 207
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1900(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 207
    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 207
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 207
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/appop/AppOpsService;Landroid/util/SparseArray;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # Landroid/util/SparseArray;
    .param p2, "x2"    # Z

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/appop/AppOpsService;IIILcom/android/internal/app/IAppOpsCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 207
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 207
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 207
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$AttributedOp;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 207
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->onClientDeath(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/appop/AppOpsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService;

    .line 207
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;
    .registers 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    .line 2609
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local p4, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez p4, :cond_3

    .line 2610
    return-object p0

    .line 2612
    :cond_3
    if-nez p0, :cond_b

    .line 2613
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p0, v0

    .line 2615
    :cond_b
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 2616
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_2a

    .line 2617
    invoke-virtual {p4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2618
    .local v2, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2619
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    invoke-static {v3, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2620
    .local v4, "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    if-eq v4, v3, :cond_27

    .line 2621
    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2616
    .end local v2    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v4    # "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2624
    .end local v1    # "i":I
    :cond_2a
    return-object p0
.end method

.method private static addChange(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;"
        }
    .end annotation

    .line 2586
    .local p0, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    const/4 v0, 0x0

    .line 2587
    .local v0, "duplicate":Z
    if-nez p0, :cond_a

    .line 2588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v1

    goto :goto_28

    .line 2590
    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2591
    .local v1, "reportCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_f
    if-ge v2, v1, :cond_28

    .line 2592
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2593
    .local v3, "report":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget v4, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    if-ne v4, p1, :cond_25

    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2594
    const/4 v0, 0x1

    .line 2595
    goto :goto_28

    .line 2591
    .end local v3    # "report":Lcom/android/server/appop/AppOpsService$ChangeRec;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2599
    .end local v1    # "reportCount":I
    .end local v2    # "j":I
    :cond_28
    :goto_28
    if-nez v0, :cond_32

    .line 2600
    new-instance v1, Lcom/android/server/appop/AppOpsService$ChangeRec;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/appop/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    :cond_32
    return-object p0
.end method

.method private checkAudioOperationImpl(IIILjava/lang/String;)I
    .registers 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2980
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AudioRestrictionManager;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 2982
    .local v0, "mode":I
    if-eqz v0, :cond_9

    .line 2983
    return v0

    .line 2985
    :cond_9
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private checkOperationImpl(IILjava/lang/String;Z)I
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "raw"    # Z

    .line 2916
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2917
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2918
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 2919
    const/4 v1, 0x1

    return v1

    .line 2921
    :cond_b
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationUnchecked(IILjava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method private checkOperationInternal(IILjava/lang/String;Z)I
    .registers 12
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "raw"    # Z

    .line 2904
    monitor-enter p0

    .line 2905
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2906
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1a

    .line 2907
    if-nez v0, :cond_b

    .line 2908
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Z)I

    move-result v1

    return v1

    .line 2910
    :cond_b
    new-instance v6, Lcom/android/server/appop/-$$Lambda$AppOpsService$gQy7GOuCV6GbjQtdNhNG6xld8I4;

    invoke-direct {v6, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$gQy7GOuCV6GbjQtdNhNG6xld8I4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;ZLcom/android/internal/util/function/QuadFunction;)I

    move-result v1

    return v1

    .line 2906
    .end local v0    # "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private checkOperationUnchecked(IILjava/lang/String;Z)I
    .registers 14
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "raw"    # Z

    .line 2938
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_63

    .line 2942
    .local v0, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    nop

    .line 2944
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 2945
    return v2

    .line 2947
    :cond_e
    monitor-enter p0

    .line 2948
    :try_start_f
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2949
    monitor-exit p0

    return v2

    .line 2951
    :cond_17
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    move p1, v1

    .line 2952
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v1

    move-object v8, v1

    .line 2953
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v8, :cond_40

    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_40

    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2954
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_40

    .line 2955
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2956
    .local v1, "rawMode":I
    if-eqz p4, :cond_3a

    move v2, v1

    goto :goto_3e

    :cond_3a
    invoke-virtual {v8, p1, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v2

    :goto_3e
    monitor-exit p0

    return v2

    .line 2958
    .end local v1    # "rawMode":I
    :cond_40
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    .line 2959
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v1, :cond_53

    .line 2960
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    monitor-exit p0

    return v2

    .line 2962
    :cond_53
    if-eqz p4, :cond_5a

    # getter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    goto :goto_5e

    :cond_5a
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v2

    :goto_5e
    monitor-exit p0

    return v2

    .line 2963
    .end local v1    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :catchall_60
    move-exception v1

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_f .. :try_end_62} :catchall_60

    throw v1

    .line 2939
    .end local v0    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    :catch_63
    move-exception v0

    .line 2940
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v2, "checkOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2941
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    return v1
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .registers 6
    .param p1, "function"    # Ljava/lang/String;

    .line 6153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6154
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 6157
    return-void

    .line 6155
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V
    .registers 27
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opCode"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 3330
    move-object/from16 v7, p0

    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3334
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3336
    .local v16, "token":J
    :try_start_d
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_a0

    .line 3337
    move/from16 v6, p1

    move-object/from16 v5, p2

    :try_start_12
    invoke-direct {v7, v5, v6}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v0

    .line 3339
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    move-object v4, v1

    .line 3340
    .local v4, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    new-instance v1, Landroid/app/AsyncNotedAppOp;

    .line 3341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object v8, v1

    move/from16 v9, p3

    move v10, v15

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {v8 .. v14}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    move-object v14, v1

    .line 3342
    .local v14, "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    const/4 v13, 0x1

    new-array v1, v13, [Z

    const/4 v12, 0x0

    aput-boolean v12, v1, v12

    move-object/from16 v18, v1

    .line 3344
    .local v18, "wasNoteForwarded":[Z
    and-int/lit8 v1, p5, 0x9

    if-eqz v1, :cond_50

    if-eqz p7, :cond_50

    .line 3346
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v11, v4

    .end local v4    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .local v11, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 3344
    .end local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v4    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    :cond_50
    move-object v11, v4

    .line 3350
    .end local v4    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    :goto_51
    if-eqz v11, :cond_6c

    .line 3351
    new-instance v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;

    move-object v8, v1

    move-object v9, v14

    move-object/from16 v10, v18

    move-object v2, v11

    .end local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .local v2, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    move/from16 v11, p3

    move v3, v12

    move-object/from16 v12, p2

    move v4, v13

    move/from16 v13, p1

    move-object v5, v14

    .end local v14    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .local v5, "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    move-object/from16 v14, p4

    invoke-direct/range {v8 .. v14}, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;-><init>(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    goto :goto_70

    .line 3350
    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .end local v5    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .restart local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v14    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    :cond_6c
    move-object v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    .line 3363
    .end local v11    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .end local v14    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .restart local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .restart local v5    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    :goto_70
    aget-boolean v1, v18, v3

    if-nez v1, :cond_97

    .line 3364
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3365
    .local v1, "unforwardedOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AsyncNotedAppOp;>;"
    if-nez v1, :cond_89

    .line 3366
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 3367
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3370
    :cond_89
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3371
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0xa

    if-le v4, v6, :cond_97

    .line 3372
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3375
    .end local v0    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "unforwardedOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AsyncNotedAppOp;>;"
    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    .end local v5    # "asyncNotedOp":Landroid/app/AsyncNotedAppOp;
    .end local v18    # "wasNoteForwarded":[Z
    :cond_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_12 .. :try_end_98} :catchall_9d

    .line 3377
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3378
    nop

    .line 3379
    return-void

    .line 3375
    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    .end local v15    # "callingUid":I
    .end local v16    # "token":J
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "opCode":I
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "flags":I
    .end local p6    # "message":Ljava/lang/String;
    .end local p7    # "shouldCollectMessage":Z
    :try_start_9f
    throw v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    .line 3377
    .restart local v15    # "callingUid":I
    .restart local v16    # "token":J
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "opCode":I
    .restart local p4    # "attributionTag":Ljava/lang/String;
    .restart local p5    # "flags":I
    .restart local p6    # "message":Ljava/lang/String;
    .restart local p7    # "shouldCollectMessage":Z
    :catchall_a0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3378
    throw v0
.end method

.method private collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 9
    .param p1, "pkgOps"    # Lcom/android/server/appop/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 1940
    const/4 v0, 0x0

    .line 1941
    .local v0, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1942
    .local v1, "elapsedNow":J
    if-nez p2, :cond_25

    .line 1943
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 1944
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_e
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 1945
    invoke-virtual {p1, v3}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 1946
    .local v4, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-static {v4, v1, v2}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1944
    .end local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .end local v3    # "j":I
    :cond_24
    goto :goto_45

    .line 1949
    :cond_25
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_26
    array-length v4, p2

    if-ge v3, v4, :cond_45

    .line 1950
    aget v4, p2, v3

    invoke-virtual {p1, v4}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 1951
    .restart local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v4, :cond_42

    .line 1952
    if-nez v0, :cond_3b

    .line 1953
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 1955
    :cond_3b
    invoke-static {v4, v1, v2}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1949
    .end local v4    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 1959
    .end local v3    # "j":I
    :cond_45
    :goto_45
    return-object v0
.end method

.method private collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;
    .registers 10
    .param p1, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 1965
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1966
    return-object v1

    .line 1969
    :cond_6
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 1970
    .local v0, "opModeCount":I
    if-nez v0, :cond_f

    .line 1971
    return-object v1

    .line 1973
    :cond_f
    const/4 v1, 0x0

    .line 1974
    .local v1, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_37

    .line 1975
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 1976
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v0, :cond_36

    .line 1977
    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 1978
    .local v3, "code":I
    new-instance v4, Landroid/app/AppOpsManager$OpEntry;

    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1976
    .end local v3    # "code":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .end local v2    # "i":I
    :cond_36
    goto :goto_62

    .line 1981
    :cond_37
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_38
    array-length v3, p2

    if-ge v2, v3, :cond_62

    .line 1982
    aget v3, p2, v2

    .line 1983
    .restart local v3    # "code":I
    iget-object v4, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_5f

    .line 1984
    if-nez v1, :cond_4d

    .line 1985
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 1987
    :cond_4d
    new-instance v4, Landroid/app/AppOpsManager$OpEntry;

    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 1988
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    .line 1987
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    .end local v3    # "code":I
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1992
    .end local v2    # "j":I
    :cond_62
    :goto_62
    return-object v1
.end method

.method private commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .registers 23
    .param p1, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;

    .line 3798
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz v0, :cond_133

    .line 3799
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v10, v0

    .local v10, "fgi":I
    :goto_12
    if-ltz v10, :cond_133

    .line 3800
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3801
    goto/16 :goto_12d

    .line 3803
    :cond_1e
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    .line 3806
    .local v11, "code":I
    invoke-static {v11}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    int-to-long v12, v0

    .line 3807
    .local v12, "firstUnrestrictedUidState":J
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    int-to-long v0, v0

    cmp-long v0, v0, v12

    const/4 v1, 0x0

    if-gtz v0, :cond_33

    move v0, v9

    goto :goto_34

    :cond_33
    move v0, v1

    :goto_34
    move v14, v0

    .line 3808
    .local v14, "resolvedLastFg":Z
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    int-to-long v2, v0

    cmp-long v0, v2, v12

    if-gtz v0, :cond_3d

    move v1, v9

    :cond_3d
    move v15, v1

    .line 3809
    .local v15, "resolvedNowFg":Z
    if-ne v14, v15, :cond_4e

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    if-ne v0, v1, :cond_4e

    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    iget-boolean v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    if-ne v0, v1, :cond_4e

    .line 3812
    goto/16 :goto_12d

    .line 3815
    :cond_4e
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_84

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3816
    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_84

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3817
    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v8, :cond_84

    .line 3818
    iget-object v5, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$1CB62TNmPVdrHvls01D5LKYSp4w;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$1CB62TNmPVdrHvls01D5LKYSp4w;

    .line 3820
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v16, 0x0

    .line 3818
    move-object/from16 v1, p0

    move-object v8, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_12d

    .line 3821
    :cond_84
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_12d

    .line 3822
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/util/ArraySet;

    .line 3823
    .local v8, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v8, :cond_12d

    .line 3824
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v5, v0

    .local v5, "cbi":I
    :goto_99
    if-ltz v5, :cond_12b

    .line 3825
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 3826
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    iget v0, v4, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_122

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 3827
    invoke-virtual {v4, v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 3828
    move/from16 v18, v5

    goto/16 :goto_126

    .line 3830
    :cond_b3
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v3, v0

    .local v3, "pkgi":I
    :goto_bb
    if-ltz v3, :cond_11b

    .line 3831
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v0, v11}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/appop/AppOpsService$Op;

    .line 3832
    .local v16, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v16, :cond_d6

    .line 3833
    move/from16 v20, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    goto :goto_113

    .line 3835
    :cond_d6
    # getter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10d

    .line 3836
    iget-object v2, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 3838
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 3839
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Ljava/lang/String;

    .line 3836
    move-object/from16 v1, p0

    move-object v9, v2

    move-object v2, v4

    move/from16 v20, v3

    .end local v3    # "pkgi":I
    .local v20, "pkgi":I
    move-object/from16 v3, v17

    move-object/from16 v17, v4

    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .local v17, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    move-object/from16 v4, v18

    move/from16 v18, v5

    .end local v5    # "cbi":I
    .local v18, "cbi":I
    move-object/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_113

    .line 3835
    .end local v17    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v18    # "cbi":I
    .end local v20    # "pkgi":I
    .restart local v3    # "pkgi":I
    .restart local v4    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v5    # "cbi":I
    :cond_10d
    move/from16 v20, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    .line 3830
    .end local v3    # "pkgi":I
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v5    # "cbi":I
    .end local v16    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v17    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v18    # "cbi":I
    .restart local v20    # "pkgi":I
    :goto_113
    add-int/lit8 v3, v20, -0x1

    move-object/from16 v4, v17

    move/from16 v5, v18

    const/4 v9, 0x1

    .end local v20    # "pkgi":I
    .restart local v3    # "pkgi":I
    goto :goto_bb

    .end local v17    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v18    # "cbi":I
    .restart local v4    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v5    # "cbi":I
    :cond_11b
    move/from16 v20, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    .end local v3    # "pkgi":I
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v5    # "cbi":I
    .restart local v17    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v18    # "cbi":I
    .restart local v20    # "pkgi":I
    goto :goto_126

    .line 3826
    .end local v17    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v18    # "cbi":I
    .end local v20    # "pkgi":I
    .restart local v4    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v5    # "cbi":I
    :cond_122
    move-object/from16 v17, v4

    move/from16 v18, v5

    .line 3824
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v5    # "cbi":I
    .restart local v18    # "cbi":I
    :goto_126
    add-int/lit8 v5, v18, -0x1

    const/4 v9, 0x1

    .end local v18    # "cbi":I
    .restart local v5    # "cbi":I
    goto/16 :goto_99

    :cond_12b
    move/from16 v18, v5

    .line 3799
    .end local v5    # "cbi":I
    .end local v8    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v11    # "code":I
    .end local v12    # "firstUnrestrictedUidState":J
    .end local v14    # "resolvedLastFg":Z
    .end local v15    # "resolvedNowFg":Z
    :cond_12d
    :goto_12d
    add-int/lit8 v10, v10, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x1

    goto/16 :goto_12

    .line 3847
    .end local v10    # "fgi":I
    :cond_133
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_145

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_145

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_181

    .line 3848
    :cond_145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitUidPendingStateLocked() :: UID - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    :cond_181
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    iput v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 3851
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    iput v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    .line 3852
    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    iput-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    .line 3853
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 3854
    return-void
.end method

.method private deferResetOpToDpm(ILjava/lang/String;I)V
    .registers 5
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2780
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManagerInternal;->resetOp(ILjava/lang/String;I)V

    .line 2781
    return-void
.end method

.method static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 4734
    const-string v0, "AppOps service (appops) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4735
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4736
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4737
    const-string v0, "  start [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4739
    const-string v0, "    Starts a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4740
    const-string v0, "  stop [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4742
    const-string v0, "    Stops a given operation for a particular application."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4743
    const-string v0, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4744
    const-string v0, "    Set the mode for a particular application and operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4745
    const-string v0, "  get [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> [<OP>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4747
    const-string v0, "    Return the mode for a particular application and optional operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4748
    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4749
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4750
    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4751
    const-string v0, "    Reset the given application or all applications to default modes."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4752
    const-string v0, "  write-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4753
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4754
    const-string v0, "  read-settings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4755
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4756
    const-string v0, "  options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4757
    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4758
    const-string v0, "    <OP>      an AppOps operation."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4759
    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4760
    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4761
    const-string v0, "              not specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4762
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 5032
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5033
    const-string v0, "  -h"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5034
    const-string v0, "    Print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5035
    const-string v0, "  --op [OP]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5036
    const-string v0, "    Limit output to data associated with the given app op code."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5037
    const-string v0, "  --mode [MODE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5038
    const-string v0, "    Limit output to data associated with the given app op mode."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5039
    const-string v0, "  --package [PACKAGE]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5040
    const-string v0, "    Limit output to data associated with the given package name."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5041
    const-string v0, "  --attributionTag [attributionTag]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5042
    const-string v0, "    Limit output to data associated with the given attribution tag."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5043
    const-string v0, "  --watchers"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5044
    const-string v0, "    Only output the watcher sections."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5045
    return-void
.end method

.method private dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .registers 44
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "nowElapsed"    # J
    .param p4, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "now"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p9, "date"    # Ljava/util/Date;
    .param p10, "prefix"    # Ljava/lang/String;

    .line 5068
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    invoke-virtual/range {p4 .. p5}, Lcom/android/server/appop/AppOpsService$Op;->createSingleAttributionEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    .line 5069
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 5071
    .local v4, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v5

    .line 5073
    .local v5, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 5074
    .local v6, "keyCount":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1f
    if-ge v7, v6, :cond_16a

    .line 5075
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 5077
    .local v8, "key":J
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v10

    .line 5078
    .local v10, "uidState":I
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v11

    .line 5080
    .local v11, "flags":I
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v12

    .line 5081
    .local v12, "accessTime":J
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v14

    .line 5082
    .local v14, "rejectTime":J
    move-object/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "keyCount":I
    .local v16, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v17, "keyCount":I
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v5

    .line 5083
    .local v5, "accessDuration":J
    invoke-virtual {v4, v10, v10, v11}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v18

    .line 5085
    .local v18, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    const/16 v19, 0x0

    .line 5086
    .local v19, "proxyPkg":Ljava/lang/String;
    const/16 v20, 0x0

    .line 5087
    .local v20, "proxyAttributionTag":Ljava/lang/String;
    const/16 v21, -0x1

    .line 5088
    .local v21, "proxyUid":I
    if-eqz v18, :cond_68

    .line 5089
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 5090
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v20

    .line 5091
    invoke-virtual/range {v18 .. v18}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v21

    move-object/from16 v22, v4

    move-object/from16 v4, v19

    move/from16 v19, v10

    move-object/from16 v10, v20

    move/from16 v20, v11

    move/from16 v11, v21

    goto :goto_74

    .line 5088
    :cond_68
    move-object/from16 v22, v4

    move-object/from16 v4, v19

    move/from16 v19, v10

    move-object/from16 v10, v20

    move/from16 v20, v11

    move/from16 v11, v21

    .line 5094
    .end local v21    # "proxyUid":I
    .local v4, "proxyPkg":Ljava/lang/String;
    .local v10, "proxyAttributionTag":Ljava/lang/String;
    .local v11, "proxyUid":I
    .local v19, "uidState":I
    .local v20, "flags":I
    .local v22, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    :goto_74
    const-wide/16 v23, 0x0

    cmp-long v21, v12, v23

    const-string v1, "]"

    move/from16 v25, v7

    .end local v7    # "k":I
    .local v25, "k":I
    const-string v7, ", attributionTag="

    move-wide/from16 v26, v14

    .end local v14    # "rejectTime":J
    .local v26, "rejectTime":J
    const-string v14, ", pkg="

    const-string/jumbo v15, "uid="

    move-object/from16 v28, v1

    const-string v1, " proxy["

    move-object/from16 v29, v10

    .end local v10    # "proxyAttributionTag":Ljava/lang/String;
    .local v29, "proxyAttributionTag":Ljava/lang/String;
    const-string v10, ")"

    move-object/from16 v30, v7

    const-string v7, " ("

    if-lez v21, :cond_f7

    .line 5095
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5096
    const-string v3, "Access: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5097
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5098
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5099
    invoke-virtual {v2, v12, v13}, Ljava/util/Date;->setTime(J)V

    .line 5100
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5101
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5102
    sub-long v2, v12, p6

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5103
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5104
    cmp-long v2, v5, v23

    if-lez v2, :cond_c8

    .line 5105
    const-string v2, " duration="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5106
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5108
    :cond_c8
    if-ltz v11, :cond_eb

    .line 5109
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5110
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5111
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 5112
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5113
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5114
    move-object/from16 v2, v30

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5115
    move-object/from16 v3, v29

    .end local v29    # "proxyAttributionTag":Ljava/lang/String;
    .local v3, "proxyAttributionTag":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5116
    move-wide/from16 v29, v5

    move-object/from16 v5, v28

    .end local v5    # "accessDuration":J
    .local v29, "accessDuration":J
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f3

    .line 5108
    .end local v3    # "proxyAttributionTag":Ljava/lang/String;
    .restart local v5    # "accessDuration":J
    .local v29, "proxyAttributionTag":Ljava/lang/String;
    :cond_eb
    move-object/from16 v3, v29

    move-object/from16 v2, v30

    move-wide/from16 v29, v5

    move-object/from16 v5, v28

    .line 5118
    .end local v5    # "accessDuration":J
    .restart local v3    # "proxyAttributionTag":Ljava/lang/String;
    .local v29, "accessDuration":J
    :goto_f3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_ff

    .line 5094
    .end local v3    # "proxyAttributionTag":Ljava/lang/String;
    .restart local v5    # "accessDuration":J
    .local v29, "proxyAttributionTag":Ljava/lang/String;
    :cond_f7
    move-object/from16 v3, v29

    move-object/from16 v2, v30

    move-wide/from16 v29, v5

    move-object/from16 v5, v28

    .line 5121
    .end local v5    # "accessDuration":J
    .restart local v3    # "proxyAttributionTag":Ljava/lang/String;
    .local v29, "accessDuration":J
    :goto_ff
    cmp-long v6, v26, v23

    if-lez v6, :cond_151

    .line 5122
    move-object/from16 v6, p10

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5123
    move-wide/from16 v23, v12

    .end local v12    # "accessTime":J
    .local v23, "accessTime":J
    const-string v12, "Reject: "

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5124
    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5125
    move-object/from16 v12, p9

    move-wide/from16 v31, v8

    move-wide/from16 v8, v26

    move-wide/from16 v26, v31

    .local v8, "rejectTime":J
    .local v26, "key":J
    invoke-virtual {v12, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 5126
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5127
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5128
    sub-long v12, v8, p6

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5129
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5130
    if-ltz v11, :cond_14d

    .line 5131
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5132
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5133
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 5134
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5135
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5136
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5137
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5138
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5140
    :cond_14d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_15b

    .line 5121
    .end local v23    # "accessTime":J
    .local v8, "key":J
    .restart local v12    # "accessTime":J
    .local v26, "rejectTime":J
    :cond_151
    move-object/from16 v6, p10

    move-wide/from16 v23, v12

    move-wide/from16 v31, v8

    move-wide/from16 v8, v26

    move-wide/from16 v26, v31

    .line 5074
    .end local v3    # "proxyAttributionTag":Ljava/lang/String;
    .end local v4    # "proxyPkg":Ljava/lang/String;
    .end local v8    # "key":J
    .end local v11    # "proxyUid":I
    .end local v12    # "accessTime":J
    .end local v18    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .end local v19    # "uidState":I
    .end local v20    # "flags":I
    .end local v26    # "rejectTime":J
    .end local v29    # "accessDuration":J
    :goto_15b
    add-int/lit8 v7, v25, 0x1

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    move-object v3, v6

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v4, v22

    .end local v25    # "k":I
    .restart local v7    # "k":I
    goto/16 :goto_1f

    .end local v16    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v17    # "keyCount":I
    .end local v22    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .local v4, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .local v5, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v6    # "keyCount":I
    :cond_16a
    move-object/from16 v22, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v25, v7

    move-object v6, v3

    .line 5144
    .end local v4    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v5    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "keyCount":I
    .end local v7    # "k":I
    .restart local v16    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v17    # "keyCount":I
    .restart local v22    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    move-object/from16 v1, p4

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 5145
    .local v2, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1ed

    .line 5146
    const-wide v4, 0x7fffffffffffffffL

    .line 5147
    .local v4, "earliestElapsedTime":J
    const-wide/16 v7, 0x0

    .line 5148
    .local v7, "maxNumStarts":J
    # getter for: Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$1700(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 5149
    .local v9, "numInProgressEvents":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_195
    if-ge v10, v9, :cond_1b3

    .line 5150
    # getter for: Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$1700(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 5152
    .local v11, "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 5153
    iget v12, v11, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    int-to-long v12, v12

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 5149
    .end local v11    # "event":Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;
    add-int/lit8 v10, v10, 0x1

    goto :goto_195

    .line 5156
    .end local v10    # "i":I
    :cond_1b3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Running start at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5157
    sub-long v10, p2, v4

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5158
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5160
    const-wide/16 v10, 0x1

    cmp-long v10, v7, v10

    if-lez v10, :cond_1ed

    .line 5161
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "startNesting="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5162
    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 5165
    .end local v4    # "earliestElapsedTime":J
    .end local v7    # "maxNumStarts":J
    .end local v9    # "numInProgressEvents":I
    :cond_1ed
    return-void
.end method

.method private dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .registers 29
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterAttributionTag"    # Ljava/lang/String;
    .param p3, "filter"    # I
    .param p4, "nowElapsed"    # J
    .param p6, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p7, "now"    # J
    .param p9, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p10, "date"    # Ljava/util/Date;
    .param p11, "prefix"    # Ljava/lang/String;

    .line 5050
    move-object/from16 v11, p1

    move-object/from16 v12, p6

    move-object/from16 v13, p11

    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 5051
    .local v14, "numAttributions":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_e
    if-ge v15, v14, :cond_88

    .line 5052
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_23

    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 5053
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 5052
    move-object/from16 v10, p2

    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 5054
    goto :goto_85

    .line 5052
    :cond_23
    move-object/from16 v10, p2

    .line 5057
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5058
    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    .line 5060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5051
    :goto_85
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 5062
    .end local v15    # "i":I
    :cond_88
    return-void
.end method

.method private enforceManageAppOpsModes(III)V
    .registers 10
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "targetUid"    # I

    .line 2195
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2196
    return-void

    .line 2198
    :cond_7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2199
    .local v0, "callingUser":I
    monitor-enter p0

    .line 2200
    :try_start_c
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 2201
    if-ltz p3, :cond_23

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 2204
    monitor-exit p0

    return-void

    .line 2207
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_35

    .line 2208
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2209
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2208
    const-string v5, "android.permission.MANAGE_APP_OPS_MODES"

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2210
    return-void

    .line 2207
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJJI)V"
        }
    .end annotation

    .line 2062
    .local p4, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v0, p5, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    .line 2063
    if-eq p1, v1, :cond_b

    move v0, v3

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_18

    .line 2065
    :cond_10
    if-ne p1, v1, :cond_14

    move v0, v3

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2068
    :goto_18
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_20

    .line 2069
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 2071
    :cond_20
    if-nez p2, :cond_24

    move v0, v3

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2074
    :goto_28
    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_34

    .line 2075
    if-nez p3, :cond_30

    move v0, v3

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2078
    :cond_34
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_3c

    .line 2079
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 2081
    :cond_3c
    if-nez p4, :cond_40

    move v0, v3

    goto :goto_41

    :cond_40
    move v0, v2

    :goto_41
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2084
    :goto_44
    const/16 v0, 0xf

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 2087
    invoke-static {p6, p7}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 2088
    cmp-long v0, p8, p6

    if-lez v0, :cond_51

    move v2, v3

    :cond_51
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2089
    const/16 v0, 0x1f

    invoke-static {p10, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 2090
    return-void
.end method

.method private evalAllForegroundOpsLocked()V
    .registers 4

    .line 2784
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidi":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 2785
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2786
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1b

    .line 2787
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2784
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2790
    .end local v0    # "uidi":I
    :cond_1e
    return-void
.end method

.method private getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3391
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getBypassforPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/app/AppOpsManager$RestrictionBypass;
    .registers 8
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3880
    new-instance v0, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 3881
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    .line 3880
    const-string v4, "android.permission.EXEMPT_FROM_AUDIO_RECORD_RESTRICTIONS"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-direct {v0, v1, v2}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZ)V

    return-object v0
.end method

.method private static getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;
    .registers 4
    .param p0, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p1, "elapsedNow"    # J

    .line 1996
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Op;->createEntryLocked()Landroid/app/AppOpsManager$OpEntry;

    move-result-object v0

    return-object v0
.end method

.method private getOpLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;
    .registers 13
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "bypass"    # Landroid/app/AppOpsManager$RestrictionBypass;
    .param p6, "edit"    # Z

    .line 4043
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 4044
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v0, :cond_e

    .line 4045
    const/4 v1, 0x0

    return-object v1

    .line 4047
    :cond_e
    invoke-direct {p0, v0, p1, p2, p6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;
    .registers 13
    .param p1, "ops"    # Lcom/android/server/appop/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "edit"    # Z

    .line 4051
    invoke-virtual {p1, p2}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    .line 4052
    .local v0, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v0, :cond_1d

    .line 4053
    if-nez p4, :cond_c

    .line 4054
    const/4 v1, 0x0

    return-object v1

    .line 4056
    :cond_c
    new-instance v1, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v4, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object v2, v1

    move-object v3, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    move-object v0, v1

    .line 4057
    invoke-virtual {p1, p2, v0}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 4059
    :cond_1d
    if-eqz p4, :cond_22

    .line 4060
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 4062
    :cond_22
    return-object v0
.end method

.method private getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "bypass"    # Landroid/app/AppOpsManager$RestrictionBypass;
    .param p5, "edit"    # Z

    .line 3979
    invoke-direct {p0, p1, p5}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 3980
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3981
    return-object v1

    .line 3984
    :cond_8
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_16

    .line 3985
    if-nez p5, :cond_f

    .line 3986
    return-object v1

    .line 3988
    :cond_f
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 3991
    :cond_16
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 3992
    .local v2, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v2, :cond_2e

    .line 3993
    if-nez p5, :cond_23

    .line 3994
    return-object v1

    .line 3996
    :cond_23
    new-instance v1, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v1, p2, v0}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    move-object v2, v1

    .line 3997
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4000
    :cond_2e
    if-eqz p5, :cond_3b

    .line 4001
    if-eqz p4, :cond_34

    .line 4002
    iput-object p4, v2, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 4005
    :cond_34
    if-eqz p3, :cond_3b

    .line 4006
    iget-object v1, v2, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4010
    :cond_3b
    return-object v2
.end method

.method private getPackageListAndResample()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6024
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageNamesForSampling()Ljava/util/List;

    move-result-object v0

    .line 6025
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 6026
    :try_start_5
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->resamplePackageAndAppOpLocked(Ljava/util/List;)V

    .line 6027
    monitor-exit p0

    .line 6028
    return-object v0

    .line 6027
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private getPackageNamesForSampling()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6107
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 6109
    .local v1, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v2

    .line 6110
    .local v2, "packages":Lcom/android/server/pm/PackageList;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6111
    .local v4, "packageName":Ljava/lang/String;
    const/16 v5, 0x1000

    .line 6112
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 6111
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 6113
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v5}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 6114
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6116
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_40
    goto :goto_19

    .line 6117
    :cond_41
    return-object v0
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .registers 3
    .param p0, "uid"    # I

    .line 6196
    const/4 v0, 0x0

    .line 6200
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 6202
    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 6205
    goto :goto_12

    .line 6203
    :catch_11
    move-exception v1

    .line 6207
    :cond_12
    :goto_12
    if-nez v0, :cond_17

    .line 6208
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 6210
    :cond_17
    return-object v0
.end method

.method private getRuntimeAppOpsList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6095
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6096
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/16 v2, 0x65

    if-ge v1, v2, :cond_1a

    .line 6097
    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsService;->shouldCollectNotes(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 6098
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6096
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 6101
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .line 3764
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 3765
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_1a

    .line 3766
    if-nez p2, :cond_e

    .line 3767
    const/4 v1, 0x0

    return-object v1

    .line 3769
    :cond_e
    new-instance v1, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    move-object v0, v1

    .line 3770
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1d

    .line 3772
    :cond_1a
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 3774
    :goto_1d
    return-object v0
.end method

.method private initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6053
    .local p1, "candidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 6054
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getRuntimeAppOpsList()Ljava/util/List;

    move-result-object v1

    .line 6055
    .local v1, "runtimeAppOpsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 6057
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v5, 0x7

    invoke-virtual {v3, v5, v6, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 6058
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v2

    .line 6059
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v2

    .line 6060
    .local v2, "histOpsRequest":Landroid/app/AppOpsManager$HistoricalOpsRequest;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/appop/AppOpsService$9;

    invoke-direct {v4, p0, p1}, Lcom/android/server/appop/AppOpsService$9;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 6091
    return-void
.end method

.method private isModeChangeAllowedForCode(I)Z
    .registers 5
    .param p1, "code"    # I

    .line 6533
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_21

    .line 6535
    :try_start_4
    const-string/jumbo v0, "restriction_policy"

    .line 6536
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    .line 6537
    .local v0, "restrictionService":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    if-eqz v0, :cond_1f

    .line 6538
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_20

    return v1

    .line 6542
    .end local v0    # "restrictionService":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :cond_1f
    goto :goto_21

    .line 6540
    :catch_20
    move-exception v0

    .line 6544
    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method private isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 4066
    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4067
    const/4 v0, 0x0

    return v0

    .line 4069
    :cond_a
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4070
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private isOpRestrictedLocked(IILjava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appBypass"    # Landroid/app/AppOpsManager$RestrictionBypass;

    .line 4075
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4076
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 4078
    .local v1, "restrictionSetCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    const/4 v3, 0x0

    if-ge v2, v1, :cond_45

    .line 4081
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 4082
    .local v4, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v4, p2, p3, v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->hasRestriction(ILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 4083
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v5

    .line 4084
    .local v5, "opBypass":Landroid/app/AppOpsManager$RestrictionBypass;
    if-eqz v5, :cond_40

    .line 4086
    monitor-enter p0

    .line 4087
    :try_start_23
    iget-boolean v6, v5, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz v6, :cond_2f

    if-eqz p4, :cond_2f

    iget-boolean v6, p4, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz v6, :cond_2f

    .line 4088
    monitor-exit p0

    return v3

    .line 4090
    :cond_2f
    iget-boolean v6, v5, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz v6, :cond_3b

    if-eqz p4, :cond_3b

    iget-boolean v6, p4, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz v6, :cond_3b

    .line 4092
    monitor-exit p0

    return v3

    .line 4094
    :cond_3b
    monitor-exit p0

    goto :goto_40

    :catchall_3d
    move-exception v3

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_23 .. :try_end_3f} :catchall_3d

    throw v3

    .line 4096
    :cond_40
    :goto_40
    const/4 v3, 0x1

    return v3

    .line 4078
    .end local v4    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .end local v5    # "opBypass":Landroid/app/AppOpsManager$RestrictionBypass;
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4099
    .end local v2    # "i":I
    :cond_45
    return v3
.end method

.method private isSamplingTarget(Landroid/content/pm/PackageInfo;)Z
    .registers 10
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 6122
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 6123
    return v0

    .line 6125
    :cond_4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 6126
    .local v1, "requestedPermissions":[Ljava/lang/String;
    if-nez v1, :cond_9

    .line 6127
    return v0

    .line 6129
    :cond_9
    array-length v2, v1

    move v3, v0

    :goto_b
    if-ge v3, v2, :cond_27

    aget-object v4, v1, v3

    .line 6132
    .local v4, "permission":Ljava/lang/String;
    :try_start_f
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_19} :catch_22

    .line 6135
    .local v5, "permissionInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 6136
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_24

    .line 6137
    return v7

    .line 6133
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :catch_22
    move-exception v5

    .line 6134
    .local v5, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 6129
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 6140
    :cond_27
    return v0
.end method

.method public static synthetic lambda$1CB62TNmPVdrHvls01D5LKYSp4w(Lcom/android/server/appop/AppOpsService;IIZLcom/android/internal/app/IAppOpsCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public static synthetic lambda$7TpfX4NXXUoI4jqIGxhEk65lHLs(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$AfBLuTvVESlqN91IyRX84hMV5nE(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$CVMS-lLMRyZYA1tmqvyuOloKBu0(Lcom/android/server/appop/AppOpsService;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updatePendingState(JI)V

    return-void
.end method

.method public static synthetic lambda$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$GUeKjlbzT65s86vaxy5gvOajuhw(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method public static synthetic lambda$NDUi03ZZuuR42-RDEIQ0UELKycc(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$collectAsyncNotedOp$2(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .registers 10
    .param p0, "asyncNotedOp"    # Landroid/app/AsyncNotedAppOp;
    .param p1, "wasNoteForwarded"    # [Z
    .param p2, "opCode"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "cb"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 3353
    :try_start_0
    invoke-interface {p6, p0}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;->opNoted(Landroid/app/AsyncNotedAppOp;)V

    .line 3354
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 3359
    goto :goto_3c

    .line 3355
    :catch_8
    move-exception v0

    .line 3356
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not forward noteOp of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOps"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3360
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-void
.end method

.method static synthetic lambda$collectNoteOpCallsForValidation$3(Lcom/android/server/appop/AppOpsService;)V
    .registers 1
    .param p0, "that"    # Lcom/android/server/appop/AppOpsService;

    .line 6524
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->writeNoteOps()V

    .line 6525
    return-void
.end method

.method private static synthetic lambda$collectNoteOpCallsForValidation$4(Lcom/android/server/appop/AppOpsService;)V
    .registers 2
    .param p0, "that"    # Lcom/android/server/appop/AppOpsService;

    .line 6523
    new-instance v0, Lcom/android/server/appop/-$$Lambda$AppOpsService$IcRpnjSl3QKeLKuAUwu4sWn4PL4;

    invoke-direct {v0, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$IcRpnjSl3QKeLKuAUwu4sWn4PL4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 6526
    return-void
.end method

.method public static synthetic lambda$gQy7GOuCV6GbjQtdNhNG6xld8I4(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Z)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getHistoricalOps$1(Landroid/os/RemoteCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/RemoteCallback;

    .line 2105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$m04KE9D7Jmkj_GEr7pcdIY29xtA(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$mfUWTdGevxEoIUv1cEPEFG0qAaI(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$p0ZLmKR_KoZGKlw2X3zSLMlh_MU(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private noteOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I
    .registers 23
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 3085
    move-object v12, p0

    move/from16 v13, p2

    invoke-direct {p0, v13}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3086
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3087
    invoke-static/range {p2 .. p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3088
    .local v14, "resolvedPackageName":Ljava/lang/String;
    if-nez v14, :cond_11

    .line 3089
    const/4 v0, 0x1

    return v0

    .line 3091
    :cond_11
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v14

    move-object/from16 v4, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)I
    .registers 33
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "proxyUid"    # I
    .param p6, "proxyPackageName"    # Ljava/lang/String;
    .param p7, "proxyAttributionTag"    # Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "shouldCollectAsyncNotedOp"    # Z
    .param p10, "message"    # Ljava/lang/String;
    .param p11, "shouldCollectMessage"    # Z

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p8

    .line 3103
    const/4 v7, 0x2

    :try_start_d
    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_11} :catch_1ee

    move-object v15, v0

    .line 3107
    .local v15, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    nop

    .line 3109
    monitor-enter p0

    .line 3110
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v15

    :try_start_1e
    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 3112
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    const/4 v1, 0x1

    if-nez v0, :cond_55

    .line 3113
    invoke-direct {v9, v10, v11, v12, v1}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 3115
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_53

    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteOperation: no op for code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    :cond_53
    monitor-exit p0

    return v7

    .line 3119
    :cond_55
    invoke-direct {v9, v0, v10, v11, v1}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v2

    move-object v8, v2

    .line 3120
    .local v8, "op":Lcom/android/server/appop/AppOpsService$Op;
    invoke-direct {v9, v11, v10, v12, v15}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 3121
    invoke-direct {v9, v10, v11, v12, v1}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 3123
    monitor-exit p0

    return v1

    .line 3125
    :cond_65
    # invokes: Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-static {v8, v8, v13}, Lcom/android/server/appop/AppOpsService$Op;->access$1000(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v2

    move-object v7, v2

    .line 3126
    .local v7, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-virtual {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_ad

    .line 3127
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Noting op not finished: uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " startTime of in progress event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    # getter for: Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$1700(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3127
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :cond_ad
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    move v5, v2

    .line 3133
    .local v5, "switchCode":I
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    move-object v4, v2

    .line 3136
    .local v4, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_115

    iget-object v2, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_115

    .line 3137
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v4, v10, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v1

    .line 3138
    .local v1, "uidMode":I
    if-eqz v1, :cond_112

    .line 3139
    sget-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v2, :cond_108

    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "noteOperation: uid reject #"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for code "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") uid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " package "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    :cond_108
    iget v2, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v7, v2, v14}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V

    .line 3143
    invoke-direct {v9, v10, v11, v12, v1}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 3144
    monitor-exit p0

    return v1

    .line 3146
    .end local v1    # "uidMode":I
    :cond_112
    move-object/from16 v16, v0

    goto :goto_170

    .line 3147
    :cond_115
    if-eq v5, v10, :cond_11c

    invoke-direct {v9, v0, v5, v11, v1}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    goto :goto_11d

    .line 3148
    :cond_11c
    move-object v1, v8

    :goto_11d
    nop

    .line 3149
    .local v1, "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v2

    .line 3150
    .local v2, "mode":I
    if-eqz v2, :cond_16e

    .line 3151
    sget-boolean v3, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v3, :cond_162

    const-string v3, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .local v16, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    const-string/jumbo v0, "noteOperation: reject #"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for code "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") uid "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_164

    .end local v16    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v0    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_162
    move-object/from16 v16, v0

    .line 3154
    .end local v0    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v16    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :goto_164
    iget v0, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v7, v0, v14}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V

    .line 3155
    invoke-direct {v9, v10, v11, v12, v2}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 3156
    monitor-exit p0

    return v2

    .line 3150
    .end local v16    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v0    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_16e
    move-object/from16 v16, v0

    .line 3159
    .end local v0    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v1    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v2    # "mode":I
    .restart local v16    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :goto_170
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_1b4

    .line 3160
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteOperation: allowing code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3162
    if-nez v13, :cond_199

    const-string v2, ""

    goto :goto_1aa

    .line 3163
    :cond_199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3160
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    :cond_1b4
    invoke-direct {v9, v10, v11, v12, v6}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V

    .line 3166
    iget v0, v4, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v1, v7

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v17, v4

    .end local v4    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v17, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    move-object/from16 v4, p7

    move/from16 v18, v5

    .end local v5    # "switchCode":I
    .local v18, "switchCode":I
    move v5, v0

    move v0, v6

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(ILjava/lang/String;Ljava/lang/String;II)V

    .line 3169
    if-eqz p9, :cond_1e5

    .line 3170
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p8

    move-object/from16 v19, v7

    .end local v7    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .local v19, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    move-object/from16 v7, p10

    move-object/from16 v20, v8

    .end local v8    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v20, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v8, p11

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    goto :goto_1e9

    .line 3169
    .end local v19    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v7    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v8    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_1e5
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    .line 3174
    .end local v7    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v8    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v19    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :goto_1e9
    monitor-exit p0

    return v0

    .line 3175
    .end local v16    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v17    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v18    # "switchCode":I
    .end local v19    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v20    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :catchall_1eb
    move-exception v0

    monitor-exit p0
    :try_end_1ed
    .catchall {:try_start_1e .. :try_end_1ed} :catchall_1eb

    throw v0

    .line 3104
    .end local v15    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    :catch_1ee
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 3105
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string/jumbo v2, "noteOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3106
    return v7
.end method

.method private notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Z)V
    .registers 12
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ActiveCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 3610
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3612
    .local v0, "identity":J
    :try_start_4
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 3613
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_1b

    .line 3614
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_20

    .line 3616
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_start_11
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_20

    .line 3619
    goto :goto_18

    .line 3617
    :catch_17
    move-exception v5

    .line 3613
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3622
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3623
    nop

    .line 3624
    return-void

    .line 3622
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3623
    throw v2
.end method

.method private notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 7
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2547
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 2548
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2549
    .local v1, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    .line 2547
    .end local v1    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2551
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method private notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .registers 12
    .param p1, "callback"    # Lcom/android/server/appop/AppOpsService$ModeCallback;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2555
    const/4 v0, -0x2

    if-eq p3, v0, :cond_c

    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v1, :cond_c

    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-eq v1, p3, :cond_c

    .line 2556
    return-void

    .line 2561
    :cond_c
    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1a

    .line 2562
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .local v0, "switchedCodes":[I
    goto :goto_2b

    .line 2563
    .end local v0    # "switchedCodes":[I
    :cond_1a
    iget v0, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_25

    .line 2564
    new-array v0, v3, [I

    aput p2, v0, v2

    .restart local v0    # "switchedCodes":[I
    goto :goto_2b

    .line 2566
    .end local v0    # "switchedCodes":[I
    :cond_25
    new-array v0, v3, [I

    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    aput v1, v0, v2

    .line 2569
    .restart local v0    # "switchedCodes":[I
    :goto_2b
    array-length v1, v0

    :goto_2c
    if-ge v2, v1, :cond_47

    aget v3, v0, v2

    .line 2573
    .local v3, "switchedCode":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2575
    .local v4, "identity":J
    :try_start_34
    iget-object v6, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v6, v3, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3f
    .catchall {:try_start_34 .. :try_end_39} :catchall_3a

    goto :goto_40

    .line 2579
    :catchall_3a
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2580
    throw v1

    .line 2576
    :catch_3f
    move-exception v6

    .line 2579
    :goto_40
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2580
    nop

    .line 2569
    .end local v3    # "switchedCode":I
    .end local v4    # "identity":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 2582
    :cond_47
    return-void
.end method

.method private notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V
    .registers 22
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "onlyForeground"    # Z
    .param p4, "callbackToIgnore"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2281
    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 2282
    .local v8, "uidPackageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2284
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 2285
    :try_start_8
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_126

    move/from16 v9, p1

    :try_start_c
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_122

    .line 2286
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v0, :cond_45

    .line 2287
    :try_start_14
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2288
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_45

    .line 2289
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2290
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz p3, :cond_2a

    iget v5, v4, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2a

    .line 2291
    goto :goto_3d

    .line 2294
    :cond_2a
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2295
    .local v5, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v5, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2296
    if-nez v1, :cond_3a

    .line 2297
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v6

    .line 2299
    :cond_3a
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_40

    .line 2288
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v5    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2329
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :catchall_40
    move-exception v0

    move-object/from16 v16, v8

    goto/16 :goto_12b

    .line 2303
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_45
    :try_start_45
    array-length v2, v8
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_122

    const/4 v3, 0x0

    move-object v10, v1

    .end local v1    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v10, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_48
    if-ge v3, v2, :cond_9e

    :try_start_4a
    aget-object v1, v8, v3

    .line 2304
    .local v1, "uidPackageName":Ljava/lang/String;
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move-object v0, v4

    .line 2305
    if-eqz v0, :cond_95

    .line 2306
    if-nez v10, :cond_5f

    .line 2307
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_98

    .end local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v4, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_60

    .line 2306
    .end local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_5f
    move-object v4, v10

    .line 2309
    .end local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_60
    :try_start_60
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 2310
    .local v5, "callbackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_65
    if-ge v6, v5, :cond_8d

    .line 2311
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2312
    .local v10, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz p3, :cond_76

    iget v11, v10, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_76

    .line 2313
    goto :goto_8a

    .line 2316
    :cond_76
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 2317
    .local v11, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v11, :cond_87

    .line 2318
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v12

    .line 2319
    invoke-virtual {v4, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2321
    :cond_87
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catchall {:try_start_60 .. :try_end_8a} :catchall_8f

    .line 2310
    .end local v10    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v11    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_8a
    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    :cond_8d
    move-object v10, v4

    goto :goto_95

    .line 2329
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v1    # "uidPackageName":Ljava/lang/String;
    .end local v5    # "callbackCount":I
    .end local v6    # "i":I
    :catchall_8f
    move-exception v0

    move-object v1, v4

    move-object/from16 v16, v8

    goto/16 :goto_12b

    .line 2303
    .end local v4    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v10, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_95
    :goto_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 2329
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_98
    move-exception v0

    move-object/from16 v16, v8

    move-object v1, v10

    goto/16 :goto_12b

    .line 2326
    .restart local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_9e
    if-eqz v10, :cond_af

    if-eqz p4, :cond_af

    .line 2327
    :try_start_a2
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_af
    .catchall {:try_start_a2 .. :try_end_af} :catchall_98

    .line 2329
    .end local v0    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_af
    :try_start_af
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_11d

    .line 2331
    if-nez v10, :cond_b3

    .line 2332
    return-void

    .line 2335
    :cond_b3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b4
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_11c

    .line 2336
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2337
    .local v11, "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/ArraySet;

    .line 2338
    .local v12, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v12, :cond_e7

    .line 2339
    iget-object v13, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 2341
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x0

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 2339
    move-object/from16 v2, p0

    move-object v3, v11

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v16, v8

    goto :goto_117

    .line 2344
    :cond_e7
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 2345
    .local v13, "reportedPackageCount":I
    const/4 v1, 0x0

    move v14, v1

    .local v14, "j":I
    :goto_ed
    if-ge v14, v13, :cond_115

    .line 2346
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 2347
    .local v15, "reportedPackageName":Ljava/lang/String;
    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    .line 2349
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2347
    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v16, v8

    move-object v8, v6

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .local v16, "uidPackageNames":[Ljava/lang/String;
    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2345
    .end local v15    # "reportedPackageName":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v16

    goto :goto_ed

    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :cond_115
    move-object/from16 v16, v8

    .line 2335
    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .end local v11    # "callback":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v12    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "reportedPackageCount":I
    .end local v14    # "j":I
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    :goto_117
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v16

    goto :goto_b4

    .line 2353
    .end local v0    # "i":I
    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :cond_11c
    return-void

    .line 2329
    :catchall_11d
    move-exception v0

    move-object/from16 v16, v8

    move-object v1, v10

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    goto :goto_12b

    .end local v10    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .local v1, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :catchall_122
    move-exception v0

    move-object/from16 v16, v8

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    goto :goto_12b

    .end local v16    # "uidPackageNames":[Ljava/lang/String;
    .restart local v8    # "uidPackageNames":[Ljava/lang/String;
    :catchall_126
    move-exception v0

    move/from16 v9, p1

    move-object/from16 v16, v8

    .end local v8    # "uidPackageNames":[Ljava/lang/String;
    .restart local v16    # "uidPackageNames":[Ljava/lang/String;
    :goto_12b
    :try_start_12b
    monitor-exit p0
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12d

    throw v0

    :catchall_12d
    move-exception v0

    goto :goto_12b
.end method

.method private notifyOpChangedSync(IILjava/lang/String;I)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 2456
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    .line 2457
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 2458
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    if-eqz v0, :cond_d

    .line 2459
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;I)V

    .line 2461
    :cond_d
    return-void
.end method

.method private notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;I)V
    .registers 12
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$NotedCallback;",
            ">;II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3701
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3703
    .local v0, "identity":J
    :try_start_4
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 3704
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_1b

    .line 3705
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_20

    .line 3707
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_start_11
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsNotedCallback;->opNoted(IILjava/lang/String;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_20

    .line 3710
    goto :goto_18

    .line 3708
    :catch_17
    move-exception v5

    .line 3704
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3713
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3714
    nop

    .line 3715
    return-void

    .line 3713
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3714
    throw v2
.end method

.method private notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;I)V
    .registers 12
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$StartedCallback;",
            ">;II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3656
    .local p1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3658
    .local v0, "identity":J
    :try_start_4
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 3659
    .local v2, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_1b

    .line 3660
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_20

    .line 3662
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_start_11
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    invoke-interface {v5, p2, p3, p4, p5}, Lcom/android/internal/app/IAppOpsStartedCallback;->opStarted(IILjava/lang/String;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_20

    .line 3665
    goto :goto_18

    .line 3663
    :catch_17
    move-exception v5

    .line 3659
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3668
    .end local v2    # "callbackCount":I
    .end local v3    # "i":I
    :cond_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3669
    nop

    .line 3670
    return-void

    .line 3668
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3669
    throw v2
.end method

.method private notifyWatchersOfChange(II)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 5793
    monitor-enter p0

    .line 5794
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 5795
    .local v0, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v0, :cond_d

    .line 5796
    monitor-exit p0

    return-void

    .line 5798
    :cond_d
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v0, v1

    .line 5799
    .local v0, "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_19

    .line 5801
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 5802
    return-void

    .line 5799
    .end local v0    # "clonedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private static onClientDeath(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "attributedOp"    # Lcom/android/server/appop/AppOpsService$AttributedOp;
    .param p1, "clientId"    # Landroid/os/IBinder;

    .line 1480
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onClientDeath(Landroid/os/IBinder;)V

    .line 1481
    return-void
.end method

.method static onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I
    .registers 23
    .param p0, "shell"    # Lcom/android/server/appop/AppOpsService$Shell;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4765
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_b

    .line 4766
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4768
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 4769
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 4771
    .local v4, "err":Ljava/io/PrintWriter;
    const/4 v5, -0x1

    :try_start_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_446

    :cond_1d
    goto :goto_76

    :sswitch_1e
    const-string/jumbo v0, "read-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x5

    goto :goto_77

    :sswitch_29
    const-string/jumbo v0, "start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x6

    goto :goto_77

    :sswitch_34
    const-string/jumbo v0, "reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x3

    goto :goto_77

    :sswitch_3f
    const-string/jumbo v0, "stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x7

    goto :goto_77

    :sswitch_4a
    const-string/jumbo v0, "set"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v7

    goto :goto_77

    :sswitch_55
    const-string/jumbo v0, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v6

    goto :goto_77

    :sswitch_60
    const-string/jumbo v0, "query-op"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x2

    goto :goto_77

    :sswitch_6b
    const-string/jumbo v0, "write-settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x4

    goto :goto_77

    :goto_76
    move v0, v5

    :goto_77
    packed-switch v0, :pswitch_data_468

    .line 5023
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_42d

    .line 5009
    :pswitch_80
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 5010
    .local v0, "res":I
    if-gez v0, :cond_87

    .line 5011
    return v0

    .line 5014
    :cond_87
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_9b

    .line 5015
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 5020
    return v7

    .line 5018
    :cond_9b
    return v5

    .line 4994
    .end local v0    # "res":I
    :pswitch_9c
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 4995
    .restart local v0    # "res":I
    if-gez v0, :cond_a3

    .line 4996
    return v0

    .line 4999
    :cond_a3
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_bd

    .line 5000
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-string v16, "appops start shell command"

    const/16 v17, 0x1

    invoke-interface/range {v8 .. v17}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)I

    .line 5006
    return v7

    .line 5004
    :cond_bd
    return v5

    .line 4982
    .end local v0    # "res":I
    :pswitch_be
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 4983
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 4982
    invoke-direct {v0, v6, v8, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 4984
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_cf} :catch_42e

    .line 4986
    .local v8, "token":J
    :try_start_cf
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 4987
    const-string v0, "Last settings read."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d9
    .catchall {:try_start_cf .. :try_end_d9} :catchall_de

    .line 4989
    :try_start_d9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4990
    nop

    .line 4991
    return v7

    .line 4989
    :catchall_de
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4990
    nop

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "err":Ljava/io/PrintWriter;
    .end local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v0

    .line 4967
    .end local v8    # "token":J
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :pswitch_e4
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 4968
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 4967
    invoke-direct {v0, v6, v8, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 4969
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_f5} :catch_42e

    .line 4971
    .restart local v8    # "token":J
    :try_start_f5
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    monitor-enter v6
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_116

    .line 4972
    :try_start_f8
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v10, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4973
    monitor-exit v6
    :try_end_104
    .catchall {:try_start_f8 .. :try_end_104} :catchall_113

    .line 4974
    :try_start_104
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 4975
    const-string v0, "Current settings written."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_104 .. :try_end_10e} :catchall_116

    .line 4977
    :try_start_10e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_111} :catch_42e

    .line 4978
    nop

    .line 4979
    return v7

    .line 4973
    :catchall_113
    move-exception v0

    :try_start_114
    monitor-exit v6
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "err":Ljava/io/PrintWriter;
    .end local v8    # "token":J
    .end local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1    # "cmd":Ljava/lang/String;
    :try_start_115
    throw v0
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_116

    .line 4977
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local v8    # "token":J
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :catchall_116
    move-exception v0

    :try_start_117
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4978
    nop

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "err":Ljava/io/PrintWriter;
    .end local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .end local p1    # "cmd":Ljava/lang/String;
    throw v0

    .line 4931
    .end local v8    # "token":J
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "err":Ljava/io/PrintWriter;
    .restart local p0    # "shell":Lcom/android/server/appop/AppOpsService$Shell;
    .restart local p1    # "cmd":Ljava/lang/String;
    :pswitch_11c
    const/4 v0, 0x0

    .line 4932
    .local v0, "packageName":Ljava/lang/String;
    const/4 v6, -0x2

    .line 4933
    .local v6, "userId":I
    :goto_11e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "argument":Ljava/lang/String;
    if-eqz v8, :cond_150

    .line 4934
    const-string v8, "--user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_137

    .line 4935
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 4936
    .local v8, "userStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    move v6, v10

    .line 4937
    .end local v8    # "userStr":Ljava/lang/String;
    goto :goto_11e

    .line 4938
    :cond_137
    if-nez v0, :cond_13b

    .line 4939
    move-object v0, v9

    goto :goto_11e

    .line 4941
    :cond_13b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unsupported argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4942
    return v5

    .line 4947
    .end local v9    # "argument":Ljava/lang/String;
    :cond_150
    const/4 v8, -0x2

    if-ne v6, v8, :cond_158

    .line 4948
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    move v6, v8

    .line 4951
    :cond_158
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v8, v6, v0}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 4952
    const-string v8, "Reset all modes for: "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4953
    if-ne v6, v5, :cond_16a

    .line 4954
    const-string v8, "all users"

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_173

    .line 4956
    :cond_16a
    const-string/jumbo v8, "user "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4958
    :goto_173
    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4959
    if-nez v0, :cond_180

    .line 4960
    const-string v8, "all packages"

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_189

    .line 4962
    :cond_180
    const-string/jumbo v8, "package "

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4964
    :goto_189
    return v7

    .line 4903
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    :pswitch_18a
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v0

    .line 4904
    .local v0, "res":I
    if-gez v0, :cond_191

    .line 4905
    return v0

    .line 4907
    :cond_191
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v6, v6, [I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v9, v6, v7

    invoke-interface {v8, v6}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 4909
    .local v6, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_1ed

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_1a6

    goto :goto_1ed

    .line 4913
    :cond_1a6
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1a7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1ec

    .line 4914
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 4915
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    const/4 v10, 0x0

    .line 4916
    .local v10, "hasMatch":Z
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    .line 4917
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1bf
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1e0

    .line 4918
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AppOpsManager$OpEntry;

    .line 4919
    .local v13, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    iget v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-ne v14, v15, :cond_1dd

    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    iget v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-ne v14, v15, :cond_1dd

    .line 4920
    const/4 v10, 0x1

    .line 4921
    goto :goto_1e0

    .line 4917
    .end local v13    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_1dd
    add-int/lit8 v12, v12, 0x1

    goto :goto_1bf

    .line 4924
    .end local v12    # "j":I
    :cond_1e0
    :goto_1e0
    if-eqz v10, :cond_1e9

    .line 4925
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4913
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "hasMatch":Z
    .end local v11    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_1e9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a7

    .line 4928
    .end local v8    # "i":I
    :cond_1ec
    return v7

    .line 4910
    :cond_1ed
    :goto_1ed
    const-string v8, "No operations."

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4911
    return v7

    .line 4805
    .end local v0    # "res":I
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_1f3
    invoke-virtual {v1, v7, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    .line 4806
    .restart local v0    # "res":I
    if-gez v0, :cond_1fa

    .line 4807
    return v0

    .line 4810
    :cond_1fa
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4811
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v9, :cond_237

    .line 4813
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 4815
    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_213

    new-array v12, v6, [I

    iget v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v13, v12, v7

    goto :goto_214

    :cond_213
    move-object v12, v10

    .line 4813
    :goto_214
    invoke-interface {v9, v11, v12}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v9

    .line 4816
    .local v9, "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v9, :cond_21d

    .line 4817
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4819
    :cond_21d
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v13, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 4821
    iget v14, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v14, v5, :cond_22d

    new-array v10, v6, [I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v6, v10, v7

    .line 4819
    :cond_22d
    invoke-interface {v11, v12, v13, v10}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v6

    .line 4822
    .end local v9    # "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v6, "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_236

    .line 4823
    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4825
    .end local v6    # "r":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_236
    goto :goto_24a

    .line 4826
    :cond_237
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v11, v1, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 4828
    iget v12, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v12, v5, :cond_245

    new-array v10, v6, [I

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v6, v10, v7

    .line 4826
    :cond_245
    invoke-interface {v9, v11, v10}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v6

    move-object v8, v6

    .line 4830
    :goto_24a
    if-eqz v8, :cond_39a

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_256

    move-object/from16 v20, v8

    goto/16 :goto_39c

    .line 4838
    :cond_256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 4839
    .local v9, "now":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_25b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_398

    .line 4840
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .line 4841
    .local v11, "packageOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_272

    .line 4842
    const-string v12, "Uid mode: "

    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4844
    :cond_272
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v12

    .line 4845
    .local v12, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_277
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_38d

    .line 4846
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$OpEntry;

    .line 4847
    .local v14, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4848
    const-string v15, ": "

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4849
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v15

    invoke-static {v15}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4850
    iget-object v15, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-wide/16 v16, -0x1

    const/16 v5, 0x1f

    if-nez v15, :cond_30b

    .line 4851
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v18

    cmp-long v15, v18, v16

    if-eqz v15, :cond_2c5

    .line 4852
    const-string v15, "; time="

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4853
    nop

    .line 4854
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v18

    move-object/from16 v20, v8

    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v20, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    sub-long v7, v9, v18

    .line 4853
    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4855
    const-string v7, " ago"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2c7

    .line 4851
    .end local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_2c5
    move-object/from16 v20, v8

    .line 4857
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2c7
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_2e3

    .line 4858
    const-string v7, "; rejectTime="

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4859
    nop

    .line 4860
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v7

    sub-long v7, v9, v7

    .line 4859
    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4861
    const-string v7, " ago"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4863
    :cond_2e3
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_2f1

    .line 4864
    const-string v5, " (running)"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v8, v6

    goto/16 :goto_381

    .line 4865
    :cond_2f1
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_308

    .line 4866
    const-string v7, "; duration="

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4867
    invoke-virtual {v14, v5}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move v8, v6

    goto/16 :goto_381

    .line 4865
    :cond_308
    move v8, v6

    goto/16 :goto_381

    .line 4870
    .end local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_30b
    move-object/from16 v20, v8

    .line 4871
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4872
    .local v7, "attributionEnt":Landroid/app/AppOpsManager$AttributedOpEntry;
    if-eqz v7, :cond_380

    .line 4873
    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v18

    cmp-long v8, v18, v16

    if-eqz v8, :cond_339

    .line 4874
    const-string v8, "; time="

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4875
    nop

    .line 4876
    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v18

    move v8, v6

    .end local v6    # "i":I
    .local v8, "i":I
    sub-long v5, v9, v18

    .line 4875
    invoke-static {v5, v6, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4878
    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_33a

    .line 4873
    .end local v8    # "i":I
    .restart local v6    # "i":I
    :cond_339
    move v8, v6

    .line 4880
    .end local v6    # "i":I
    .restart local v8    # "i":I
    :goto_33a
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v18

    cmp-long v5, v18, v16

    if-eqz v5, :cond_35a

    .line 4881
    const-string v5, "; rejectTime="

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4882
    nop

    .line 4883
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v18

    sub-long v5, v9, v18

    .line 4882
    invoke-static {v5, v6, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4885
    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4887
    :cond_35a
    invoke-virtual {v7}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_366

    .line 4888
    const-string v5, " (running)"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_381

    .line 4889
    :cond_366
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v18

    cmp-long v5, v18, v16

    if-eqz v5, :cond_381

    .line 4891
    const-string v5, "; duration="

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4892
    nop

    .line 4893
    const/16 v5, 0x1f

    invoke-virtual {v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v5

    .line 4892
    invoke-static {v5, v6, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_381

    .line 4872
    .end local v8    # "i":I
    .restart local v6    # "i":I
    :cond_380
    move v8, v6

    .line 4897
    .end local v6    # "i":I
    .end local v7    # "attributionEnt":Landroid/app/AppOpsManager$AttributedOpEntry;
    .restart local v8    # "i":I
    :cond_381
    :goto_381
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 4845
    .end local v14    # "ent":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v13, v13, 0x1

    move v6, v8

    move-object/from16 v8, v20

    const/4 v5, -0x1

    const/4 v7, 0x0

    goto/16 :goto_277

    .end local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "i":I
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_38d
    move-object/from16 v20, v8

    move v8, v6

    .line 4839
    .end local v6    # "i":I
    .end local v11    # "packageOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v12    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v13    # "j":I
    .local v8, "i":I
    .restart local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    add-int/lit8 v6, v8, 0x1

    move-object/from16 v8, v20

    const/4 v5, -0x1

    const/4 v7, 0x0

    .end local v8    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_25b

    .line 4900
    .end local v6    # "i":I
    .end local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v8, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_398
    const/4 v5, 0x0

    return v5

    .line 4830
    .end local v9    # "now":J
    :cond_39a
    move-object/from16 v20, v8

    .line 4831
    .end local v8    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_39c
    const-string v5, "No operations."

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4832
    iget v5, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_3ca

    iget v5, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    const/16 v6, 0x65

    if-ge v5, v6, :cond_3ca

    .line 4833
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 4834
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    .line 4833
    invoke-static {v6}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4836
    :cond_3ca
    const/4 v5, 0x0

    return v5

    .line 4773
    .end local v0    # "res":I
    .end local v20    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :pswitch_3cc
    invoke-virtual {v1, v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v0

    move v5, v0

    .line 4774
    .local v5, "res":I
    if-gez v5, :cond_3d4

    .line 4775
    return v5

    .line 4777
    :cond_3d4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 4778
    .local v6, "modeStr":Ljava/lang/String;
    if-nez v6, :cond_3e2

    .line 4779
    const-string v0, "Error: Mode not specified."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    const/4 v7, -0x1

    return v7

    .line 4783
    :cond_3e2
    invoke-static {v6, v4}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    move v7, v0

    .line 4784
    .local v7, "mode":I
    if-gez v7, :cond_3eb

    .line 4785
    const/4 v8, -0x1

    return v8

    .line 4788
    :cond_3eb
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-nez v0, :cond_3ff

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3ff

    .line 4789
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8, v9, v10, v7}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_42b

    .line 4791
    :cond_3ff
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-eqz v0, :cond_422

    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_405
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_405} :catch_42e

    if-eqz v0, :cond_422

    .line 4793
    :try_start_407
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 4794
    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 4795
    .local v0, "uid":I
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-interface {v8, v9, v0, v7}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_41e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_407 .. :try_end_41e} :catch_41f
    .catch Landroid/os/RemoteException; {:try_start_407 .. :try_end_41e} :catch_42e

    .line 4798
    .end local v0    # "uid":I
    goto :goto_42b

    .line 4796
    :catch_41f
    move-exception v0

    .line 4797
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, -0x1

    return v8

    .line 4800
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_422
    :try_start_422
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v8, v1, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v0, v8, v9, v7}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_42b
    .catch Landroid/os/RemoteException; {:try_start_422 .. :try_end_42b} :catch_42e

    .line 4802
    :goto_42b
    const/4 v0, 0x0

    return v0

    .line 5023
    .end local v5    # "res":I
    .end local v6    # "modeStr":Ljava/lang/String;
    .end local v7    # "mode":I
    :goto_42d
    return v0

    .line 5025
    :catch_42e
    move-exception v0

    .line 5026
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5028
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v5, -0x1

    return v5

    nop

    :sswitch_data_446
    .sparse-switch
        -0x658cadaf -> :sswitch_6b
        -0x458a76fa -> :sswitch_60
        0x18f56 -> :sswitch_55
        0x1bc62 -> :sswitch_4a
        0x360802 -> :sswitch_3f
        0x6761d4f -> :sswitch_34
        0x68ac462 -> :sswitch_29
        0x7c514e7a -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_468
    .packed-switch 0x0
        :pswitch_3cc
        :pswitch_1f3
        :pswitch_18a
        :pswitch_11c
        :pswitch_e4
        :pswitch_be
        :pswitch_9c
        :pswitch_80
    .end packed-switch
.end method

.method private pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V
    .registers 11
    .param p1, "op"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2171
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 2173
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2174
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v0

    .line 2175
    .local v0, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v0, :cond_41

    .line 2176
    iget v1, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Ops;->remove(I)V

    .line 2177
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v1

    if-gtz v1, :cond_41

    .line 2178
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 2179
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2180
    .local v2, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-eqz v2, :cond_41

    .line 2181
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2183
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2185
    :cond_36
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2186
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2192
    .end local v0    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_41
    return-void
.end method

.method private readAttributionOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V
    .registers 30
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p3, "attribution"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4302
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    # invokes: Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-static {v1, v1, v2}, Lcom/android/server/appop/AppOpsService$Op;->access$1000(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v13

    .line 4304
    .local v13, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    const-string/jumbo v3, "n"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 4305
    .local v14, "key":J
    invoke-static {v14, v15}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v12

    .line 4306
    .local v12, "uidState":I
    invoke-static {v14, v15}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v11

    .line 4308
    .local v11, "opFlags":I
    const-string/jumbo v3, "t"

    const-wide/16 v9, 0x0

    invoke-static {v0, v3, v9, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 4309
    .local v16, "accessTime":J
    const-string/jumbo v3, "r"

    invoke-static {v0, v3, v9, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 4310
    .local v6, "rejectTime":J
    const-string v3, "d"

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    .line 4311
    .local v18, "accessDuration":J
    const-string/jumbo v3, "pp"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 4312
    .local v20, "proxyPkg":Ljava/lang/String;
    const-string/jumbo v3, "pu"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    .line 4313
    .local v21, "proxyUid":I
    const-string/jumbo v3, "pc"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4315
    .local v22, "proxyAttributionTag":Ljava/lang/String;
    cmp-long v3, v16, v9

    if-lez v3, :cond_63

    .line 4316
    move-object v3, v13

    move-wide/from16 v4, v16

    move-wide v0, v6

    .end local v6    # "rejectTime":J
    .local v0, "rejectTime":J
    move-wide/from16 v6, v18

    move/from16 v8, v21

    move-wide/from16 v23, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v22

    move/from16 v25, v11

    .end local v11    # "opFlags":I
    .local v25, "opFlags":I
    move v11, v12

    move v2, v12

    .end local v12    # "uidState":I
    .local v2, "uidState":I
    move/from16 v12, v25

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_69

    .line 4315
    .end local v0    # "rejectTime":J
    .end local v2    # "uidState":I
    .end local v25    # "opFlags":I
    .restart local v6    # "rejectTime":J
    .restart local v11    # "opFlags":I
    .restart local v12    # "uidState":I
    :cond_63
    move-wide v0, v6

    move-wide/from16 v23, v9

    move/from16 v25, v11

    move v2, v12

    .line 4319
    .end local v6    # "rejectTime":J
    .end local v11    # "opFlags":I
    .end local v12    # "uidState":I
    .restart local v0    # "rejectTime":J
    .restart local v2    # "uidState":I
    .restart local v25    # "opFlags":I
    :goto_69
    cmp-long v3, v0, v23

    if-lez v3, :cond_73

    .line 4320
    move/from16 v3, v25

    .end local v25    # "opFlags":I
    .local v3, "opFlags":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(JII)V

    goto :goto_75

    .line 4319
    .end local v3    # "opFlags":I
    .restart local v25    # "opFlags":I
    :cond_73
    move/from16 v3, v25

    .line 4322
    .end local v25    # "opFlags":I
    .restart local v3    # "opFlags":I
    :goto_75
    return-void
.end method

.method private readNoteOpCallerStackTraces()V
    .registers 5

    .line 1490
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1491
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1492
    return-void

    .line 1495
    :cond_e
    new-instance v0, Ljava/util/Scanner;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_3d

    .line 1496
    .local v0, "read":Ljava/util/Scanner;
    :try_start_15
    const-string v1, "\\},"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 1497
    :goto_1a
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1498
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 1499
    .local v1, "jsonOps":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->fromJson(Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_33

    .line 1500
    nop

    .end local v1    # "jsonOps":Ljava/lang/String;
    goto :goto_1a

    .line 1501
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_3d

    .line 1504
    .end local v0    # "read":Ljava/util/Scanner;
    goto :goto_45

    .line 1495
    .restart local v0    # "read":Ljava/util/Scanner;
    :catchall_33
    move-exception v1

    :try_start_34
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v2

    :try_start_39
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :goto_3c
    throw v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_3d

    .line 1502
    .end local v0    # "read":Ljava/util/Scanner;
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catch_3d
    move-exception v0

    .line 1503
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppOps"

    const-string v2, "Cannot parse traces noteOps"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1505
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_45
    return-void
.end method

.method private readOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4327
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4328
    .local v0, "opCode":I
    new-instance v7, Lcom/android/server/appop/AppOpsService$Op;

    iget v6, p2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 4330
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 4331
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    .line 4330
    const-string/jumbo v3, "m"

    invoke-static {p1, v3, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 4332
    .local v2, "mode":I
    # setter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v1, v2}, Lcom/android/server/appop/AppOpsService$Op;->access$302(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 4334
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4336
    .local v3, "outerDepth":I
    :cond_2c
    :goto_2c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_79

    const/4 v4, 0x3

    if-ne v5, v4, :cond_3d

    .line 4337
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_79

    .line 4338
    :cond_3d
    if-eq v5, v4, :cond_2c

    const/4 v4, 0x4

    if-ne v5, v4, :cond_43

    .line 4339
    goto :goto_2c

    .line 4341
    :cond_43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4342
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "st"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 4343
    const-string/jumbo v6, "id"

    invoke-static {p1, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v1, v6}, Lcom/android/server/appop/AppOpsService;->readAttributionOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V

    goto :goto_78

    .line 4345
    :cond_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <op>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4346
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4345
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4349
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_78
    goto :goto_2c

    .line 4351
    :cond_79
    iget-object v4, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_84

    .line 4352
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 4354
    :cond_84
    iget-object v4, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4355
    .local v4, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v4, :cond_99

    .line 4356
    new-instance v6, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v6, p3, p2}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    move-object v4, v6

    .line 4357
    iget-object v6, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, p3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4359
    :cond_99
    iget v6, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v4, v6, v1}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 4360
    return-void
.end method

.method private readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4257
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4258
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 4260
    .local v1, "outerDepth":I
    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_52

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1d

    .line 4261
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_52

    .line 4262
    :cond_1d
    if-eq v3, v2, :cond_c

    const/4 v2, 0x4

    if-ne v3, v2, :cond_23

    .line 4263
    goto :goto_c

    .line 4266
    :cond_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4267
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 4268
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_51

    .line 4270
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <pkg>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4271
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4270
    const-string v5, "AppOps"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4274
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_51
    goto :goto_c

    .line 4275
    :cond_52
    return-void
.end method

.method private readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4279
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4280
    .local v0, "uid":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    .line 4281
    .local v2, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4283
    .local v3, "outerDepth":I
    :cond_15
    :goto_15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    if-eq v4, v1, :cond_5a

    const/4 v4, 0x3

    if-ne v5, v4, :cond_25

    .line 4284
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_5a

    .line 4285
    :cond_25
    if-eq v5, v4, :cond_15

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2b

    .line 4286
    goto :goto_15

    .line 4288
    :cond_2b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4289
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "op"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 4290
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/appop/AppOpsService;->readOp(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V

    goto :goto_59

    .line 4292
    :cond_3c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <pkg>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4293
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4292
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4296
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_59
    goto :goto_15

    .line 4297
    :cond_5a
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 4298
    return-void
.end method

.method private readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4233
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4234
    .local v2, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4236
    .local v3, "outerDepth":I
    :cond_10
    :goto_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_69

    const/4 v4, 0x3

    if-ne v5, v4, :cond_21

    .line 4237
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_69

    .line 4238
    :cond_21
    if-eq v5, v4, :cond_10

    const/4 v4, 0x4

    if-ne v5, v4, :cond_27

    .line 4239
    goto :goto_10

    .line 4242
    :cond_27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4243
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "op"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 4244
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4245
    .local v6, "code":I
    const-string/jumbo v7, "m"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4246
    .local v7, "mode":I
    invoke-virtual {p0, v6, v2, v7}, Lcom/android/server/appop/AppOpsService;->setUidMode(III)V

    .line 4247
    .end local v6    # "code":I
    .end local v7    # "mode":I
    goto :goto_68

    .line 4248
    :cond_4b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <uid-ops>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4249
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4248
    const-string v7, "AppOps"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4252
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_68
    goto :goto_10

    .line 4253
    :cond_69
    return-void
.end method

.method private removeUidsForUserLocked(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 6144
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 6145
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 6146
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 6147
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 6144
    .end local v1    # "uid":I
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 6150
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method private reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opCode"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 5951
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 5952
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 5953
    return-void

    .line 5955
    :cond_c
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 5957
    return-void
.end method

.method private reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opCode"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 5966
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/16 v1, 0x65

    invoke-static {p3, v0, v1}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    move-result v0

    .line 5969
    .local v0, "newLeftDistance":I
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    if-ge v1, v0, :cond_d

    .line 5970
    return-void

    .line 5973
    :cond_d
    if-le v1, v0, :cond_14

    .line 5974
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 5975
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 5978
    :cond_14
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 5979
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v1

    iget v3, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_39

    .line 5980
    new-instance v1, Landroid/app/RuntimeAppOpAccessMessage;

    iget v8, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    move-object v2, v1

    move v3, p1

    move v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Landroid/app/RuntimeAppOpAccessMessage;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 5983
    :cond_39
    return-void
.end method

.method private resampleAppOpForPackageLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6042
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 6043
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    .line 6044
    iput v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 6045
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    .line 6046
    return-void
.end method

.method private resamplePackageAndAppOpLocked(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6033
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 6034
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 6035
    nop

    .line 6036
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    .line 6035
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;)V

    .line 6038
    :cond_1f
    return-void
.end method

.method private static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6160
    if-nez p0, :cond_6

    .line 6161
    const-string/jumbo v0, "root"

    return-object v0

    .line 6162
    :cond_6
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_d

    .line 6163
    const-string v0, "com.android.shell"

    return-object v0

    .line 6164
    :cond_d
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_15

    .line 6165
    const-string/jumbo v0, "media"

    return-object v0

    .line 6166
    :cond_15
    const/16 v0, 0x411

    if-ne p0, v0, :cond_1c

    .line 6167
    const-string v0, "audioserver"

    return-object v0

    .line 6168
    :cond_1c
    const/16 v0, 0x417

    if-ne p0, v0, :cond_23

    .line 6169
    const-string v0, "cameraserver"

    return-object v0

    .line 6170
    :cond_23
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2c

    if-nez p1, :cond_2c

    .line 6171
    const-string v0, "android"

    return-object v0

    .line 6173
    :cond_2c
    return-object p1
.end method

.method private static resolveUid(Ljava/lang/String;)I
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;

    .line 6177
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 6178
    return v0

    .line 6180
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_60

    :cond_10
    goto :goto_46

    :sswitch_11
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v4

    goto :goto_47

    :sswitch_1b
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v6

    goto :goto_47

    :sswitch_26
    const-string/jumbo v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v5

    goto :goto_47

    :sswitch_31
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_47

    :sswitch_3c
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_47

    :goto_46
    move v1, v0

    :goto_47
    if-eqz v1, :cond_5e

    if-eq v1, v6, :cond_5b

    if-eq v1, v5, :cond_58

    if-eq v1, v4, :cond_55

    if-eq v1, v3, :cond_52

    .line 6192
    return v0

    .line 6190
    :cond_52
    const/16 v0, 0x417

    return v0

    .line 6188
    :cond_55
    const/16 v0, 0x411

    return v0

    .line 6186
    :cond_58
    const/16 v0, 0x3f5

    return v0

    .line 6184
    :cond_5b
    const/16 v0, 0x7d0

    return v0

    .line 6182
    :cond_5e
    return v2

    nop

    :sswitch_data_60
    .sparse-switch
        -0x1dbbd58 -> :sswitch_3c
        0x3580e2 -> :sswitch_31
        0x62f6fe4 -> :sswitch_26
        0x6855e30 -> :sswitch_1b
        0x50251299 -> :sswitch_11
    .end sparse-switch
.end method

.method private scheduleFastWriteLocked()V
    .registers 5

    .line 4021
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_19

    .line 4022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 4023
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 4024
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4025
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4027
    :cond_19
    return-void
.end method

.method private scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Z)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 3582
    const/4 v0, 0x0

    .line 3583
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3584
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_31

    .line 3585
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3586
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    .line 3587
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    if-eqz v4, :cond_2e

    .line 3588
    iget v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-ltz v5, :cond_23

    iget v5, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_23

    .line 3589
    goto :goto_2e

    .line 3591
    :cond_23
    if-nez v0, :cond_2b

    .line 3592
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 3594
    :cond_2b
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3584
    .end local v3    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3597
    .end local v2    # "i":I
    :cond_31
    if-nez v0, :cond_34

    .line 3598
    return-void

    .line 3600
    :cond_34
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ;

    .line 3602
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 3600
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3603
    return-void
.end method

.method private scheduleOpNotedIfNeededLocked(IILjava/lang/String;I)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "result"    # I

    .line 3674
    const/4 v0, 0x0

    .line 3675
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3676
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_31

    .line 3677
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3678
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 3679
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    if-eqz v4, :cond_2e

    .line 3680
    iget v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-ltz v5, :cond_23

    iget v5, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_23

    .line 3681
    goto :goto_2e

    .line 3683
    :cond_23
    if-nez v0, :cond_2b

    .line 3684
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 3686
    :cond_2b
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3676
    .end local v3    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3689
    .end local v2    # "i":I
    :cond_31
    if-nez v0, :cond_34

    .line 3690
    return-void

    .line 3692
    :cond_34
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$AfBLuTvVESlqN91IyRX84hMV5nE;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$AfBLuTvVESlqN91IyRX84hMV5nE;

    .line 3694
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3692
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3695
    return-void
.end method

.method private scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V
    .registers 15
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "result"    # I

    .line 3627
    const/4 v0, 0x0

    .line 3628
    .local v0, "dispatchedCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3629
    .local v1, "callbackListCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_31

    .line 3630
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3632
    .local v3, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$StartedCallback;

    .line 3633
    .local v4, "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    if-eqz v4, :cond_2e

    .line 3634
    iget v5, v4, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    if-ltz v5, :cond_23

    iget v5, v4, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    if-eq v5, p2, :cond_23

    .line 3635
    goto :goto_2e

    .line 3638
    :cond_23
    if-nez v0, :cond_2b

    .line 3639
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 3641
    :cond_2b
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3629
    .end local v3    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v4    # "callback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3645
    .end local v2    # "i":I
    :cond_31
    if-nez v0, :cond_34

    .line 3646
    return-void

    .line 3649
    :cond_34
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$7TpfX4NXXUoI4jqIGxhEk65lHLs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$7TpfX4NXXUoI4jqIGxhEk65lHLs;

    .line 3651
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3649
    move-object v4, p0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3652
    return-void
.end method

.method private scheduleWriteLocked()V
    .registers 5

    .line 4014
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_11

    .line 4015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 4016
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4018
    :cond_11
    return-void
.end method

.method private setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 22
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "permissionPolicyCallback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2478
    move-object/from16 v13, p0

    move/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v12, p4

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_47

    .line 2479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode() uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " := "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2479
    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :cond_47
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v13, v0, v1, v14}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2483
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2485
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->isModeChangeAllowedForCode(I)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 2487
    return-void

    .line 2490
    :cond_5c
    const/4 v8, 0x0

    .line 2491
    .local v8, "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v11

    .line 2495
    .end local p1    # "code":I
    .local v11, "code":I
    const/4 v0, 0x0

    :try_start_62
    invoke-direct {v13, v14, v15, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v6
    :try_end_66
    .catch Ljava/lang/SecurityException; {:try_start_62 .. :try_end_66} :catch_10e

    .line 2499
    .local v6, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    nop

    .line 2501
    monitor-enter p0

    .line 2502
    const/4 v0, 0x0

    :try_start_69
    invoke-direct {v13, v14, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 2503
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move v2, v11

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_107

    .line 2504
    .local v1, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v1, :cond_dc

    .line 2505
    :try_start_7c
    # getter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    if-eq v2, v12, :cond_dc

    .line 2506
    # setter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v1, v12}, Lcom/android/server/appop/AppOpsService$Op;->access$302(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 2507
    if-eqz v0, :cond_8c

    .line 2508
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2510
    :cond_8c
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2511
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v2, :cond_a1

    .line 2512
    if-nez v8, :cond_9e

    .line 2513
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v3

    .line 2515
    :cond_9e
    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2517
    :cond_a1
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move-object v2, v3

    .line 2518
    if-eqz v2, :cond_b7

    .line 2519
    if-nez v8, :cond_b4

    .line 2520
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v3

    .line 2522
    :cond_b4
    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2524
    :cond_b7
    if-eqz v8, :cond_c8

    if-eqz p5, :cond_c8

    .line 2525
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p5 .. p5}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2527
    :cond_c8
    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-ne v12, v3, :cond_d3

    .line 2530
    invoke-direct {v13, v1, v14, v15}, Lcom/android/server/appop/AppOpsService;->pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    .line 2532
    :cond_d3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_d6
    .catchall {:try_start_7c .. :try_end_d6} :catchall_d8

    move-object v1, v8

    goto :goto_dd

    .line 2535
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :catchall_d8
    move-exception v0

    move v3, v11

    move v2, v12

    goto :goto_10a

    :cond_dc
    move-object v1, v8

    .end local v8    # "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v1, "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :goto_dd
    :try_start_dd
    monitor-exit p0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_102

    .line 2536
    if-eqz v1, :cond_fc

    .line 2537
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v7, Lcom/android/server/appop/-$$Lambda$AppOpsService$NDUi03ZZuuR42-RDEIQ0UELKycc;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$NDUi03ZZuuR42-RDEIQ0UELKycc;

    .line 2539
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2537
    move-object/from16 v8, p0

    move-object v9, v1

    move v3, v11

    .end local v11    # "code":I
    .local v3, "code":I
    move-object v11, v2

    move v2, v12

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_fe

    .line 2536
    .end local v3    # "code":I
    .restart local v11    # "code":I
    :cond_fc
    move v3, v11

    move v2, v12

    .line 2542
    .end local v11    # "code":I
    .restart local v3    # "code":I
    :goto_fe
    invoke-direct {v13, v3, v14, v15, v2}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 2543
    return-void

    .line 2535
    .end local v3    # "code":I
    .restart local v11    # "code":I
    :catchall_102
    move-exception v0

    move v3, v11

    move v2, v12

    move-object v8, v1

    .end local v11    # "code":I
    .restart local v3    # "code":I
    goto :goto_10a

    .end local v1    # "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v3    # "code":I
    .restart local v8    # "repCbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v11    # "code":I
    :catchall_107
    move-exception v0

    move v3, v11

    move v2, v12

    .end local v11    # "code":I
    .restart local v3    # "code":I
    :goto_10a
    :try_start_10a
    monitor-exit p0
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_10c

    throw v0

    :catchall_10c
    move-exception v0

    goto :goto_10a

    .line 2496
    .end local v3    # "code":I
    .end local v6    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .restart local v11    # "code":I
    :catch_10e
    move-exception v0

    move v3, v11

    move v2, v12

    move-object v1, v0

    .end local v11    # "code":I
    .restart local v3    # "code":I
    move-object v0, v1

    .line 2497
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v4, "Cannot setMode"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2498
    return-void
.end method

.method private setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V
    .registers 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .param p4, "permissionPolicyCallback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2219
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_3f

    .line 2220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " := "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2220
    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2225
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2226
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 2228
    if-nez p4, :cond_56

    .line 2229
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/appop/AppOpsService;->updatePermissionRevokedCompat(III)V

    .line 2232
    :cond_56
    monitor-enter p0

    .line 2233
    :try_start_57
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 2235
    .local v0, "defaultMode":I
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    .line 2236
    .local v2, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    const/4 v3, 0x0

    if-nez v2, :cond_82

    .line 2237
    if-ne p3, v0, :cond_67

    .line 2238
    monitor-exit p0

    return-void

    .line 2240
    :cond_67
    new-instance v4, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v4, p0, p2}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    move-object v2, v4

    .line 2241
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2242
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2243
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2244
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_c4

    .line 2245
    :cond_82
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v4, :cond_98

    .line 2246
    if-eq p3, v0, :cond_c4

    .line 2247
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2248
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2249
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_c4

    .line 2252
    :cond_98
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_aa

    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne v4, p3, :cond_aa

    .line 2253
    monitor-exit p0

    return-void

    .line 2255
    :cond_aa
    if-ne p3, v0, :cond_bc

    .line 2256
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2257
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_c1

    .line 2258
    iput-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    goto :goto_c1

    .line 2261
    :cond_bc
    iget-object v4, v2, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2263
    :cond_c1
    :goto_c1
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    .line 2265
    :cond_c4
    :goto_c4
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2266
    .end local v0    # "defaultMode":I
    .end local v2    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_57 .. :try_end_ca} :catchall_d1

    .line 2268
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V

    .line 2269
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 2270
    return-void

    .line 2266
    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v0
.end method

.method private setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 5767
    monitor-enter p0

    .line 5768
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_45

    .line 5770
    .local v0, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    if-nez v0, :cond_1b

    .line 5772
    :try_start_b
    new-instance v1, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    invoke-direct {v1, p0, p3}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_18
    .catchall {:try_start_b .. :try_end_10} :catchall_45

    move-object v0, v1

    .line 5775
    nop

    .line 5776
    :try_start_12
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 5773
    :catch_18
    move-exception v1

    .line 5774
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit p0

    return-void

    .line 5779
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->setRestriction(IZ[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 5780
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 5781
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5780
    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5784
    :cond_35
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 5785
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5786
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->destroy()V

    .line 5788
    .end local v0    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_43
    monitor-exit p0

    .line 5789
    return-void

    .line 5788
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private shouldDeferResetOpToDpm(I)Z
    .registers 3
    .param p1, "op"    # I

    .line 2773
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->supportsResetOp(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6008
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_19

    .line 6009
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_38

    .line 6010
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 6011
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;)V

    goto :goto_38

    .line 6013
    :cond_19
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6014
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6015
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_38

    .line 6016
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 6017
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;)V

    .line 6020
    :cond_38
    :goto_38
    return-void
.end method

.method private updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .registers 9
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 3857
    .local p1, "uidPackageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    monitor-enter p0

    .line 3858
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_25

    .line 3859
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3860
    .local v2, "uid":I
    invoke-direct {p0, v2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v3

    .line 3861
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v3, :cond_22

    iget-boolean v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    if-eq v4, p2, :cond_22

    .line 3862
    iput-boolean p2, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    .line 3863
    iget-boolean v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    iget-boolean v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    if-eq v4, v5, :cond_22

    .line 3864
    invoke-direct {p0, v3}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 3858
    .end local v2    # "uid":I
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 3868
    .end local v0    # "i":I
    :cond_25
    monitor-exit p0

    .line 3869
    return-void

    .line 3868
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private updatePendingState(JI)V
    .registers 6
    .param p1, "currentTime"    # J
    .param p3, "uid"    # I

    .line 1848
    monitor-enter p0

    .line 1849
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 1850
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 1851
    monitor-exit p0

    .line 1852
    return-void

    .line 1851
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .registers 6
    .param p1, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;

    .line 3783
    if-eqz p1, :cond_27

    .line 3784
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    .line 3785
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 3786
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    goto :goto_27

    .line 3788
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 3789
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    .line 3790
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 3795
    :cond_27
    :goto_27
    return-void
.end method

.method private updatePermissionRevokedCompat(III)V
    .registers 36
    .param p1, "uid"    # I
    .param p2, "switchCode"    # I
    .param p3, "mode"    # I

    .line 2357
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v0, 0x0

    .line 2358
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-boolean v5, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsPublished:Z

    if-eqz v5, :cond_1ad

    .line 2359
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2364
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_16

    .line 2367
    return-void

    .line 2370
    :cond_16
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 2371
    .local v12, "packageNames":[Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2372
    return-void

    .line 2374
    :cond_21
    const/4 v13, 0x0

    aget-object v14, v12, v13

    .line 2376
    .local v14, "packageName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [I

    .line 2377
    .local v15, "ops":[I
    array-length v11, v15

    move v10, v13

    :goto_2f
    if-ge v10, v11, :cond_1ac

    aget v16, v15, v10

    .line 2378
    .local v16, "code":I
    invoke-static/range {v16 .. v16}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v9

    .line 2379
    .local v9, "permissionName":Ljava/lang/String;
    if-nez v9, :cond_43

    .line 2380
    move/from16 v21, v10

    move/from16 v27, v11

    move-object/from16 v22, v12

    move-object/from16 v31, v15

    goto/16 :goto_19f

    .line 2383
    :cond_43
    invoke-virtual {v5, v9, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_53

    .line 2385
    move/from16 v21, v10

    move/from16 v27, v11

    move-object/from16 v22, v12

    move-object/from16 v31, v15

    goto/16 :goto_19f

    .line 2390
    :cond_53
    :try_start_53
    invoke-virtual {v5, v9, v13}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_57} :catch_18f

    move-object v8, v0

    .line 2394
    .local v8, "permissionInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 2396
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_69

    .line 2397
    move/from16 v21, v10

    move/from16 v27, v11

    move-object/from16 v22, v12

    move-object/from16 v31, v15

    goto/16 :goto_19f

    .line 2400
    :cond_69
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 2402
    .local v7, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v6, 0x17

    const/16 v17, 0x1

    if-lt v0, v6, :cond_7f

    move/from16 v0, v17

    goto :goto_80

    :cond_7f
    move v0, v13

    :goto_80
    move/from16 v18, v0

    .line 2405
    .local v18, "supportsRuntimePermissions":Z
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v19

    .line 2407
    .local v19, "user":Landroid/os/UserHandle;
    iget-object v0, v8, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    const/16 v20, 0x8

    const-string v6, ", permission="

    const-string v13, ", mode="

    move-object/from16 v21, v9

    .end local v9    # "permissionName":Ljava/lang/String;
    .local v21, "permissionName":Ljava/lang/String;
    const-string v9, ", switchCode="

    const-string/jumbo v1, "setUidMode() called with a mode inconsistent with runtime permission state, this is discouraged and you should revoke the runtime permission instead: uid="

    move-object/from16 v22, v12

    .end local v12    # "packageNames":[Ljava/lang/String;
    .local v22, "packageNames":[Ljava/lang/String;
    const-string v12, "AppOps"

    if-eqz v0, :cond_131

    .line 2408
    iget-object v0, v8, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v5, v0, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_117

    .line 2410
    if-eqz v4, :cond_a8

    move/from16 v0, v17

    goto :goto_a9

    :cond_a8
    const/4 v0, 0x0

    :goto_a9
    move/from16 v23, v0

    .line 2412
    .local v23, "isBackgroundRevokedCompat":Z
    if-eqz v23, :cond_d8

    if-eqz v18, :cond_d8

    .line 2413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v6

    iget-object v6, v8, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    .line 2412
    :cond_d8
    move-object/from16 v24, v6

    .line 2420
    :goto_da
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v25

    .line 2422
    .local v25, "identity":J
    :try_start_de
    iget-object v0, v8, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;
    :try_end_e0
    .catchall {:try_start_de .. :try_end_e0} :catchall_10a

    const/16 v27, 0x8

    .line 2424
    if-eqz v23, :cond_e7

    .line 2425
    move/from16 v28, v20

    goto :goto_e9

    :cond_e7
    const/16 v28, 0x0

    .line 2422
    :goto_e9
    move-object/from16 v29, v24

    move-object v6, v5

    move-object/from16 v24, v7

    .end local v7    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .local v24, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    move-object v7, v0

    move-object/from16 v30, v8

    .end local v8    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v30, "permissionInfo":Landroid/content/pm/PermissionInfo;
    move-object v8, v14

    move-object v0, v9

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    .end local v21    # "permissionName":Ljava/lang/String;
    .local v15, "permissionName":Ljava/lang/String;
    .local v31, "ops":[I
    move/from16 v9, v27

    move/from16 v21, v10

    move/from16 v10, v28

    move/from16 v27, v11

    move-object/from16 v11, v19

    :try_start_101
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_104
    .catchall {:try_start_101 .. :try_end_104} :catchall_108

    .line 2427
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2428
    goto :goto_126

    .line 2427
    :catchall_108
    move-exception v0

    goto :goto_113

    .end local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v31    # "ops":[I
    .restart local v7    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v8    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v15, "ops":[I
    .restart local v21    # "permissionName":Ljava/lang/String;
    :catchall_10a
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    .end local v7    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v8    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v21    # "permissionName":Ljava/lang/String;
    .local v15, "permissionName":Ljava/lang/String;
    .restart local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v31    # "ops":[I
    :goto_113
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2428
    throw v0

    .line 2408
    .end local v23    # "isBackgroundRevokedCompat":Z
    .end local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v25    # "identity":J
    .end local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v31    # "ops":[I
    .restart local v7    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v8    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v15, "ops":[I
    .restart local v21    # "permissionName":Ljava/lang/String;
    :cond_117
    move-object/from16 v29, v6

    move-object/from16 v24, v7

    move-object/from16 v30, v8

    move-object v0, v9

    move/from16 v27, v11

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    move/from16 v21, v10

    .line 2431
    .end local v7    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v8    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v21    # "permissionName":Ljava/lang/String;
    .local v15, "permissionName":Ljava/lang/String;
    .restart local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v31    # "ops":[I
    :goto_126
    if-eqz v4, :cond_12c

    const/4 v6, 0x4

    if-eq v4, v6, :cond_12c

    goto :goto_12e

    :cond_12c
    const/16 v17, 0x0

    :goto_12e
    move/from16 v6, v17

    .local v6, "isRevokedCompat":Z
    goto :goto_147

    .line 2434
    .end local v6    # "isRevokedCompat":Z
    .end local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v31    # "ops":[I
    .restart local v7    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v8    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v15, "ops":[I
    .restart local v21    # "permissionName":Ljava/lang/String;
    :cond_131
    move-object/from16 v29, v6

    move-object/from16 v24, v7

    move-object/from16 v30, v8

    move-object v0, v9

    move/from16 v27, v11

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    move/from16 v21, v10

    .end local v7    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v8    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v21    # "permissionName":Ljava/lang/String;
    .local v15, "permissionName":Ljava/lang/String;
    .restart local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local v31    # "ops":[I
    if-eqz v4, :cond_143

    goto :goto_145

    :cond_143
    const/16 v17, 0x0

    :goto_145
    move/from16 v6, v17

    .line 2437
    .local v17, "isRevokedCompat":Z
    :goto_147
    if-eqz v17, :cond_171

    if-eqz v18, :cond_171

    .line 2438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2446
    .local v12, "identity":J
    const/16 v9, 0x8

    .line 2447
    if-eqz v17, :cond_17c

    .line 2448
    move/from16 v10, v20

    goto :goto_17d

    :cond_17c
    const/4 v10, 0x0

    .line 2446
    :goto_17d
    move-object v6, v5

    move-object v7, v15

    move-object v8, v14

    move-object/from16 v11, v19

    :try_start_182
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_185
    .catchall {:try_start_182 .. :try_end_185} :catchall_189

    .line 2450
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2451
    goto :goto_19f

    .line 2450
    :catchall_189
    move-exception v0

    move-object v1, v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2451
    throw v1

    .line 2391
    .end local v17    # "isRevokedCompat":Z
    .end local v18    # "supportsRuntimePermissions":Z
    .end local v19    # "user":Landroid/os/UserHandle;
    .end local v22    # "packageNames":[Ljava/lang/String;
    .end local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v30    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v31    # "ops":[I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .local v12, "packageNames":[Ljava/lang/String;
    .local v15, "ops":[I
    :catch_18f
    move-exception v0

    move/from16 v21, v10

    move/from16 v27, v11

    move-object/from16 v22, v12

    move-object/from16 v31, v15

    move-object v15, v9

    move-object v1, v0

    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v12    # "packageNames":[Ljava/lang/String;
    .local v15, "permissionName":Ljava/lang/String;
    .restart local v22    # "packageNames":[Ljava/lang/String;
    .restart local v31    # "ops":[I
    move-object v0, v1

    .line 2392
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2393
    nop

    .line 2377
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "permissionName":Ljava/lang/String;
    .end local v16    # "code":I
    :goto_19f
    add-int/lit8 v10, v21, 0x1

    move-object/from16 v1, p0

    move-object/from16 v12, v22

    move/from16 v11, v27

    move-object/from16 v15, v31

    const/4 v13, 0x0

    goto/16 :goto_2f

    .line 2453
    .end local v22    # "packageNames":[Ljava/lang/String;
    .end local v31    # "ops":[I
    .restart local v12    # "packageNames":[Ljava/lang/String;
    .local v15, "ops":[I
    :cond_1ac
    return-void

    .line 2361
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v12    # "packageNames":[Ljava/lang/String;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "ops":[I
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :cond_1ad
    return-void
.end method

.method private upgradeLocked(I)V
    .registers 5
    .param p1, "oldVersion"    # I

    .line 4217
    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    .line 4218
    return-void

    .line 4220
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading app-ops xml from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    const/4 v0, -0x1

    if-eq p1, v0, :cond_26

    goto :goto_29

    .line 4223
    :cond_26
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    .line 4228
    :goto_29
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 4229
    return-void
.end method

.method private upgradeRunAnyInBackgroundLocked()V
    .registers 17

    .line 4181
    move-object/from16 v6, p0

    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_4
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_8f

    .line 4182
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/appop/AppOpsService$UidState;

    .line 4183
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v8, :cond_19

    .line 4184
    goto/16 :goto_8b

    .line 4186
    :cond_19
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v9, 0x46

    const/16 v10, 0x3f

    if-eqz v0, :cond_34

    .line 4187
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 4188
    .local v0, "idx":I
    if-ltz v0, :cond_34

    .line 4189
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4190
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 4189
    invoke-virtual {v1, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4193
    .end local v0    # "idx":I
    :cond_34
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_39

    .line 4194
    goto :goto_8b

    .line 4196
    :cond_39
    const/4 v0, 0x0

    .line 4197
    .local v0, "changed":Z
    const/4 v1, 0x0

    move v11, v0

    move v12, v1

    .end local v0    # "changed":Z
    .local v11, "changed":Z
    .local v12, "j":I
    :goto_3d
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v12, v0, :cond_84

    .line 4198
    iget-object v0, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/appop/AppOpsService$Ops;

    .line 4199
    .local v13, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v13, :cond_81

    .line 4200
    invoke-virtual {v13, v10}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/appop/AppOpsService$Op;

    .line 4201
    .local v14, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v14, :cond_81

    # getter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    iget v1, v14, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    if-eq v0, v1, :cond_81

    .line 4202
    new-instance v15, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v2, v14, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v3, v14, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    const/16 v4, 0x46

    iget v5, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 4204
    .local v0, "copy":Lcom/android/server/appop/AppOpsService$Op;
    # getter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    # setter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v0, v1}, Lcom/android/server/appop/AppOpsService$Op;->access$302(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 4205
    invoke-virtual {v13, v9, v0}, Lcom/android/server/appop/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 4206
    const/4 v1, 0x1

    move v11, v1

    .line 4197
    .end local v0    # "copy":Lcom/android/server/appop/AppOpsService$Op;
    .end local v13    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v14    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_81
    add-int/lit8 v12, v12, 0x1

    goto :goto_3d

    .line 4210
    .end local v12    # "j":I
    :cond_84
    if-eqz v11, :cond_8b

    .line 4211
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 4181
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v11    # "changed":Z
    :cond_8b
    :goto_8b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 4214
    .end local v7    # "i":I
    :cond_8f
    return-void
.end method

.method private verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;
    .registers 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 3897
    if-nez p1, :cond_4

    .line 3899
    const/4 v0, 0x0

    return-object v0

    .line 3903
    :cond_4
    monitor-enter p0

    .line 3904
    :try_start_5
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 3905
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v0, :cond_2f

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2f

    .line 3906
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    .line 3908
    .local v1, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v1, :cond_2f

    if-eqz p3, :cond_27

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_27
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    if-eqz v2, :cond_2f

    .line 3910
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    monitor-exit p0

    return-object v2

    .line 3913
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_e3

    .line 3915
    const/4 v0, 0x0

    .line 3916
    .local v0, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3919
    .local v1, "ident":J
    :try_start_35
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 3921
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v4, 0x0

    .line 3923
    .local v4, "isAttributionTagValid":Z
    if-eqz v3, :cond_86

    .line 3924
    if-nez p3, :cond_48

    .line 3925
    const/4 v4, 0x1

    goto :goto_6f

    .line 3927
    :cond_48
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6f

    .line 3928
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 3929
    .local v5, "numAttributions":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_57
    if-ge v6, v5, :cond_6f

    .line 3930
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/parsing/component/ParsedAttribution;

    iget-object v7, v7, Landroid/content/pm/parsing/component/ParsedAttribution;->tag:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 3931
    const/4 v4, 0x1

    .line 3929
    :cond_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .line 3937
    .end local v5    # "numAttributions":I
    .end local v6    # "i":I
    :cond_6f
    :goto_6f
    nop

    .line 3938
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 3937
    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 3939
    .local v5, "pkgUid":I
    invoke-direct {p0, v3}, Lcom/android/server/appop/AppOpsService;->getBypassforPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v6

    move-object v0, v6

    goto :goto_90

    .line 3942
    .end local v5    # "pkgUid":I
    :cond_86
    const/4 v4, 0x1

    .line 3944
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v5

    .line 3945
    .restart local v5    # "pkgUid":I
    if-ltz v5, :cond_90

    .line 3946
    sget-object v6, Landroid/app/AppOpsManager$RestrictionBypass;->UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;

    move-object v0, v6

    .line 3949
    :cond_90
    :goto_90
    if-ne v5, p1, :cond_b7

    .line 3954
    if-nez v4, :cond_b2

    .line 3956
    const-string v6, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attributionTag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " not declared in manifest of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_35 .. :try_end_b2} :catchall_de

    .line 3960
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "isAttributionTagValid":Z
    .end local v5    # "pkgUid":I
    :cond_b2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3961
    nop

    .line 3963
    return-object v0

    .line 3950
    .restart local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v4    # "isAttributionTagValid":Z
    .restart local v5    # "pkgUid":I
    :cond_b7
    :try_start_b7
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Specified package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " under uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " but it is really "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    throw v6
    :try_end_de
    .catchall {:try_start_b7 .. :try_end_de} :catchall_de

    .line 3960
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "isAttributionTagValid":Z
    .end local v5    # "pkgUid":I
    .restart local v0    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    :catchall_de
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3961
    throw v3

    .line 3913
    .end local v0    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .end local v1    # "ident":J
    :catchall_e3
    move-exception v0

    :try_start_e4
    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw v0
.end method

.method private verifyIncomingOp(I)V
    .registers 5
    .param p1, "op"    # I

    .line 3757
    if-ltz p1, :cond_7

    const/16 v0, 0x65

    if-ge p1, v0, :cond_7

    .line 3758
    return-void

    .line 3760
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 3746
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 3747
    return-void

    .line 3749
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 3750
    return-void

    .line 3752
    :cond_12
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 3753
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 3752
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 3754
    return-void
.end method

.method private writeNoteOps()V
    .registers 6

    .line 6399
    monitor-enter p0

    .line 6400
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteNoteOpsScheduled:Z

    .line 6401
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_4b

    .line 6402
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    monitor-enter v0

    .line 6403
    :try_start_8
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_3f
    .catchall {:try_start_8 .. :try_end_f} :catchall_3d

    .line 6404
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_f
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 6405
    .local v2, "numTraces":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_2f

    .line 6407
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->asJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 6410
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33

    .line 6405
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 6412
    .end local v2    # "numTraces":I
    .end local v3    # "i":I
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3f
    .catchall {:try_start_2f .. :try_end_32} :catchall_3d

    .line 6414
    .end local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_47

    .line 6403
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :catchall_33
    move-exception v2

    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v3

    :try_start_39
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :goto_3c
    throw v2
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_3f
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    .line 6415
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_3d
    move-exception v1

    goto :goto_49

    .line 6412
    :catch_3f
    move-exception v1

    .line 6413
    .local v1, "e":Ljava/io/IOException;
    :try_start_40
    const-string v2, "AppOps"

    const-string v3, "Failed to load opsValidation file for FileWriter"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6415
    .end local v1    # "e":Ljava/io/IOException;
    :goto_47
    monitor-exit v0

    .line 6416
    return-void

    .line 6415
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_3d

    throw v1

    .line 6401
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 5
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 5865
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "addHistoricalOps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5868
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/HistoricalRegistry;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 5869
    return-void
.end method

.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 12
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2969
    monitor-enter p0

    .line 2970
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2971
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1a

    .line 2972
    if-nez v0, :cond_b

    .line 2973
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result v1

    return v1

    .line 2975
    :cond_b
    new-instance v6, Lcom/android/server/appop/-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI;

    invoke-direct {v6, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result v1

    return v1

    .line 2971
    .end local v0    # "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public checkOperation(IILjava/lang/String;)I
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2899
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->checkOperationInternal(IILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public checkOperationRaw(IILjava/lang/String;)I
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2894
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->checkOperationInternal(IILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3019
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3021
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_9

    .line 3023
    const/4 v0, 0x0

    return v0

    .line 3024
    :catch_9
    move-exception v0

    .line 3025
    .local v0, "ignored":Ljava/lang/SecurityException;
    const/4 v1, 0x2

    return v1
.end method

.method public clearHistory()V
    .registers 4

    .line 5881
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "clearHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5884
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory()V

    .line 5885
    return-void
.end method

.method public collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6
    .param p1, "stackTrace"    # Ljava/lang/String;
    .param p2, "op"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "version"    # J

    .line 6507
    return-void
.end method

.method public collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .registers 6

    .line 5989
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 5990
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5989
    const-string v3, "android.permission.GET_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 5992
    monitor-enter p0

    .line 5993
    :try_start_11
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 5994
    .local v0, "result":Landroid/app/RuntimeAppOpAccessMessage;
    iput-object v4, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 5995
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_22

    .line 5996
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/-$$Lambda$AppOpsService$m04KE9D7Jmkj_GEr7pcdIY29xtA;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$m04KE9D7Jmkj_GEr7pcdIY29xtA;

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5999
    return-object v0

    .line 5995
    .end local v0    # "result":Landroid/app/RuntimeAppOpAccessMessage;
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 45
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5169
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    iget-object v0, v13, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "AppOps"

    invoke-static {v0, v1, v14}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 5171
    :cond_11
    const/4 v0, -0x1

    .line 5172
    .local v0, "dumpOp":I
    const/4 v1, 0x0

    .line 5173
    .local v1, "dumpPackage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 5174
    .local v2, "dumpAttributionTag":Ljava/lang/String;
    const/4 v3, -0x1

    .line 5175
    .local v3, "dumpUid":I
    const/4 v4, -0x1

    .line 5176
    .local v4, "dumpMode":I
    const/4 v5, 0x0

    .line 5178
    .local v5, "dumpWatchers":Z
    const/16 v16, 0x0

    .line 5179
    .local v16, "dumpHistory":Z
    const/4 v6, 0x0

    .line 5181
    .local v6, "dumpFilter":I
    const/4 v12, 0x0

    const/4 v7, 0x1

    if-eqz v15, :cond_129

    .line 5182
    const/4 v8, 0x0

    move-object/from16 v39, v1

    move v1, v0

    move-object/from16 v0, v39

    .local v0, "dumpPackage":Ljava/lang/String;
    .local v1, "dumpOp":I
    .local v8, "i":I
    :goto_24
    array-length v9, v15

    if-ge v8, v9, :cond_11b

    .line 5183
    aget-object v9, v15, v8

    .line 5184
    .local v9, "arg":Ljava/lang/String;
    const-string v10, "-h"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 5185
    invoke-direct {v13, v14}, Lcom/android/server/appop/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 5186
    return-void

    .line 5187
    :cond_35
    const-string v10, "-a"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    goto/16 :goto_e0

    .line 5189
    :cond_3f
    const-string v10, "--op"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 5190
    add-int/lit8 v8, v8, 0x1

    .line 5191
    array-length v10, v15

    if-lt v8, v10, :cond_52

    .line 5192
    const-string v7, "No argument for --op option"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5193
    return-void

    .line 5195
    :cond_52
    aget-object v10, v15, v8

    # invokes: Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    invoke-static {v10, v14}, Lcom/android/server/appop/AppOpsService$Shell;->access$2000(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    .line 5196
    or-int/lit8 v6, v6, 0x8

    .line 5197
    if-gez v1, :cond_e0

    .line 5198
    return-void

    .line 5200
    :cond_5d
    const-string v10, "--package"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 5201
    add-int/lit8 v8, v8, 0x1

    .line 5202
    array-length v10, v15

    if-lt v8, v10, :cond_70

    .line 5203
    const-string v7, "No argument for --package option"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5204
    return-void

    .line 5206
    :cond_70
    aget-object v10, v15, v8

    .line 5207
    .end local v0    # "dumpPackage":Ljava/lang/String;
    .local v10, "dumpPackage":Ljava/lang/String;
    or-int/lit8 v6, v6, 0x2

    .line 5209
    :try_start_74
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v11, 0xc02000

    invoke-interface {v0, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_7f} :catch_81

    move v3, v0

    .line 5213
    goto :goto_82

    .line 5212
    :catch_81
    move-exception v0

    .line 5214
    :goto_82
    if-gez v3, :cond_99

    .line 5215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5216
    return-void

    .line 5218
    :cond_99
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5219
    .end local v3    # "dumpUid":I
    .local v0, "dumpUid":I
    or-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v0

    move-object v0, v10

    .end local v6    # "dumpFilter":I
    .local v3, "dumpFilter":I
    goto :goto_e0

    .line 5220
    .end local v10    # "dumpPackage":Ljava/lang/String;
    .local v0, "dumpPackage":Ljava/lang/String;
    .local v3, "dumpUid":I
    .restart local v6    # "dumpFilter":I
    :cond_a3
    const-string v10, "--attributionTag"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bb

    .line 5221
    add-int/lit8 v8, v8, 0x1

    .line 5222
    array-length v10, v15

    if-lt v8, v10, :cond_b6

    .line 5223
    const-string v7, "No argument for --attributionTag option"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5224
    return-void

    .line 5226
    :cond_b6
    aget-object v2, v15, v8

    .line 5227
    or-int/lit8 v6, v6, 0x4

    goto :goto_e0

    .line 5228
    :cond_bb
    const-string v10, "--mode"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d7

    .line 5229
    add-int/lit8 v8, v8, 0x1

    .line 5230
    array-length v10, v15

    if-lt v8, v10, :cond_ce

    .line 5231
    const-string v7, "No argument for --mode option"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5232
    return-void

    .line 5234
    :cond_ce
    aget-object v10, v15, v8

    invoke-static {v10, v14}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v4

    .line 5235
    if-gez v4, :cond_e0

    .line 5236
    return-void

    .line 5238
    :cond_d7
    const-string v10, "--watchers"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e3

    .line 5239
    const/4 v5, 0x1

    .line 5182
    .end local v9    # "arg":Ljava/lang/String;
    :cond_e0
    :goto_e0
    add-int/2addr v8, v7

    goto/16 :goto_24

    .line 5240
    .restart local v9    # "arg":Ljava/lang/String;
    :cond_e3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_106

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x2d

    if-ne v7, v10, :cond_106

    .line 5241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown option: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5242
    return-void

    .line 5244
    :cond_106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown command: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5245
    return-void

    .line 5182
    .end local v9    # "arg":Ljava/lang/String;
    :cond_11b
    move-object/from16 v17, v2

    move/from16 v18, v5

    move/from16 v19, v6

    move-object v6, v0

    move v5, v1

    move/from16 v39, v4

    move v4, v3

    move/from16 v3, v39

    goto :goto_136

    .line 5181
    .end local v8    # "i":I
    .local v0, "dumpOp":I
    .local v1, "dumpPackage":Ljava/lang/String;
    :cond_129
    move-object/from16 v17, v2

    move/from16 v18, v5

    move/from16 v19, v6

    move v5, v0

    move-object v6, v1

    move/from16 v39, v4

    move v4, v3

    move/from16 v3, v39

    .line 5250
    .end local v0    # "dumpOp":I
    .end local v1    # "dumpPackage":Ljava/lang/String;
    .end local v2    # "dumpAttributionTag":Ljava/lang/String;
    .local v3, "dumpMode":I
    .local v4, "dumpUid":I
    .local v5, "dumpOp":I
    .local v6, "dumpPackage":Ljava/lang/String;
    .local v17, "dumpAttributionTag":Ljava/lang/String;
    .local v18, "dumpWatchers":Z
    .local v19, "dumpFilter":I
    :goto_136
    monitor-enter p0

    .line 5251
    :try_start_137
    const-string v0, "Current AppOps Service state:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13c
    .catchall {:try_start_137 .. :try_end_13c} :catchall_ba0

    .line 5252
    if-nez v16, :cond_14f

    if-nez v18, :cond_14f

    .line 5253
    :try_start_140
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-virtual {v0, v14}, Lcom/android/server/appop/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V
    :try_end_145
    .catchall {:try_start_140 .. :try_end_145} :catchall_146

    goto :goto_14f

    .line 5721
    :catchall_146
    move-exception v0

    move/from16 v35, v3

    move/from16 v28, v4

    move v15, v5

    move-object v9, v6

    goto/16 :goto_ba7

    .line 5255
    :cond_14f
    :goto_14f
    :try_start_14f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5257
    .local v8, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5258
    .local v0, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-wide/from16 v20, v10

    .line 5259
    .local v20, "nowUptime":J
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v10, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5260
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V
    :try_end_16d
    .catchall {:try_start_14f .. :try_end_16d} :catchall_ba0

    .line 5261
    .local v11, "date":Ljava/util/Date;
    const/4 v2, 0x0

    .line 5262
    .local v2, "needSep":Z
    if-nez v19, :cond_1ae

    if-gez v3, :cond_1ae

    :try_start_172
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v7, :cond_1ae

    if-nez v18, :cond_1ae

    if-nez v16, :cond_1ae

    .line 5264
    const-string v7, "  Profile owners:"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5265
    const/4 v7, 0x0

    .local v7, "poi":I
    :goto_180
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_1ab

    .line 5266
    const-string v12, "    User #"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5267
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 5268
    const-string v12, ": "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5269
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v14, v12}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5270
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5265
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x0

    goto :goto_180

    .line 5272
    .end local v7    # "poi":I
    :cond_1ab
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1ae
    .catchall {:try_start_172 .. :try_end_1ae} :catchall_146

    .line 5274
    :cond_1ae
    :try_start_1ae
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7
    :try_end_1b4
    .catchall {:try_start_1ae .. :try_end_1b4} :catchall_ba0

    if-lez v7, :cond_251

    if-nez v16, :cond_251

    .line 5275
    const/4 v7, 0x0

    .line 5276
    .local v7, "printedHeader":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1ba
    move/from16 v24, v2

    .end local v2    # "needSep":Z
    .local v24, "needSep":Z
    :try_start_1bc
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v12, v2, :cond_24c

    .line 5277
    if-ltz v5, :cond_1d4

    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eq v5, v2, :cond_1d4

    .line 5278
    move-wide/from16 v26, v8

    move/from16 v2, v24

    goto/16 :goto_244

    .line 5280
    :cond_1d4
    const/4 v2, 0x0

    .line 5281
    .local v2, "printedOpHeader":Z
    move/from16 v25, v2

    .end local v2    # "printedOpHeader":Z
    .local v25, "printedOpHeader":Z
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 5282
    .local v2, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/16 v26, 0x0

    move/from16 v15, v26

    .local v15, "j":I
    :goto_1e3
    move-wide/from16 v26, v8

    .end local v8    # "now":J
    .local v26, "now":J
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v15, v8, :cond_240

    .line 5283
    invoke-virtual {v2, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 5284
    .local v8, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v6, :cond_1fe

    iget v9, v8, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 5285
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    if-eq v4, v9, :cond_1fe

    .line 5286
    move-object/from16 v28, v2

    goto :goto_239

    .line 5288
    :cond_1fe
    const/4 v9, 0x1

    .line 5289
    .end local v24    # "needSep":Z
    .local v9, "needSep":Z
    if-nez v7, :cond_20a

    .line 5290
    move-object/from16 v28, v2

    .end local v2    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v28, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const-string v2, "  Op mode watchers:"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5291
    const/4 v7, 0x1

    goto :goto_20c

    .line 5289
    .end local v28    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v2    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_20a
    move-object/from16 v28, v2

    .line 5293
    .end local v2    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v28    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :goto_20c
    if-nez v25, :cond_227

    .line 5294
    const-string v2, "    Op "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5295
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5296
    const-string v2, ":"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5297
    const/16 v25, 0x1

    .line 5299
    :cond_227
    const-string v2, "      #"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5300
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_237
    .catchall {:try_start_1bc .. :try_end_237} :catchall_146

    move/from16 v24, v9

    .line 5282
    .end local v8    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v9    # "needSep":Z
    .restart local v24    # "needSep":Z
    :goto_239
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v8, v26

    move-object/from16 v2, v28

    goto :goto_1e3

    .end local v28    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v2    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_240
    move-object/from16 v28, v2

    .end local v2    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .restart local v28    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    move/from16 v2, v24

    .line 5276
    .end local v15    # "j":I
    .end local v24    # "needSep":Z
    .end local v25    # "printedOpHeader":Z
    .end local v28    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .local v2, "needSep":Z
    :goto_244
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v15, p3

    move-wide/from16 v8, v26

    goto/16 :goto_1ba

    .end local v2    # "needSep":Z
    .end local v26    # "now":J
    .local v8, "now":J
    .restart local v24    # "needSep":Z
    :cond_24c
    move-wide/from16 v26, v8

    .end local v8    # "now":J
    .restart local v26    # "now":J
    move/from16 v2, v24

    goto :goto_253

    .line 5274
    .end local v7    # "printedHeader":Z
    .end local v12    # "i":I
    .end local v24    # "needSep":Z
    .end local v26    # "now":J
    .restart local v2    # "needSep":Z
    .restart local v8    # "now":J
    :cond_251
    move-wide/from16 v26, v8

    .line 5304
    .end local v8    # "now":J
    .restart local v26    # "now":J
    :goto_253
    :try_start_253
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7
    :try_end_259
    .catchall {:try_start_253 .. :try_end_259} :catchall_ba0

    if-lez v7, :cond_2bf

    if-gez v5, :cond_2bf

    if-nez v16, :cond_2bf

    .line 5305
    const/4 v7, 0x0

    .line 5306
    .restart local v7    # "printedHeader":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_261
    :try_start_261
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_2bf

    .line 5307
    if-eqz v6, :cond_278

    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_278

    .line 5308
    goto :goto_2bc

    .line 5310
    :cond_278
    const/4 v2, 0x1

    .line 5311
    if-nez v7, :cond_281

    .line 5312
    const-string v9, "  Package mode watchers:"

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5313
    const/4 v7, 0x1

    .line 5315
    :cond_281
    const-string v9, "    Pkg "

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5316
    const-string v9, ":"

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5317
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 5318
    .local v9, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_29f
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v15

    if-ge v12, v15, :cond_2bc

    .line 5319
    const-string v15, "      #"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5320
    invoke-virtual {v9, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_2b9
    .catchall {:try_start_261 .. :try_end_2b9} :catchall_146

    .line 5318
    add-int/lit8 v12, v12, 0x1

    goto :goto_29f

    .line 5306
    .end local v9    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    .end local v12    # "j":I
    :cond_2bc
    :goto_2bc
    add-int/lit8 v8, v8, 0x1

    goto :goto_261

    .line 5324
    .end local v7    # "printedHeader":Z
    .end local v8    # "i":I
    :cond_2bf
    :try_start_2bf
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7
    :try_end_2c5
    .catchall {:try_start_2bf .. :try_end_2c5} :catchall_ba0

    if-lez v7, :cond_312

    if-gez v5, :cond_312

    if-nez v16, :cond_312

    .line 5325
    const/4 v7, 0x0

    .line 5326
    .restart local v7    # "printedHeader":Z
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2cd
    :try_start_2cd
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_312

    .line 5327
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 5328
    .local v9, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v6, :cond_2e8

    iget v12, v9, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 5329
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v4, v12, :cond_2e8

    .line 5330
    goto :goto_30f

    .line 5332
    :cond_2e8
    const/4 v2, 0x1

    .line 5333
    if-nez v7, :cond_2f1

    .line 5334
    const-string v12, "  All op mode watchers:"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5335
    const/4 v7, 0x1

    .line 5337
    :cond_2f1
    const-string v12, "    "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5338
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5339
    const-string v12, ": "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_30f
    .catchall {:try_start_2cd .. :try_end_30f} :catchall_146

    .line 5326
    .end local v9    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :goto_30f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2cd

    .line 5342
    .end local v7    # "printedHeader":Z
    .end local v8    # "i":I
    :cond_312
    :try_start_312
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7
    :try_end_318
    .catchall {:try_start_312 .. :try_end_318} :catchall_ba0

    if-lez v7, :cond_3c8

    if-gez v3, :cond_3c8

    .line 5343
    const/4 v2, 0x1

    .line 5344
    const/4 v7, 0x0

    .line 5345
    .restart local v7    # "printedHeader":Z
    const/4 v12, 0x0

    .local v12, "watcherNum":I
    :goto_31f
    :try_start_31f
    iget-object v15, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v12, v15, :cond_3c6

    .line 5346
    iget-object v15, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 5347
    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 5348
    .local v15, "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v24

    if-gtz v24, :cond_336

    .line 5349
    goto :goto_353

    .line 5351
    :cond_336
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    move-object/from16 v8, v25

    .line 5352
    .local v8, "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    if-ltz v5, :cond_348

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v25

    if-gez v25, :cond_348

    .line 5353
    goto :goto_353

    .line 5355
    :cond_348
    if-eqz v6, :cond_356

    iget v9, v8, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 5356
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    if-eq v4, v9, :cond_356

    .line 5357
    nop

    .line 5345
    .end local v8    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v15    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :goto_353
    move/from16 v29, v2

    goto :goto_3c0

    .line 5359
    .restart local v8    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .restart local v15    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :cond_356
    if-nez v7, :cond_35e

    .line 5360
    const-string v9, "  All op active watchers:"

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5361
    const/4 v7, 0x1

    .line 5363
    :cond_35e
    const-string v9, "    "

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5364
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 5365
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 5364
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5366
    const-string v9, " ->"

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5367
    const-string v9, "        ["

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5368
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 5369
    .local v9, "opCount":I
    const/16 v28, 0x0

    move/from16 v29, v2

    move/from16 v2, v28

    .local v2, "opNum":I
    .local v29, "needSep":Z
    :goto_388
    if-ge v2, v9, :cond_3af

    .line 5370
    if-lez v2, :cond_394

    .line 5371
    move/from16 v28, v7

    const/16 v7, 0x20

    .end local v7    # "printedHeader":Z
    .local v28, "printedHeader":Z
    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_396

    .line 5370
    .end local v28    # "printedHeader":Z
    .restart local v7    # "printedHeader":Z
    :cond_394
    move/from16 v28, v7

    .line 5373
    .end local v7    # "printedHeader":Z
    .restart local v28    # "printedHeader":Z
    :goto_396
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5374
    add-int/lit8 v7, v9, -0x1

    if-ge v2, v7, :cond_3aa

    .line 5375
    const/16 v7, 0x2c

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 5369
    :cond_3aa
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v28

    goto :goto_388

    .end local v28    # "printedHeader":Z
    .restart local v7    # "printedHeader":Z
    :cond_3af
    move/from16 v28, v7

    .line 5378
    .end local v2    # "opNum":I
    .end local v7    # "printedHeader":Z
    .restart local v28    # "printedHeader":Z
    const-string v2, "]"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5379
    const-string v2, "        "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5380
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_3be
    .catchall {:try_start_31f .. :try_end_3be} :catchall_146

    move/from16 v7, v28

    .line 5345
    .end local v8    # "cb":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v9    # "opCount":I
    .end local v15    # "activeWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v28    # "printedHeader":Z
    .restart local v7    # "printedHeader":Z
    :goto_3c0
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v29

    goto/16 :goto_31f

    .end local v29    # "needSep":Z
    .local v2, "needSep":Z
    :cond_3c6
    move/from16 v29, v2

    .line 5383
    .end local v7    # "printedHeader":Z
    .end local v12    # "watcherNum":I
    :cond_3c8
    :try_start_3c8
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7
    :try_end_3ce
    .catchall {:try_start_3c8 .. :try_end_3ce} :catchall_ba0

    if-lez v7, :cond_48a

    if-gez v3, :cond_48a

    .line 5384
    const/4 v2, 0x1

    .line 5385
    const/4 v7, 0x0

    .line 5387
    .restart local v7    # "printedHeader":Z
    :try_start_3d4
    iget-object v8, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 5388
    .local v8, "watchersSize":I
    const/4 v9, 0x0

    .local v9, "watcherNum":I
    :goto_3db
    if-ge v9, v8, :cond_486

    .line 5389
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 5390
    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 5391
    .local v12, "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-gtz v15, :cond_3ee

    .line 5392
    move/from16 v28, v2

    goto :goto_40f

    .line 5395
    :cond_3ee
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/appop/AppOpsService$StartedCallback;

    move-object/from16 v15, v28

    .line 5396
    .local v15, "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    if-ltz v5, :cond_402

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v28

    if-gez v28, :cond_402

    .line 5397
    move/from16 v28, v2

    goto :goto_40f

    .line 5400
    :cond_402
    if-eqz v6, :cond_412

    move/from16 v28, v2

    .end local v2    # "needSep":Z
    .local v28, "needSep":Z
    iget v2, v15, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    .line 5401
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eq v4, v2, :cond_414

    .line 5402
    nop

    .line 5388
    .end local v12    # "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v15    # "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    .end local v28    # "needSep":Z
    .restart local v2    # "needSep":Z
    :goto_40f
    move/from16 v29, v8

    .end local v2    # "needSep":Z
    .restart local v28    # "needSep":Z
    goto :goto_47e

    .line 5400
    .end local v28    # "needSep":Z
    .restart local v2    # "needSep":Z
    .restart local v12    # "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .restart local v15    # "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    :cond_412
    move/from16 v28, v2

    .line 5405
    .end local v2    # "needSep":Z
    .restart local v28    # "needSep":Z
    :cond_414
    if-nez v7, :cond_41c

    .line 5406
    const-string v2, "  All op started watchers:"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5407
    const/4 v7, 0x1

    .line 5410
    :cond_41c
    const-string v2, "    "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5411
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 5412
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 5411
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5413
    const-string v2, " ->"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5415
    const-string v2, "        ["

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5416
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 5417
    .local v2, "opCount":I
    const/16 v29, 0x0

    move/from16 v30, v7

    move/from16 v7, v29

    .local v7, "opNum":I
    .local v30, "printedHeader":Z
    :goto_446
    if-ge v7, v2, :cond_46d

    .line 5418
    if-lez v7, :cond_452

    .line 5419
    move/from16 v29, v8

    const/16 v8, 0x20

    .end local v8    # "watchersSize":I
    .local v29, "watchersSize":I
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_454

    .line 5418
    .end local v29    # "watchersSize":I
    .restart local v8    # "watchersSize":I
    :cond_452
    move/from16 v29, v8

    .line 5422
    .end local v8    # "watchersSize":I
    .restart local v29    # "watchersSize":I
    :goto_454
    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5423
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_468

    .line 5424
    const/16 v8, 0x2c

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 5417
    :cond_468
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v29

    goto :goto_446

    .end local v29    # "watchersSize":I
    .restart local v8    # "watchersSize":I
    :cond_46d
    move/from16 v29, v8

    .line 5427
    .end local v7    # "opNum":I
    .end local v8    # "watchersSize":I
    .restart local v29    # "watchersSize":I
    const-string v7, "]"

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5429
    const-string v7, "        "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5430
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_47c
    .catchall {:try_start_3d4 .. :try_end_47c} :catchall_146

    move/from16 v7, v30

    .line 5388
    .end local v2    # "opCount":I
    .end local v12    # "startedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v15    # "cb":Lcom/android/server/appop/AppOpsService$StartedCallback;
    .end local v30    # "printedHeader":Z
    .local v7, "printedHeader":Z
    :goto_47e
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v28

    move/from16 v8, v29

    goto/16 :goto_3db

    .end local v28    # "needSep":Z
    .end local v29    # "watchersSize":I
    .local v2, "needSep":Z
    .restart local v8    # "watchersSize":I
    :cond_486
    move/from16 v28, v2

    move/from16 v29, v8

    .line 5433
    .end local v7    # "printedHeader":Z
    .end local v8    # "watchersSize":I
    .end local v9    # "watcherNum":I
    :cond_48a
    :try_start_48a
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7
    :try_end_490
    .catchall {:try_start_48a .. :try_end_490} :catchall_ba0

    if-lez v7, :cond_54a

    if-gez v3, :cond_54a

    .line 5434
    const/4 v2, 0x1

    .line 5435
    const/4 v7, 0x0

    .line 5436
    .restart local v7    # "printedHeader":Z
    const/4 v8, 0x0

    .local v8, "watcherNum":I
    :goto_497
    :try_start_497
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_548

    .line 5437
    iget-object v9, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 5438
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 5439
    .local v9, "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-gtz v12, :cond_4ae

    .line 5440
    goto :goto_4c9

    .line 5442
    :cond_4ae
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$NotedCallback;

    .line 5443
    .local v15, "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    if-ltz v5, :cond_4be

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v23

    if-gez v23, :cond_4be

    .line 5444
    goto :goto_4c9

    .line 5446
    :cond_4be
    if-eqz v6, :cond_4d1

    iget v12, v15, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 5447
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v4, v12, :cond_4d1

    .line 5448
    nop

    .line 5436
    .end local v9    # "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v15    # "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_4c9
    move/from16 v29, v2

    move/from16 v28, v7

    const/16 v7, 0x2c

    goto/16 :goto_540

    .line 5450
    .restart local v9    # "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .restart local v15    # "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :cond_4d1
    if-nez v7, :cond_4d9

    .line 5451
    const-string v12, "  All op noted watchers:"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5452
    const/4 v7, 0x1

    .line 5454
    :cond_4d9
    const-string v12, "    "

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5455
    iget-object v12, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 5456
    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 5455
    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5457
    const-string v12, " ->"

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5458
    const-string v12, "        ["

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5459
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 5460
    .local v12, "opCount":I
    const/16 v28, 0x0

    move/from16 v29, v2

    move/from16 v2, v28

    .local v2, "opNum":I
    .local v29, "needSep":Z
    :goto_503
    if-ge v2, v12, :cond_52f

    .line 5461
    if-lez v2, :cond_50f

    .line 5462
    move/from16 v28, v7

    const/16 v7, 0x20

    .end local v7    # "printedHeader":Z
    .local v28, "printedHeader":Z
    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_513

    .line 5461
    .end local v28    # "printedHeader":Z
    .restart local v7    # "printedHeader":Z
    :cond_50f
    move/from16 v28, v7

    const/16 v7, 0x20

    .line 5464
    .end local v7    # "printedHeader":Z
    .restart local v28    # "printedHeader":Z
    :goto_513
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5465
    add-int/lit8 v7, v12, -0x1

    if-ge v2, v7, :cond_528

    .line 5466
    const/16 v7, 0x2c

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_52a

    .line 5465
    :cond_528
    const/16 v7, 0x2c

    .line 5460
    :goto_52a
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v28

    goto :goto_503

    .end local v28    # "printedHeader":Z
    .restart local v7    # "printedHeader":Z
    :cond_52f
    move/from16 v28, v7

    const/16 v7, 0x2c

    .line 5469
    .end local v2    # "opNum":I
    .end local v7    # "printedHeader":Z
    .restart local v28    # "printedHeader":Z
    const-string v2, "]"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5470
    const-string v2, "        "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5471
    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_540
    .catchall {:try_start_497 .. :try_end_540} :catchall_146

    .line 5436
    .end local v9    # "notedWatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v12    # "opCount":I
    .end local v15    # "cb":Lcom/android/server/appop/AppOpsService$NotedCallback;
    :goto_540
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v28

    move/from16 v2, v29

    goto/16 :goto_497

    .end local v28    # "printedHeader":Z
    .end local v29    # "needSep":Z
    .local v2, "needSep":Z
    .restart local v7    # "printedHeader":Z
    :cond_548
    move/from16 v29, v2

    .line 5474
    .end local v7    # "printedHeader":Z
    .end local v8    # "watcherNum":I
    :cond_54a
    :try_start_54a
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v7}, Lcom/android/server/appop/AudioRestrictionManager;->hasActiveRestrictions()Z

    move-result v7
    :try_end_550
    .catchall {:try_start_54a .. :try_end_550} :catchall_ba0

    if-eqz v7, :cond_563

    if-gez v5, :cond_563

    if-eqz v6, :cond_563

    if-gez v3, :cond_563

    if-nez v18, :cond_563

    if-nez v18, :cond_563

    .line 5476
    :try_start_55c
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v7, v14}, Lcom/android/server/appop/AudioRestrictionManager;->dump(Ljava/io/PrintWriter;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 5478
    :cond_563
    if-eqz v2, :cond_568

    .line 5479
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_568
    .catchall {:try_start_55c .. :try_end_568} :catchall_146

    .line 5481
    :cond_568
    const/4 v7, 0x0

    move v15, v7

    .local v15, "i":I
    :goto_56a
    :try_start_56a
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7
    :try_end_570
    .catchall {:try_start_56a .. :try_end_570} :catchall_ba0

    if-ge v15, v7, :cond_97b

    .line 5482
    :try_start_572
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$UidState;

    move-object v8, v7

    .line 5483
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v7, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object v9, v7

    .line 5484
    .local v9, "opModes":Landroid/util/SparseIntArray;
    iget-object v7, v8, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_580
    .catchall {:try_start_572 .. :try_end_580} :catchall_970

    move-object v12, v7

    .line 5486
    .local v12, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v18, :cond_948

    if-eqz v16, :cond_597

    .line 5487
    move-wide/from16 v33, v0

    move/from16 v30, v2

    move/from16 v35, v3

    move/from16 v28, v4

    move-object v14, v6

    move/from16 v32, v15

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    move v15, v5

    goto/16 :goto_95d

    .line 5489
    :cond_597
    if-gez v5, :cond_5a6

    if-nez v6, :cond_5a6

    if-ltz v3, :cond_59e

    goto :goto_5a6

    :cond_59e
    move/from16 v30, v2

    move/from16 v28, v4

    move/from16 v32, v15

    goto/16 :goto_698

    .line 5490
    :cond_5a6
    :goto_5a6
    if-ltz v5, :cond_5b7

    :try_start_5a8
    iget-object v7, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v7, :cond_5b5

    iget-object v7, v8, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 5491
    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_5b5

    goto :goto_5b7

    :cond_5b5
    const/4 v7, 0x0

    goto :goto_5b8

    :cond_5b7
    :goto_5b7
    const/4 v7, 0x1

    .line 5492
    .local v7, "hasOp":Z
    :goto_5b8
    if-eqz v6, :cond_5c7

    move/from16 v24, v7

    .end local v7    # "hasOp":Z
    .local v24, "hasOp":Z
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7
    :try_end_5c2
    .catchall {:try_start_5a8 .. :try_end_5c2} :catchall_146

    if-ne v4, v7, :cond_5c5

    goto :goto_5c9

    :cond_5c5
    const/4 v7, 0x0

    goto :goto_5ca

    .end local v24    # "hasOp":Z
    .restart local v7    # "hasOp":Z
    :cond_5c7
    move/from16 v24, v7

    .end local v7    # "hasOp":Z
    .restart local v24    # "hasOp":Z
    :goto_5c9
    const/4 v7, 0x1

    .line 5493
    .local v7, "hasPackage":Z
    :goto_5ca
    if-gez v3, :cond_5cf

    const/16 v25, 0x1

    goto :goto_5d1

    :cond_5cf
    const/16 v25, 0x0

    .line 5494
    .local v25, "hasMode":Z
    :goto_5d1
    if-nez v25, :cond_5f7

    if-eqz v9, :cond_5f7

    .line 5495
    const/16 v28, 0x0

    move/from16 v39, v28

    move/from16 v28, v4

    move/from16 v4, v39

    .local v4, "opi":I
    .local v28, "dumpUid":I
    :goto_5dd
    if-nez v25, :cond_5f4

    move/from16 v29, v7

    .end local v7    # "hasPackage":Z
    .local v29, "hasPackage":Z
    :try_start_5e1
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_5fb

    .line 5496
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ne v7, v3, :cond_5ef

    .line 5497
    const/16 v25, 0x1

    .line 5495
    :cond_5ef
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v29

    goto :goto_5dd

    .end local v29    # "hasPackage":Z
    .restart local v7    # "hasPackage":Z
    :cond_5f4
    move/from16 v29, v7

    .end local v7    # "hasPackage":Z
    .restart local v29    # "hasPackage":Z
    goto :goto_5fb

    .line 5494
    .end local v28    # "dumpUid":I
    .end local v29    # "hasPackage":Z
    .local v4, "dumpUid":I
    .restart local v7    # "hasPackage":Z
    :cond_5f7
    move/from16 v28, v4

    move/from16 v29, v7

    .line 5501
    .end local v4    # "dumpUid":I
    .end local v7    # "hasPackage":Z
    .restart local v28    # "dumpUid":I
    .restart local v29    # "hasPackage":Z
    :cond_5fb
    :goto_5fb
    if-eqz v12, :cond_671

    .line 5502
    const/4 v4, 0x0

    move/from16 v7, v24

    .line 5503
    .end local v24    # "hasOp":Z
    .local v4, "pkgi":I
    .local v7, "hasOp":Z
    :goto_600
    if-eqz v7, :cond_60d

    if-eqz v29, :cond_60d

    if-nez v25, :cond_607

    goto :goto_60d

    :cond_607
    move/from16 v30, v2

    move/from16 v32, v15

    goto/16 :goto_677

    :cond_60d
    :goto_60d
    move/from16 v30, v2

    .end local v2    # "needSep":Z
    .local v30, "needSep":Z
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v4, v2, :cond_667

    .line 5505
    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 5506
    .local v2, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v7, :cond_626

    if-eqz v2, :cond_626

    invoke-virtual {v2, v5}, Lcom/android/server/appop/AppOpsService$Ops;->indexOfKey(I)I

    move-result v24

    if-ltz v24, :cond_626

    .line 5507
    const/4 v7, 0x1

    .line 5509
    :cond_626
    if-nez v25, :cond_64e

    .line 5510
    const/16 v24, 0x0

    move/from16 v31, v7

    move/from16 v7, v24

    .local v7, "opi":I
    .local v31, "hasOp":Z
    :goto_62e
    if-nez v25, :cond_64b

    move/from16 v32, v15

    .end local v15    # "i":I
    .local v32, "i":I
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v15

    if-ge v7, v15, :cond_652

    .line 5511
    invoke-virtual {v2, v7}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$Op;

    # getter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v15}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v15

    if-ne v15, v3, :cond_646

    .line 5512
    const/16 v25, 0x1

    .line 5510
    :cond_646
    add-int/lit8 v7, v7, 0x1

    move/from16 v15, v32

    goto :goto_62e

    .end local v32    # "i":I
    .restart local v15    # "i":I
    :cond_64b
    move/from16 v32, v15

    .end local v15    # "i":I
    .restart local v32    # "i":I
    goto :goto_652

    .line 5509
    .end local v31    # "hasOp":Z
    .end local v32    # "i":I
    .local v7, "hasOp":Z
    .restart local v15    # "i":I
    :cond_64e
    move/from16 v31, v7

    move/from16 v32, v15

    .line 5516
    .end local v7    # "hasOp":Z
    .end local v15    # "i":I
    .restart local v31    # "hasOp":Z
    .restart local v32    # "i":I
    :cond_652
    :goto_652
    if-nez v29, :cond_65e

    iget-object v7, v2, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_65a
    .catchall {:try_start_5e1 .. :try_end_65a} :catchall_66a

    if-eqz v7, :cond_65e

    .line 5517
    const/16 v29, 0x1

    .line 5504
    .end local v2    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_65e
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v30

    move/from16 v7, v31

    move/from16 v15, v32

    goto :goto_600

    .line 5503
    .end local v31    # "hasOp":Z
    .end local v32    # "i":I
    .restart local v7    # "hasOp":Z
    .restart local v15    # "i":I
    :cond_667
    move/from16 v32, v15

    .end local v15    # "i":I
    .restart local v32    # "i":I
    goto :goto_677

    .line 5721
    .end local v0    # "nowElapsed":J
    .end local v4    # "pkgi":I
    .end local v7    # "hasOp":Z
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v20    # "nowUptime":J
    .end local v25    # "hasMode":Z
    .end local v26    # "now":J
    .end local v29    # "hasPackage":Z
    .end local v30    # "needSep":Z
    .end local v32    # "i":I
    :catchall_66a
    move-exception v0

    move/from16 v35, v3

    move v15, v5

    move-object v9, v6

    goto/16 :goto_ba7

    .line 5501
    .restart local v0    # "nowElapsed":J
    .local v2, "needSep":Z
    .restart local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v15    # "i":I
    .restart local v20    # "nowUptime":J
    .restart local v24    # "hasOp":Z
    .restart local v25    # "hasMode":Z
    .restart local v26    # "now":J
    .restart local v29    # "hasPackage":Z
    :cond_671
    move/from16 v30, v2

    move/from16 v32, v15

    .end local v2    # "needSep":Z
    .end local v15    # "i":I
    .restart local v30    # "needSep":Z
    .restart local v32    # "i":I
    move/from16 v7, v24

    .line 5521
    .end local v24    # "hasOp":Z
    .restart local v7    # "hasOp":Z
    :goto_677
    :try_start_677
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_679
    .catchall {:try_start_677 .. :try_end_679} :catchall_92f

    if-eqz v2, :cond_686

    if-nez v7, :cond_686

    .line 5522
    :try_start_67d
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2
    :try_end_683
    .catchall {:try_start_67d .. :try_end_683} :catchall_66a

    if-lez v2, :cond_686

    .line 5523
    const/4 v7, 0x1

    .line 5526
    :cond_686
    if-eqz v7, :cond_938

    if-eqz v29, :cond_938

    if-nez v25, :cond_698

    .line 5527
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move v15, v5

    move-object v14, v6

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    goto/16 :goto_95d

    .line 5531
    .end local v7    # "hasOp":Z
    .end local v25    # "hasMode":Z
    .end local v29    # "hasPackage":Z
    :cond_698
    :goto_698
    :try_start_698
    const-string v2, "  Uid "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v14, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v2, ":"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5532
    const-string v2, "    state="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5533
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-static {v2}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5534
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I
    :try_end_6b9
    .catchall {:try_start_698 .. :try_end_6b9} :catchall_92f

    if-eq v2, v4, :cond_6c9

    .line 5535
    :try_start_6bb
    const-string v2, "    pendingState="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5536
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    invoke-static {v2}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6c9
    .catchall {:try_start_6bb .. :try_end_6c9} :catchall_66a

    .line 5538
    :cond_6c9
    :try_start_6c9
    const-string v2, "    capability="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5539
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    invoke-static {v14, v2}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 5540
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5541
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    iget v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I
    :try_end_6da
    .catchall {:try_start_6c9 .. :try_end_6da} :catchall_92f

    if-eq v2, v4, :cond_6e9

    .line 5542
    :try_start_6dc
    const-string v2, "    pendingCapability="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5543
    iget v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    invoke-static {v14, v2}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 5544
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_6e9
    .catchall {:try_start_6dc .. :try_end_6e9} :catchall_66a

    .line 5546
    :cond_6e9
    :try_start_6e9
    const-string v2, "    appWidgetVisible="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5547
    iget-boolean v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 5548
    iget-boolean v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    iget-boolean v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z
    :try_end_6f7
    .catchall {:try_start_6e9 .. :try_end_6f7} :catchall_92f

    if-eq v2, v4, :cond_703

    .line 5549
    :try_start_6f9
    const-string v2, "    pendingAppWidgetVisible="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5550
    iget-boolean v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_703
    .catchall {:try_start_6f9 .. :try_end_703} :catchall_66a

    .line 5552
    :cond_703
    move-object v15, v10

    move-object/from16 v24, v11

    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .local v15, "sdf":Ljava/text/SimpleDateFormat;
    .local v24, "date":Ljava/util/Date;
    :try_start_706
    iget-wide v10, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J
    :try_end_708
    .catchall {:try_start_706 .. :try_end_708} :catchall_92f

    const-wide/16 v33, 0x0

    cmp-long v2, v10, v33

    if-eqz v2, :cond_71b

    .line 5553
    :try_start_70e
    const-string v2, "    pendingStateCommitTime="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5554
    iget-wide v10, v8, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    invoke-static {v10, v11, v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 5555
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_71b
    .catchall {:try_start_70e .. :try_end_71b} :catchall_66a

    .line 5557
    :cond_71b
    :try_start_71b
    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;
    :try_end_71d
    .catchall {:try_start_71b .. :try_end_71d} :catchall_92f

    if-eqz v2, :cond_771

    if-ltz v3, :cond_724

    const/4 v2, 0x4

    if-ne v3, v2, :cond_771

    .line 5559
    :cond_724
    :try_start_724
    const-string v2, "    foregroundOps:"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5560
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_72a
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_767

    .line 5561
    if-ltz v5, :cond_73d

    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    if-eq v5, v4, :cond_73d

    .line 5562
    goto :goto_764

    .line 5564
    :cond_73d
    const-string v4, "      "

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5565
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5566
    const-string v4, ": "

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5567
    iget-object v4, v8, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_75f

    const-string v4, "WATCHER"

    goto :goto_761

    :cond_75f
    const-string v4, "SILENT"

    :goto_761
    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5560
    :goto_764
    add-int/lit8 v2, v2, 0x1

    goto :goto_72a

    .line 5569
    .end local v2    # "j":I
    :cond_767
    const-string v2, "    hasForegroundWatchers="

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5570
    iget-boolean v2, v8, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 5572
    :cond_771
    const/16 v25, 0x1

    .line 5574
    .end local v30    # "needSep":Z
    .local v25, "needSep":Z
    if-eqz v9, :cond_7a9

    .line 5575
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 5576
    .local v2, "opModeCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_77a
    if-ge v4, v2, :cond_7a9

    .line 5577
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 5578
    .local v7, "code":I
    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 5579
    .local v10, "mode":I
    if-ltz v5, :cond_789

    if-eq v5, v7, :cond_789

    .line 5580
    goto :goto_7a6

    .line 5582
    :cond_789
    if-ltz v3, :cond_78e

    if-eq v3, v10, :cond_78e

    .line 5583
    goto :goto_7a6

    .line 5585
    :cond_78e
    const-string v11, "      "

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5586
    const-string v11, ": mode="

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7a6
    .catchall {:try_start_724 .. :try_end_7a6} :catchall_66a

    .line 5576
    .end local v7    # "code":I
    .end local v10    # "mode":I
    :goto_7a6
    add-int/lit8 v4, v4, 0x1

    goto :goto_77a

    .line 5590
    .end local v2    # "opModeCount":I
    .end local v4    # "j":I
    :cond_7a9
    if-nez v12, :cond_7ba

    .line 5591
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move-object v14, v6

    move-object v10, v15

    move-object/from16 v11, v24

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    move v15, v5

    goto/16 :goto_92c

    .line 5594
    :cond_7ba
    const/4 v2, 0x0

    move v10, v2

    .local v10, "pkgi":I
    :goto_7bc
    :try_start_7bc
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v10, v2, :cond_918

    .line 5595
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;
    :try_end_7c8
    .catchall {:try_start_7bc .. :try_end_7c8} :catchall_92f

    move-object v11, v2

    .line 5596
    .local v11, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v6, :cond_7e9

    :try_start_7cb
    iget-object v2, v11, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_7d1
    .catchall {:try_start_7cb .. :try_end_7d1} :catchall_66a

    if-nez v2, :cond_7e9

    .line 5597
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move-object v14, v6

    move-object v0, v8

    move-object/from16 v38, v12

    move-object/from16 v11, v24

    const/16 v23, 0x0

    move-object/from16 v24, v9

    move-wide/from16 v8, v26

    move/from16 v26, v10

    move-object v10, v15

    move v15, v5

    goto/16 :goto_901

    .line 5599
    :cond_7e9
    const/4 v2, 0x0

    .line 5600
    .local v2, "printedPackage":Z
    const/4 v4, 0x0

    move v7, v4

    .local v7, "j":I
    :goto_7ec
    :try_start_7ec
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v4

    if-ge v7, v4, :cond_8e4

    .line 5601
    invoke-virtual {v11, v7}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 5602
    .local v4, "op":Lcom/android/server/appop/AppOpsService$Op;
    move-wide/from16 v33, v0

    .end local v0    # "nowElapsed":J
    .local v33, "nowElapsed":J
    iget v0, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I
    :try_end_7fc
    .catchall {:try_start_7ec .. :try_end_7fc} :catchall_92f

    .line 5603
    .local v0, "opCode":I
    if-ltz v5, :cond_801

    if-eq v5, v0, :cond_801

    .line 5604
    goto :goto_80a

    .line 5606
    :cond_801
    if-ltz v3, :cond_827

    :try_start_803
    # getter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    if-eq v3, v1, :cond_827

    .line 5607
    nop

    .line 5600
    .end local v0    # "opCode":I
    .end local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :goto_80a
    move/from16 v35, v3

    move-object v14, v6

    move/from16 v22, v7

    move-object v0, v8

    move-object/from16 v38, v12

    const/16 v23, 0x0

    move-object/from16 v39, v15

    move v15, v5

    move-object/from16 v40, v24

    move-object/from16 v24, v9

    move-wide/from16 v8, v26

    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v10, v39

    move-object/from16 v11, v40

    goto/16 :goto_8c8

    .line 5609
    .restart local v0    # "opCode":I
    .restart local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :cond_827
    if-nez v2, :cond_83c

    .line 5610
    const-string v1, "    Package "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_838
    .catchall {:try_start_803 .. :try_end_838} :catchall_66a

    .line 5611
    const/4 v2, 0x1

    move/from16 v29, v2

    goto :goto_83e

    .line 5609
    :cond_83c
    move/from16 v29, v2

    .line 5613
    .end local v2    # "printedPackage":Z
    .local v29, "printedPackage":Z
    :goto_83e
    :try_start_83e
    const-string v1, "      "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5614
    const-string v1, " ("

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    # getter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5615
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1
    :try_end_85e
    .catchall {:try_start_83e .. :try_end_85e} :catchall_92f

    move v2, v1

    .line 5616
    .local v2, "switchOp":I
    if-eq v2, v0, :cond_88e

    .line 5617
    :try_start_861
    const-string v1, " / switch "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5618
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5619
    invoke-virtual {v11, v2}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    .line 5620
    .local v1, "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    if-eqz v1, :cond_87a

    # getter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v30

    goto :goto_87e

    .line 5621
    :cond_87a
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v30

    :goto_87e
    nop

    .line 5622
    .local v30, "mode":I
    move/from16 v31, v0

    .end local v0    # "opCode":I
    .local v31, "opCode":I
    const-string v0, "="

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_88d
    .catchall {:try_start_861 .. :try_end_88d} :catchall_66a

    goto :goto_890

    .line 5616
    .end local v1    # "switchObj":Lcom/android/server/appop/AppOpsService$Op;
    .end local v30    # "mode":I
    .end local v31    # "opCode":I
    .restart local v0    # "opCode":I
    :cond_88e
    move/from16 v31, v0

    .line 5624
    .end local v0    # "opCode":I
    .restart local v31    # "opCode":I
    :goto_890
    :try_start_890
    const-string v0, "): "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5625
    const-string v0, "        "
    :try_end_897
    .catchall {:try_start_890 .. :try_end_897} :catchall_92f

    move-object/from16 v1, p0

    move/from16 v30, v2

    .end local v2    # "switchOp":I
    .local v30, "switchOp":I
    move-object/from16 v2, p2

    move/from16 v35, v3

    .end local v3    # "dumpMode":I
    .local v35, "dumpMode":I
    move-object/from16 v3, v17

    move-object/from16 v36, v4

    .end local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v36, "op":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v4, v19

    move-object v14, v6

    move-object/from16 v37, v15

    move v15, v5

    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .local v14, "dumpPackage":Ljava/lang/String;
    .local v15, "dumpOp":I
    .local v37, "sdf":Ljava/text/SimpleDateFormat;
    move-wide/from16 v5, v33

    move/from16 v22, v7

    .end local v7    # "j":I
    .local v22, "j":I
    move-object/from16 v7, v36

    move-object/from16 v38, v12

    const/16 v23, 0x0

    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v38, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    move-object v12, v0

    move-object v0, v8

    move-object/from16 v39, v24

    move-object/from16 v24, v9

    move-wide/from16 v8, v26

    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v11, v39

    move-object/from16 v10, v37

    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v37    # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v8, "now":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .local v11, "date":Ljava/util/Date;
    .local v24, "opModes":Landroid/util/SparseIntArray;
    .local v26, "pkgi":I
    .local v27, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    :try_start_8c3
    invoke-direct/range {v1 .. v12}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    move/from16 v2, v29

    .line 5600
    .end local v29    # "printedPackage":Z
    .end local v30    # "switchOp":I
    .end local v31    # "opCode":I
    .end local v36    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .local v2, "printedPackage":Z
    :goto_8c8
    add-int/lit8 v7, v22, 0x1

    move-object v6, v14

    move v5, v15

    move/from16 v3, v35

    move-object/from16 v12, v38

    move-object/from16 v14, p2

    move-object v15, v10

    move/from16 v10, v26

    move-wide/from16 v39, v8

    move-object v8, v0

    move-object/from16 v9, v24

    move-wide/from16 v0, v33

    move-object/from16 v24, v11

    move-object/from16 v11, v27

    move-wide/from16 v26, v39

    .end local v22    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_7ec

    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v27    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v33    # "nowElapsed":J
    .end local v35    # "dumpMode":I
    .end local v38    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v0, "nowElapsed":J
    .restart local v3    # "dumpMode":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .local v10, "pkgi":I
    .local v11, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v15, "sdf":Ljava/text/SimpleDateFormat;
    .local v24, "date":Ljava/util/Date;
    .local v26, "now":J
    :cond_8e4
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move-object v14, v6

    move/from16 v22, v7

    move-object v0, v8

    move-object/from16 v38, v12

    const/16 v23, 0x0

    move-object/from16 v39, v15

    move v15, v5

    move-object/from16 v40, v24

    move-object/from16 v24, v9

    move-wide/from16 v8, v26

    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v10, v39

    move-object/from16 v11, v40

    .line 5594
    .end local v2    # "printedPackage":Z
    .end local v3    # "dumpMode":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v8, "now":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .local v11, "date":Ljava/util/Date;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .local v15, "dumpOp":I
    .local v24, "opModes":Landroid/util/SparseIntArray;
    .local v26, "pkgi":I
    .restart local v33    # "nowElapsed":J
    .restart local v35    # "dumpMode":I
    .restart local v38    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :goto_901
    add-int/lit8 v1, v26, 0x1

    move-wide/from16 v26, v8

    move-object v6, v14

    move v5, v15

    move-object/from16 v9, v24

    move/from16 v3, v35

    move-object/from16 v12, v38

    move-object/from16 v14, p2

    move-object v8, v0

    move-object v15, v10

    move-object/from16 v24, v11

    move v10, v1

    move-wide/from16 v0, v33

    .end local v26    # "pkgi":I
    .local v1, "pkgi":I
    goto/16 :goto_7bc

    .end local v1    # "pkgi":I
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v33    # "nowElapsed":J
    .end local v35    # "dumpMode":I
    .end local v38    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v0, "nowElapsed":J
    .restart local v3    # "dumpMode":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .local v10, "pkgi":I
    .restart local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v15, "sdf":Ljava/text/SimpleDateFormat;
    .local v24, "date":Ljava/util/Date;
    .local v26, "now":J
    :cond_918
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move-object v14, v6

    move-object v0, v8

    move-object/from16 v38, v12

    move-object/from16 v11, v24

    const/16 v23, 0x0

    move-object/from16 v24, v9

    move-wide/from16 v8, v26

    move/from16 v26, v10

    move-object v10, v15

    move v15, v5

    .line 5481
    .end local v8    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v10    # "pkgi":I
    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :goto_92c
    move/from16 v2, v25

    .end local v0    # "nowElapsed":J
    .end local v3    # "dumpMode":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .end local v24    # "date":Ljava/util/Date;
    .end local v26    # "now":J
    .local v8, "now":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .local v15, "dumpOp":I
    .restart local v33    # "nowElapsed":J
    .restart local v35    # "dumpMode":I
    goto :goto_95f

    .line 5721
    .end local v8    # "now":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v15    # "dumpOp":I
    .end local v20    # "nowUptime":J
    .end local v25    # "needSep":Z
    .end local v32    # "i":I
    .end local v33    # "nowElapsed":J
    .end local v35    # "dumpMode":I
    .restart local v3    # "dumpMode":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    :catchall_92f
    move-exception v0

    move/from16 v35, v3

    move v15, v5

    move-object/from16 v14, p2

    move-object v9, v6

    .end local v3    # "dumpMode":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v15    # "dumpOp":I
    .restart local v35    # "dumpMode":I
    goto/16 :goto_ba7

    .line 5526
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v15    # "dumpOp":I
    .end local v35    # "dumpMode":I
    .restart local v0    # "nowElapsed":J
    .restart local v3    # "dumpMode":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    .local v7, "hasOp":Z
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v20    # "nowUptime":J
    .local v25, "hasMode":Z
    .restart local v26    # "now":J
    .local v29, "hasPackage":Z
    .local v30, "needSep":Z
    .restart local v32    # "i":I
    :cond_938
    move-wide/from16 v33, v0

    move/from16 v35, v3

    move v15, v5

    move-object v14, v6

    move-object v0, v8

    move-object/from16 v24, v9

    move-object/from16 v38, v12

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    .end local v3    # "dumpMode":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v26    # "now":J
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .local v8, "now":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v15    # "dumpOp":I
    .local v24, "opModes":Landroid/util/SparseIntArray;
    .restart local v33    # "nowElapsed":J
    .restart local v35    # "dumpMode":I
    .restart local v38    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    goto :goto_95d

    .line 5486
    .end local v7    # "hasOp":Z
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v24    # "opModes":Landroid/util/SparseIntArray;
    .end local v25    # "hasMode":Z
    .end local v28    # "dumpUid":I
    .end local v29    # "hasPackage":Z
    .end local v30    # "needSep":Z
    .end local v32    # "i":I
    .end local v33    # "nowElapsed":J
    .end local v35    # "dumpMode":I
    .end local v38    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v0, "nowElapsed":J
    .local v2, "needSep":Z
    .restart local v3    # "dumpMode":I
    .local v4, "dumpUid":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    .local v8, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v9    # "opModes":Landroid/util/SparseIntArray;
    .restart local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v15, "i":I
    .restart local v26    # "now":J
    :cond_948
    move-wide/from16 v33, v0

    move/from16 v30, v2

    move/from16 v35, v3

    move/from16 v28, v4

    move-object v14, v6

    move-object v0, v8

    move-object/from16 v24, v9

    move-object/from16 v38, v12

    move/from16 v32, v15

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    move v15, v5

    .line 5481
    .end local v0    # "nowElapsed":J
    .end local v2    # "needSep":Z
    .end local v3    # "dumpMode":I
    .end local v4    # "dumpUid":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .end local v9    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v26    # "now":J
    .local v8, "now":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .local v15, "dumpOp":I
    .restart local v28    # "dumpUid":I
    .restart local v30    # "needSep":Z
    .restart local v32    # "i":I
    .restart local v33    # "nowElapsed":J
    .restart local v35    # "dumpMode":I
    :goto_95d
    move/from16 v2, v30

    .end local v30    # "needSep":Z
    .restart local v2    # "needSep":Z
    :goto_95f
    add-int/lit8 v0, v32, 0x1

    move-wide/from16 v26, v8

    move-object v6, v14

    move v5, v15

    move/from16 v4, v28

    move/from16 v3, v35

    move-object/from16 v14, p2

    move v15, v0

    move-wide/from16 v0, v33

    .end local v32    # "i":I
    .local v0, "i":I
    goto/16 :goto_56a

    .line 5721
    .end local v0    # "i":I
    .end local v2    # "needSep":Z
    .end local v8    # "now":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v15    # "dumpOp":I
    .end local v20    # "nowUptime":J
    .end local v28    # "dumpUid":I
    .end local v33    # "nowElapsed":J
    .end local v35    # "dumpMode":I
    .restart local v3    # "dumpMode":I
    .restart local v4    # "dumpUid":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    :catchall_970
    move-exception v0

    move/from16 v35, v3

    move/from16 v28, v4

    move v15, v5

    move-object/from16 v14, p2

    move-object v9, v6

    .end local v3    # "dumpMode":I
    .end local v4    # "dumpUid":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v15    # "dumpOp":I
    .restart local v28    # "dumpUid":I
    .restart local v35    # "dumpMode":I
    goto/16 :goto_ba7

    .line 5481
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v28    # "dumpUid":I
    .end local v35    # "dumpMode":I
    .local v0, "nowElapsed":J
    .restart local v2    # "needSep":Z
    .restart local v3    # "dumpMode":I
    .restart local v4    # "dumpUid":I
    .restart local v5    # "dumpOp":I
    .restart local v6    # "dumpPackage":Ljava/lang/String;
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .local v15, "i":I
    .restart local v20    # "nowUptime":J
    .restart local v26    # "now":J
    :cond_97b
    move-wide/from16 v33, v0

    move/from16 v30, v2

    move/from16 v35, v3

    move/from16 v28, v4

    move-object v14, v6

    move/from16 v32, v15

    move-wide/from16 v8, v26

    const/16 v23, 0x0

    move v15, v5

    .line 5630
    .end local v0    # "nowElapsed":J
    .end local v2    # "needSep":Z
    .end local v3    # "dumpMode":I
    .end local v4    # "dumpUid":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .end local v26    # "now":J
    .restart local v8    # "now":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .local v15, "dumpOp":I
    .restart local v28    # "dumpUid":I
    .restart local v30    # "needSep":Z
    .restart local v33    # "nowElapsed":J
    .restart local v35    # "dumpMode":I
    if-eqz v30, :cond_997

    .line 5631
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_990
    .catchall {:try_start_8c3 .. :try_end_990} :catchall_991

    goto :goto_997

    .line 5721
    .end local v8    # "now":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v20    # "nowUptime":J
    .end local v30    # "needSep":Z
    .end local v33    # "nowElapsed":J
    :catchall_991
    move-exception v0

    move-object v9, v14

    move-object/from16 v14, p2

    goto/16 :goto_ba7

    .line 5634
    .restart local v8    # "now":J
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v20    # "nowUptime":J
    .restart local v30    # "needSep":Z
    .restart local v33    # "nowElapsed":J
    :cond_997
    :goto_997
    :try_start_997
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_99d
    .catchall {:try_start_997 .. :try_end_99d} :catchall_b9b

    .line 5635
    .local v0, "userRestrictionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_99e
    if-ge v1, v0, :cond_b78

    .line 5636
    :try_start_9a0
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 5637
    .local v2, "token":Landroid/os/IBinder;
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 5638
    .local v3, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    const/4 v4, 0x0

    .line 5640
    .local v4, "printedTokenHeader":Z
    if-gez v35, :cond_b60

    if-nez v18, :cond_b60

    if-eqz v16, :cond_9c0

    .line 5641
    move/from16 v22, v0

    move-wide/from16 v31, v8

    move-object v5, v14

    move-object/from16 v14, p2

    goto/16 :goto_b69

    .line 5644
    :cond_9c0
    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;
    :try_end_9c2
    .catchall {:try_start_9a0 .. :try_end_9c2} :catchall_b72

    if-eqz v5, :cond_9cb

    .line 5645
    :try_start_9c4
    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v12
    :try_end_9ca
    .catchall {:try_start_9c4 .. :try_end_9ca} :catchall_991

    goto :goto_9cd

    :cond_9cb
    move/from16 v12, v23

    :goto_9cd
    move v5, v12

    .line 5646
    .local v5, "restrictionCount":I
    if-lez v5, :cond_aa9

    if-nez v14, :cond_aa9

    .line 5647
    const/4 v6, 0x0

    .line 5648
    .local v6, "printedOpsHeader":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_9d4
    if-ge v7, v5, :cond_a9a

    .line 5649
    :try_start_9d6
    iget-object v12, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 5650
    .local v12, "userId":I
    move/from16 v22, v0

    .end local v0    # "userRestrictionCount":I
    .local v22, "userRestrictionCount":I
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z
    :try_end_9e6
    .catchall {:try_start_9d6 .. :try_end_9e6} :catchall_b72

    .line 5651
    .local v0, "restrictedOps":[Z
    if-nez v0, :cond_9eb

    .line 5652
    move/from16 v24, v5

    goto :goto_9f6

    .line 5654
    :cond_9eb
    if-ltz v15, :cond_a00

    move/from16 v24, v5

    .end local v5    # "restrictionCount":I
    .local v24, "restrictionCount":I
    :try_start_9ef
    array-length v5, v0

    if-ge v15, v5, :cond_9f6

    aget-boolean v5, v0, v15
    :try_end_9f4
    .catchall {:try_start_9ef .. :try_end_9f4} :catchall_991

    if-nez v5, :cond_a02

    .line 5648
    .end local v0    # "restrictedOps":[Z
    .end local v12    # "userId":I
    .end local v24    # "restrictionCount":I
    .restart local v5    # "restrictionCount":I
    :cond_9f6
    :goto_9f6
    move/from16 v26, v6

    move-wide/from16 v31, v8

    move-object v5, v14

    const/4 v6, 0x1

    move-object/from16 v14, p2

    .end local v5    # "restrictionCount":I
    .restart local v24    # "restrictionCount":I
    goto/16 :goto_a8d

    .line 5654
    .end local v24    # "restrictionCount":I
    .restart local v0    # "restrictedOps":[Z
    .restart local v5    # "restrictionCount":I
    .restart local v12    # "userId":I
    :cond_a00
    move/from16 v24, v5

    .line 5658
    .end local v5    # "restrictionCount":I
    .restart local v24    # "restrictionCount":I
    :cond_a02
    if-nez v4, :cond_a24

    .line 5659
    :try_start_a04
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v4

    .end local v4    # "printedTokenHeader":Z
    .local v25, "printedTokenHeader":Z
    const-string v4, "  User restrictions for token "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_a1c
    .catchall {:try_start_a04 .. :try_end_a1c} :catchall_b72

    move-object v5, v14

    move-object/from16 v14, p2

    .end local v14    # "dumpPackage":Ljava/lang/String;
    .local v5, "dumpPackage":Ljava/lang/String;
    :try_start_a1f
    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5660
    const/4 v4, 0x1

    .end local v25    # "printedTokenHeader":Z
    .restart local v4    # "printedTokenHeader":Z
    goto :goto_a29

    .line 5658
    .end local v5    # "dumpPackage":Ljava/lang/String;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    :cond_a24
    move/from16 v25, v4

    move-object v5, v14

    move-object/from16 v14, p2

    .line 5662
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    :goto_a29
    if-nez v6, :cond_a34

    .line 5663
    move/from16 v25, v4

    .end local v4    # "printedTokenHeader":Z
    .restart local v25    # "printedTokenHeader":Z
    const-string v4, "      Restricted ops:"

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5664
    const/4 v6, 0x1

    goto :goto_a36

    .line 5662
    .end local v25    # "printedTokenHeader":Z
    .restart local v4    # "printedTokenHeader":Z
    :cond_a34
    move/from16 v25, v4

    .line 5666
    .end local v4    # "printedTokenHeader":Z
    .restart local v25    # "printedTokenHeader":Z
    :goto_a36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5667
    .local v4, "restrictedOpsValue":Ljava/lang/StringBuilder;
    move/from16 v26, v6

    .end local v6    # "printedOpsHeader":Z
    .local v26, "printedOpsHeader":Z
    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5668
    array-length v6, v0

    .line 5669
    .local v6, "restrictedOpCount":I
    const/16 v27, 0x0

    move-wide/from16 v31, v8

    move/from16 v8, v27

    .local v8, "k":I
    .local v31, "now":J
    :goto_a49
    if-ge v8, v6, :cond_a6d

    .line 5670
    aget-boolean v9, v0, v8

    if-eqz v9, :cond_a65

    .line 5671
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    move/from16 v27, v6

    const/4 v6, 0x1

    .end local v6    # "restrictedOpCount":I
    .local v27, "restrictedOpCount":I
    if-le v9, v6, :cond_a5d

    .line 5672
    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5674
    :cond_a5d
    invoke-static {v8}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a68

    .line 5670
    .end local v27    # "restrictedOpCount":I
    .restart local v6    # "restrictedOpCount":I
    :cond_a65
    move/from16 v27, v6

    const/4 v6, 0x1

    .line 5669
    .end local v6    # "restrictedOpCount":I
    .restart local v27    # "restrictedOpCount":I
    :goto_a68
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v27

    goto :goto_a49

    .end local v27    # "restrictedOpCount":I
    .restart local v6    # "restrictedOpCount":I
    :cond_a6d
    move/from16 v27, v6

    const/4 v6, 0x1

    .line 5677
    .end local v6    # "restrictedOpCount":I
    .end local v8    # "k":I
    .restart local v27    # "restrictedOpCount":I
    const-string v8, "]"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5678
    const-string v8, "        "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "user: "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 5679
    const-string v8, " restricted ops: "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v4, v25

    .line 5648
    .end local v0    # "restrictedOps":[Z
    .end local v12    # "userId":I
    .end local v25    # "printedTokenHeader":Z
    .end local v27    # "restrictedOpCount":I
    .local v4, "printedTokenHeader":Z
    :goto_a8d
    add-int/lit8 v7, v7, 0x1

    move-object v14, v5

    move/from16 v0, v22

    move/from16 v5, v24

    move/from16 v6, v26

    move-wide/from16 v8, v31

    goto/16 :goto_9d4

    .end local v22    # "userRestrictionCount":I
    .end local v24    # "restrictionCount":I
    .end local v26    # "printedOpsHeader":Z
    .end local v31    # "now":J
    .local v0, "userRestrictionCount":I
    .local v5, "restrictionCount":I
    .local v6, "printedOpsHeader":Z
    .local v8, "now":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    :cond_a9a
    move/from16 v22, v0

    move/from16 v25, v4

    move/from16 v24, v5

    move/from16 v26, v6

    move-wide/from16 v31, v8

    move-object v5, v14

    const/4 v6, 0x1

    move-object/from16 v14, p2

    .end local v0    # "userRestrictionCount":I
    .end local v4    # "printedTokenHeader":Z
    .end local v6    # "printedOpsHeader":Z
    .end local v8    # "now":J
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .local v5, "dumpPackage":Ljava/lang/String;
    .restart local v22    # "userRestrictionCount":I
    .restart local v24    # "restrictionCount":I
    .restart local v25    # "printedTokenHeader":Z
    .restart local v26    # "printedOpsHeader":Z
    .restart local v31    # "now":J
    goto :goto_ab3

    .line 5646
    .end local v7    # "j":I
    .end local v22    # "userRestrictionCount":I
    .end local v24    # "restrictionCount":I
    .end local v25    # "printedTokenHeader":Z
    .end local v26    # "printedOpsHeader":Z
    .end local v31    # "now":J
    .restart local v0    # "userRestrictionCount":I
    .restart local v4    # "printedTokenHeader":Z
    .local v5, "restrictionCount":I
    .restart local v8    # "now":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    :cond_aa9
    move/from16 v22, v0

    move/from16 v24, v5

    move-wide/from16 v31, v8

    move-object v5, v14

    const/4 v6, 0x1

    move-object/from16 v14, p2

    .line 5683
    .end local v0    # "userRestrictionCount":I
    .end local v8    # "now":J
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .local v5, "dumpPackage":Ljava/lang/String;
    .restart local v22    # "userRestrictionCount":I
    .restart local v24    # "restrictionCount":I
    .restart local v31    # "now":J
    :goto_ab3
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_abe

    .line 5684
    iget-object v0, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    goto :goto_ac0

    :cond_abe
    move/from16 v12, v23

    :goto_ac0
    move v0, v12

    .line 5685
    .local v0, "excludedPackageCount":I
    if-lez v0, :cond_b58

    if-gez v15, :cond_b58

    .line 5686
    const/4 v7, 0x0

    .line 5687
    .local v7, "printedPackagesHeader":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_ac7
    if-ge v8, v0, :cond_b53

    .line 5688
    iget-object v9, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 5689
    .local v9, "userId":I
    iget-object v12, v3, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    .line 5690
    .local v12, "packageNames":[Ljava/lang/String;
    if-nez v12, :cond_adf

    .line 5691
    move/from16 v26, v0

    move-object/from16 v27, v3

    goto/16 :goto_b4a

    .line 5694
    :cond_adf
    if-eqz v5, :cond_b03

    .line 5695
    const/16 v25, 0x0

    .line 5696
    .local v25, "hasPackage":Z
    array-length v6, v12

    move/from16 v26, v0

    move/from16 v0, v23

    .end local v0    # "excludedPackageCount":I
    .local v26, "excludedPackageCount":I
    :goto_ae8
    if-ge v0, v6, :cond_b00

    aget-object v27, v12, v0

    move-object/from16 v29, v27

    .line 5697
    .local v29, "pkg":Ljava/lang/String;
    move-object/from16 v27, v3

    move-object/from16 v3, v29

    .end local v29    # "pkg":Ljava/lang/String;
    .local v3, "pkg":Ljava/lang/String;
    .local v27, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_afb

    .line 5698
    const/16 v25, 0x1

    .line 5699
    goto :goto_b02

    .line 5696
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_afb
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v27

    goto :goto_ae8

    .end local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .local v3, "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_b00
    move-object/from16 v27, v3

    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :goto_b02
    goto :goto_b09

    .line 5703
    .end local v25    # "hasPackage":Z
    .end local v26    # "excludedPackageCount":I
    .end local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0    # "excludedPackageCount":I
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_b03
    move/from16 v26, v0

    move-object/from16 v27, v3

    .end local v0    # "excludedPackageCount":I
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v26    # "excludedPackageCount":I
    .restart local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    const/16 v25, 0x1

    .line 5705
    .restart local v25    # "hasPackage":Z
    :goto_b09
    if-nez v25, :cond_b0c

    .line 5706
    goto :goto_b4a

    .line 5708
    :cond_b0c
    if-nez v4, :cond_b28

    .line 5709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  User restrictions for token "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5710
    const/4 v4, 0x1

    .line 5712
    :cond_b28
    if-nez v7, :cond_b30

    .line 5713
    const-string v0, "      Excluded packages:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5714
    const/4 v7, 0x1

    .line 5716
    :cond_b30
    const-string v0, "        "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "user: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 5717
    const-string v0, " packages: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b4a
    .catchall {:try_start_a1f .. :try_end_b4a} :catchall_b5d

    .line 5687
    .end local v9    # "userId":I
    .end local v12    # "packageNames":[Ljava/lang/String;
    .end local v25    # "hasPackage":Z
    :goto_b4a
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v26

    move-object/from16 v3, v27

    const/4 v6, 0x1

    goto/16 :goto_ac7

    .end local v26    # "excludedPackageCount":I
    .end local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0    # "excludedPackageCount":I
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_b53
    move/from16 v26, v0

    move-object/from16 v27, v3

    .end local v0    # "excludedPackageCount":I
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v26    # "excludedPackageCount":I
    .restart local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    goto :goto_b69

    .line 5685
    .end local v7    # "printedPackagesHeader":Z
    .end local v8    # "j":I
    .end local v26    # "excludedPackageCount":I
    .end local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v0    # "excludedPackageCount":I
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    :cond_b58
    move/from16 v26, v0

    move-object/from16 v27, v3

    .end local v0    # "excludedPackageCount":I
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v26    # "excludedPackageCount":I
    .restart local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    goto :goto_b69

    .line 5721
    .end local v1    # "i":I
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v4    # "printedTokenHeader":Z
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v20    # "nowUptime":J
    .end local v22    # "userRestrictionCount":I
    .end local v24    # "restrictionCount":I
    .end local v26    # "excludedPackageCount":I
    .end local v27    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .end local v30    # "needSep":Z
    .end local v31    # "now":J
    .end local v33    # "nowElapsed":J
    :catchall_b5d
    move-exception v0

    move-object v9, v5

    goto :goto_ba7

    .line 5640
    .end local v5    # "dumpPackage":Ljava/lang/String;
    .local v0, "userRestrictionCount":I
    .restart local v1    # "i":I
    .restart local v2    # "token":Landroid/os/IBinder;
    .restart local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .restart local v4    # "printedTokenHeader":Z
    .local v8, "now":J
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v20    # "nowUptime":J
    .restart local v30    # "needSep":Z
    .restart local v33    # "nowElapsed":J
    :cond_b60
    move/from16 v22, v0

    move-object/from16 v27, v3

    move-wide/from16 v31, v8

    move-object v5, v14

    move-object/from16 v14, p2

    .line 5635
    .end local v0    # "userRestrictionCount":I
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "restrictionState":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    .end local v4    # "printedTokenHeader":Z
    .end local v8    # "now":J
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    .restart local v22    # "userRestrictionCount":I
    .restart local v31    # "now":J
    :goto_b69
    add-int/lit8 v1, v1, 0x1

    move-object v14, v5

    move/from16 v0, v22

    move-wide/from16 v8, v31

    goto/16 :goto_99e

    .line 5721
    .end local v1    # "i":I
    .end local v5    # "dumpPackage":Ljava/lang/String;
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v20    # "nowUptime":J
    .end local v22    # "userRestrictionCount":I
    .end local v30    # "needSep":Z
    .end local v31    # "now":J
    .end local v33    # "nowElapsed":J
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    :catchall_b72
    move-exception v0

    move-object v5, v14

    move-object/from16 v14, p2

    move-object v9, v5

    .end local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    goto :goto_ba7

    .line 5635
    .end local v5    # "dumpPackage":Ljava/lang/String;
    .restart local v0    # "userRestrictionCount":I
    .restart local v1    # "i":I
    .restart local v8    # "now":J
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v20    # "nowUptime":J
    .restart local v30    # "needSep":Z
    .restart local v33    # "nowElapsed":J
    :cond_b78
    move/from16 v22, v0

    move-wide/from16 v31, v8

    move-object v5, v14

    move-object/from16 v14, p2

    .line 5721
    .end local v0    # "userRestrictionCount":I
    .end local v1    # "i":I
    .end local v8    # "now":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "dumpPackage":Ljava/lang/String;
    .end local v20    # "nowUptime":J
    .end local v30    # "needSep":Z
    .end local v33    # "nowElapsed":J
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    :try_start_b7f
    monitor-exit p0
    :try_end_b80
    .catchall {:try_start_b7f .. :try_end_b80} :catchall_b98

    .line 5724
    if-eqz v16, :cond_b96

    if-nez v18, :cond_b96

    .line 5725
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    const-string v2, "  "

    move-object/from16 v3, p2

    move/from16 v4, v28

    move-object v9, v5

    .end local v5    # "dumpPackage":Ljava/lang/String;
    .local v9, "dumpPackage":Ljava/lang/String;
    move-object/from16 v6, v17

    move v7, v15

    move/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_b97

    .line 5724
    .end local v9    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    :cond_b96
    move-object v9, v5

    .line 5728
    .end local v5    # "dumpPackage":Ljava/lang/String;
    .restart local v9    # "dumpPackage":Ljava/lang/String;
    :goto_b97
    return-void

    .line 5721
    .end local v9    # "dumpPackage":Ljava/lang/String;
    .restart local v5    # "dumpPackage":Ljava/lang/String;
    :catchall_b98
    move-exception v0

    move-object v9, v5

    .end local v5    # "dumpPackage":Ljava/lang/String;
    .restart local v9    # "dumpPackage":Ljava/lang/String;
    goto :goto_ba7

    .end local v9    # "dumpPackage":Ljava/lang/String;
    .restart local v14    # "dumpPackage":Ljava/lang/String;
    :catchall_b9b
    move-exception v0

    move-object v9, v14

    move-object/from16 v14, p2

    .end local v14    # "dumpPackage":Ljava/lang/String;
    .restart local v9    # "dumpPackage":Ljava/lang/String;
    goto :goto_ba7

    .end local v9    # "dumpPackage":Ljava/lang/String;
    .end local v15    # "dumpOp":I
    .end local v28    # "dumpUid":I
    .end local v35    # "dumpMode":I
    .local v3, "dumpMode":I
    .local v4, "dumpUid":I
    .local v5, "dumpOp":I
    .local v6, "dumpPackage":Ljava/lang/String;
    :catchall_ba0
    move-exception v0

    move/from16 v35, v3

    move/from16 v28, v4

    move v15, v5

    move-object v9, v6

    .end local v3    # "dumpMode":I
    .end local v4    # "dumpUid":I
    .end local v5    # "dumpOp":I
    .end local v6    # "dumpPackage":Ljava/lang/String;
    .restart local v9    # "dumpPackage":Ljava/lang/String;
    .restart local v15    # "dumpOp":I
    .restart local v28    # "dumpUid":I
    .restart local v35    # "dumpMode":I
    :goto_ba7
    :try_start_ba7
    monitor-exit p0
    :try_end_ba8
    .catchall {:try_start_ba7 .. :try_end_ba8} :catchall_ba9

    throw v0

    :catchall_ba9
    move-exception v0

    goto :goto_ba7
.end method

.method public extractAsyncOps(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation

    .line 3447
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3449
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3451
    .local v0, "uid":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    .line 3453
    monitor-enter p0

    .line 3454
    :try_start_c
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit p0

    return-object v1

    .line 3455
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 3542
    invoke-direct {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3543
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3544
    invoke-static {p3, p4}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3545
    .local v7, "resolvedPackageName":Ljava/lang/String;
    if-nez v7, :cond_d

    .line 3546
    return-void

    .line 3551
    :cond_d
    :try_start_d
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v5
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_11} :catch_d2

    .line 3555
    .local v5, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    nop

    .line 3557
    monitor-enter p0

    .line 3558
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, v7

    move-object v4, p5

    :try_start_19
    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v0

    .line 3559
    .local v0, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v0, :cond_53

    .line 3560
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation not found: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") op="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3561
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3560
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    monitor-exit p0

    return-void

    .line 3564
    :cond_53
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 3565
    .local v1, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    if-nez v1, :cond_91

    .line 3566
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribution not found: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3567
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3566
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    monitor-exit p0

    return-void

    .line 3571
    :cond_91
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 3572
    invoke-virtual {v1, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_cd

    .line 3574
    :cond_9b
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation not started: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3575
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3574
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    .end local v0    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v1    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :goto_cd
    monitor-exit p0

    .line 3578
    return-void

    .line 3577
    :catchall_cf
    move-exception v0

    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_19 .. :try_end_d1} :catchall_cf

    throw v0

    .line 3552
    .end local v5    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    :catch_d2
    move-exception v0

    .line 3553
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string v2, "Cannot finishOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3554
    return-void
.end method

.method public getAppOpsServiceDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .registers 2

    .line 2881
    monitor-enter p0

    .line 2882
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    monitor-exit p0

    return-object v0

    .line 2883
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJILandroid/os/RemoteCallback;)V
    .registers 29
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "flags"    # I
    .param p11, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 2096
    .local p4, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v13, p11

    invoke-direct/range {p0 .. p10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 2098
    const-string v2, "callback cannot be null"

    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2100
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/app/ActivityManagerInternal;

    .line 2101
    .local v14, "ami":Landroid/app/ActivityManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/app/ActivityManagerInternal;->isUidCurrentlyInstrumented(I)Z

    move-result v15

    .line 2102
    .local v15, "isCallerInstrumented":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    move/from16 v16, v2

    .line 2104
    .local v16, "isCallerSystem":Z
    if-nez v16, :cond_3d

    if-nez v15, :cond_3d

    .line 2105
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/appop/-$$Lambda$AppOpsService$JHjaGTUaQHugMX7TLydyaTrbPFw;

    invoke-direct {v3, v13}, Lcom/android/server/appop/-$$Lambda$AppOpsService$JHjaGTUaQHugMX7TLydyaTrbPFw;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2106
    return-void

    .line 2109
    :cond_3d
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2110
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2109
    const-string v5, "android.permission.GET_APP_OPS_STATS"

    const-string/jumbo v6, "getHistoricalOps"

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2112
    if-eqz v1, :cond_5e

    .line 2113
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_5f

    :cond_5e
    const/4 v2, 0x0

    :goto_5f
    move-object v7, v2

    .line 2116
    .local v7, "opNamesArray":[Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/appop/-$$Lambda$9PbhNRcJKpFejdnfSDhPa_VHrMY;->INSTANCE:Lcom/android/server/appop/-$$Lambda$9PbhNRcJKpFejdnfSDhPa_VHrMY;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2117
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2118
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 2116
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v0, v12

    move-object/from16 v12, p11

    invoke-static/range {v2 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v2

    .line 2118
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v2

    .line 2116
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2119
    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJILandroid/os/RemoteCallback;)V
    .registers 27
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "flags"    # I
    .param p11, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 2125
    .local p4, "opNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    move-object/from16 v1, p4

    invoke-direct/range {p0 .. p10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    .line 2127
    const-string v2, "callback cannot be null"

    move-object/from16 v14, p11

    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2129
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2130
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2129
    const-string v5, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v6, "getHistoricalOps"

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2132
    if-eqz v1, :cond_2e

    .line 2133
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    move-object v8, v2

    .line 2136
    .local v8, "opNamesArray":[Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/appop/-$$Lambda$ztf_FWUCLkjfRoVMTTWb7ZsjhNk;->INSTANCE:Lcom/android/server/appop/-$$Lambda$ztf_FWUCLkjfRoVMTTWb7ZsjhNk;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2137
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2138
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 2136
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v13, p11

    invoke-static/range {v3 .. v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 2138
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 2136
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2139
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 15
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2033
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2034
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2033
    const-string v3, "android.permission.GET_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2035
    invoke-static {p1, p2}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2036
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 2037
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2039
    :cond_1b
    monitor-enter p0

    .line 2040
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v6, p1

    move-object v7, v0

    :try_start_22
    invoke-direct/range {v5 .. v10}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v1

    .line 2041
    .local v1, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v1, :cond_2a

    .line 2042
    monitor-exit p0

    return-object v4

    .line 2044
    :cond_2a
    invoke-direct {p0, v1, p3}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2045
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_32

    .line 2046
    monitor-exit p0

    return-object v4

    .line 2048
    :cond_32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2049
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v4, v5, v6, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2051
    .local v4, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2052
    monitor-exit p0

    return-object v3

    .line 2053
    .end local v1    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v4    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_47
    move-exception v1

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_22 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 14
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2001
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2002
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2001
    const-string v3, "android.permission.GET_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2003
    const/4 v0, 0x0

    .line 2004
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 2005
    :try_start_12
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2006
    .local v1, "uidStateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_61

    .line 2007
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2008
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v4, :cond_5e

    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2009
    goto :goto_5e

    .line 2011
    :cond_30
    iget-object v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2012
    .local v4, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 2013
    .local v5, "packageCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_37
    if-ge v6, v5, :cond_5e

    .line 2014
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2015
    .local v7, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-direct {p0, v7, p1}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v8

    .line 2016
    .local v8, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v8, :cond_5b

    .line 2017
    if-nez v0, :cond_4d

    .line 2018
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    .line 2020
    :cond_4d
    new-instance v9, Landroid/app/AppOpsManager$PackageOps;

    iget-object v10, v7, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v11, v11, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v9, v10, v11, v8}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2022
    .local v9, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2013
    .end local v7    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v8    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v9    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 2006
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v5    # "packageCount":I
    .end local v6    # "j":I
    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 2026
    .end local v1    # "uidStateCount":I
    .end local v2    # "i":I
    :cond_61
    monitor-exit p0

    .line 2027
    return-object v0

    .line 2026
    :catchall_63
    move-exception v1

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_12 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .registers 9
    .param p1, "uid"    # I
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2151
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2152
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2151
    const-string v3, "android.permission.GET_APP_OPS_STATS"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2153
    monitor-enter p0

    .line 2154
    const/4 v0, 0x0

    :try_start_12
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 2155
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_1a

    .line 2156
    monitor-exit p0

    return-object v4

    .line 2158
    :cond_1a
    invoke-direct {p0, v0, p2}, Lcom/android/server/appop/AppOpsService;->collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2159
    .local v1, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v1, :cond_22

    .line 2160
    monitor-exit p0

    return-object v4

    .line 2162
    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2163
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v4, v5, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2165
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2166
    monitor-exit p0

    return-object v2

    .line 2167
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 5819
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_12

    .line 5820
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 5822
    return v1

    .line 5825
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 5826
    invoke-static {p2, p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5827
    .local v0, "resolvedPackageName":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 5828
    return v1

    .line 5831
    :cond_1c
    monitor-enter p0

    .line 5832
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p2

    move-object v4, v0

    :try_start_23
    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v2

    .line 5833
    .local v2, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v2, :cond_2b

    .line 5834
    monitor-exit p0

    return v1

    .line 5837
    :cond_2b
    invoke-virtual {v2, p1}, Lcom/android/server/appop/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 5838
    .local v3, "op":Lcom/android/server/appop/AppOpsService$Op;
    if-nez v3, :cond_35

    .line 5839
    monitor-exit p0

    return v1

    .line 5842
    :cond_35
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v1

    monitor-exit p0

    return v1

    .line 5843
    .end local v2    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v3    # "op":Lcom/android/server/appop/AppOpsService$Op;
    :catchall_3b
    move-exception v1

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public synthetic lambda$systemReady$0$AppOpsService(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1671
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1672
    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 1673
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 1671
    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I
    .registers 19
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 3070
    move-object v1, p0

    monitor-enter p0

    .line 3071
    :try_start_2
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 3072
    .local v0, "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_21

    .line 3073
    if-nez v0, :cond_c

    .line 3074
    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v2

    return v2

    .line 3077
    :cond_c
    new-instance v10, Lcom/android/server/appop/-$$Lambda$AppOpsService$p0ZLmKR_KoZGKlw2X3zSLMlh_MU;

    invoke-direct {v10, p0}, Lcom/android/server/appop/-$$Lambda$AppOpsService$p0ZLmKR_KoZGKlw2X3zSLMlh_MU;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)I

    move-result v2

    return v2

    .line 3072
    .end local v0    # "delegate":Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public noteProxyOperation(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)I
    .registers 34
    .param p1, "code"    # I
    .param p2, "proxiedUid"    # I
    .param p3, "proxiedPackageName"    # Ljava/lang/String;
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "proxyUid"    # I
    .param p6, "proxyPackageName"    # Ljava/lang/String;
    .param p7, "proxyAttributionTag"    # Ljava/lang/String;
    .param p8, "shouldCollectAsyncNotedOp"    # Z
    .param p9, "message"    # Ljava/lang/String;
    .param p10, "shouldCollectMessage"    # Z

    .line 3034
    move-object/from16 v15, p0

    move/from16 v14, p5

    invoke-direct {v15, v14}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3035
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3037
    invoke-static/range {p5 .. p6}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3038
    .local v21, "resolveProxyPackageName":Ljava/lang/String;
    const/4 v12, 0x1

    if-nez v21, :cond_12

    .line 3039
    return v12

    .line 3042
    :cond_12
    iget-object v0, v15, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v2, v1, v14}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    move v0, v12

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    move/from16 v22, v0

    .line 3046
    .local v22, "isProxyTrusted":Z
    if-eqz v22, :cond_28

    const/4 v0, 0x2

    move v8, v0

    goto :goto_2a

    .line 3047
    :cond_28
    const/4 v0, 0x4

    move v8, v0

    :goto_2a
    nop

    .line 3048
    .local v8, "proxyFlags":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v22, :cond_32

    move v9, v12

    goto :goto_33

    :cond_32
    move v9, v1

    :goto_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proxy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p9

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v3, v21

    move-object/from16 v4, p7

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)I

    move-result v0

    .line 3051
    .local v0, "proxyMode":I
    if-nez v0, :cond_8f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v2, p2

    if-ne v1, v2, :cond_62

    goto :goto_91

    .line 3055
    :cond_62
    invoke-static/range {p2 .. p3}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3056
    .local v1, "resolveProxiedPackageName":Ljava/lang/String;
    if-nez v1, :cond_69

    .line 3057
    return v12

    .line 3059
    :cond_69
    if-eqz v22, :cond_70

    const/16 v3, 0x8

    move/from16 v17, v3

    goto :goto_74

    .line 3060
    :cond_70
    const/16 v3, 0x10

    move/from16 v17, v3

    :goto_74
    nop

    .line 3061
    .local v17, "proxiedFlags":I
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v1

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, v21

    move-object/from16 v16, p7

    move/from16 v18, p8

    move-object/from16 v19, p9

    move/from16 v20, p10

    invoke-direct/range {v9 .. v20}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)I

    move-result v3

    return v3

    .line 3051
    .end local v1    # "resolveProxiedPackageName":Ljava/lang/String;
    .end local v17    # "proxiedFlags":I
    :cond_8f
    move/from16 v2, p2

    .line 3052
    :goto_91
    return v0
.end method

.method public offsetHistory(J)V
    .registers 6
    .param p1, "offsetMillis"    # J

    .line 5857
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "offsetHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5860
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 5861
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 4730
    new-instance v0, Lcom/android/server/appop/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/appop/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4731
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1790
    monitor-enter p0

    .line 1791
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1792
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-nez v0, :cond_d

    .line 1793
    monitor-exit p0

    return-void

    .line 1796
    :cond_d
    const/4 v1, 0x0

    .line 1799
    .local v1, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1b

    .line 1800
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    move-object v1, v2

    .line 1804
    :cond_1b
    if-eqz v1, :cond_31

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1805
    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_31

    .line 1806
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1809
    :cond_31
    if-eqz v1, :cond_6f

    .line 1810
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1812
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v2

    .line 1813
    .local v2, "numOps":I
    const/4 v3, 0x0

    .local v3, "opNum":I
    :goto_3b
    if-ge v3, v2, :cond_6f

    .line 1814
    invoke-virtual {v1, v3}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 1816
    .local v4, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1817
    .local v5, "numAttributions":I
    const/4 v6, 0x0

    .local v6, "attributionNum":I
    :goto_4a
    if-ge v6, v5, :cond_6c

    .line 1819
    iget-object v7, v4, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 1821
    .local v7, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :goto_54
    # getter for: Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$1700(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v8

    if-eqz v8, :cond_69

    .line 1822
    # getter for: Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->access$1700(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_54

    .line 1818
    .end local v7    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    :cond_69
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 1813
    .end local v4    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v5    # "numAttributions":I
    .end local v6    # "attributionNum":I
    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1827
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v2    # "numOps":I
    .end local v3    # "opNum":I
    :cond_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_1 .. :try_end_70} :catchall_76

    .line 1829
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory(ILjava/lang/String;)V

    .line 1830
    return-void

    .line 1827
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 3719
    if-nez p1, :cond_4

    .line 3720
    const/4 v0, -0x1

    return v0

    .line 3722
    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish()V
    .registers 3

    .line 1532
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "appops"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1533
    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsPublished:Z

    .line 1535
    return-void
.end method

.method readState()V
    .registers 14

    .line 4103
    const/4 v0, -0x1

    .line 4104
    .local v0, "oldVersion":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 4105
    :try_start_4
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_1bf

    .line 4108
    :try_start_5
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_198
    .catchall {:try_start_5 .. :try_end_b} :catchall_196

    .line 4112
    .local v2, "stream":Ljava/io/FileInputStream;
    nop

    .line 4113
    const/4 v3, 0x0

    .line 4114
    .local v3, "success":Z
    :try_start_d
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_196

    .line 4116
    :try_start_12
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 4117
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4119
    :goto_1f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2b

    if-eq v6, v7, :cond_2b

    goto :goto_1f

    .line 4124
    :cond_2b
    if-ne v6, v8, :cond_a2

    .line 4128
    const/4 v5, 0x0

    const-string/jumbo v8, "v"

    invoke-interface {v4, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4129
    .local v5, "versionString":Ljava/lang/String;
    if-eqz v5, :cond_3c

    .line 4130
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v0, v8

    .line 4133
    :cond_3c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 4134
    .local v8, "outerDepth":I
    :cond_40
    :goto_40
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v6, v9

    if-eq v9, v7, :cond_92

    const/4 v9, 0x3

    if-ne v6, v9, :cond_50

    .line 4135
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_92

    .line 4136
    :cond_50
    if-eq v6, v9, :cond_40

    const/4 v9, 0x4

    if-ne v6, v9, :cond_56

    .line 4137
    goto :goto_40

    .line 4140
    :cond_56
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 4141
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "pkg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 4142
    invoke-direct {p0, v4}, Lcom/android/server/appop/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_91

    .line 4143
    :cond_67
    const-string/jumbo v10, "uid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 4144
    invoke-direct {p0, v4}, Lcom/android/server/appop/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_91

    .line 4146
    :cond_74
    const-string v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <app-ops>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4147
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4146
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_91
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_91} :catch_15a
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_91} :catch_137
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_91} :catch_114
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_91} :catch_f2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_91} :catch_d0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_91} :catch_ae
    .catchall {:try_start_12 .. :try_end_91} :catchall_ab

    .line 4150
    .end local v9    # "tagName":Ljava/lang/String;
    :goto_91
    goto :goto_40

    .line 4151
    :cond_92
    const/4 v3, 0x1

    .line 4165
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "versionString":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "outerDepth":I
    if-nez v3, :cond_9a

    .line 4166
    :try_start_95
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_196

    .line 4169
    :cond_9a
    :try_start_9a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9f
    .catchall {:try_start_9a .. :try_end_9d} :catchall_196

    .line 4171
    :goto_9d
    goto/16 :goto_17d

    .line 4170
    :catch_9f
    move-exception v4

    .line 4172
    goto/16 :goto_17d

    .line 4125
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_a2
    :try_start_a2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oldVersion":I
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    throw v5
    :try_end_ab
    .catch Ljava/lang/IllegalStateException; {:try_start_a2 .. :try_end_ab} :catch_15a
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_ab} :catch_137
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_ab} :catch_114
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_ab} :catch_f2
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_ab} :catch_d0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a2 .. :try_end_ab} :catch_ae
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_ab

    .line 4165
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    .restart local v0    # "oldVersion":I
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "success":Z
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_ab
    move-exception v4

    goto/16 :goto_188

    .line 4162
    :catch_ae
    move-exception v4

    .line 4163
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_af
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_af .. :try_end_c5} :catchall_ab

    .line 4165
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v3, :cond_cc

    .line 4166
    :try_start_c7
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_cc
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_196

    .line 4169
    :cond_cc
    :try_start_cc
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_9f
    .catchall {:try_start_cc .. :try_end_cf} :catchall_196

    goto :goto_9d

    .line 4160
    :catch_d0
    move-exception v4

    .line 4161
    .local v4, "e":Ljava/io/IOException;
    :try_start_d1
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_d1 .. :try_end_e7} :catchall_ab

    .line 4165
    .end local v4    # "e":Ljava/io/IOException;
    if-nez v3, :cond_ee

    .line 4166
    :try_start_e9
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_ee
    .catchall {:try_start_e9 .. :try_end_ee} :catchall_196

    .line 4169
    :cond_ee
    :try_start_ee
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_9f
    .catchall {:try_start_ee .. :try_end_f1} :catchall_196

    goto :goto_9d

    .line 4158
    :catch_f2
    move-exception v4

    .line 4159
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_f3
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catchall {:try_start_f3 .. :try_end_109} :catchall_ab

    .line 4165
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v3, :cond_110

    .line 4166
    :try_start_10b
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_110
    .catchall {:try_start_10b .. :try_end_110} :catchall_196

    .line 4169
    :cond_110
    :try_start_110
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_9f
    .catchall {:try_start_110 .. :try_end_113} :catchall_196

    goto :goto_9d

    .line 4156
    :catch_114
    move-exception v4

    .line 4157
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_115
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catchall {:try_start_115 .. :try_end_12b} :catchall_ab

    .line 4165
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_132

    .line 4166
    :try_start_12d
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_132
    .catchall {:try_start_12d .. :try_end_132} :catchall_196

    .line 4169
    :cond_132
    :try_start_132
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_135} :catch_9f
    .catchall {:try_start_132 .. :try_end_135} :catchall_196

    goto/16 :goto_9d

    .line 4154
    :catch_137
    move-exception v4

    .line 4155
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_138
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catchall {:try_start_138 .. :try_end_14e} :catchall_ab

    .line 4165
    .end local v4    # "e":Ljava/lang/NullPointerException;
    if-nez v3, :cond_155

    .line 4166
    :try_start_150
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_155
    .catchall {:try_start_150 .. :try_end_155} :catchall_196

    .line 4169
    :cond_155
    :try_start_155
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_158} :catch_9f
    .catchall {:try_start_155 .. :try_end_158} :catchall_196

    goto/16 :goto_9d

    .line 4152
    :catch_15a
    move-exception v4

    .line 4153
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_15b
    const-string v5, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_171
    .catchall {:try_start_15b .. :try_end_171} :catchall_ab

    .line 4165
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    if-nez v3, :cond_178

    .line 4166
    :try_start_173
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_178
    .catchall {:try_start_173 .. :try_end_178} :catchall_196

    .line 4169
    :cond_178
    :try_start_178
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17b} :catch_9f
    .catchall {:try_start_178 .. :try_end_17b} :catchall_196

    goto/16 :goto_9d

    .line 4173
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    :goto_17d
    :try_start_17d
    monitor-exit p0
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_196

    .line 4174
    :try_start_17e
    monitor-exit v1
    :try_end_17f
    .catchall {:try_start_17e .. :try_end_17f} :catchall_1bf

    .line 4175
    monitor-enter p0

    .line 4176
    :try_start_180
    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->upgradeLocked(I)V

    .line 4177
    monitor-exit p0

    .line 4178
    return-void

    .line 4177
    :catchall_185
    move-exception v1

    monitor-exit p0
    :try_end_187
    .catchall {:try_start_180 .. :try_end_187} :catchall_185

    throw v1

    .line 4165
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "success":Z
    :goto_188
    if-nez v3, :cond_18f

    .line 4166
    :try_start_18a
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    :try_end_18f
    .catchall {:try_start_18a .. :try_end_18f} :catchall_196

    .line 4169
    :cond_18f
    :try_start_18f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_193
    .catchall {:try_start_18f .. :try_end_192} :catchall_196

    .line 4171
    goto :goto_194

    .line 4170
    :catch_193
    move-exception v5

    .line 4172
    :goto_194
    nop

    .end local v0    # "oldVersion":I
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_195
    throw v4

    .line 4173
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "success":Z
    .restart local v0    # "oldVersion":I
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_196
    move-exception v2

    goto :goto_1bd

    .line 4109
    :catch_198
    move-exception v2

    .line 4110
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing app ops "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; starting empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    monitor-exit p0
    :try_end_1bb
    .catchall {:try_start_195 .. :try_end_1bb} :catchall_196

    :try_start_1bb
    monitor-exit v1
    :try_end_1bc
    .catchall {:try_start_1bb .. :try_end_1bc} :catchall_1bf

    return-void

    .line 4173
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1bd
    :try_start_1bd
    monitor-exit p0
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_196

    .end local v0    # "oldVersion":I
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_1be
    throw v2

    .line 4174
    .restart local v0    # "oldVersion":I
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catchall_1bf
    move-exception v2

    monitor-exit v1
    :try_end_1c1
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_1bf

    throw v2
.end method

.method public rebootHistory(J)V
    .registers 6
    .param p1, "offlineDurationMillis"    # J

    .line 5889
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "rebootHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5892
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 5895
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v2}, Lcom/android/server/appop/HistoricalRegistry;->shutdown()V

    .line 5897
    cmp-long v0, p1, v0

    if-lez v0, :cond_22

    .line 5898
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 5901
    :cond_22
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Lcom/android/server/appop/HistoricalRegistry;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 5902
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 5903
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    .line 5904
    return-void
.end method

.method public reloadNonHistoricalState()V
    .registers 6

    .line 2143
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2144
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2143
    const-string v3, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v4, "reloadNonHistoricalState"

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2145
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 2146
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 2147
    return-void
.end method

.method public removeUser(I)V
    .registers 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5806
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 5807
    monitor-enter p0

    .line 5808
    :try_start_7
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 5809
    .local v0, "tokenCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_1f

    .line 5810
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    .line 5811
    .local v2, "opRestrictions":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    invoke-virtual {v2, p1}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->removeUser(I)V

    .line 5809
    .end local v2    # "opRestrictions":Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 5813
    .end local v1    # "i":I
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->removeUidsForUserLocked(I)V

    .line 5814
    .end local v0    # "tokenCount":I
    monitor-exit p0

    .line 5815
    return-void

    .line 5814
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notedAppOp"    # Landroid/app/SyncNotedAppOp;
    .param p3, "message"    # Ljava/lang/String;

    .line 5918
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5919
    .local v6, "uid":I
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5920
    monitor-enter p0

    .line 5921
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 5922
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v7, 0x1

    if-nez v0, :cond_2c

    .line 5923
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig;

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 5924
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v7, v8, v4}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit p0

    .line 5923
    return-object v0

    .line 5927
    :cond_2c
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5928
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5930
    nop

    .line 5931
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v3

    .line 5932
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 5930
    move-object v0, p0

    move v1, v6

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 5934
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig;

    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    iget v2, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 5935
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, v7, v8, v4}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit p0

    .line 5934
    return-object v0

    .line 5936
    :catchall_5f
    move-exception v0

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_8 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .registers 26
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    .line 2641
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2642
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2643
    .local v5, "callingUid":I
    const/4 v12, 0x1

    const/4 v13, 0x1

    const-string/jumbo v14, "resetAllModes"

    const/4 v15, 0x0

    move v9, v6

    move v10, v5

    move/from16 v11, p1

    invoke-static/range {v9 .. v15}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2646
    .end local p1    # "reqUserId":I
    .local v9, "reqUserId":I
    const/4 v1, -0x1

    .line 2647
    .local v1, "reqUid":I
    if-eqz v8, :cond_2b

    .line 2649
    :try_start_1d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-interface {v0, v8, v2, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_27} :catch_2a

    move v1, v0

    .line 2653
    move v10, v1

    goto :goto_2c

    .line 2651
    :catch_2a
    move-exception v0

    .line 2656
    :cond_2b
    move v10, v1

    .end local v1    # "reqUid":I
    .local v10, "reqUid":I
    :goto_2c
    invoke-direct {v7, v6, v5, v10}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2658
    const/4 v1, 0x0

    .line 2659
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 2660
    .local v2, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    monitor-enter p0

    .line 2661
    const/4 v0, 0x0

    .line 2662
    .local v0, "changed":Z
    :try_start_38
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_30f

    add-int/lit8 v3, v3, -0x1

    move-object v11, v1

    move-object v12, v2

    .end local v1    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .local v3, "i":I
    .local v11, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v12, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :goto_42
    if-ltz v3, :cond_26d

    .line 2663
    :try_start_44
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2665
    .local v1, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_262

    .line 2666
    .local v2, "opModes":Landroid/util/SparseIntArray;
    const/4 v4, -0x1

    if-eqz v2, :cond_118

    :try_start_51
    iget v13, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v13, v10, :cond_60

    if-ne v10, v4, :cond_58

    goto :goto_60

    :cond_58
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v21, v6

    goto/16 :goto_11e

    .line 2667
    :cond_60
    :goto_60
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 2668
    .local v13, "uidOpCount":I
    add-int/lit8 v14, v13, -0x1

    .local v14, "j":I
    :goto_66
    if-ltz v14, :cond_105

    .line 2669
    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 2670
    .local v15, "code":I
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v16

    if-eqz v16, :cond_f4

    .line 2671
    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2672
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v16
    :try_end_79
    .catchall {:try_start_51 .. :try_end_79} :catchall_10d

    if-gtz v16, :cond_8a

    .line 2673
    const/4 v4, 0x0

    :try_start_7c
    iput-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;
    :try_end_7e
    .catchall {:try_start_7c .. :try_end_7e} :catchall_7f

    goto :goto_8a

    .line 2748
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v3    # "i":I
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    :catchall_7f
    move-exception v0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v9

    move-object v1, v11

    move-object v2, v12

    goto/16 :goto_316

    .line 2675
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2    # "opModes":Landroid/util/SparseIntArray;
    .restart local v3    # "i":I
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v15    # "code":I
    :cond_8a
    :goto_8a
    :try_start_8a
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v2

    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .local v16, "opModes":Landroid/util/SparseIntArray;
    array-length v2, v4
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_10d

    const/16 v17, 0x0

    move/from16 v22, v17

    move/from16 v17, v5

    move/from16 v5, v22

    .end local v5    # "callingUid":I
    .local v17, "callingUid":I
    :goto_9b
    if-ge v5, v2, :cond_f1

    :try_start_9d
    aget-object v18, v4, v5

    move-object/from16 v19, v18

    .line 2676
    .local v19, "packageName":Ljava/lang/String;
    move/from16 v18, v2

    iget v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object/from16 v20, v4

    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 2677
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;
    :try_end_af
    .catchall {:try_start_9d .. :try_end_af} :catchall_e8

    .line 2676
    move/from16 v21, v6

    move-object/from16 v6, v19

    .end local v19    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    .local v21, "callingPid":I
    :try_start_b3
    invoke-static {v11, v15, v2, v6, v4}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v2
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_df

    .line 2678
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v2, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_b7
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 2679
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 2678
    invoke-static {v2, v15, v4, v6, v11}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_c5
    .catchall {:try_start_b7 .. :try_end_c5} :catchall_d6

    move-object v11, v4

    .line 2681
    .end local v2    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_c6
    iget v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v12, v15, v2, v6}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_cc
    .catchall {:try_start_c6 .. :try_end_cc} :catchall_df

    move-object v12, v2

    .line 2675
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v18

    move-object/from16 v4, v20

    move/from16 v6, v21

    goto :goto_9b

    .line 2748
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "i":I
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v15    # "code":I
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .restart local v2    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :catchall_d6
    move-exception v0

    move-object v1, v2

    move/from16 v20, v9

    move-object v2, v12

    move/from16 v18, v21

    goto/16 :goto_316

    .end local v2    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :catchall_df
    move-exception v0

    move/from16 v20, v9

    move-object v1, v11

    move-object v2, v12

    move/from16 v18, v21

    goto/16 :goto_316

    .end local v21    # "callingPid":I
    .local v6, "callingPid":I
    :catchall_e8
    move-exception v0

    move/from16 v18, v6

    move/from16 v20, v9

    move-object v1, v11

    move-object v2, v12

    .end local v6    # "callingPid":I
    .restart local v21    # "callingPid":I
    goto/16 :goto_316

    .line 2675
    .end local v21    # "callingPid":I
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3    # "i":I
    .restart local v6    # "callingPid":I
    .restart local v13    # "uidOpCount":I
    .restart local v14    # "j":I
    .restart local v15    # "code":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    :cond_f1
    move/from16 v21, v6

    .end local v6    # "callingPid":I
    .restart local v21    # "callingPid":I
    goto :goto_fa

    .line 2670
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .end local v17    # "callingUid":I
    .end local v21    # "callingPid":I
    .local v2, "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_f4
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v21, v6

    .line 2668
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v15    # "code":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    .restart local v17    # "callingUid":I
    .restart local v21    # "callingPid":I
    :goto_fa
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v2, v16

    move/from16 v5, v17

    move/from16 v6, v21

    const/4 v4, -0x1

    goto/16 :goto_66

    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .end local v17    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v2    # "opModes":Landroid/util/SparseIntArray;
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_105
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v21, v6

    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    .restart local v17    # "callingUid":I
    .restart local v21    # "callingPid":I
    move-object v2, v12

    goto :goto_11f

    .line 2748
    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "i":I
    .end local v13    # "uidOpCount":I
    .end local v14    # "j":I
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .end local v17    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :catchall_10d
    move-exception v0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v9

    move-object v1, v11

    move-object v2, v12

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v17    # "callingUid":I
    .restart local v21    # "callingPid":I
    goto/16 :goto_316

    .line 2666
    .end local v17    # "callingUid":I
    .end local v21    # "callingPid":I
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v2    # "opModes":Landroid/util/SparseIntArray;
    .restart local v3    # "i":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    :cond_118
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v21, v6

    .line 2688
    .end local v2    # "opModes":Landroid/util/SparseIntArray;
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    .restart local v17    # "callingUid":I
    .restart local v21    # "callingPid":I
    :goto_11e
    move-object v2, v12

    .end local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .local v2, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :goto_11f
    :try_start_11f
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_121
    .catchall {:try_start_11f .. :try_end_121} :catchall_25a

    if-nez v4, :cond_124

    .line 2689
    goto :goto_130

    .line 2692
    :cond_124
    const/4 v4, -0x1

    if-eq v9, v4, :cond_13d

    :try_start_127
    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2693
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4
    :try_end_12d
    .catchall {:try_start_127 .. :try_end_12d} :catchall_135

    if-eq v9, v4, :cond_13d

    .line 2695
    nop

    .line 2662
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    :goto_130
    move-object v12, v2

    move/from16 v20, v9

    goto/16 :goto_248

    .line 2748
    .end local v0    # "changed":Z
    .end local v3    # "i":I
    :catchall_135
    move-exception v0

    move/from16 v20, v9

    move-object v1, v11

    move/from16 v18, v21

    goto/16 :goto_316

    .line 2698
    .restart local v0    # "changed":Z
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3    # "i":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    :cond_13d
    :try_start_13d
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2699
    .local v4, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2700
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    const/4 v6, 0x0

    .line 2701
    .local v6, "uidChanged":Z
    :goto_148
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_22f

    .line 2702
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 2703
    .local v12, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_15a
    .catchall {:try_start_13d .. :try_end_15a} :catchall_25a

    .line 2704
    .local v13, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_163

    :try_start_15c
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_160
    .catchall {:try_start_15c .. :try_end_160} :catchall_135

    if-nez v14, :cond_163

    .line 2706
    goto :goto_148

    .line 2708
    :cond_163
    :try_start_163
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2709
    .local v14, "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v14}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .local v15, "j":I
    :goto_16f
    if-ltz v15, :cond_212

    .line 2710
    invoke-virtual {v14, v15}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/appop/AppOpsService$Op;

    move-object/from16 p1, v18

    .line 2711
    .local p1, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    move/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 p1, v4

    .end local v4    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v0, "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .local v18, "changed":Z
    .local p1, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    iget v4, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-direct {v7, v4}, Lcom/android/server/appop/AppOpsService;->shouldDeferResetOpToDpm(I)Z

    move-result v4
    :try_end_185
    .catchall {:try_start_163 .. :try_end_185} :catchall_25a

    if-eqz v4, :cond_192

    .line 2712
    :try_start_187
    iget v4, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-direct {v7, v4, v8, v9}, Lcom/android/server/appop/AppOpsService;->deferResetOpToDpm(ILjava/lang/String;I)V
    :try_end_18c
    .catchall {:try_start_187 .. :try_end_18c} :catchall_135

    .line 2713
    move/from16 v19, v6

    move/from16 v20, v9

    goto/16 :goto_204

    .line 2715
    :cond_192
    :try_start_192
    iget v4, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_200

    .line 2716
    # getter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$Op;->access$300(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v4

    move/from16 v19, v6

    .end local v6    # "uidChanged":Z
    .local v19, "uidChanged":Z
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    if-eq v4, v6, :cond_1fd

    .line 2717
    iget v4, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    # setter for: Lcom/android/server/appop/AppOpsService$Op;->mode:I
    invoke-static {v0, v4}, Lcom/android/server/appop/AppOpsService$Op;->access$302(Lcom/android/server/appop/AppOpsService$Op;I)I

    .line 2718
    const/4 v4, 0x1

    .line 2719
    .end local v18    # "changed":Z
    .local v4, "changed":Z
    const/4 v6, 0x1

    .line 2720
    .end local v19    # "uidChanged":Z
    .restart local v6    # "uidChanged":Z
    move/from16 v18, v4

    .end local v4    # "changed":Z
    .restart local v18    # "changed":Z
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 2721
    .local v4, "uid":I
    move/from16 v19, v6

    .end local v6    # "uidChanged":Z
    .restart local v19    # "uidChanged":Z
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v8, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;
    :try_end_1bf
    .catchall {:try_start_192 .. :try_end_1bf} :catchall_25a

    move/from16 v20, v9

    .end local v9    # "reqUserId":I
    .local v20, "reqUserId":I
    :try_start_1c1
    iget v9, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 2722
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 2721
    invoke-static {v11, v6, v4, v13, v8}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v6
    :try_end_1cd
    .catchall {:try_start_1c1 .. :try_end_1cd} :catchall_254

    .line 2723
    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v6, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    :try_start_1cd
    iget v8, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v9, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 2724
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 2723
    invoke-static {v6, v8, v4, v13, v9}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;Landroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v8

    move-object v6, v8

    .line 2726
    iget v8, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v2, v8, v4, v13}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move-object v2, v8

    .line 2727
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 2728
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1f1

    .line 2729
    invoke-virtual {v14, v15}, Lcom/android/server/appop/AppOpsService$Ops;->removeAt(I)V
    :try_end_1f1
    .catchall {:try_start_1cd .. :try_end_1f1} :catchall_1f7

    .line 2709
    .end local v0    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v4    # "uid":I
    :cond_1f1
    move-object v11, v6

    move/from16 v0, v18

    move/from16 v6, v19

    goto :goto_208

    .line 2748
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v3    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v12    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v15    # "j":I
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .end local v18    # "changed":Z
    .end local v19    # "uidChanged":Z
    .end local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :catchall_1f7
    move-exception v0

    move-object v1, v6

    move/from16 v18, v21

    goto/16 :goto_316

    .line 2716
    .end local v6    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v20    # "reqUserId":I
    .restart local v0    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v3    # "i":I
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .restart local v9    # "reqUserId":I
    .restart local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .restart local v12    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v15    # "j":I
    .restart local v16    # "opModes":Landroid/util/SparseIntArray;
    .restart local v18    # "changed":Z
    .restart local v19    # "uidChanged":Z
    .restart local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_1fd
    move/from16 v20, v9

    .end local v9    # "reqUserId":I
    .restart local v20    # "reqUserId":I
    goto :goto_204

    .line 2715
    .end local v19    # "uidChanged":Z
    .end local v20    # "reqUserId":I
    .local v6, "uidChanged":Z
    .restart local v9    # "reqUserId":I
    :cond_200
    move/from16 v19, v6

    move/from16 v20, v9

    .line 2709
    .end local v0    # "curOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v6    # "uidChanged":Z
    .end local v9    # "reqUserId":I
    .restart local v19    # "uidChanged":Z
    .restart local v20    # "reqUserId":I
    :goto_204
    move/from16 v0, v18

    move/from16 v6, v19

    .end local v18    # "changed":Z
    .end local v19    # "uidChanged":Z
    .local v0, "changed":Z
    .restart local v6    # "uidChanged":Z
    :goto_208
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move/from16 v9, v20

    goto/16 :goto_16f

    .end local v20    # "reqUserId":I
    .end local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .local v4, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v9    # "reqUserId":I
    :cond_212
    move/from16 v18, v0

    move-object/from16 p1, v4

    move/from16 v19, v6

    move/from16 v20, v9

    .line 2733
    .end local v0    # "changed":Z
    .end local v4    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v6    # "uidChanged":Z
    .end local v9    # "reqUserId":I
    .end local v15    # "j":I
    .restart local v18    # "changed":Z
    .restart local v19    # "uidChanged":Z
    .restart local v20    # "reqUserId":I
    .restart local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :try_start_21a
    invoke-virtual {v14}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v0

    if-nez v0, :cond_223

    .line 2734
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 2736
    .end local v12    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkgOps":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_223
    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move/from16 v0, v18

    move/from16 v6, v19

    move/from16 v9, v20

    goto/16 :goto_148

    .line 2737
    .end local v18    # "changed":Z
    .end local v19    # "uidChanged":Z
    .end local v20    # "reqUserId":I
    .end local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v0    # "changed":Z
    .restart local v4    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .restart local v6    # "uidChanged":Z
    .restart local v9    # "reqUserId":I
    :cond_22f
    move-object/from16 p1, v4

    move/from16 v20, v9

    .end local v4    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v9    # "reqUserId":I
    .restart local v20    # "reqUserId":I
    .restart local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_240

    .line 2738
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v8, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 2740
    :cond_240
    if-eqz v6, :cond_247

    .line 2741
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V
    :try_end_247
    .catchall {:try_start_21a .. :try_end_247} :catchall_254

    .line 2662
    .end local v1    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;>;"
    .end local v6    # "uidChanged":Z
    .end local v16    # "opModes":Landroid/util/SparseIntArray;
    .end local p1    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    :cond_247
    move-object v12, v2

    .end local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .local v12, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :goto_248
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v8, p2

    move/from16 v5, v17

    move/from16 v9, v20

    move/from16 v6, v21

    goto/16 :goto_42

    .line 2748
    .end local v0    # "changed":Z
    .end local v3    # "i":I
    .end local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .restart local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :catchall_254
    move-exception v0

    move-object v1, v11

    move/from16 v18, v21

    goto/16 :goto_316

    .end local v20    # "reqUserId":I
    .restart local v9    # "reqUserId":I
    :catchall_25a
    move-exception v0

    move/from16 v20, v9

    move-object v1, v11

    move/from16 v18, v21

    .end local v9    # "reqUserId":I
    .restart local v20    # "reqUserId":I
    goto/16 :goto_316

    .end local v2    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v17    # "callingUid":I
    .end local v20    # "reqUserId":I
    .end local v21    # "callingPid":I
    .local v5, "callingUid":I
    .local v6, "callingPid":I
    .restart local v9    # "reqUserId":I
    .restart local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    :catchall_262
    move-exception v0

    move/from16 v20, v9

    move/from16 v17, v5

    move/from16 v18, v6

    move-object v1, v11

    move-object v2, v12

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .restart local v17    # "callingUid":I
    .restart local v20    # "reqUserId":I
    .restart local v21    # "callingPid":I
    goto/16 :goto_316

    .line 2662
    .end local v17    # "callingUid":I
    .end local v20    # "reqUserId":I
    .end local v21    # "callingPid":I
    .restart local v0    # "changed":Z
    .restart local v3    # "i":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v9    # "reqUserId":I
    :cond_26d
    move/from16 v17, v5

    move/from16 v21, v6

    move/from16 v20, v9

    .line 2745
    .end local v3    # "i":I
    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .restart local v17    # "callingUid":I
    .restart local v20    # "reqUserId":I
    .restart local v21    # "callingPid":I
    if-eqz v0, :cond_280

    .line 2746
    :try_start_275
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_278
    .catchall {:try_start_275 .. :try_end_278} :catchall_279

    goto :goto_280

    .line 2748
    .end local v0    # "changed":Z
    :catchall_279
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    move/from16 v18, v21

    goto/16 :goto_316

    :cond_280
    :goto_280
    :try_start_280
    monitor-exit p0
    :try_end_281
    .catchall {:try_start_280 .. :try_end_281} :catchall_309

    .line 2749
    if-eqz v11, :cond_2e7

    .line 2750
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/Map$Entry;

    .line 2751
    .local v8, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2752
    .local v9, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/ArrayList;

    .line 2753
    .local v13, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_2a8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_2df

    .line 2754
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2755
    .local v15, "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs;

    iget v2, v15, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 2757
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v2, v15, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v3, v15, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 2755
    move-object/from16 v2, p0

    move-object/from16 v16, v3

    move-object v3, v9

    move-object/from16 p1, v0

    move-object v0, v6

    move/from16 v18, v21

    .end local v21    # "callingPid":I
    .local v18, "callingPid":I
    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2753
    .end local v15    # "rep":Lcom/android/server/appop/AppOpsService$ChangeRec;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    goto :goto_2a8

    .end local v18    # "callingPid":I
    .restart local v21    # "callingPid":I
    :cond_2df
    move-object/from16 p1, v0

    move/from16 v18, v21

    .line 2759
    .end local v8    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v9    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v13    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v14    # "i":I
    .end local v21    # "callingPid":I
    .restart local v18    # "callingPid":I
    goto :goto_28b

    .line 2750
    .end local v18    # "callingPid":I
    .restart local v21    # "callingPid":I
    :cond_2e4
    move/from16 v18, v21

    .end local v21    # "callingPid":I
    .restart local v18    # "callingPid":I
    goto :goto_2e9

    .line 2749
    .end local v18    # "callingPid":I
    .restart local v21    # "callingPid":I
    :cond_2e7
    move/from16 v18, v21

    .line 2762
    .end local v21    # "callingPid":I
    .restart local v18    # "callingPid":I
    :goto_2e9
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2763
    .local v0, "numChanges":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2ee
    if-ge v1, v0, :cond_308

    .line 2764
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 2765
    .local v2, "change":Lcom/android/server/appop/AppOpsService$ChangeRec;
    iget v3, v2, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    iget-object v5, v2, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 2766
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    .line 2765
    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;I)V

    .line 2763
    .end local v2    # "change":Lcom/android/server/appop/AppOpsService$ChangeRec;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2ee

    .line 2768
    .end local v1    # "i":I
    :cond_308
    return-void

    .line 2748
    .end local v0    # "numChanges":I
    .end local v18    # "callingPid":I
    .restart local v21    # "callingPid":I
    :catchall_309
    move-exception v0

    move/from16 v18, v21

    move-object v1, v11

    move-object v2, v12

    .end local v21    # "callingPid":I
    .restart local v18    # "callingPid":I
    goto :goto_316

    .end local v11    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .end local v12    # "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .end local v17    # "callingUid":I
    .end local v18    # "callingPid":I
    .end local v20    # "reqUserId":I
    .local v1, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/appop/AppOpsService$ModeCallback;Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;>;"
    .local v2, "allChanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appop/AppOpsService$ChangeRec;>;"
    .restart local v5    # "callingUid":I
    .restart local v6    # "callingPid":I
    .local v9, "reqUserId":I
    :catchall_30f
    move-exception v0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v9

    .end local v5    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v9    # "reqUserId":I
    .restart local v17    # "callingUid":I
    .restart local v18    # "callingPid":I
    .restart local v20    # "reqUserId":I
    :goto_316
    :try_start_316
    monitor-exit p0
    :try_end_317
    .catchall {:try_start_316 .. :try_end_317} :catchall_318

    throw v0

    :catchall_318
    move-exception v0

    goto :goto_316
.end method

.method public resetHistoryParameters()V
    .registers 4

    .line 5873
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "resetHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5876
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->resetHistoryParameters()V

    .line 5877
    return-void
.end method

.method public setAppOpsServiceDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .registers 3
    .param p1, "delegate"    # Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2887
    monitor-enter p0

    .line 2888
    :try_start_1
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2889
    monitor-exit p0

    .line 2890
    return-void

    .line 2889
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .registers 14
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 2991
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2992
    invoke-direct {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 2993
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2995
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AudioRestrictionManager;->setZenModeAudioRestriction(IIII[Ljava/lang/String;)V

    .line 2998
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 2999
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2998
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3000
    return-void
.end method

.method public setCameraAudioRestriction(I)V
    .registers 6
    .param p1, "mode"    # I

    .line 3005
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3007
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/AudioRestrictionManager;->setCameraAudioRestriction(I)V

    .line 3009
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 3011
    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3009
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3012
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw;

    .line 3014
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3012
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3015
    return-void
.end method

.method public setHistoryParameters(IJI)V
    .registers 14
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "compressionStep"    # I

    .line 5849
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "setHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5852
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    int-to-long v7, p4

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 5853
    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 2473
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 2474
    return-void
.end method

.method public setUidMode(III)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 2214
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 2215
    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;I[Ljava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userHandle"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .line 5747
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 5748
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 5749
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 5748
    const-string v4, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 5751
    :cond_1a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_3d

    .line 5752
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 5754
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_3d

    .line 5756
    :cond_35
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5760
    :cond_3d
    :goto_3d
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 5761
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5762
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 5763
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .registers 12
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userHandle"    # I

    .line 5732
    const-string/jumbo v0, "setUserRestrictions"

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 5733
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5734
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5735
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    const/16 v1, 0x65

    if-ge v0, v1, :cond_27

    .line 5736
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v7

    .line 5737
    .local v7, "restriction":Ljava/lang/String;
    if-eqz v7, :cond_24

    .line 5738
    const/4 v1, 0x0

    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;I[Ljava/lang/String;)V

    .line 5735
    .end local v7    # "restriction":Ljava/lang/String;
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 5742
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method public shouldCollectNotes(I)Z
    .registers 7
    .param p1, "opCode"    # I

    .line 3727
    const/4 v0, 0x0

    const/16 v1, 0x64

    const-string/jumbo v2, "opCode"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3729
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    .line 3730
    .local v1, "perm":Ljava/lang/String;
    if-nez v1, :cond_10

    .line 3731
    return v0

    .line 3736
    :cond_10
    :try_start_10
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1a} :catch_2c

    .line 3739
    .local v2, "permInfo":Landroid/content/pm/PermissionInfo;
    nop

    .line 3741
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a

    .line 3742
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_2b

    :cond_2a
    move v0, v4

    .line 3741
    :cond_2b
    return v0

    .line 3737
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    :catch_2c
    move-exception v2

    .line 3738
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public shutdown()V
    .registers 3

    .line 1921
    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/4 v0, 0x0

    .line 1923
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 1924
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_11

    .line 1925
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 1926
    const/4 v0, 0x1

    .line 1928
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1d

    .line 1929
    if-eqz v0, :cond_17

    .line 1930
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 1936
    :cond_17
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v1}, Lcom/android/server/appop/HistoricalRegistry;->shutdown()V

    .line 1937
    return-void

    .line 1928
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)I
    .registers 27
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "startIfModeDefault"    # Z
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "shouldCollectMessage"    # Z

    .line 3462
    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct {v9, v11}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3463
    invoke-direct {v9, v10}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3464
    invoke-static/range {p3 .. p4}, Lcom/android/server/appop/AppOpsService;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3465
    .local v14, "resolvedPackageName":Ljava/lang/String;
    const/4 v0, 0x1

    if-nez v14, :cond_18

    .line 3466
    return v0

    .line 3471
    :cond_18
    const/4 v7, 0x2

    :try_start_19
    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_1d} :catch_194

    move-object v15, v1

    .line 3475
    .local v15, "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    nop

    .line 3477
    monitor-enter p0

    .line 3478
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v14

    move-object/from16 v4, p5

    move-object v5, v15

    :try_start_29
    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v1

    .line 3480
    .local v1, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v1, :cond_5f

    .line 3481
    invoke-direct {v9, v10, v11, v12, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V

    .line 3482
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_5d

    const-string v0, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startOperation: no op for code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    :cond_5d
    monitor-exit p0

    return v7

    .line 3486
    :cond_5f
    invoke-direct {v9, v1, v10, v11, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v2

    .line 3487
    .local v2, "op":Lcom/android/server/appop/AppOpsService$Op;
    invoke-direct {v9, v11, v10, v14, v15}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 3488
    invoke-direct {v9, v10, v11, v12, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V

    .line 3489
    monitor-exit p0

    return v0

    .line 3491
    :cond_6e
    # invokes: Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-static {v2, v2, v13}, Lcom/android/server/appop/AppOpsService$Op;->access$1000(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v3

    .line 3492
    .local v3, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    .line 3493
    .local v4, "switchCode":I
    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 3496
    .local v5, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v7, 0x3

    if-eqz v6, :cond_dc

    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_dc

    .line 3497
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v10, v6}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v6

    .line 3498
    .local v6, "uidMode":I
    if-eqz v6, :cond_db

    if-eqz p6, :cond_95

    if-eq v6, v7, :cond_db

    .line 3500
    :cond_95
    sget-boolean v7, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v7, :cond_d0

    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "noteOperation: uid reject #"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for code "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") uid "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    :cond_d0
    iget v0, v5, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V

    .line 3504
    invoke-direct {v9, v10, v11, v12, v6}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V

    .line 3505
    monitor-exit p0

    return v6

    .line 3507
    .end local v6    # "uidMode":I
    :cond_db
    goto :goto_13d

    .line 3508
    :cond_dc
    if-eq v4, v10, :cond_e4

    const/4 v0, 0x1

    invoke-direct {v9, v1, v4, v11, v0}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v6

    goto :goto_e5

    .line 3509
    :cond_e4
    move-object v6, v2

    :goto_e5
    move-object v0, v6

    .line 3510
    .local v0, "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v6

    .line 3511
    .local v6, "mode":I
    if-eqz v6, :cond_13b

    if-eqz p6, :cond_f0

    if-eq v6, v7, :cond_13d

    .line 3513
    :cond_f0
    sget-boolean v7, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v7, :cond_12e

    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .local v16, "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    const-string/jumbo v0, "startOperation: reject #"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for code "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") uid "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    .end local v16    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v0    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    :cond_12e
    move-object/from16 v16, v0

    .line 3516
    .end local v0    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v16    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    :goto_130
    iget v0, v5, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(II)V

    .line 3517
    invoke-direct {v9, v10, v11, v12, v6}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V

    .line 3518
    monitor-exit p0

    return v6

    .line 3511
    .end local v16    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v0    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    :cond_13b
    move-object/from16 v16, v0

    .line 3521
    .end local v0    # "switchOp":Lcom/android/server/appop/AppOpsService$Op;
    .end local v6    # "mode":I
    :cond_13d
    :goto_13d
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_168

    const-string v0, "AppOps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startOperation: allowing code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    :cond_168
    const/4 v0, 0x0

    invoke-direct {v9, v10, v11, v12, v0}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;I)V
    :try_end_16c
    .catchall {:try_start_29 .. :try_end_16c} :catchall_191

    .line 3525
    :try_start_16c
    iget v6, v5, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object/from16 v8, p1

    invoke-virtual {v3, v8, v6}, Lcom/android/server/appop/AppOpsService$AttributedOp;->started(Landroid/os/IBinder;I)V
    :try_end_173
    .catch Landroid/os/RemoteException; {:try_start_16c .. :try_end_173} :catch_18a
    .catchall {:try_start_16c .. :try_end_173} :catchall_191

    .line 3528
    nop

    .line 3529
    .end local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v3    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v4    # "switchCode":I
    .end local v5    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :try_start_174
    monitor-exit p0
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_191

    .line 3531
    if-eqz p7, :cond_189

    .line 3532
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 3536
    :cond_189
    return v0

    .line 3526
    .restart local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .restart local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .restart local v3    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .restart local v4    # "switchCode":I
    .restart local v5    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :catch_18a
    move-exception v0

    .line 3527
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_18b
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v14    # "resolvedPackageName":Ljava/lang/String;
    .end local v15    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .end local p1    # "clientId":Landroid/os/IBinder;
    .end local p2    # "code":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "attributionTag":Ljava/lang/String;
    .end local p6    # "startIfModeDefault":Z
    .end local p7    # "shouldCollectAsyncNotedOp":Z
    .end local p8    # "message":Ljava/lang/String;
    .end local p9    # "shouldCollectMessage":Z
    throw v6

    .line 3529
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v2    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v3    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v4    # "switchCode":I
    .end local v5    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .restart local v14    # "resolvedPackageName":Ljava/lang/String;
    .restart local v15    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    .restart local p1    # "clientId":Landroid/os/IBinder;
    .restart local p2    # "code":I
    .restart local p3    # "uid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "attributionTag":Ljava/lang/String;
    .restart local p6    # "startIfModeDefault":Z
    .restart local p7    # "shouldCollectAsyncNotedOp":Z
    .restart local p8    # "message":Ljava/lang/String;
    .restart local p9    # "shouldCollectMessage":Z
    :catchall_191
    move-exception v0

    monitor-exit p0
    :try_end_193
    .catchall {:try_start_18b .. :try_end_193} :catchall_191

    throw v0

    .line 3472
    .end local v15    # "bypass":Landroid/app/AppOpsManager$RestrictionBypass;
    :catch_194
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 3473
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AppOps"

    const-string/jumbo v2, "startOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3474
    return v7
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 15
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 3181
    const/4 v0, -0x1

    .line 3182
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3183
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3184
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 3186
    move v0, v7

    .line 3188
    :cond_14
    const/4 v9, 0x0

    if-eqz p1, :cond_31

    .line 3189
    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3189
    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3192
    :cond_31
    if-nez p2, :cond_34

    .line 3193
    return-void

    .line 3195
    :cond_34
    monitor-enter p0

    .line 3196
    :try_start_35
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3197
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    if-nez v1, :cond_54

    .line 3198
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 3199
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_55

    .line 3197
    :cond_54
    move-object v10, v1

    .line 3201
    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :goto_55
    new-instance v11, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    move-object v1, v11

    .line 3203
    .local v1, "activeCallback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    array-length v2, p1

    :goto_62
    if-ge v9, v2, :cond_6c

    aget v3, p1, v9

    .line 3204
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3203
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_62

    .line 3206
    .end local v1    # "activeCallback":Lcom/android/server/appop/AppOpsService$ActiveCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    :cond_6c
    monitor-exit p0

    .line 3207
    return-void

    .line 3206
    :catchall_6e
    move-exception v1

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_35 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 3396
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3397
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3400
    .local v0, "uid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    .line 3402
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    .line 3404
    monitor-enter p0

    .line 3405
    :try_start_13
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 3406
    .local v2, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    if-nez v2, :cond_28

    .line 3407
    new-instance v3, Lcom/android/server/appop/AppOpsService$8;

    invoke-direct {v3, p0, v1}, Lcom/android/server/appop/AppOpsService$8;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/util/Pair;)V

    move-object v2, v3

    .line 3417
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3420
    :cond_28
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3421
    nop

    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    monitor-exit p0

    .line 3422
    return-void

    .line 3421
    :catchall_2e
    move-exception v2

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 5
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2794
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 2795
    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 24
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2800
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, -0x1

    .line 2801
    .local v12, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 2802
    .local v13, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 2807
    .local v14, "callingPid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, -0x1

    const/16 v1, 0x64

    invoke-static {v10, v15, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 2809
    if-nez p4, :cond_29

    .line 2810
    return-void

    .line 2812
    :cond_29
    monitor-enter p0

    .line 2813
    if-eq v10, v15, :cond_34

    :try_start_2c
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    goto :goto_35

    .line 2849
    :catchall_31
    move-exception v0

    goto/16 :goto_b0

    .line 2813
    :cond_34
    move v0, v10

    .line 2816
    .local v0, "switchOp":I
    :goto_35
    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_44

    .line 2817
    if-ne v10, v15, :cond_3f

    .line 2818
    const/4 v1, -0x2

    move/from16 v16, v1

    .local v1, "notifiedOps":I
    goto :goto_47

    .line 2820
    .end local v1    # "notifiedOps":I
    :cond_3f
    move/from16 v1, p1

    move/from16 v16, v1

    .restart local v1    # "notifiedOps":I
    goto :goto_47

    .line 2823
    .end local v1    # "notifiedOps":I
    :cond_44
    move v1, v0

    move/from16 v16, v1

    .line 2826
    .local v16, "notifiedOps":I
    :goto_47
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    move-object/from16 v17, v1

    .line 2827
    .local v17, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-nez v17, :cond_75

    .line 2828
    new-instance v18, Lcom/android/server/appop/AppOpsService$ModeCallback;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move v4, v12

    move/from16 v5, p3

    move/from16 v6, v16

    move v7, v13

    move v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService$ModeCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIIII)V

    move-object/from16 v1, v18

    .line 2830
    .end local v17    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .local v1, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    .line 2827
    .end local v1    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v17    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :cond_75
    move-object/from16 v1, v17

    .line 2832
    .end local v17    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .restart local v1    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    :goto_77
    if-eq v0, v15, :cond_91

    .line 2833
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2834
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v2, :cond_8e

    .line 2835
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 2836
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2838
    :cond_8e
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2840
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_91
    if-eqz v11, :cond_ab

    .line 2841
    iget-object v2, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2842
    .restart local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v2, :cond_a8

    .line 2843
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 2844
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2846
    :cond_a8
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2848
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_ab
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 2849
    .end local v0    # "switchOp":I
    .end local v1    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    .end local v16    # "notifiedOps":I
    monitor-exit p0

    .line 2850
    return-void

    .line 2849
    :goto_b0
    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_2c .. :try_end_b1} :catchall_31

    throw v0
.end method

.method public startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 15
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 3277
    const/4 v0, -0x1

    .line 3278
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3279
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3280
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 3282
    move v0, v7

    .line 3284
    :cond_14
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ops cannot be null or empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3285
    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3286
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3285
    const/4 v9, 0x0

    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3287
    const-string v1, "Callback cannot be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3288
    monitor-enter p0

    .line 3289
    :try_start_40
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3290
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    if-nez v1, :cond_5f

    .line 3291
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 3292
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_60

    .line 3290
    :cond_5f
    move-object v10, v1

    .line 3294
    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    :goto_60
    new-instance v11, Lcom/android/server/appop/AppOpsService$NotedCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$NotedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsNotedCallback;III)V

    move-object v1, v11

    .line 3296
    .local v1, "notedCallback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    array-length v2, p1

    :goto_6d
    if-ge v9, v2, :cond_77

    aget v3, p1, v9

    .line 3297
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3296
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    .line 3299
    .end local v1    # "notedCallback":Lcom/android/server/appop/AppOpsService$NotedCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    :cond_77
    monitor-exit p0

    .line 3300
    return-void

    .line 3299
    :catchall_79
    move-exception v1

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_40 .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    .registers 15
    .param p1, "ops"    # [I
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsStartedCallback;

    .line 3229
    const/4 v0, -0x1

    .line 3230
    .local v0, "watchedUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3231
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3232
    .local v8, "callingPid":I
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 3234
    move v0, v7

    .line 3237
    :cond_14
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ops cannot be null or empty"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3238
    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid op code in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3239
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3238
    const/4 v9, 0x0

    invoke-static {p1, v9, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 3240
    const-string v1, "Callback cannot be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3242
    monitor-enter p0

    .line 3243
    :try_start_40
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3244
    .local v1, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    if-nez v1, :cond_5f

    .line 3245
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 3246
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_60

    .line 3244
    :cond_5f
    move-object v10, v1

    .line 3249
    .end local v1    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .local v10, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    :goto_60
    new-instance v11, Lcom/android/server/appop/AppOpsService$StartedCallback;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService$StartedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsStartedCallback;III)V

    move-object v1, v11

    .line 3251
    .local v1, "startedCallback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    array-length v2, p1

    :goto_6d
    if-ge v9, v2, :cond_77

    aget v3, p1, v9

    .line 3252
    .local v3, "op":I
    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3251
    .end local v3    # "op":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    .line 3254
    .end local v1    # "startedCallback":Lcom/android/server/appop/AppOpsService$StartedCallback;
    .end local v10    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    :cond_77
    monitor-exit p0

    .line 3255
    return-void

    .line 3254
    :catchall_79
    move-exception v1

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_40 .. :try_end_7b} :catchall_79

    throw v1
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 3211
    if-nez p1, :cond_3

    .line 3212
    return-void

    .line 3214
    :cond_3
    monitor-enter p0

    .line 3215
    :try_start_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3216
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3217
    .local v0, "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    if-nez v0, :cond_14

    .line 3218
    monitor-exit p0

    return-void

    .line 3220
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3221
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_27

    .line 3222
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$ActiveCallback;->destroy()V

    .line 3221
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 3224
    .end local v0    # "activeCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$ActiveCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_27
    monitor-exit p0

    .line 3225
    return-void

    .line 3224
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 3426
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3427
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3430
    .local v0, "uid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    .line 3432
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$RestrictionBypass;

    .line 3434
    monitor-enter p0

    .line 3435
    :try_start_13
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 3436
    .local v2, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    if-eqz v2, :cond_2b

    .line 3437
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3438
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    if-nez v3, :cond_2b

    .line 3439
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3442
    .end local v2    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/app/IAppOpsAsyncNotedCallback;>;"
    :cond_2b
    monitor-exit p0

    .line 3443
    return-void

    .line 3442
    :catchall_2d
    move-exception v2

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 2854
    if-nez p1, :cond_3

    .line 2855
    return-void

    .line 2857
    :cond_3
    monitor-enter p0

    .line 2858
    :try_start_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2859
    .local v0, "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    if-eqz v0, :cond_5b

    .line 2860
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 2861
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1d
    if-ltz v1, :cond_38

    .line 2862
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2863
    .local v2, "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2864
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_35

    .line 2865
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2861
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 2868
    .end local v1    # "i":I
    :cond_38
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_40
    if-ltz v1, :cond_5b

    .line 2869
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2870
    .restart local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2871
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-gtz v3, :cond_58

    .line 2872
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2868
    .end local v2    # "cbs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_58
    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    .line 2876
    .end local v1    # "i":I
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 2877
    .end local v0    # "cb":Lcom/android/server/appop/AppOpsService$ModeCallback;
    monitor-exit p0

    .line 2878
    return-void

    .line 2877
    :catchall_60
    move-exception v0

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 3304
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3305
    monitor-enter p0

    .line 3306
    :try_start_6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 3307
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3308
    .local v0, "notedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    if-nez v0, :cond_16

    .line 3309
    monitor-exit p0

    return-void

    .line 3311
    :cond_16
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3312
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_29

    .line 3313
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$NotedCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$NotedCallback;->destroy()V

    .line 3312
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3315
    .end local v0    # "notedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$NotedCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_29
    monitor-exit p0

    .line 3316
    return-void

    .line 3315
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsStartedCallback;

    .line 3259
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3261
    monitor-enter p0

    .line 3262
    :try_start_6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 3263
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 3264
    .local v0, "startedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    if-nez v0, :cond_16

    .line 3265
    monitor-exit p0

    return-void

    .line 3268
    :cond_16
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3269
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_29

    .line 3270
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$StartedCallback;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$StartedCallback;->destroy()V

    .line 3269
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3272
    .end local v0    # "startedCallbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/appop/AppOpsService$StartedCallback;>;"
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :cond_29
    monitor-exit p0

    .line 3273
    return-void

    .line 3272
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public systemReady()V
    .registers 14

    .line 1630
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 1631
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 1633
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1634
    .local v0, "packageUpdateFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1635
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1636
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1638
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1641
    monitor-enter p0

    .line 1642
    :try_start_38
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "uidNum":I
    :goto_40
    if-ltz v1, :cond_aa

    .line 1643
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1644
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1646
    .local v3, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget v4, v3, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1647
    .local v4, "pkgsInUid":[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1648
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 1649
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1650
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1651
    goto :goto_a7

    .line 1654
    :cond_68
    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1655
    .local v5, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    if-nez v5, :cond_6d

    .line 1656
    goto :goto_a7

    .line 1659
    :cond_6d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1660
    .local v6, "numPkgs":I
    const/4 v7, 0x0

    .local v7, "pkgNum":I
    :goto_72
    if-ge v7, v6, :cond_a7

    .line 1661
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1664
    .local v8, "pkg":Ljava/lang/String;
    invoke-static {v4, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_83

    .line 1665
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    .local v9, "action":Ljava/lang/String;
    goto :goto_85

    .line 1667
    .end local v9    # "action":Ljava/lang/String;
    :cond_83
    const-string v9, "android.intent.action.PACKAGE_REPLACED"

    .line 1670
    .restart local v9    # "action":Ljava/lang/String;
    :goto_85
    new-instance v10, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;

    invoke-direct {v10, p0, v9, v8, v2}, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update app-ops uidState in case package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " changed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1660
    nop

    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "action":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 1642
    .end local v2    # "uid":I
    .end local v3    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v4    # "pkgsInUid":[Ljava/lang/String;
    .end local v5    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Ops;>;"
    .end local v6    # "numPkgs":I
    .end local v7    # "pkgNum":I
    :cond_a7
    :goto_a7
    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    .line 1677
    .end local v1    # "uidNum":I
    :cond_aa
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_38 .. :try_end_ab} :catchall_121

    .line 1679
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1680
    .local v1, "packageSuspendFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1681
    const-string v2, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1682
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/appop/AppOpsService$3;

    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1708
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1709
    .local v2, "packageAddedFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1710
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1711
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/appop/AppOpsService$4;

    invoke-direct {v4, p0}, Lcom/android/server/appop/AppOpsService$4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1728
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsService$5;

    invoke-direct {v4, p0}, Lcom/android/server/appop/AppOpsService$5;-><init>(Lcom/android/server/appop/AppOpsService;)V

    const-wide/32 v5, 0x493e0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1736
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 1738
    .local v3, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v4, Lcom/android/server/appop/AppOpsService$6;

    invoke-direct {v4, p0}, Lcom/android/server/appop/AppOpsService$6;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 1755
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v4

    if-nez v4, :cond_116

    .line 1756
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManagerInternal;

    .line 1758
    .local v4, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    new-instance v5, Lcom/android/server/appop/AppOpsService$7;

    invoke-direct {v5, p0}, Lcom/android/server/appop/AppOpsService$7;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManagerInternal;->addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V

    .line 1786
    .end local v4    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_116
    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    iput-object v4, p0, Lcom/android/server/appop/AppOpsService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1787
    return-void

    .line 1677
    .end local v1    # "packageSuspendFilter":Landroid/content/IntentFilter;
    .end local v2    # "packageAddedFilter":Landroid/content/IntentFilter;
    .end local v3    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :catchall_121
    move-exception v1

    :try_start_122
    monitor-exit p0
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    throw v1
.end method

.method public uidRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 1833
    monitor-enter p0

    .line 1834
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 1835
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1836
    invoke-direct {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 1838
    :cond_11
    monitor-exit p0

    .line 1839
    return-void

    .line 1838
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public updateUidProcState(III)V
    .registers 21
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "capability"    # I

    .line 1856
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    monitor-enter p0

    .line 1857
    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_15

    and-int/lit8 v0, v4, 0x2

    if-nez v0, :cond_15

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_3c

    .line 1858
    :cond_15
    :try_start_15
    const-string v0, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateUidProcState uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " procState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " capability:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_3c
    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 1861
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    sget-object v5, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget v5, v5, v3

    .line 1862
    .local v5, "newState":I
    if-eqz v0, :cond_f4

    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-ne v6, v5, :cond_4f

    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    if-eq v6, v4, :cond_f4

    .line 1864
    :cond_4f
    iget v6, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 1865
    .local v6, "oldPendingState":I
    iput v5, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 1866
    iput v4, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    .line 1867
    iget v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-lt v5, v7, :cond_b2

    const/16 v7, 0x1f4

    if-gt v5, v7, :cond_62

    iget v8, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-le v8, v7, :cond_62

    goto :goto_b2

    .line 1874
    :cond_62
    iget v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-ne v5, v7, :cond_6e

    iget v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    if-eq v4, v7, :cond_6e

    .line 1876
    invoke-direct {v1, v0}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    goto :goto_b5

    .line 1877
    :cond_6e
    iget-wide v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_b5

    .line 1881
    iget v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v8, 0xc8

    if-gt v7, v8, :cond_81

    .line 1882
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v7, v7, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .local v7, "settleTime":J
    goto :goto_90

    .line 1883
    .end local v7    # "settleTime":J
    :cond_81
    iget v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v8, 0x190

    if-gt v7, v8, :cond_8c

    .line 1884
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v7, v7, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .restart local v7    # "settleTime":J
    goto :goto_90

    .line 1886
    .end local v7    # "settleTime":J
    :cond_8c
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v7, v7, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 1888
    .restart local v7    # "settleTime":J
    :goto_90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long/2addr v9, v7

    .line 1889
    .local v9, "commitTime":J
    iput-wide v9, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 1891
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    sget-object v12, Lcom/android/server/appop/-$$Lambda$AppOpsService$CVMS-lLMRyZYA1tmqvyuOloKBu0;->INSTANCE:Lcom/android/server/appop/-$$Lambda$AppOpsService$CVMS-lLMRyZYA1tmqvyuOloKBu0;

    const-wide/16 v13, 0x1

    add-long v15, v9, v13

    .line 1893
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1892
    invoke-static {v12, v1, v15, v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    const-wide/16 v13, 0x1

    add-long/2addr v13, v7

    .line 1891
    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b5

    .line 1873
    .end local v7    # "settleTime":J
    .end local v9    # "commitTime":J
    :cond_b2
    :goto_b2
    invoke-direct {v1, v0}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 1896
    :cond_b5
    :goto_b5
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v7, :cond_f4

    .line 1897
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1898
    .local v7, "numPkgs":I
    const/4 v8, 0x0

    .local v8, "pkgNum":I
    :goto_c0
    if-ge v8, v7, :cond_f4

    .line 1899
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1901
    .local v9, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v10

    .line 1902
    .local v10, "numOps":I
    const/4 v11, 0x0

    .local v11, "opNum":I
    :goto_cf
    if-ge v11, v10, :cond_f1

    .line 1903
    invoke-virtual {v9, v11}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appop/AppOpsService$Op;

    .line 1905
    .local v12, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-object v13, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 1906
    .local v13, "numAttributions":I
    const/4 v14, 0x0

    .local v14, "attributionNum":I
    :goto_de
    if-ge v14, v13, :cond_ee

    .line 1908
    iget-object v15, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 1911
    .local v15, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-virtual {v15, v5}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onUidStateChanged(I)V

    .line 1907
    .end local v15    # "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    add-int/lit8 v14, v14, 0x1

    goto :goto_de

    .line 1902
    .end local v12    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v13    # "numAttributions":I
    .end local v14    # "attributionNum":I
    :cond_ee
    add-int/lit8 v11, v11, 0x1

    goto :goto_cf

    .line 1898
    .end local v9    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v10    # "numOps":I
    .end local v11    # "opNum":I
    :cond_f1
    add-int/lit8 v8, v8, 0x1

    goto :goto_c0

    .line 1917
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v5    # "newState":I
    .end local v6    # "oldPendingState":I
    .end local v7    # "numPkgs":I
    .end local v8    # "pkgNum":I
    :cond_f4
    monitor-exit p0

    .line 1918
    return-void

    .line 1917
    :catchall_f6
    move-exception v0

    monitor-exit p0
    :try_end_f8
    .catchall {:try_start_15 .. :try_end_f8} :catchall_f6

    throw v0
.end method

.method writeState()V
    .registers 39

    .line 4363
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 4366
    :try_start_5
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_370
    .catchall {:try_start_5 .. :try_end_b} :catchall_36e

    move-object v3, v0

    .line 4370
    .local v3, "stream":Ljava/io/FileOutputStream;
    nop

    .line 4372
    const/4 v0, 0x0

    :try_start_e
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_36e

    .line 4375
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_12
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4376
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4377
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4378
    const-string v7, "app-ops"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4379
    const-string/jumbo v7, "v"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4382
    monitor-enter p0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_38} :catch_35d
    .catchall {:try_start_12 .. :try_end_38} :catchall_36e

    .line 4383
    :try_start_38
    new-instance v6, Landroid/util/SparseArray;

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 4385
    .local v6, "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_354

    .line 4386
    .local v7, "uidStateCount":I
    const/4 v8, 0x0

    .local v8, "uidStateNum":I
    :goto_4a
    if-ge v8, v7, :cond_95

    .line 4387
    :try_start_4c
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$UidState;

    .line 4388
    .local v9, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 4390
    .local v10, "uid":I
    iget-object v11, v9, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4391
    .local v11, "opModes":Landroid/util/SparseIntArray;
    if-eqz v11, :cond_8c

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-lez v12, :cond_8c

    .line 4392
    new-instance v12, Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/util/SparseIntArray;-><init>(I)V

    invoke-virtual {v6, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4394
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 4395
    .local v12, "opCount":I
    const/4 v13, 0x0

    .local v13, "opCountNum":I
    :goto_75
    if-ge v13, v12, :cond_8c

    .line 4396
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseIntArray;

    .line 4397
    invoke-virtual {v11, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 4398
    invoke-virtual {v11, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 4396
    invoke-virtual {v14, v15, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_88
    .catchall {:try_start_4c .. :try_end_88} :catchall_90

    .line 4395
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x0

    goto :goto_75

    .line 4386
    .end local v9    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v10    # "uid":I
    .end local v11    # "opModes":Landroid/util/SparseIntArray;
    .end local v12    # "opCount":I
    .end local v13    # "opCountNum":I
    :cond_8c
    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x0

    goto :goto_4a

    .line 4402
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "uidStateCount":I
    .end local v8    # "uidStateNum":I
    :catchall_90
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_357

    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_95
    :try_start_95
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_354

    .line 4404
    :try_start_96
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9a} :catch_35d
    .catchall {:try_start_96 .. :try_end_9a} :catchall_36e

    .line 4405
    .local v0, "uidStateCount":I
    const/4 v7, 0x0

    .local v7, "uidStateNum":I
    :goto_9b
    if-ge v7, v0, :cond_104

    .line 4406
    :try_start_9d
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    .line 4407
    .local v8, "opModes":Landroid/util/SparseIntArray;
    if-eqz v8, :cond_fc

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-lez v9, :cond_fc

    .line 4408
    const-string/jumbo v9, "uid"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4409
    const-string/jumbo v9, "n"

    .line 4410
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 4409
    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4411
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 4412
    .local v9, "opCount":I
    const/4 v10, 0x0

    .local v10, "opCountNum":I
    :goto_c6
    if-ge v10, v9, :cond_f5

    .line 4413
    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 4414
    .local v11, "op":I
    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 4415
    .local v12, "mode":I
    const-string/jumbo v13, "op"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4416
    const-string/jumbo v13, "n"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v14, v13, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4417
    const-string/jumbo v13, "m"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v14, v13, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4418
    const-string/jumbo v13, "op"

    invoke-interface {v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4412
    nop

    .end local v11    # "op":I
    .end local v12    # "mode":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_c6

    .line 4420
    .end local v10    # "opCountNum":I
    :cond_f5
    const-string/jumbo v10, "uid"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_fc} :catch_ff
    .catchall {:try_start_9d .. :try_end_fc} :catchall_36e

    .line 4405
    .end local v8    # "opModes":Landroid/util/SparseIntArray;
    .end local v9    # "opCount":I
    :cond_fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_9b

    .line 4526
    .end local v0    # "uidStateCount":I
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "uidStateNum":I
    :catch_ff
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_360

    .line 4424
    .restart local v0    # "uidStateCount":I
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_104
    if-eqz v4, :cond_33f

    .line 4425
    const/4 v7, 0x0

    .line 4426
    .local v7, "lastPkg":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_108
    :try_start_108
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_32f

    .line 4427
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    .line 4428
    .local v9, "pkg":Landroid/app/AppOpsManager$PackageOps;
    if-eqz v9, :cond_31d

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_124

    .line 4429
    move/from16 v19, v0

    move-object/from16 v16, v4

    move-object/from16 v22, v6

    goto/16 :goto_325

    .line 4431
    :cond_124
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_12c} :catch_35d
    .catchall {:try_start_108 .. :try_end_12c} :catchall_36e

    if-nez v10, :cond_149

    .line 4432
    if-eqz v7, :cond_137

    .line 4433
    :try_start_130
    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4435
    :cond_137
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 4436
    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4437
    const-string/jumbo v10, "n"

    invoke-interface {v5, v11, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_149} :catch_ff
    .catchall {:try_start_130 .. :try_end_149} :catchall_36e

    .line 4439
    :cond_149
    :try_start_149
    const-string/jumbo v10, "uid"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4440
    const-string/jumbo v10, "n"

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4441
    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v10

    .line 4442
    .local v10, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_164
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_307

    .line 4443
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 4444
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v13, "op"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4445
    const-string/jumbo v13, "n"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v5, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4446
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v13

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v14
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_192} :catch_35d
    .catchall {:try_start_149 .. :try_end_192} :catchall_36e

    if-eq v13, v14, :cond_1a3

    .line 4447
    :try_start_194
    const-string/jumbo v13, "m"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v5, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_1a3} :catch_ff
    .catchall {:try_start_194 .. :try_end_1a3} :catchall_36e

    .line 4450
    :cond_1a3
    :try_start_1a3
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1af
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2e3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 4451
    .local v14, "attributionTag":Ljava/lang/String;
    nop

    .line 4452
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4454
    .local v15, "attribution":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v15}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v16

    move-object/from16 v17, v16

    .line 4456
    .local v17, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    move-result v16
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1d0} :catch_35d
    .catchall {:try_start_1a3 .. :try_end_1d0} :catchall_36e

    move/from16 v18, v16

    .line 4457
    .local v18, "keyCount":I
    const/16 v16, 0x0

    move/from16 v19, v0

    move/from16 v0, v16

    .local v0, "k":I
    .local v19, "uidStateCount":I
    :goto_1d8
    move-object/from16 v16, v4

    move/from16 v4, v18

    .end local v18    # "keyCount":I
    .local v4, "keyCount":I
    .local v16, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-ge v0, v4, :cond_2d3

    .line 4458
    move/from16 v18, v4

    move-object/from16 v4, v17

    .end local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v4, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v18    # "keyCount":I
    :try_start_1e2
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 4460
    .local v20, "key":J
    invoke-static/range {v20 .. v21}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v17

    move/from16 v22, v17

    .line 4461
    .local v22, "uidState":I
    invoke-static/range {v20 .. v21}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v17

    move/from16 v23, v17

    .line 4463
    .local v23, "flags":I
    move-object/from16 v17, v4

    move/from16 v4, v22

    move-object/from16 v22, v6

    move/from16 v6, v23

    .end local v23    # "flags":I
    .local v4, "uidState":I
    .local v6, "flags":I
    .restart local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v22, "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v23

    .line 4465
    .local v23, "accessTime":J
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v25

    .line 4467
    .local v25, "rejectTime":J
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v27

    .line 4470
    .local v27, "accessDuration":J
    invoke-virtual {v15, v4, v4, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v29

    .line 4473
    .local v29, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    const-wide/16 v30, 0x0

    cmp-long v32, v23, v30

    if-gtz v32, :cond_228

    cmp-long v32, v25, v30

    if-gtz v32, :cond_228

    cmp-long v32, v27, v30

    if-gtz v32, :cond_228

    if-nez v29, :cond_228

    .line 4475
    move-object/from16 v33, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    goto/16 :goto_2c5

    .line 4478
    :cond_228
    const/16 v32, 0x0

    .line 4479
    .local v32, "proxyPkg":Ljava/lang/String;
    const/16 v33, 0x0

    .line 4480
    .local v33, "proxyAttributionTag":Ljava/lang/String;
    const/16 v34, -0x1

    .line 4481
    .local v34, "proxyUid":I
    if-eqz v29, :cond_24b

    .line 4482
    invoke-virtual/range {v29 .. v29}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v32, v35

    .line 4483
    invoke-virtual/range {v29 .. v29}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v33, v35

    .line 4484
    invoke-virtual/range {v29 .. v29}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v35

    move/from16 v34, v35

    move/from16 v35, v4

    move-object/from16 v4, v32

    move/from16 v32, v6

    move-object/from16 v6, v33

    goto :goto_253

    .line 4481
    :cond_24b
    move/from16 v35, v4

    move-object/from16 v4, v32

    move/from16 v32, v6

    move-object/from16 v6, v33

    .line 4487
    .end local v33    # "proxyAttributionTag":Ljava/lang/String;
    .local v4, "proxyPkg":Ljava/lang/String;
    .local v6, "proxyAttributionTag":Ljava/lang/String;
    .local v32, "flags":I
    .local v35, "uidState":I
    :goto_253
    move-object/from16 v33, v7

    .end local v7    # "lastPkg":Ljava/lang/String;
    .local v33, "lastPkg":Ljava/lang/String;
    const-string/jumbo v7, "st"

    move-object/from16 v36, v9

    const/4 v9, 0x0

    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .local v36, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4488
    if-eqz v14, :cond_266

    .line 4489
    const-string/jumbo v7, "id"

    invoke-interface {v5, v9, v7, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4491
    :cond_266
    const-string/jumbo v7, "n"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v37, v10

    const/4 v10, 0x0

    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v37, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-interface {v5, v10, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4492
    cmp-long v7, v23, v30

    if-lez v7, :cond_282

    .line 4493
    const-string/jumbo v7, "t"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4495
    :cond_282
    cmp-long v7, v25, v30

    if-lez v7, :cond_291

    .line 4496
    const-string/jumbo v7, "r"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4498
    :cond_291
    cmp-long v7, v27, v30

    if-lez v7, :cond_29f

    .line 4499
    const-string v7, "d"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4501
    :cond_29f
    if-eqz v4, :cond_2a8

    .line 4502
    const-string/jumbo v7, "pp"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4504
    :cond_2a8
    if-eqz v6, :cond_2b1

    .line 4505
    const-string/jumbo v7, "pc"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4507
    :cond_2b1
    if-ltz v34, :cond_2be

    .line 4508
    const-string/jumbo v7, "pu"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4510
    :cond_2be
    const-string/jumbo v7, "st"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4457
    .end local v4    # "proxyPkg":Ljava/lang/String;
    .end local v6    # "proxyAttributionTag":Ljava/lang/String;
    .end local v20    # "key":J
    .end local v23    # "accessTime":J
    .end local v25    # "rejectTime":J
    .end local v27    # "accessDuration":J
    .end local v29    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .end local v32    # "flags":I
    .end local v34    # "proxyUid":I
    .end local v35    # "uidState":I
    :goto_2c5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v16

    move-object/from16 v6, v22

    move-object/from16 v7, v33

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_1d8

    .end local v18    # "keyCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v33    # "lastPkg":Ljava/lang/String;
    .end local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v4, "keyCount":I
    .local v6, "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_2d3
    move/from16 v18, v4

    move-object/from16 v22, v6

    move-object/from16 v33, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    .line 4512
    .end local v0    # "k":I
    .end local v4    # "keyCount":I
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v14    # "attributionTag":Ljava/lang/String;
    .end local v15    # "attribution":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v17    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v33    # "lastPkg":Ljava/lang/String;
    .restart local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    move-object/from16 v4, v16

    move/from16 v0, v19

    goto/16 :goto_1af

    .line 4514
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v33    # "lastPkg":Ljava/lang/String;
    .end local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .local v0, "uidStateCount":I
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_2e3
    move/from16 v19, v0

    move-object/from16 v16, v4

    move-object/from16 v22, v6

    move-object/from16 v33, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    .end local v0    # "uidStateCount":I
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v33    # "lastPkg":Ljava/lang/String;
    .restart local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const-string/jumbo v0, "op"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4442
    nop

    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    move/from16 v0, v19

    move-object/from16 v6, v22

    move-object/from16 v7, v33

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_164

    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v33    # "lastPkg":Ljava/lang/String;
    .end local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v0    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_307
    move/from16 v19, v0

    move-object/from16 v16, v4

    move-object/from16 v22, v6

    move-object/from16 v33, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    .line 4516
    .end local v0    # "uidStateCount":I
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "j":I
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v33    # "lastPkg":Ljava/lang/String;
    .restart local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const-string/jumbo v0, "uid"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v7, v33

    goto :goto_325

    .line 4428
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v33    # "lastPkg":Ljava/lang/String;
    .end local v36    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v37    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v0    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v7    # "lastPkg":Ljava/lang/String;
    .restart local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_31d
    move/from16 v19, v0

    move-object/from16 v16, v4

    move-object/from16 v22, v6

    move-object/from16 v36, v9

    .line 4426
    .end local v0    # "uidStateCount":I
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v9    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :goto_325
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v16

    move/from16 v0, v19

    move-object/from16 v6, v22

    goto/16 :goto_108

    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v0    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_32f
    move/from16 v19, v0

    move-object/from16 v16, v4

    move-object/from16 v22, v6

    .line 4518
    .end local v0    # "uidStateCount":I
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .end local v8    # "i":I
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    if-eqz v7, :cond_345

    .line 4519
    const-string/jumbo v0, "pkg"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_345

    .line 4424
    .end local v7    # "lastPkg":Ljava/lang/String;
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "uidStateCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v0    # "uidStateCount":I
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_33f
    move/from16 v19, v0

    move-object/from16 v16, v4

    move-object/from16 v22, v6

    .line 4523
    .end local v0    # "uidStateCount":I
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v19    # "uidStateCount":I
    .restart local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    :cond_345
    :goto_345
    const-string v0, "app-ops"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4524
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4525
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_353
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_353} :catch_359
    .catchall {:try_start_1e2 .. :try_end_353} :catchall_36e

    .line 4529
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v19    # "uidStateCount":I
    .end local v22    # "uidStatesClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseIntArray;>;"
    goto :goto_36c

    .line 4402
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_354
    move-exception v0

    move-object/from16 v16, v4

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_357
    :try_start_357
    monitor-exit p0
    :try_end_358
    .catchall {:try_start_357 .. :try_end_358} :catchall_35b

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :try_start_358
    throw v0
    :try_end_359
    .catch Ljava/io/IOException; {:try_start_358 .. :try_end_359} :catch_359
    .catchall {:try_start_358 .. :try_end_359} :catchall_36e

    .line 4526
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local p0    # "this":Lcom/android/server/appop/AppOpsService;
    :catch_359
    move-exception v0

    goto :goto_360

    .line 4402
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_35b
    move-exception v0

    goto :goto_357

    .line 4526
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_35d
    move-exception v0

    move-object/from16 v16, v4

    .line 4527
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_360
    :try_start_360
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4528
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 4530
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v16    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_36c
    monitor-exit v2

    .line 4531
    return-void

    .line 4530
    :catchall_36e
    move-exception v0

    goto :goto_389

    .line 4367
    :catch_370
    move-exception v0

    .line 4368
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    monitor-exit v2

    return-void

    .line 4530
    .end local v0    # "e":Ljava/io/IOException;
    :goto_389
    monitor-exit v2
    :try_end_38a
    .catchall {:try_start_360 .. :try_end_38a} :catchall_36e

    throw v0
.end method
