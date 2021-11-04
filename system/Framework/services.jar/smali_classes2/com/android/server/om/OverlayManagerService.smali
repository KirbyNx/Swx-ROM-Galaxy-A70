.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;,
        Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;,
        Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerService$UserReceiver;,
        Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final DEFAULT_OVERLAYS_PROP:Ljava/lang/String; = "ro.boot.vendor.overlay.theme"

.field static final TAG:Ljava/lang/String; = "OverlayManager"


# instance fields
.field private final mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

.field private final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

.field private final mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mPreventRelaunchPkgList:[Ljava/lang/String;

.field private mResetSettings:Z

.field private final mService:Landroid/os/IBinder;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 233
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;

    .line 268
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 257
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 260
    iput-boolean v2, v1, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z

    .line 627
    new-instance v0, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    .line 270
    const-wide/32 v3, 0x4000000

    :try_start_20
    const-string v0, "OMS#OverlayManagerService"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 271
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    .line 272
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "overlays.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "overlays"

    invoke-direct {v0, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 273
    new-instance v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_11b

    move-object/from16 v5, p1

    :try_start_3f
    invoke-direct {v0, v5}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 274
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 275
    new-instance v8, Lcom/android/server/om/IdmapManager;

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->getInstance()Lcom/android/server/om/IdmapDaemon;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-direct {v8, v0, v6}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/OverlayableInfoCallback;)V

    .line 276
    .local v8, "im":Lcom/android/server/om/IdmapManager;
    new-instance v9, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v9}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v9, v1, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 277
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v7, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 278
    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getSystemInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v10

    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v13}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 280
    new-instance v0, Lcom/android/server/om/OverlayActorEnforcer;

    iget-object v6, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-direct {v0, v6}, Lcom/android/server/om/OverlayActorEnforcer;-><init>(Lcom/android/server/om/OverlayableInfoCallback;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 283
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v6, "package"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Lcom/android/server/om/OverlayManagerService$PackageReceiver;

    invoke-direct {v15, v1, v13}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 290
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .local v6, "userFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v15, v1, v13}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 299
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v7, "themeFilter":Landroid/content/IntentFilter;
    const-string v9, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;

    invoke-direct {v15, v1, v13}, Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v7

    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 306
    nop

    .end local v7    # "themeFilter":Landroid/content/IntentFilter;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    .line 309
    invoke-virtual {v1, v2}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    .line 311
    const-string/jumbo v2, "overlay"

    iget-object v7, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v7}, Lcom/android/server/om/OverlayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 312
    const-class v2, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1, v2, v1}, Lcom/android/server/om/OverlayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x107015c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/om/OverlayManagerService;->mPreventRelaunchPkgList:[Ljava/lang/String;
    :try_end_114
    .catchall {:try_start_3f .. :try_end_114} :catchall_119

    .line 322
    .end local v0    # "packageFilter":Landroid/content/IntentFilter;
    .end local v6    # "userFilter":Landroid/content/IntentFilter;
    .end local v8    # "im":Lcom/android/server/om/IdmapManager;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 323
    nop

    .line 324
    return-void

    .line 322
    :catchall_119
    move-exception v0

    goto :goto_11e

    :catchall_11b
    move-exception v0

    move-object/from16 v5, p1

    :goto_11e
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 323
    throw v0
.end method

.method static synthetic access$1000(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 230
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->readResetSettingsValue()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 230
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;ZZZ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .line 230
    invoke-direct/range {p0 .. p5}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;ZZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;ZZ)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 230
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 230
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 230
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 230
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 230
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)Ljava/util/ArrayList;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayActorEnforcer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 230
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    return-object v0
.end method

