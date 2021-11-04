.class public Lcom/android/server/am/ActivityManagerServiceExt;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;,
        Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;,
        Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;,
        Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;
    }
.end annotation


# static fields
.field private static final CSC_VERSION:Ljava/lang/String;

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KEEP_PACKAGES:Ljava/lang/String; = "keep_packages"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KILL_PACKAGES:Ljava/lang/String; = "kill_packages"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_NAME:Ljava/lang/String; = "name"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_SKIP_SDK_VERSION_CHECK:Ljava/lang/String; = "skip_sdk_version_check"

.field private static MAX_LONG_LIVE_APP:I = 0x0

.field private static final PENDING_INTENT_RECORD_WATCHER_THRESHOLD_CNT:I = 0x64

.field private static final PERSISTENT_MASK:I = 0x9

.field private static final PREF_LONG_LIVE_KEY:Ljava/lang/String; = "LONG_LIVE_BY_PACKAGE"

.field private static final PREF_LONG_LIVE_NAME:Ljava/lang/String; = "multiwindow.property"

.field private static final PREF_LONG_LIVE_VER:Ljava/lang/String; = "LONG_LIVE_VERSION"

.field private static final PRE_BOOT_CSC_FILE:Ljava/io/File;

.field private static final PRE_BOOT_CSC_FILENAME:Ljava/lang/String; = "pre_boot_csc.dat"

.field private static final TAG:Ljava/lang/String; = "ActivityManagerServiceExt"

.field private static final sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private longLiveAppByPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mBgHandler:Landroid/os/Handler;

.field final mContext:Landroid/content/Context;

.field final mDexPrimaryProcessList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mForceKeepAliveProcesses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mForceKillPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceStopReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

.field private mLongLiveCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

.field private final mPendingIntentRecordCountByPkg:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPref:Landroid/content/SharedPreferences;

.field final mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