.method private static getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 7

    .line 367
    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 369
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 372
    :cond_10
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 373
    .local v1, "defaultPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    .line 374
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 375
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 378
    :cond_2d
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private initIfNeeded()V
    .registers 9

    .line 332
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 333
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 334
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 335
    :try_start_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 336
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_4f

    .line 337
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 338
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v6

    if-nez v6, :cond_2b

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v6, :cond_33

    :cond_2b
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    .line 339
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 343
    :cond_33
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 344
    .local v6, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)Ljava/util/ArrayList;

    .line 336
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 347
    .end local v3    # "userCount":I
    .end local v4    # "i":I
    :cond_4f
    monitor-exit v2

    .line 348
    return-void

    .line 347
    :catchall_51
    move-exception v3

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_14 .. :try_end_53} :catchall_51

    throw v3
.end method

.method private readResetSettingsValue()V
    .registers 9

    .line 1409
    const-string/jumbo v0, "reset_setting"

    .line 1410
    .local v0, "KEY_RESET_SETTING":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/overlays/preferences/samsung.andorid.themes.component_preference.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1411
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 1412
    .local v2, "map":Ljava/util/Map;
    const/4 v3, 0x0

    .line 1413
    .local v3, "mMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_48

    .line 1414
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_11
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v6, 0x4000

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_3e

    .line 1415
    .local v5, "bis":Ljava/io/BufferedInputStream;
    :try_start_18
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v6

    move-object v2, v6

    .line 1416
    move-object v3, v2

    .line 1417
    const-string/jumbo v6, "reset_setting"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_34

    .line 1418
    :try_start_2d
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3e

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    :try_start_30
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_48

    .line 1420
    .end local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4c

    .line 1413
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    :catchall_34
    move-exception v6

    :try_start_35
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v7

    :try_start_3a
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "KEY_RESET_SETTING":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "map":Ljava/util/Map;
    .end local v3    # "mMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :goto_3d
    throw v6
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "KEY_RESET_SETTING":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "map":Ljava/util/Map;
    .restart local v3    # "mMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :catchall_3e
    move-exception v5

    :try_start_3f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v6

    :try_start_44
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "KEY_RESET_SETTING":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "map":Ljava/util/Map;
    .end local v3    # "mMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :goto_47
    throw v5
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_48

    .line 1418
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "KEY_RESET_SETTING":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "map":Ljava/util/Map;
    .restart local v3    # "mMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :catch_48
    move-exception v4

    .line 1419
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1421
    .end local v4    # "e1":Ljava/lang/Exception;
    :goto_4c
    return-void
.end method

.method private restoreSettings()V
    .registers 12

    .line 1364
    const-wide/32 v0, 0x4000000

    :try_start_3
    const-string v2, "OMS#restoreSettings"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1365
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_8e

    .line 1366
    :try_start_b
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1367
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_8b

    .line 1393
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1367
    return-void

    .line 1369
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_22} :catch_7d
    .catchall {:try_start_1c .. :try_end_22} :catchall_8b

    .line 1370
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_22
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    .line 1376
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1377
    .local v4, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 1378
    .local v5, "liveUserIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_35
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4e

    .line 1379
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    aput v7, v5, v6

    .line 1378
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 1381
    .end local v6    # "i":I
    :cond_4e
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 1383
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v6}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_59
    if-ge v8, v7, :cond_6b

    aget v9, v6, v8

    .line 1384
    .local v9, "userId":I
    invoke-static {v5, v9}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v10

    if-gez v10, :cond_68

    .line 1385
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, v9}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_68
    .catchall {:try_start_22 .. :try_end_68} :catchall_71

    .line 1383
    .end local v9    # "userId":I
    :cond_68
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 1388
    .end local v4    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "liveUserIds":[I
    :cond_6b
    if-eqz v3, :cond_70

    :try_start_6d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_70} :catch_7d
    .catchall {:try_start_6d .. :try_end_70} :catchall_8b

    .line 1390
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :cond_70
    goto :goto_85

    .line 1369
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_71
    move-exception v4

    if-eqz v3, :cond_7c

    :try_start_74
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v5

    :try_start_79
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :cond_7c
    :goto_7c
    throw v4
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7d} :catch_7d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_7d} :catch_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_8b

    .line 1388
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :catch_7d
    move-exception v3

    .line 1389
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7e
    const-string v4, "OverlayManager"

    const-string v5, "failed to restore overlay state"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1391
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_8b

    .line 1393
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1394
    nop

    .line 1395
    return-void

    .line 1391
    :catchall_8b
    move-exception v3

    :try_start_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :try_start_8d
    throw v3
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    .line 1393
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    :catchall_8e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1394
    throw v2
.end method

.method private schedulePersistSettings()V
    .registers 3

    .line 1340
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1341
    return-void

    .line 1343
    :cond_a
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o;

    invoke-direct {v1, p0}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1360
    return-void
.end method

.method private updateAssets(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;

    .line 1257
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    .line 1258
    return-void
.end method

.method private updateAssets(ILjava/util/List;)V
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1262
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;ZZ)V

    .line 1263
    return-void
.end method

.method private updateAssets(ILjava/util/List;ZZ)V
    .registers 11
    .param p1, "userId"    # I
    .param p3, "isForSamsungTheme"    # Z
    .param p4, "isSamungThemeFwOverlay"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1268
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;ZZZ)V

    .line 1269
    return-void
.end method

.method private updateAssets(ILjava/util/List;ZZZ)V
    .registers 22
    .param p1, "userId"    # I
    .param p3, "isForSamsungTheme"    # Z
    .param p4, "isSamungThemeFwOverlay"    # Z
    .param p5, "avoidRelaunch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 1274
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p5

    if-eqz p3, :cond_d

    iget-boolean v0, v1, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z

    if-eqz v0, :cond_d

    .line 1277
    return-void

    .line 1279
    :cond_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 1283
    .local v4, "am":Landroid/app/IActivityManager;
    const/4 v0, 0x1

    if-eqz p3, :cond_9f

    if-eqz v4, :cond_9f

    .line 1284
    if-eqz p4, :cond_1f

    .line 1285
    move-object/from16 v5, p2

    :try_start_1a
    invoke-direct {v1, v2, v5, v0}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_25

    .line 1286
    :cond_1f
    move-object/from16 v5, p2

    invoke-direct/range {p0 .. p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_25
    move-object v6, v0

    .line 1287
    .local v6, "updatedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 1288
    .local v8, "packageName":Ljava/lang/String;
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->immortalApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 1289
    iget-object v9, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_42} :catch_d6

    .line 1290
    :try_start_42
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v2, v10}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v10, v0

    .line 1291
    .local v10, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_5f

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_9a

    if-eqz v0, :cond_5f

    .line 1293
    :try_start_50
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v11, "update-overlay"

    invoke-interface {v4, v8, v0, v2, v11}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5a} :catch_5b
    .catchall {:try_start_50 .. :try_end_5a} :catchall_9a

    .line 1296
    goto :goto_5f

    .line 1294
    :catch_5b
    move-exception v0

    .line 1295
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1299
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5f
    :goto_5f
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v11, v0

    .line 1301
    .local v11, "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_98

    .line 1302
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 1303
    .local v13, "siblingTargetPkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v0, v13, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v14, v0

    .line 1305
    .local v14, "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_97

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_86
    .catchall {:try_start_5c .. :try_end_86} :catchall_9a

    if-eqz v0, :cond_97

    .line 1308
    :try_start_88
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v15, "update-overlay"

    invoke-interface {v4, v13, v0, v2, v15}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_92} :catch_93
    .catchall {:try_start_88 .. :try_end_92} :catchall_9a

    .line 1313
    goto :goto_97

    .line 1311
    :catch_93
    move-exception v0

    .line 1312
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_94
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1315
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "siblingTargetPkg":Ljava/lang/String;
    .end local v14    # "siblingTargetInfo":Landroid/content/pm/PackageInfo;
    :cond_97
    :goto_97
    goto :goto_6e

    .line 1318
    .end local v10    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "siblingPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_98
    monitor-exit v9

    goto :goto_9d

    :catchall_9a
    move-exception v0

    monitor-exit v9
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_9a

    .end local v4    # "am":Landroid/app/IActivityManager;
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .end local p1    # "userId":I
    .end local p2    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "isForSamsungTheme":Z
    .end local p4    # "isSamungThemeFwOverlay":Z
    .end local p5    # "avoidRelaunch":Z
    :try_start_9c
    throw v0

    .line 1320
    .end local v8    # "packageName":Ljava/lang/String;
    .restart local v4    # "am":Landroid/app/IActivityManager;
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "isForSamsungTheme":Z
    .restart local p4    # "isSamungThemeFwOverlay":Z
    .restart local p5    # "avoidRelaunch":Z
    :cond_9d
    :goto_9d
    goto :goto_2a

    .line 1321
    .end local v6    # "updatedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9e
    goto :goto_d5

    .line 1283
    :cond_9f
    move-object/from16 v5, p2

    .line 1322
    invoke-direct/range {p0 .. p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1323
    .restart local v6    # "updatedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "OverlayManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAssets -> not for themes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " avoidRelaunch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    if-eqz v3, :cond_d2

    .line 1327
    const-class v7, Landroid/app/ActivityManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManagerInternal;

    .line 1328
    invoke-virtual {v7, v6, v2, v0}, Landroid/app/ActivityManagerInternal;->scheduleApplicationInfoChanged(Ljava/util/List;IZ)V

    goto :goto_d5

    .line 1331
    :cond_d2
    invoke-interface {v4, v6, v2}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_d5} :catch_d6

    .line 1336
    .end local v6    # "updatedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_d5
    goto :goto_d7

    .line 1334
    :catch_d6
    move-exception v0

    .line 1337
    :goto_d7
    return-void