.field private mRelaxedBroadcastActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSsim:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/samsung/android/sysint/SemSysIntManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 182
    const-string/jumbo v0, "ril.official_cscver"

    const-string v1, "DUMMY"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    .line 186
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 187
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "pre_boot_csc.dat"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    .line 261
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v1    # "systemDir":Ljava/io/File;
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    .line 999
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_2f

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    goto :goto_30

    :cond_2f
    const/4 v0, 0x1

    :goto_30
    sput v0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    .line 134
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    .line 235
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPendingIntentRecordCountByPkg:Landroid/util/ArrayMap;

    .line 425
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillPackages:Ljava/util/Set;

    .line 426
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKeepAliveProcesses:Ljava/util/Set;

    .line 556
    new-instance v1, Lcom/android/server/am/ActivityManagerServiceExt$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerServiceExt$1;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

    .line 995
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    .line 1343
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    .line 139
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->initRelaxedBroadcastActions()V

    .line 149
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v2, "installPackageLI"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v2, "pkg removed"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v2, "pkg changed"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    invoke-direct {v1, v0}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;-><init>(Lcom/android/server/am/ActivityManagerServiceExt$1;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    .line 159
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillPackages:Ljava/util/Set;

    const-string v2, "com.tencent.mm"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKeepAliveProcesses:Ljava/util/Set;

    const-string v2, "com.tencent.mm:exdevice"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Landroid/os/Handler;

    .line 166
    new-instance v1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$1;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 167
    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->scheduleLoad()V
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->access$200(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    .line 171
    const-string v0, "ActivityManagerServiceExt"

    const-string v1, "ActivityManagerServiceExt :: created"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method private initRelaxedBroadcastActions()V
    .registers 6

    .line 973
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "actions":[Ljava/lang/String;
    array-length v1, v0

    .line 976
    .local v1, "N":I
    if-lez v1, :cond_24

    .line 977
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    .line 978
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v1, :cond_24

    .line 979
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 978
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 982
    .end local v2    # "i":I
    :cond_24
    return-void
.end method

.method private isKeepAlive(Lcom/android/server/am/ProcessRecord;)Z
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 430
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "pkgList":[Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 432
    return v1

    .line 434
    :cond_8
    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_1d

    aget-object v4, v0, v3

    .line 435
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    const-string v6, "com.samsung.android.keepalive.density"

    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->hasBooleanMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, v4, v6}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->access$600(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 436
    const/4 v1, 0x1

    return v1

    .line 434
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 440
    .end local v0    # "pkgList":[Ljava/lang/String;
    :cond_1d
    return v1
.end method

.method private markAsDedicatedProcessNameIfAliveLocked(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "dedicated"    # Z

    .line 1262
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_35

    .line 1263
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1264
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne p2, v2, :cond_32

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1265
    iput-boolean p3, v1, Lcom/android/server/am/ProcessRecord;->dedicated:Z

    .line 1266
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mSsim:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$2jE5mADhmaN9zJTxP4s4aevSKUM;

    invoke-direct {v3, p0, p3, p1, v1}, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$2jE5mADhmaN9zJTxP4s4aevSKUM;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;ZLjava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1262
    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1269
    .end local v0    # "i":I
    :cond_35
    return-void
.end method

.method private markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_3b

    .line 1125
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1126
    .local v2, "p":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1127
    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->dedicated:Z

    .line 1128
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    invoke-direct {v4, p1, v2}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;-><init>(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mSsim:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$3SlYmH0xz7dxSEpQtxPOCILBX4M;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$3SlYmH0xz7dxSEpQtxPOCILBX4M;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1124
    .end local v2    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1134
    .end local v0    # "i":I
    :cond_3b
    return-void
.end method

.method private migrateTo(Landroid/content/SharedPreferences;)V
    .registers 6
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .line 1061
    const-string v0, "LONG_LIVE_BY_PACKAGE"

    if-nez p1, :cond_5

    .line 1062
    return-void

    .line 1066
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1076
    goto :goto_3e

    .line 1067
    :catch_a
    move-exception v2

    .line 1068
    .local v2, "e":Ljava/lang/ClassCastException;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "tmp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "migrateTo Set "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManagerServiceExt"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->removeLongLivePackage()Z

    .line 1071
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1072
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    .line 1074
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1086
    .end local v0    # "tmp":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_3e
    :goto_3e
    return-void
.end method

.method private removeLongLivePackage()Z
    .registers 4

    .line 1042
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_10

    .line 1043
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 1046
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1047
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "LONG_LIVE_BY_PACKAGE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1048
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method private restoreAllAdjs()V
    .registers 6

    .line 1108
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 1109
    return-void

    .line 1112
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 1113
    .local v1, "cb":Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
    # getter for: Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->access$1200(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1114
    .local v2, "p":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_34

    .line 1115
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->dedicated:Z

    .line 1116
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mSsim:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$SVfS2jYUFq4MN5wtwnn5q43_QZc;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$SVfS2jYUFq4MN5wtwnn5q43_QZc;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1118
    .end local v1    # "cb":Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
    .end local v2    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_34
    goto :goto_f

    .line 1120
    :cond_35
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1121
    return-void
.end method

.method private saveLongLivePackage()Z
    .registers 4

    .line 1032
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_10

    .line 1033
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 1036
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1037
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const-string v2, "LONG_LIVE_BY_PACKAGE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1038
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method private updateLongLiveVersion(Landroid/content/SharedPreferences;I)V
    .registers 6
    .param p1, "pref"    # Landroid/content/SharedPreferences;
    .param p2, "version"    # I

    .line 1052
    const-string v0, "LONG_LIVE_VERSION"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1053
    .local v1, "oldVersion":I
    if-ge v1, p2, :cond_13

    .line 1054
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1055
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1056
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1058
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_13
    return-void
.end method

.method private updateNeverKill(Lcom/samsung/android/sysint/SemSysIntManager;ZLjava/lang/String;I)V
    .registers 11
    .param p1, "ssim"    # Lcom/samsung/android/sysint/SemSysIntManager;
    .param p2, "dedicated"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pid"    # I

    .line 1019
    const-string v0, ","

    if-gtz p4, :cond_5

    return-void

    .line 1021
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1023
    .local v1, "id":J
    :try_start_9
    const-string v3, "ActivityManagerServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNeverKill:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-virtual {p1, p3, p4, p2}, Lcom/samsung/android/sysint/SemSysIntManager;->updateNeverKillPack(Ljava/lang/String;IZ)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_35
    .catchall {:try_start_9 .. :try_end_2f} :catchall_30

    goto :goto_36

    .line 1027
    :catchall_30
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1028
    throw v0

    .line 1025
    :catch_35
    move-exception v0

    .line 1027
    :goto_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1028
    nop

    .line 1029
    return-void
.end method


# virtual methods
.method public addAbortedBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .registers 6
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 893
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 894
    iget v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    .line 895
    return-void
.end method

.method public addBroadcastSummaryHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .registers 9
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 878
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 879
    iget-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_42

    .line 880
    iget-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v4, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v0, v4

    if-lez v0, :cond_42

    .line 881
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 883
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BROADCAST_LOGS_TO_DROPBOX:Z

    if-eqz v0, :cond_38

    .line 884
    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/server/am/BroadcastQueue;->addDelayedBrToDropBox(Ljava/lang/String;)V

    .line 887
    :cond_38
    iget v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    .line 890
    :cond_42
    return-void
.end method

.method addLongLivePackageLocked(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "longLivePackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    .line 1209
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    if-lt v0, v1, :cond_34

    goto :goto_41

    .line 1213
    :cond_34
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    .line 1216
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    move-result v0

    return v0

    .line 1210
    :cond_41
    :goto_41
    const/4 v0, 0x0

    return v0
.end method

.method addPendingIntentRecordLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPendingIntentRecordCountByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 239
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_11

    .line 240
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    .line 242
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPendingIntentRecordCountByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    if-nez v1, :cond_4b

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " PendingIntent are generated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManagerServiceExt"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_4b
    return-void
.end method

.method public addToLocaleChangedHistoryLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .registers 4
    .param p1, "from"    # Landroid/os/LocaleList;
    .param p2, "to"    # Landroid/os/LocaleList;

    .line 367
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->addLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->access$500(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Landroid/os/LocaleList;Landroid/os/LocaleList;)V

    .line 368
    return-void
.end method

.method broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 898
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 899
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 900
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 901
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "    "

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 902
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method dumpDexPrimaryProcess(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1359
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1360
    const-string v0, "    mDexPrimaryProcessList: size="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1362
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1363
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1364
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1365
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "     {packageName="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1366
    const-string v2, ", app uid="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v2, "}"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1c

    .line 1369
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_45
    return-void
.end method

.method public dumpForBroadcastQueueLocked(Lcom/android/server/am/BroadcastQueue;Ljava/io/PrintWriter;Z)V
    .registers 15
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z

    .line 920
    const/4 v0, -0x1

    .line 921
    .local v0, "i":I
    const/4 v1, 0x0

    .line 926
    .local v1, "printed":Z
    iget v2, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    move v3, v2

    .line 928
    .local v2, "lastIndex":I
    .local v3, "ringIndex":I
    :goto_5
    sget v4, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v3

    .line 929
    iget-object v4, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 930
    .local v4, "str":Ljava/lang/String;
    const-string v6, "]:"

    const-string v7, ":"

    const-string v8, " #"

    if-nez v4, :cond_19

    .line 931
    goto :goto_5f

    .line 933
    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 934
    if-nez v1, :cond_3d

    .line 935
    if-eqz p3, :cond_22

    .line 936
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 938
    :cond_22
    const/4 p3, 0x1

    .line 939
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Aborted Historical broadcasts ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    const/4 v1, 0x1

    .line 942
    :cond_3d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Aborted Historical Broadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    .end local v4    # "str":Ljava/lang/String;
    :goto_5f
    if-ne v3, v2, :cond_bc

    .line 947
    const/4 v0, -0x1

    .line 948
    const/4 v1, 0x0

    .line 949
    iget v4, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    move v3, v4

    .line 951
    .end local v2    # "lastIndex":I
    .local v4, "lastIndex":I
    :cond_66
    sget v2, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    invoke-virtual {p1, v3, v5, v2}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v3

    .line 952
    iget-object v2, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 953
    .local v2, "str":Ljava/lang/String;
    if-nez v2, :cond_73

    .line 954
    goto :goto_b9

    .line 956
    :cond_73
    add-int/lit8 v0, v0, 0x1

    .line 957
    if-nez v1, :cond_97

    .line 958
    if-eqz p3, :cond_7c

    .line 959
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 961
    :cond_7c
    const/4 p3, 0x1

    .line 962
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Delayed Historical broadcasts ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 963
    const/4 v1, 0x1

    .line 965
    :cond_97
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Delayed Historical Broadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    .end local v2    # "str":Ljava/lang/String;
    :goto_b9
    if-ne v3, v4, :cond_66

    .line 969
    return-void

    .line 945
    .end local v4    # "lastIndex":I
    .local v2, "lastIndex":I
    :cond_bc
    goto/16 :goto_5
.end method

.method public dumpLocaleChangedHistoryLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z

    .line 363
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->access$400(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 364
    return-void
.end method

.method dumpLongLivePackageLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z

    .line 1315
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1316
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1317
    if-eqz p3, :cond_12

    .line 1318
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    :cond_12
    const-string v0, "ACTIVITY MANAGER - LONG LIVE APP"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    const-string v0, "    longLiveAppByPackages: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1323
    const-string v0, "    Max="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1325
    :cond_2b
    return-void
.end method

.method dumpMetaDataLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 838
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->access$1100(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 839
    return-void
.end method

.method public finishBooting()V
    .registers 8

    .line 549
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1a

    .line 550
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 551
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 554
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1a
    return-void
.end method

.method forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "callerWillRestart"    # Z
    .param p4, "purgeCache"    # Z
    .param p5, "doit"    # Z
    .param p6, "evenPersistent"    # Z
    .param p7, "uninstalling"    # Z
    .param p8, "userId"    # I
    .param p9, "reason"    # Ljava/lang/String;

    .line 862
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    const-string v2, "com.samsung.android.persistent.downloadable"

    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->hasBooleanMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v11, v2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->access$600(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 865
    .local v12, "downloadable":Z
    if-eqz v12, :cond_34

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mForceStopReasons:Ljava/util/Set;

    move-object/from16 v13, p9

    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 866
    const/4 v1, 0x1

    .line 867
    .end local p3    # "callerWillRestart":Z
    .local v1, "callerWillRestart":Z
    const/4 v2, 0x1

    .line 868
    .end local p6    # "evenPersistent":Z
    .local v2, "evenPersistent":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceStopPackageLocked with revised flags for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManagerServiceExt"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v1

    move v15, v2

    goto :goto_3a

    .line 865
    .end local v1    # "callerWillRestart":Z
    .end local v2    # "evenPersistent":Z
    .restart local p3    # "callerWillRestart":Z
    .restart local p6    # "evenPersistent":Z
    :cond_34
    move-object/from16 v13, p9

    .line 870
    :cond_36
    move/from16 v14, p3

    move/from16 v15, p6

    .end local p3    # "callerWillRestart":Z
    .end local p6    # "evenPersistent":Z
    .local v14, "callerWillRestart":Z
    .local v15, "evenPersistent":Z
    :goto_3a
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v4, v14

    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v15

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method getDedicatedProcessesLocked(I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1307
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getDedicatedProcesses(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getDedicatedTaskIdsLocked(I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1311
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getDedicatedTaskIds(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getLongLivePackageLocked(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 1244
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_11

    .line 1245
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1248
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method getLongLivePackagesLocked()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method getMaxLongLiveApps()I
    .registers 2

    .line 1328
    sget v0, Lcom/android/server/am/ActivityManagerServiceExt;->MAX_LONG_LIVE_APP:I

    return v0
.end method

.method getStringMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "metaData"    # Ljava/lang/String;

    .line 834
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->getStringMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->access$1000(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    .local v0, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1348
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v4, :cond_32

    .line 1349
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_32
    goto :goto_b

    .line 1352
    :cond_33
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1353
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->skipToFinishActivities()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1354
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setSkipToFinishActivities(Z)V

    .line 1356
    :cond_42
    return-void
.end method

.method hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "metaData"    # Ljava/lang/String;

    .line 830
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mMetaDataCollector:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->hasBooleanMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->access$600(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method initLongLivePackageLocked()V
    .registers 4

    .line 1090
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/sysint/SemSysIntManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sysint/SemSysIntManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mSsim:Ljava/util/Optional;

    .line 1093
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_20

    .line 1094
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    .line 1096
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerServiceExt;->migrateTo(Landroid/content/SharedPreferences;)V

    .line 1098
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "LONG_LIVE_BY_PACKAGE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 1099
    .local v0, "llp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_4b

    .line 1100
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1101
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1102
    .local v2, "pkg":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    .line 1103
    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_3b

    .line 1105
    :cond_4b
    return-void
.end method

.method isCscVerChanged()Z
    .registers 8

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 195
    .local v1, "dis":Ljava/io/DataInputStream;
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    const-string v3, "DUMMY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ActivityManagerServiceExt"

    if-eqz v2, :cond_18

    .line 196
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const-string v4, "csc version of property is wrong"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :cond_18
    const-string v2, "DUMMY"

    .line 201
    .local v2, "prevCscVer":Ljava/lang/String;
    :try_start_1a
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v5, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 202
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v6, 0x400

    invoke-direct {v5, v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    .line 203
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_33} :catch_46
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_33} :catch_37
    .catchall {:try_start_1a .. :try_end_33} :catchall_35

    move-object v2, v3

    goto :goto_47

    .line 208
    :catchall_35
    move-exception v3

    goto :goto_3f

    .line 205
    :catch_37
    move-exception v4

    .line 206
    .local v4, "e":Ljava/io/IOException;
    :try_start_38
    const-string v5, "Failure reading pre boot csc"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 208
    nop

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_48

    :goto_3f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 209
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 210
    throw v3

    .line 204
    :catch_46
    move-exception v3

    .line 208
    :goto_47
    nop

    :goto_48
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 209
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 210
    nop

    .line 211
    sget-object v3, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method public isRelaxedBroadcastAction(Ljava/lang/String;)Z
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .line 986
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 987
    const/4 v0, 0x1

    return v0

    .line 989
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method isSkippableTmoPkgLocked(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1334
    const-string v0, "com.tmobile.echolocate"

    .line 1335
    .local v0, "skipForceStopTmoPackage":Ljava/lang/String;
    const-string v1, "com.tmobile.echolocate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1336
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->isSystemPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 1335
    :goto_19
    return v1
.end method

.method isTrimApplicaionsScheduled()Z
    .registers 2

    .line 268
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V
    .registers 33
    .param p1, "minTargetSdk"    # I
    .param p2, "maxProcState"    # I
    .param p3, "extraPolicy"    # Landroid/os/Bundle;

    .line 444
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1eb

    .line 453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 456
    .local v5, "callingId":J
    const/4 v0, 0x0

    .line 457
    .local v0, "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 458
    .local v7, "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 459
    .local v8, "isExtraPolicy":Z
    const/4 v9, 0x0

    .line 461
    .local v9, "skipSdkVersionCheck":Z
    const/4 v10, 0x0

    if-eqz v4, :cond_4c

    .line 462
    const/4 v8, 0x1

    .line 463
    :try_start_1e
    const-string/jumbo v11, "name"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 464
    .local v11, "extraPolicyName":Ljava/lang/String;
    const-string/jumbo v12, "kill_packages"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    move-object v0, v12

    .line 466
    const-string/jumbo v12, "keep_packages"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    move-object v7, v12

    .line 468
    const-string/jumbo v12, "skip_sdk_version_check"

    invoke-virtual {v4, v12, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12
    :try_end_40
    .catchall {:try_start_1e .. :try_end_40} :catchall_47

    move v9, v12

    move-object v12, v11

    move v11, v9

    move v9, v8

    move-object v8, v7

    move-object v7, v0

    goto :goto_54

    .line 542
    .end local v0    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "isExtraPolicy":Z
    .end local v9    # "skipSdkVersionCheck":Z
    .end local v11    # "extraPolicyName":Ljava/lang/String;
    :catchall_47
    move-exception v0

    move-wide/from16 v19, v5

    goto/16 :goto_1e7

    .line 471
    .restart local v0    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v7    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "isExtraPolicy":Z
    .restart local v9    # "skipSdkVersionCheck":Z
    :cond_4c
    :try_start_4c
    const-string/jumbo v11, "multi-resolution"

    move-object v12, v11

    move v11, v9

    move v9, v8

    move-object v8, v7

    move-object v7, v0

    .line 474
    .end local v0    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v7, "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v8, "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v9, "isExtraPolicy":Z
    .local v11, "skipSdkVersionCheck":Z
    .local v12, "extraPolicyName":Ljava/lang/String;
    :goto_54
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_1e4

    :try_start_57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v14, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v14, v14, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v14}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 477
    .local v14, "NP":I
    const/4 v15, 0x0

    .local v15, "ip":I
    :goto_6e
    if-ge v15, v14, :cond_18b

    .line 478
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v10, v10, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 479
    invoke-virtual {v10}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 480
    .local v10, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v16

    move/from16 v17, v16

    .line 481
    .local v17, "NA":I
    const/16 v16, 0x0

    move/from16 v4, v16

    .local v4, "ia":I
    :goto_8a
    move/from16 v16, v14

    move/from16 v14, v17

    .end local v17    # "NA":I
    .local v14, "NA":I
    .local v16, "NP":I
    if-ge v4, v14, :cond_176

    .line 482
    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v17

    .line 484
    .local v18, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v17, v10

    move-object/from16 v10, v18

    move/from16 v18, v14

    .end local v14    # "NA":I
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    .local v17, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .local v18, "NA":I
    iget v14, v10, Lcom/android/server/am/ProcessRecord;->setProcState:I
    :try_end_a0
    .catchall {:try_start_57 .. :try_end_a0} :catchall_1d4

    move-wide/from16 v19, v5

    .end local v5    # "callingId":J
    .local v19, "callingId":J
    const/16 v5, 0x14

    if-ne v14, v5, :cond_ac

    .line 485
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    goto/16 :goto_159

    .line 488
    :cond_ac
    const/4 v5, 0x0

    .line 489
    .local v5, "killProcess":Z
    const/4 v6, 0x0

    .line 491
    .local v6, "killByExtraPolicy":Z
    const/4 v14, 0x0

    .line 492
    .local v14, "keepAliveByExtraPolicy":Z
    move/from16 v21, v5

    .end local v5    # "killProcess":Z
    .local v21, "killProcess":Z
    :try_start_b1
    iget v5, v10, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v22, v6

    .end local v6    # "killByExtraPolicy":Z
    .local v22, "killByExtraPolicy":Z
    const/4 v6, 0x2

    if-ne v5, v6, :cond_ba

    .line 493
    const/4 v5, 0x1

    .end local v21    # "killProcess":Z
    .restart local v5    # "killProcess":Z
    goto :goto_bc

    .line 492
    .end local v5    # "killProcess":Z
    .restart local v21    # "killProcess":Z
    :cond_ba
    move/from16 v5, v21

    .line 496
    .end local v21    # "killProcess":Z
    .restart local v5    # "killProcess":Z
    :goto_bc
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKillPackages:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21
    :try_end_c6
    .catchall {:try_start_b1 .. :try_end_c6} :catchall_170

    if-eqz v21, :cond_ee

    :try_start_c8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v23, v21

    .line 497
    .local v23, "pkg":Ljava/lang/String;
    move/from16 v21, v5

    .end local v5    # "killProcess":Z
    .restart local v21    # "killProcess":Z
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v6

    move-object/from16 v6, v23

    .end local v23    # "pkg":Ljava/lang/String;
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e2

    .line 498
    const/4 v5, 0x1

    .line 499
    .end local v21    # "killProcess":Z
    .restart local v5    # "killProcess":Z
    goto :goto_f0

    .line 501
    .end local v5    # "killProcess":Z
    .end local v6    # "pkg":Ljava/lang/String;
    .restart local v21    # "killProcess":Z
    :cond_e2
    move/from16 v5, v21

    move-object/from16 v6, v24

    goto :goto_c2

    .line 540
    .end local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "ia":I
    .end local v10    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "keepAliveByExtraPolicy":Z
    .end local v15    # "ip":I
    .end local v16    # "NP":I
    .end local v17    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v18    # "NA":I
    .end local v21    # "killProcess":Z
    .end local v22    # "killByExtraPolicy":Z
    :catchall_e7
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    goto/16 :goto_1db

    .line 496
    .restart local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v4    # "ia":I
    .restart local v5    # "killProcess":Z
    .restart local v10    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "keepAliveByExtraPolicy":Z
    .restart local v15    # "ip":I
    .restart local v16    # "NP":I
    .restart local v17    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v18    # "NA":I
    .restart local v22    # "killByExtraPolicy":Z
    :cond_ee
    move/from16 v21, v5

    .line 503
    :goto_f0
    if-eqz v9, :cond_10f

    .line 504
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 505
    .restart local v6    # "pkg":Ljava/lang/String;
    if-eqz v7, :cond_103

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_103

    .line 507
    const/16 v21, 0x1

    move/from16 v6, v21

    .end local v22    # "killByExtraPolicy":Z
    .local v21, "killByExtraPolicy":Z
    goto :goto_111

    .line 508
    .end local v21    # "killByExtraPolicy":Z
    .restart local v22    # "killByExtraPolicy":Z
    :cond_103
    if-eqz v8, :cond_10f

    .line 509
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21
    :try_end_109
    .catchall {:try_start_c8 .. :try_end_109} :catchall_e7

    if-eqz v21, :cond_10f

    .line 510
    const/4 v14, 0x1

    move/from16 v6, v22

    goto :goto_111

    .line 514
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_10f
    move/from16 v6, v22

    .end local v22    # "killByExtraPolicy":Z
    .local v6, "killByExtraPolicy":Z
    :goto_111
    move-object/from16 v21, v7

    .end local v7    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v21, "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_113
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mForceKeepAliveProcesses:Ljava/util/Set;
    :try_end_115
    .catchall {:try_start_113 .. :try_end_115} :catchall_16b

    move-object/from16 v22, v8

    .end local v8    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v22, "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_117
    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_128

    .line 515
    invoke-direct {v1, v10}, Lcom/android/server/am/ActivityManagerServiceExt;->isKeepAlive(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-eqz v7, :cond_126

    goto :goto_128

    :cond_126
    const/4 v7, 0x0

    goto :goto_129

    :cond_128
    :goto_128
    const/4 v7, 0x1

    .line 517
    .local v7, "keepAliveAttr":Z
    :goto_129
    iget-boolean v8, v10, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v8, :cond_131

    .line 518
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_159

    .line 519
    :cond_131
    if-nez v7, :cond_159

    if-nez v14, :cond_159

    if-nez v11, :cond_13f

    if-ltz v2, :cond_13f

    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v8, v2, :cond_159

    :cond_13f
    if-ltz v3, :cond_153

    iget v8, v10, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-gt v8, v3, :cond_153

    if-nez v5, :cond_153

    if-nez v6, :cond_153

    const-string v8, "force-keep-alive"

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 524
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_159

    .line 526
    :cond_153
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 527
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .end local v5    # "killProcess":Z
    .end local v6    # "killByExtraPolicy":Z
    .end local v7    # "keepAliveAttr":Z
    .end local v10    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "keepAliveByExtraPolicy":Z
    :cond_159
    :goto_159
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p1

    move/from16 v14, v16

    move-object/from16 v10, v17

    move/from16 v17, v18

    move-wide/from16 v5, v19

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    goto/16 :goto_8a

    .line 540
    .end local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "ia":I
    .end local v15    # "ip":I
    .end local v16    # "NP":I
    .end local v17    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v18    # "NA":I
    .end local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_16b
    move-exception v0

    move-object/from16 v22, v8

    .end local v8    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_1db

    .end local v21    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v7, "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_170
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    .end local v7    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_1db

    .line 481
    .end local v19    # "callingId":J
    .end local v21    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v4    # "ia":I
    .local v5, "callingId":J
    .restart local v7    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v10, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .local v14, "NA":I
    .restart local v15    # "ip":I
    .restart local v16    # "NP":I
    :cond_176
    move-wide/from16 v19, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v17, v10

    move/from16 v18, v14

    .line 477
    .end local v4    # "ia":I
    .end local v5    # "callingId":J
    .end local v7    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v14    # "NA":I
    .restart local v19    # "callingId":J
    .restart local v21    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v14, v16

    const/4 v10, 0x0

    goto/16 :goto_6e

    .end local v16    # "NP":I
    .end local v19    # "callingId":J
    .end local v21    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "callingId":J
    .restart local v7    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v14, "NP":I
    :cond_18b
    move-wide/from16 v19, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v16, v14

    .line 534
    .end local v5    # "callingId":J
    .end local v7    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14    # "NP":I
    .end local v15    # "ip":I
    .restart local v16    # "NP":I
    .restart local v19    # "callingId":J
    .restart local v21    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 535
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_198
    if-ge v4, v2, :cond_1cb

    .line 536
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v24, v6

    check-cast v24, Lcom/android/server/am/ProcessRecord;

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0xd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "kill all background except(policy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v28}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 535
    add-int/lit8 v4, v4, 0x1

    goto :goto_198

    .line 540
    .end local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2    # "N":I
    .end local v4    # "i":I
    .end local v16    # "NP":I
    :cond_1cb
    monitor-exit v13
    :try_end_1cc
    .catchall {:try_start_117 .. :try_end_1cc} :catchall_1e2

    :try_start_1cc
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1cf
    .catchall {:try_start_1cc .. :try_end_1cf} :catchall_1e0

    .line 542
    .end local v9    # "isExtraPolicy":Z
    .end local v11    # "skipSdkVersionCheck":Z
    .end local v12    # "extraPolicyName":Ljava/lang/String;
    .end local v21    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    nop

    .line 544
    return-void

    .line 540
    .end local v19    # "callingId":J
    .restart local v5    # "callingId":J
    .restart local v7    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "isExtraPolicy":Z
    .restart local v11    # "skipSdkVersionCheck":Z
    .restart local v12    # "extraPolicyName":Ljava/lang/String;
    :catchall_1d4
    move-exception v0

    move-wide/from16 v19, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    .end local v5    # "callingId":J
    .end local v7    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v8    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "callingId":J
    .restart local v21    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1db
    :try_start_1db
    monitor-exit v13
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_1e2

    :try_start_1dc
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v19    # "callingId":J
    .end local p0    # "this":Lcom/android/server/am/ActivityManagerServiceExt;
    .end local p1    # "minTargetSdk":I
    .end local p2    # "maxProcState":I
    .end local p3    # "extraPolicy":Landroid/os/Bundle;
    throw v0
    :try_end_1e0
    .catchall {:try_start_1dc .. :try_end_1e0} :catchall_1e0

    .line 542
    .end local v9    # "isExtraPolicy":Z
    .end local v11    # "skipSdkVersionCheck":Z
    .end local v12    # "extraPolicyName":Ljava/lang/String;
    .end local v21    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerServiceExt;
    .restart local p1    # "minTargetSdk":I
    .restart local p2    # "maxProcState":I
    .restart local p3    # "extraPolicy":Landroid/os/Bundle;
    :catchall_1e0
    move-exception v0

    goto :goto_1e7

    .line 540
    .restart local v9    # "isExtraPolicy":Z
    .restart local v11    # "skipSdkVersionCheck":Z
    .restart local v12    # "extraPolicyName":Ljava/lang/String;
    .restart local v21    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1e2
    move-exception v0

    goto :goto_1db

    .line 542
    .end local v9    # "isExtraPolicy":Z
    .end local v11    # "skipSdkVersionCheck":Z
    .end local v12    # "extraPolicyName":Ljava/lang/String;
    .end local v19    # "callingId":J
    .end local v21    # "extraPolicyKillPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "extraPolicyKeepPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "callingId":J
    :catchall_1e4
    move-exception v0

    move-wide/from16 v19, v5

    .end local v5    # "callingId":J
    .restart local v19    # "callingId":J
    :goto_1e7
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    throw v0

    .line 446
    .end local v19    # "callingId":J
    :cond_1eb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: killAllBackgroundProcessesExcept() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "ActivityManagerServiceExt"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public synthetic lambda$markAsDedicatedProcessNameIfAliveLocked$4$ActivityManagerServiceExt(ZLjava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/samsung/android/sysint/SemSysIntManager;)V
    .registers 6
    .param p1, "dedicated"    # Z
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "p"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "s"    # Lcom/samsung/android/sysint/SemSysIntManager;

    .line 1266
    iget v0, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-direct {p0, p4, p1, p2, v0}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Lcom/samsung/android/sysint/SemSysIntManager;ZLjava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$markAsLongLivePackageIfAliveLocked$1$ActivityManagerServiceExt(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/samsung/android/sysint/SemSysIntManager;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "p"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "s"    # Lcom/samsung/android/sysint/SemSysIntManager;

    .line 1129
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v1, 0x1

    invoke-direct {p0, p3, v1, p1, v0}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Lcom/samsung/android/sysint/SemSysIntManager;ZLjava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$promoteAsDedicatedLocked$6$ActivityManagerServiceExt(Lcom/android/server/am/ProcessRecord;Lcom/samsung/android/sysint/SemSysIntManager;)V
    .registers 6
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "s"    # Lcom/samsung/android/sysint/SemSysIntManager;

    .line 1303
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v2, 0x1

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Lcom/samsung/android/sysint/SemSysIntManager;ZLjava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$promoteAsLongLivePackageIfNeededLocked$2$ActivityManagerServiceExt(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/samsung/android/sysint/SemSysIntManager;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "p"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "s"    # Lcom/samsung/android/sysint/SemSysIntManager;

    .line 1168
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v1, 0x1

    invoke-direct {p0, p3, v1, p1, v0}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Lcom/samsung/android/sysint/SemSysIntManager;ZLjava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$removeLongLivePackageLocked$3$ActivityManagerServiceExt(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;Lcom/samsung/android/sysint/SemSysIntManager;)V
    .registers 7
    .param p1, "cb"    # Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
    .param p2, "p"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "s"    # Lcom/samsung/android/sysint/SemSysIntManager;

    .line 1195
    # getter for: Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->access$1300(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v2, 0x1

    invoke-direct {p0, p3, v2, v0, v1}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Lcom/samsung/android/sysint/SemSysIntManager;ZLjava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$restoreAllAdjs$0$ActivityManagerServiceExt(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;Lcom/samsung/android/sysint/SemSysIntManager;)V
    .registers 7
    .param p1, "cb"    # Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
    .param p2, "p"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "s"    # Lcom/samsung/android/sysint/SemSysIntManager;

    .line 1116
    # getter for: Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->access$1300(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v2, 0x0

    invoke-direct {p0, p3, v2, v0, v1}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Lcom/samsung/android/sysint/SemSysIntManager;ZLjava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$setLongLiveProcess$5$ActivityManagerServiceExt(Lcom/android/server/am/ProcessRecord;Lcom/samsung/android/sysint/SemSysIntManager;)V
    .registers 6
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "s"    # Lcom/samsung/android/sysint/SemSysIntManager;

    .line 1292
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v2, 0x1

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Lcom/samsung/android/sysint/SemSysIntManager;ZLjava/lang/String;I)V

    return-void
.end method

.method notifyNewProcessRecord(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 844
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_5

    .line 846
    return-void

    .line 849
    :cond_5
    const-string v0, "com.android.systemui"

    .line 850
    .local v0, "systemUi":Ljava/lang/String;
    if-eqz p1, :cond_28

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v1, :cond_28

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v2, 0x9

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_28

    .line 853
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 854
    const/16 v1, -0x320

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 856
    :cond_28
    return-void
.end method

.method public printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "i"    # I
    .param p4, "now"    # J

    .line 906
    const-string v0, ", [disp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v0, v0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 908
    const-string v0, ", fin="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 909
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 910
    const-string v0, ", dur="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    .line 912
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v2, v2, p3

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_39

    .line 914
    :cond_34
    const-string v0, "--"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 916
    :goto_39
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    return-void
.end method

.method promoteAsDedicatedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "promoteAsDedicated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->dedicated:Z

    .line 1303
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mSsim:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$t6vndNvtRCrVc_sIRckkinC3JRg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$t6vndNvtRCrVc_sIRckkinC3JRg;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1304
    return-void
.end method

.method promoteAsLongLivePackageIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;

    .line 1159
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_57

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_57

    .line 1164
    :cond_a
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    const/4 v3, 0x1

    if-ge v2, v1, :cond_33

    aget-object v4, v0, v2

    .line 1165
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1166
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->dedicated:Z

    .line 1167
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    invoke-direct {v2, v4, p1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;-><init>(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mSsim:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$hP9_-xNLxqAb2A0sArZSCnRSfJk;

    invoke-direct {v2, p0, v4, p1}, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$hP9_-xNLxqAb2A0sArZSCnRSfJk;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1169
    goto :goto_33

    .line 1164
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1174
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_3a
    if-ltz v1, :cond_56

    .line 1175
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 1176
    .local v2, "cb":Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
    # getter for: Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->access$1200(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_53

    .line 1177
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1174
    .end local v2    # "cb":Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
    :cond_53
    add-int/lit8 v1, v1, -0x1

    goto :goto_3a

    .line 1180
    .end local v1    # "i":I
    :cond_56
    return-void

    .line 1161
    :cond_57
    :goto_57
    return-void
.end method

.method public queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 376
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 377
    .local v10, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 378
    .local v11, "callingUid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 380
    .local v12, "callingAppId":I
    const/16 v0, 0x3e8

    if-eq v12, v0, :cond_49

    const/16 v0, 0x3e9

    if-eq v12, v0, :cond_49

    const/16 v0, 0x7d0

    if-eq v12, v0, :cond_49

    const/16 v0, 0x3ea

    if-eq v12, v0, :cond_49

    const/16 v0, 0x403

    if-eq v12, v0, :cond_49

    if-nez v11, :cond_25

    goto :goto_49

    .line 385
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: not allowed to query registered receiver packages from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "ActivityManagerServiceExt"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    .end local v0    # "msg":Ljava/lang/String;
    :cond_49
    :goto_49
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_4c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 392
    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    move-object v14, v2

    .line 393
    .local v14, "registeredReceiverPackages":[Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_c8

    move-object/from16 v3, p1

    :try_start_57
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_c6

    move-object v15, v2

    .line 394
    .end local p1    # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    :try_start_5c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_c0

    move-wide/from16 v16, v2

    .line 396
    .local v16, "origId":J
    :try_start_62
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v8, "queryRegisteredReceiverPackages"

    const/4 v9, 0x0

    move v3, v10

    move v4, v11

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_74
    .catchall {:try_start_62 .. :try_end_74} :catchall_b6

    .line 399
    .end local p3    # "userId":I
    .local v2, "userId":I
    :try_start_74
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mReceiverResolver:Lcom/android/server/IntentResolver;
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_b2

    .line 400
    move-object/from16 v4, p2

    :try_start_7a
    invoke-virtual {v3, v15, v4, v0, v2}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    .line 401
    .local v0, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    if-eqz v0, :cond_a7

    .line 402
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 404
    .local v3, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9a

    .line 405
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastFilter;

    .line 406
    .local v6, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v7, v6, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v5, v5, 0x1

    goto :goto_86

    .line 408
    .end local v5    # "i":I
    .end local v6    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_9a
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_a6
    .catchall {:try_start_7a .. :try_end_a6} :catchall_b0

    move-object v14, v5

    .line 411
    .end local v0    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .end local v3    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_a7
    :try_start_a7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    nop

    .line 413
    monitor-exit v13
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_d5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 411
    :catchall_b0
    move-exception v0

    goto :goto_bb

    :catchall_b2
    move-exception v0

    move-object/from16 v4, p2

    goto :goto_bb

    .end local v2    # "userId":I
    .restart local p3    # "userId":I
    :catchall_b6
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v2, p3

    .end local p3    # "userId":I
    .restart local v2    # "userId":I
    :goto_bb
    :try_start_bb
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    nop

    .end local v2    # "userId":I
    .end local v10    # "callingPid":I
    .end local v11    # "callingUid":I
    .end local v12    # "callingAppId":I
    .end local v15    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/am/ActivityManagerServiceExt;
    .end local p2    # "resolvedType":Ljava/lang/String;
    throw v0

    .line 414
    .end local v14    # "registeredReceiverPackages":[Ljava/lang/String;
    .end local v16    # "origId":J
    .restart local v10    # "callingPid":I
    .restart local v11    # "callingUid":I
    .restart local v12    # "callingAppId":I
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerServiceExt;
    .restart local p2    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catchall_c0
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v2, p3

    goto :goto_d0

    .end local v15    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_c6
    move-exception v0

    goto :goto_cb

    :catchall_c8
    move-exception v0

    move-object/from16 v3, p1

    :goto_cb
    move-object/from16 v4, p2

    move/from16 v2, p3

    move-object v15, v3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p3    # "userId":I
    .restart local v2    # "userId":I
    .restart local v15    # "intent":Landroid/content/Intent;
    :goto_d0
    monitor-exit v13
    :try_end_d1
    .catchall {:try_start_bb .. :try_end_d1} :catchall_d5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_d5
    move-exception v0

    goto :goto_d0
.end method

.method removeLongLivePackageLocked(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "longLivePackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    .line 1185
    return v2

    .line 1188
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1189
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_38
    if-ltz v0, :cond_6c

    .line 1190
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 1191
    .local v3, "cb":Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
    # getter for: Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->access$1300(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1192
    # getter for: Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->access$1200(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1193
    .local v4, "p":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_64

    .line 1194
    iput-boolean v2, v4, Lcom/android/server/am/ProcessRecord;->dedicated:Z

    .line 1195
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mSsim:Ljava/util/Optional;

    new-instance v6, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$g9k1HunSH3UhxIDVtGPCNYNr7fM;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$g9k1HunSH3UhxIDVtGPCNYNr7fM;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1197
    :cond_64
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1189
    .end local v3    # "cb":Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
    .end local v4    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_69
    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    .line 1201
    .end local v0    # "i":I
    :cond_6c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_87

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longLivePackage callback "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_87
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    move-result v0

    return v0
.end method

.method removeLongLivePackageWhenUninstalledLocked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1222
    if-eqz p1, :cond_73

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_73

    .line 1226
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uninstalled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1228
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3e

    .line 1229
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_6e

    .line 1231
    :cond_3e
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_46
    if-ltz v0, :cond_6e

    .line 1232
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;

    .line 1233
    .local v1, "cb":Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
    # getter for: Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->ref:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->access$1200(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1234
    .local v2, "p":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_66

    # getter for: Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->packageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;->access$1300(Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1235
    :cond_66
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLongLiveCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1231
    .end local v1    # "cb":Lcom/android/server/am/ActivityManagerServiceExt$LongLiveCallback;
    .end local v2    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_6b
    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    .line 1240
    .end local v0    # "i":I
    :cond_6e
    :goto_6e
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    move-result v0

    return v0

    .line 1223
    :cond_73
    :goto_73
    const/4 v0, 0x0

    return v0
.end method

.method removeLongLiveTaskLocked(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1257
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->removeDedicatedProcessFromPackage(Ljava/lang/String;I)V

    .line 1258
    return-void
.end method

.method removePendingIntentRecordLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPendingIntentRecordCountByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 251
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_b

    return-void

    .line 252
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 253
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPendingIntentRecordCountByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 255
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mPendingIntentRecordCountByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :goto_26
    return-void
.end method

.method public resetUpdateConfigurationCallerLocked()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->setCallerLocked(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->access$300(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method scheduleTrimApplicaions(Z)V
    .registers 4
    .param p1, "scheduled"    # Z

    .line 264
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceExt;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    if-eqz p1, :cond_7

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public setAtmService(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 175
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 176
    return-void
.end method

.method setLongLivePackageLocked(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLongLivePackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v0, 0x0

    .line 1140
    .local v0, "saved":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1141
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->restoreAllAdjs()V

    .line 1142
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1143
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->removeLongLivePackage()Z

    move-result v0

    goto :goto_68

    .line 1145
    :cond_35
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v1, 0x0

    goto :goto_48

    :cond_3f
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1146
    .local v1, "mark":Ljava/lang/String;
    :goto_48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 1147
    :cond_54
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->restoreAllAdjs()V

    .line 1148
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1149
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->longLiveAppByPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsLongLivePackageIfAliveLocked(Ljava/lang/String;)V

    .line 1151
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->saveLongLivePackage()Z

    move-result v0

    .line 1155
    .end local v1    # "mark":Ljava/lang/String;
    :cond_68
    :goto_68
    return v0
.end method

.method setLongLiveProcess(I)Z
    .registers 6
    .param p1, "pid"    # I

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLongLiveProcess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1284
    const/4 v1, -0x1

    if-eq p1, v1, :cond_45

    .line 1286
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_4b

    .line 1287
    :try_start_25
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 1288
    .local v2, "p":Lcom/android/server/am/ProcessRecord;
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_42

    .line 1290
    if-eqz v2, :cond_45

    :try_start_30
    iget-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->dedicated:Z

    if-nez v1, :cond_45

    .line 1291
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->dedicated:Z

    .line 1292
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mSsim:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$FCE1zHJ821rrP31HlUFvKYyYqJ0;

    invoke-direct {v3, p0, v2}, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$FCE1zHJ821rrP31HlUFvKYyYqJ0;-><init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    goto :goto_45

    .line 1288
    .end local v2    # "p":Lcom/android/server/am/ProcessRecord;
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerServiceExt;
    .end local p1    # "pid":I
    :try_start_44
    throw v2

    .line 1295
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerServiceExt;
    .restart local p1    # "pid":I
    :cond_45
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_4b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1297
    const/4 v0, 0x0

    return v0

    .line 1295
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setLongLiveTask(IZ)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "dedicated"    # Z

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLongLiveTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1274
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->setLongLiveTask(IZ)Landroid/util/Pair;

    move-result-object v1

    .line 1275
    .local v1, "task":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_3e

    .line 1276
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/am/ActivityManagerServiceExt;->markAsDedicatedProcessNameIfAliveLocked(Ljava/lang/String;IZ)V

    .line 1278
    .end local v1    # "task":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1279
    return-void

    .line 1278
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setUpdateConfigurationCallerLocked(I)V
    .registers 5
    .param p1, "pid"    # I

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 352
    :try_start_6
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    move-object v0, v2

    .line 353
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_30

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_21

    const/4 v2, 0x0

    goto :goto_23

    :cond_21
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "processInfo":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mLocaleChangedHistory:Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;

    # invokes: Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->setCallerLocked(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->access$300(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/lang/String;)V

    .line 356
    return-void

    .line 353
    .end local v1    # "processInfo":Ljava/lang/String;
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method updatePreBootCscFile()V
    .registers 6

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 218
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 219
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x400

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 220
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceExt;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1f} :catch_22
    .catchall {:try_start_2 .. :try_end_1f} :catchall_20

    .line 226
    goto :goto_30

    :catchall_20
    move-exception v2

    goto :goto_3b

    .line 222
    :catch_22
    move-exception v2

    .line 223
    .local v2, "e":Ljava/io/IOException;
    :try_start_23
    const-string v3, "ActivityManagerServiceExt"

    const-string v4, "Failure writing last done pre-boot receivers"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    sget-object v3, Lcom/android/server/am/ActivityManagerServiceExt;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_20

    .line 226
    nop

    .end local v2    # "e":Ljava/io/IOException;
    :goto_30
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 227
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 228
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 229
    nop

    .line 230
    return-void

    .line 226
    :goto_3b
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 227
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 228
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 229
    throw v2
.end method