.end method

.method private updateOverlayPaths(ILjava/util/List;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1177
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private updateOverlayPaths(ILjava/util/List;Z)Ljava/util/ArrayList;
    .registers 20
    .param p1, "userId"    # I
    .param p3, "pruneTargets"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    .line 1182
    const-wide/32 v4, 0x4000000

    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OMS#updateOverlayPaths "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1183
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 1184
    const-string v0, "OverlayManager"

    const-string v6, "Updating overlay assets"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_28
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 1187
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    move-object v6, v0

    .line 1188
    .local v6, "pm":Landroid/content/pm/PackageManagerInternal;
    const-string v0, "android"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v7, v0

    .line 1189
    .local v7, "updateFrameworkRes":Z
    if-eqz v7, :cond_3f

    .line 1190
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_146

    move-object v3, v0

    .line 1195
    .end local p2    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3f
    if-eqz v7, :cond_4d

    if-eqz p3, :cond_4d

    .line 1196
    :try_start_43
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getSamsungThemeTargetPackageNames(I)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    .line 1200
    :cond_4d
    new-instance v0, Landroid/util/ArrayMap;

    .line 1201
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v8, v0

    .line 1202
    .local v8, "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v9, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_144

    .line 1203
    :try_start_5a
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v10, "android"

    .line 1204
    const/4 v11, 0x1

    invoke-virtual {v0, v10, v2, v11}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1206
    .local v0, "frameworkOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 1207
    .local v10, "n":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_68
    const/4 v13, 0x2

    if-ge v12, v10, :cond_c6

    .line 1208
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1209
    .local v14, "targetPackageName":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "android"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    .line 1211
    invoke-interface {v15, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1214
    :cond_81
    iget-object v4, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v5, "android"

    invoke-virtual {v4, v5, v2, v13}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    .line 1216
    .local v4, "samsungThemeFwOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "android"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b3

    if-eqz v4, :cond_b3

    .line 1218
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b3

    .line 1219
    iget-object v5, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const/4 v13, 0x3

    invoke-virtual {v5, v14, v2, v13}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    .line 1222
    .local v5, "overlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v13, Landroid/content/om/SamsungThemeConstants;->changeableApps:Ljava/util/HashSet;

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b0

    if-eqz v5, :cond_b3

    .line 1223
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_b3

    .line 1224
    :cond_b0
    invoke-interface {v15, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1228
    .end local v5    # "overlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b3
    iget-object v5, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v5, v14, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1229
    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    nop

    .end local v4    # "samsungThemeFwOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "targetPackageName":Ljava/lang/String;
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v12, v12, 0x1

    const-wide/32 v4, 0x4000000

    goto :goto_68

    .line 1231
    .end local v0    # "frameworkOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "n":I
    .end local v12    # "i":I
    :cond_c6
    monitor-exit v9
    :try_end_c7
    .catchall {:try_start_5a .. :try_end_c7} :catchall_141

    .line 1233
    :try_start_c7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1234
    .local v0, "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1235
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d1
    if-ge v5, v4, :cond_135

    .line 1236
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1237
    .local v9, "targetPackageName":Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v10, :cond_10f

    .line 1238
    const-string v10, "OverlayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-> Updating overlay: target="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " overlays=["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ","

    .line 1239
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    invoke-static {v14, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] userId="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1238
    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_10f
    nop

    .line 1244
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 1243
    invoke-virtual {v6, v2, v9, v10, v0}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_132

    .line 1246
    const-string v10, "OverlayManager"

    const-string v12, "Failed to change enabled overlays for %s user %d"

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    .line 1247
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    .line 1246
    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    .end local v9    # "targetPackageName":Ljava/lang/String;
    :cond_132
    add-int/lit8 v5, v5, 0x1

    goto :goto_d1

    .line 1250
    .end local v5    # "i":I
    :cond_135
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_13a
    .catchall {:try_start_c7 .. :try_end_13a} :catchall_144

    .line 1252
    const-wide/32 v9, 0x4000000

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 1250
    return-object v5

    .line 1231
    .end local v0    # "updatedPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "n":I
    :catchall_141
    move-exception v0

    :try_start_142
    monitor-exit v9
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    .end local v3    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .end local p1    # "userId":I
    .end local p3    # "pruneTargets":Z
    :try_start_143
    throw v0
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_144

    .line 1252
    .end local v6    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v7    # "updateFrameworkRes":Z
    .end local v8    # "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v3    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .restart local p1    # "userId":I
    .restart local p3    # "pruneTargets":Z
    :catchall_144
    move-exception v0

    goto :goto_147

    .end local v3    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_146
    move-exception v0

    .end local p2    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_147
    const-wide/32 v4, 0x4000000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1253
    throw v0
.end method


# virtual methods
.method isPreventRelaunchPkg(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1692
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPreventRelaunchPkgList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 1693
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v0, 0x1

    return v0

    .line 1692
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1695
    :cond_14
    return v2
.end method

.method public synthetic lambda$schedulePersistSettings$0$OverlayManagerService()V
    .registers 6

    .line 1344
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1345
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 1346
    const-string v0, "OverlayManager"

    const-string v1, "Writing overlay settings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_11
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1349
    const/4 v1, 0x0

    .line 1351
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_15
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 1352
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    .line 1353
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_26} :catch_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_26} :catch_29
    .catchall {:try_start_15 .. :try_end_26} :catchall_27

    .line 1357
    goto :goto_36

    .line 1358
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_27
    move-exception v1

    goto :goto_38

    .line 1354
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_29
    move-exception v2

    .line 1355
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1356
    const-string v3, "OverlayManager"

    const-string v4, "failed to persist overlay state"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1358
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_36
    monitor-exit v0

    .line 1359
    return-void

    .line 1358
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_27

    throw v1
.end method

.method public onStart()V
    .registers 1

    .line 329
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 6
    .param p1, "newUserId"    # I

    .line 353
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onSwitchUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2f

    .line 357
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 358
    .local v3, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v3}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    .line 359
    .end local v3    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2c

    .line 360
    :try_start_24
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2f

    .line 362
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 363
    nop

    .line 364
    return-void

    .line 359
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .end local p1    # "newUserId":I
    :try_start_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 362
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService;
    .restart local p1    # "newUserId":I
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 363
    throw v2
.end method
