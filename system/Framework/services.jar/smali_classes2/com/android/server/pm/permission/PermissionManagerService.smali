.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Landroid/permission/IPermissionManager$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$Injector;,
        Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;,
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;,
        Lcom/android/server/pm/permission/PermissionManagerService$UpdatePermissionFlags;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RATIONALE_CHANGE_ID:J = 0x8c7dff3L

.field private static final BACKUP_TIMEOUT_MILLIS:J

.field private static final BLOCKING_PERMISSION_FLAGS:I = 0x34

.field private static final EMPTY_INT_ARRAY:[I

.field private static final FULLER_PERMISSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRANT_DENIED:I = 0x1

.field private static final GRANT_INSTALL:I = 0x2

.field private static final GRANT_RUNTIME:I = 0x3

.field private static final GRANT_UPGRADE:I = 0x4

.field private static final KILL_APP_REASON_GIDS_CHANGED:Ljava/lang/String; = "permission grant or revoke changed gids"

.field private static final KILL_APP_REASON_PERMISSIONS_REVOKED:Ljava/lang/String; = "permissions revoked"

.field private static final KILL_REASON_APP_OP_CHANGE:Ljava/lang/String; = "Permission related app op changed"

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final STORAGE_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2

.field private static final USER_PERMISSION_FLAGS:I = 0x3

.field private static final sIsBvtBuild:Z


# instance fields
.field private final TAG_AASA:Ljava/lang/String;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field private mBackgroundPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

.field private final mContext:Landroid/content/Context;

.field private mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

.field private mDefaultDialerProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

.field private mDefaultHomeProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

.field private mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

.field private final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

.field private final mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

.field private final mOneTimePermissionUserManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/OneTimePermissionUserManager;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageGrantedPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSamsungPassPermissionSet:[Ljava/lang/String;

.field private final mSettings:Lcom/android/server/pm/permission/PermissionSettings;

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private final mUserManagerInt:Landroid/os/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 234
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    .line 239
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    .line 257
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 260
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    const-string v2, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    const-string/jumbo v1, "persist.sys.bvt"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/permission/PermissionManagerService;->sIsBvtBuild:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalLock"    # Ljava/lang/Object;

    .line 464
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/pm/permission/PermissionManagerService$Injector;)V

    .line 465
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/pm/permission/PermissionManagerService$Injector;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalLock"    # Ljava/lang/Object;
    .param p3, "injector"    # Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    .line 469
    invoke-direct {p0}, Landroid/permission/IPermissionManager$Stub;-><init>()V

    .line 282
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 289
    const-string v0, "AASA_PermissionManagerService"

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->TAG_AASA:Ljava/lang/String;

    .line 314
    const-string v1, "com.samsung.android.authfw.pass.permission.SEM_PASS_B2C_USE_PASS"

    const-string v2, "com.samsung.android.authfw.pass.permission.SEM_PASS_B2C_USE_IRIS"

    const-string v3, "com.samsung.android.authfw.pass.permission.SEM_PASS_B2C_USE_FINGERPRINT"

    const-string v4, "com.samsung.android.authfw.pass.permission.SEM_PASS_B2B_USE_PASS"

    const-string v5, "com.samsung.android.authfw.pass.permission.SEM_PASS_B2B_USE_IRIS"

    const-string v6, "com.samsung.android.authfw.pass.permission.SEM_PASS_B2B_USE_FINGERPRINT"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSamsungPassPermissionSet:[Ljava/lang/String;

    .line 323
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    .line 336
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 337
    nop

    .line 338
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 374
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    .line 403
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/PermissionManagerService$1;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 470
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    .line 472
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->invalidatePackageInfoCache()V

    .line 473
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->disablePermissionCache()V

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->disablePackageNamePermissionCache()V

    .line 476
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 477
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 478
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 479
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    .line 480
    new-instance v0, Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/server/pm/permission/PermissionSettings;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 481
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 483
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PackageManager"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 485
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 486
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    .line 487
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 489
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 490
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 491
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 492
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 493
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    .line 494
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    .line 498
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v1

    .line 499
    .local v1, "permConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$PermissionEntry;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 500
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e8
    :try_start_e8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_11d

    .line 501
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 502
    .local v5, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 503
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_10f

    .line 504
    new-instance v7, Lcom/android/server/pm/permission/BasePermission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v3}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    .line 505
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 507
    :cond_10f
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_11a

    .line 508
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 500
    .end local v5    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_11a
    add-int/lit8 v4, v4, 0x1

    goto :goto_e8

    .line 511
    .end local v4    # "i":I
    :cond_11d
    monitor-exit v2
    :try_end_11e
    .catchall {:try_start_e8 .. :try_end_11e} :catchall_12f

    .line 513
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    .line 515
    .local v2, "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    const-class v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v3, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 516
    const-class v3, Landroid/permission/PermissionManagerInternal;

    invoke-static {v3, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 517
    return-void

    .line 511
    .end local v2    # "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    :catchall_12f
    move-exception v3

    :try_start_130
    monitor-exit v2
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw v3
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/util/List;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfPermissionDefinitionChanged(Ljava/util/List;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/util/List;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Z

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Z

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Z

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 222
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # [I
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 222
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsForUsers(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/util/List;II)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # I

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackagesInternal(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;

    .line 222
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;IIZZLjava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .line 222
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)[B
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->backupRuntimePermissions(Landroid/os/UserHandle;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;[BLandroid/os/UserHandle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreRuntimePermissions([BLandroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getRuntimePermissionGroupsForMDM()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->reconcileAdditionalRuntimePermissionsForMDM(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/util/List;II)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/pm/permission/PermissionManagerService;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->applyRuntimePermissionsForAllApplicationsForMDM(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->applyRuntimePermissionsOnInstallationForMDM(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/util/Set;)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Set;

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;)Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    .line 222
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    .line 222
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZZI)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setDefaultBrowserInternal(Ljava/lang/String;ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultDialerProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    .line 222
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultDialerProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultHomeProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    .line 222
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultHomeProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 9
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # Z
    .param p8, "x8"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 222
    invoke-direct/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 222
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;I)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .param p7, "x7"    # I

    .line 222
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # I

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "x2"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeStoragePermissionsIfScopeExpanded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method private addAllPermissionGroups(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 12
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 3278
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 3279
    .local v0, "N":I
    const/4 v1, 0x0

    .line 3280
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_7b

    .line 3281
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 3282
    .local v3, "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 3283
    .local v4, "cur":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    if-nez v4, :cond_28

    const/4 v5, 0x0

    goto :goto_2c

    :cond_28
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3284
    .local v5, "curPackageName":Ljava/lang/String;
    :goto_2c
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 3285
    .local v6, "isPackageUpdate":Z
    if-eqz v4, :cond_6c

    if-eqz v6, :cond_39

    goto :goto_6c

    .line 3299
    :cond_39
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3300
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ignored: original from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3301
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3299
    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    goto :goto_78

    .line 3286
    :cond_6c
    :goto_6c
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3287
    nop

    .line 3280
    .end local v3    # "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    .end local v4    # "cur":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    .end local v5    # "curPackageName":Ljava/lang/String;
    .end local v6    # "isPackageUpdate":Z
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3313
    .end local v2    # "i":I
    :cond_7b
    nop

    .line 3317
    return-void
.end method

.method private addAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/util/List;
    .registers 14
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3232
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 3233
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3234
    .local v1, "definitionChangedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_a1

    .line 3235
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 3238
    .local v3, "p":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v4

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/parsing/component/ParsedPermission;->setFlags(I)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 3240
    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3245
    :try_start_28
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    const/16 v5, 0x16

    if-le v4, v5, :cond_41

    .line 3246
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    invoke-virtual {v3, v4}, Landroid/content/pm/parsing/component/ParsedPermission;->setParsedPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)Landroid/content/pm/parsing/component/ParsedPermission;

    .line 3256
    :cond_41
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->isTree()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 3257
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 3259
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 3260
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v8

    .line 3257
    move-object v6, v3

    move-object v7, p1

    move v9, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/parsing/component/ParsedPermission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 3261
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    goto :goto_8c

    .line 3263
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_6a
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 3265
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 3266
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v8

    .line 3263
    move-object v6, v3

    move-object v7, p1

    move v9, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/parsing/component/ParsedPermission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 3267
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 3269
    :goto_8c
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isPermissionDefinitionChanged()Z

    move-result v5

    if-eqz v5, :cond_99

    .line 3270
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3272
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_99
    monitor-exit v10

    .line 3234
    .end local v3    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    .line 3272
    .restart local v3    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    :catchall_9e
    move-exception v4

    monitor-exit v10
    :try_end_a0
    .catchall {:try_start_28 .. :try_end_a0} :catchall_9e

    throw v4

    .line 3274
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    :cond_a1
    return-object v1
.end method

.method private addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 2355
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2356
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2357
    monitor-exit v0

    .line 2358
    return-void

    .line 2357
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I
    .registers 9
    .param p1, "protectionLevel"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 3004
    and-int/lit8 v0, p1, 0x3

    .line 3008
    .local v0, "protectionLevelMasked":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 3009
    return p1

    .line 3012
    :cond_6
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 3013
    .local v1, "appId":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_3c

    if-eqz v1, :cond_3c

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_15

    goto :goto_3c

    .line 3018
    :cond_15
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 3019
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v2, :cond_1e

    .line 3020
    return p1

    .line 3022
    :cond_1e
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_27

    .line 3023
    return v0

    .line 3026
    :cond_27
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3027
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3026
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 3028
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_34

    .line 3029
    return p1

    .line 3031
    :cond_34
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    if-eq v4, v1, :cond_3b

    .line 3032
    return p1

    .line 3034
    :cond_3b
    return p1

    .line 3015
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3c
    :goto_3c
    return p1
.end method

.method private applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    .registers 10
    .param p1, "permState"    # I
    .param p2, "userId"    # I

    .line 2796
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_35

    .line 2800
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid User ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    const/4 v0, 0x0

    return v0

    .line 2805
    :cond_2a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->applyRuntimePermissionsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result v0

    return v0

    .line 2797
    :cond_35
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method private applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 14
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "permState"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 2778
    .local p2, "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 2782
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PackageManager"

    if-nez v0, :cond_2a

    .line 2783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid User ID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    return v1

    .line 2787
    :cond_2a
    if-nez p1, :cond_41

    .line 2788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package name "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    return v1

    .line 2791
    :cond_41
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->applyRuntimePermissionsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result v0

    return v0

    .line 2779
    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method private applyRuntimePermissionsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIZ)Z
    .registers 17
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "permState"    # I
    .param p4, "userId"    # I
    .param p5, "writeToFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZ)Z"
        }
    .end annotation

    .line 2815
    .local p2, "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, p1

    move v9, p3

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getContainerCriticalApps()Ljava/util/List;

    move-result-object v10

    .line 2816
    .local v10, "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PackageManager"

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_3b

    if-eqz v8, :cond_3b

    if-eqz v10, :cond_3b

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3b

    .line 2817
    invoke-interface {v10, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is container critical application"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    return v1

    .line 2823
    :cond_3b
    if-eqz v9, :cond_74

    const/4 v0, 0x1

    if-eq v9, v0, :cond_66

    const/4 v0, 0x2

    if-eq v9, v0, :cond_58

    .line 2840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Permission State "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    return v1

    .line 2830
    :cond_58
    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIIIZ)Z

    move-result v0

    return v0

    .line 2825
    :cond_66
    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIIIZ)Z

    move-result v0

    return v0

    .line 2835
    :cond_74
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIIIZ)Z

    move-result v0

    return v0
.end method

.method private applyRuntimePermissionsOnInstallationForMDM(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2749
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    .line 2750
    return-void

    .line 2752
    :cond_9
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    .line 2754
    .local v0, "appPolicy":Lcom/samsung/android/knox/application/IApplicationPolicy;
    const-string v1, "PackageManager"

    if-eqz v0, :cond_47

    .line 2755
    :try_start_11
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->verifyRuntimePermissionPackageSignature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2756
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2758
    .local v1, "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    invoke-interface {v0, p2, p1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 2759
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2d

    .line 2760
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z

    .line 2763
    :cond_2d
    const/4 v2, 0x1

    invoke-interface {v0, p2, p1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 2764
    if-eqz v1, :cond_3e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3e

    .line 2765
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z

    .line 2767
    .end local v1    # "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3e
    goto :goto_4c

    .line 2768
    :cond_3f
    const-string v2, "Package Signature Mismatch for setRuntimePermissions "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 2773
    :catch_45
    move-exception v1

    goto :goto_4c

    .line 2771
    :cond_47
    const-string v2, "Failed to get ApplicationPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4c} :catch_45

    .line 2775
    :goto_4c
    return-void
.end method

.method private backupRuntimePermissions(Landroid/os/UserHandle;)[B
    .registers 6
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2294
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2295
    .local v0, "backup":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2296
    invoke-static {}, Lcom/android/server/pm/PmThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2297
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$oynlBn0BbcU0KODvfUDDUHb5LKY;

    invoke-direct {v3, v0}, Lcom/android/server/pm/permission/-$$Lambda$oynlBn0BbcU0KODvfUDDUHb5LKY;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 2295
    invoke-virtual {v1, p1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2300
    :try_start_16
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_20} :catch_21
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_20} :catch_21
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_16 .. :try_end_20} :catch_21

    return-object v1

    .line 2301
    :catch_21
    move-exception v1

    .line 2302
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create permission backup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2303
    const/4 v2, 0x0

    return-object v2
.end method

.method private static buildInvalidCrossUserOrProfilePermissionMessage(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "requireFullPermission"    # Z
    .param p2, "isSameProfileGroup"    # Z

    .line 5457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5458
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_f

    .line 5459
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5460
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5462
    :cond_f
    const-string v1, "Requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5463
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5464
    const-string v1, "."

    if-eqz p1, :cond_25

    .line 5465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5468
    :cond_25
    const-string v2, " or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5469
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5470
    if-eqz p2, :cond_39

    .line 5471
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5472
    const-string v2, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5474
    :cond_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildInvalidCrossUserPermissionMessage(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "requireFullPermission"    # Z

    .line 5438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5439
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_f

    .line 5440
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5441
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5443
    :cond_f
    const-string v1, "Requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5444
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5445
    const-string v1, "."

    if-eqz p1, :cond_25

    .line 5446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5449
    :cond_25
    const-string v2, " or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5450
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private cacheBackgroundToForegoundPermissionMapping()V
    .registers 8

    .line 4955
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4956
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_51

    .line 4959
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    .line 4960
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionsLocked()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 4961
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v3, :cond_50

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 4962
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 4963
    .local v3, "fgPerm":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v4

    .line 4965
    .local v4, "bgPerm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 4966
    .local v5, "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_4d

    .line 4967
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 4968
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4971
    :cond_4d
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4973
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "fgPerm":Ljava/lang/String;
    .end local v4    # "bgPerm":Ljava/lang/String;
    .end local v5    # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_50
    goto :goto_18

    .line 4975
    :cond_51
    monitor-exit v0

    .line 4976
    return-void

    .line 4975
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 6
    .param p1, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 5480
    const/4 v0, 0x0

    .line 5481
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 5482
    .local v2, "perm":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/BasePermission;->calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3

    add-int/2addr v0, v3

    .line 5483
    .end local v2    # "perm":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_d

    .line 5484
    :cond_1f
    return v0
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .registers 6
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "permission"    # Ljava/lang/String;

    .line 4594
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4595
    return v1

    .line 4599
    :cond_8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4600
    .local v0, "granted":Ljava/lang/Boolean;
    if-eqz v0, :cond_20

    .line 4604
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1

    .line 4601
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be explicitly declared granted or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "callingUid"    # I

    .line 1448
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1449
    return v0

    .line 1452
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_10

    move v0, v2

    .line 1455
    .local v0, "isCallerPrivileged":Z
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1456
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v1

    .line 1458
    .local v1, "isCallerInstallerOnRecord":Z
    if-nez v0, :cond_23

    if-eqz v1, :cond_1b

    goto :goto_23

    .line 1459
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller must either hold android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS or be the installer on record"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1463
    :cond_23
    :goto_23
    return v2
.end method

.method private checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z
    .registers 7
    .param p1, "permName"    # Ljava/lang/String;

    .line 1294
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1295
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 1296
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v1, :cond_24

    .line 1297
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such permissions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1300
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isImmutablyRestricted()Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    .line 1301
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_52

    .line 1304
    :cond_3b
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot modify whitelisting of an immutably restricted permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "permName":Ljava/lang/String;
    throw v2

    .line 1307
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "permName":Ljava/lang/String;
    :cond_52
    :goto_52
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1308
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I)[I
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "updatedUserIds"    # [I

    .line 4097
    if-eqz p2, :cond_29

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4098
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 4099
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4100
    :cond_20
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0

    .line 4103
    :cond_29
    return-object p3
.end method

.method private checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 993
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 994
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_a

    .line 995
    const/4 v1, -0x1

    return v1

    .line 997
    :cond_a
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I
    .registers 13
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isPackageExplicit"    # Z
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1002
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 1003
    .local v0, "callingUid":I
    const/4 v1, -0x1

    if-nez p2, :cond_17

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_17

    .line 1008
    :cond_e
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 1009
    return v1

    .line 1004
    :cond_17
    :goto_17
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p1, v0, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1005
    return v1

    .line 1013
    :cond_20
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p4, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1014
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1015
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1014
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 1016
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_35

    .line 1017
    return v1

    .line 1019
    :cond_35
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 1021
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-direct {p0, v2, v4, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSinglePermissionInternal(ILcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_41

    .line 1022
    return v6

    .line 1025
    :cond_41
    sget-object v5, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1026
    .local v5, "fullerPermissionName":Ljava/lang/String;
    if-eqz v5, :cond_52

    .line 1027
    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSinglePermissionInternal(ILcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 1028
    return v6

    .line 1031
    :cond_52
    return v1
.end method

.method private checkSinglePermissionInternal(ILcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 1036
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1037
    const/4 v0, 0x0

    return v0

    .line 1040
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1041
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionInstant(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1044
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method private checkSingleUidPermissionInternal(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 1102
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1103
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1104
    .local v1, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_15

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    monitor-exit v0

    return v2

    .line 1105
    .end local v1    # "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private checkUidPermissionImpl(Ljava/lang/String;I)I
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1070
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1071
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private checkUidPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;)I
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "uid"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 1083
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1084
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1085
    .local v1, "userId":I
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;I)I

    move-result v0

    return v0

    .line 1088
    .end local v1    # "userId":I
    :cond_c
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSingleUidPermissionInternal(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1089
    return v0

    .line 1092
    :cond_13
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1093
    .local v1, "fullerPermissionName":Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 1094
    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkSingleUidPermissionInternal(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1095
    return v0

    .line 1098
    :cond_24
    const/4 v0, -0x1

    return v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "externalLock"    # Ljava/lang/Object;

    .line 543
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 544
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 545
    .local v0, "permMgrInt":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    if-eqz v0, :cond_b

    .line 546
    return-object v0

    .line 548
    :cond_b
    nop

    .line 549
    const-string/jumbo v1, "permissionmgr"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionManagerService;

    .line 550
    .local v2, "permissionService":Lcom/android/server/pm/permission/PermissionManagerService;
    if-nez v2, :cond_20

    .line 551
    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    move-object v2, v3

    .line 553
    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 555
    :cond_20
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v1
.end method

.method private doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2377
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2378
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2379
    monitor-exit v0

    return-void

    .line 2381
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2382
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;>;"
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_29

    .line 2383
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2384
    .local v0, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v0, :cond_28

    .line 2385
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    invoke-interface {v3, p1, p2}, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;->onRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2384
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 2387
    .end local v2    # "i":I
    :cond_28
    return-void

    .line 2382
    .end local v0    # "listenerCount":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;>;"
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 5378
    if-ltz p2, :cond_48

    .line 5381
    if-eqz p4, :cond_c

    .line 5382
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Landroid/os/UserManagerInternal;Ljava/lang/String;II)V

    .line 5385
    :cond_c
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5386
    .local v0, "callingUserId":I
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 5388
    return-void

    .line 5390
    :cond_1d
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isSameProfileGroup(II)Z

    move-result v1

    .line 5391
    .local v1, "isSameProfileGroup":Z
    if-eqz v1, :cond_39

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5396
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 5391
    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v2, v5, v3, p1, v4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_39

    .line 5398
    return-void

    .line 5400
    :cond_39
    invoke-static {p5, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->buildInvalidCrossUserOrProfilePermissionMessage(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 5402
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5403
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5379
    .end local v0    # "callingUserId":I
    .end local v1    # "isSameProfileGroup":Z
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 5338
    if-ltz p2, :cond_39

    .line 5341
    if-eqz p4, :cond_c

    .line 5342
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Landroid/os/UserManagerInternal;Ljava/lang/String;II)V

    .line 5346
    :cond_c
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p2, :cond_19

    .line 5347
    return-void

    .line 5349
    :cond_19
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5350
    .local v0, "callingUserId":I
    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, p2

    move v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 5353
    return-void

    .line 5355
    :cond_2a
    invoke-static {p6, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->buildInvalidCrossUserPermissionMessage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 5357
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5358
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5339
    .end local v0    # "callingUserId":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;

    .line 5316
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 5318
    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 5320
    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_47

    .line 5322
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5327
    :cond_47
    :goto_47
    return-void
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;

    .line 5305
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 5307
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_37

    .line 5309
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5313
    :cond_37
    :goto_37
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 6
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 5491
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1f

    .line 5492
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    .line 5493
    .local v0, "curTreeSize":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_17

    goto :goto_1f

    .line 5494
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5497
    .end local v0    # "curTreeSize":I
    :cond_1f
    :goto_1f
    return-void
.end method

.method private getAppOpPermissionPackagesInternal(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 594
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 595
    return-object v1

    .line 597
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 599
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_1b

    .line 600
    monitor-exit v0

    return-object v1

    .line 602
    :cond_1b
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 603
    .end local v2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 2

    .line 2048
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_11

    .line 2049
    nop

    .line 2050
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2049
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 2052
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object v0
.end method

.method private getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    .registers 8
    .param p1, "userId"    # I

    .line 4203
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    .line 4205
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 4206
    .local v1, "oneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    if-eqz v1, :cond_f

    .line 4207
    monitor-exit v0

    return-object v1

    .line 4209
    :cond_f
    new-instance v2, Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 4210
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 4211
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOneTimePermissionUserManagers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4212
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2a

    .line 4213
    invoke-virtual {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->registerUninstallListener()V

    .line 4214
    return-object v1

    .line 4212
    .end local v1    # "oneTimePermissionUserManager":Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2961
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private getPackagesWithAutoRevokePolicy(II)Ljava/util/List;
    .registers 6
    .param p1, "autoRevokePolicy"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4261
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v2, "Must hold android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4265
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y;

    invoke-direct {v2, p1, v0}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 4270
    return-object v0
.end method

.method private getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 747
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 748
    return v1

    .line 751
    :cond_a
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 752
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 759
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_23

    .line 760
    return v1

    .line 762
    :cond_23
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 763
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 762
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 764
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_30

    .line 765
    return v1

    .line 767
    :cond_30
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 768
    :try_start_33
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    if-nez v4, :cond_3d

    .line 769
    monitor-exit v3

    return v1

    .line 771
    :cond_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_50

    .line 772
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 773
    return v1

    .line 775
    :cond_47
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 776
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 771
    .end local v1    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method

.method private getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2420
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2421
    :try_start_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2422
    .local v2, "reqPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 2423
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v3, :cond_44

    .line 2424
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    .line 2425
    if-eqz v2, :cond_44

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    .line 2426
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2427
    .local v5, "reqPermission":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 2428
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v6, :cond_43

    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 2429
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2431
    .end local v5    # "reqPermission":Ljava/lang/String;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_43
    goto :goto_26

    .line 2434
    .end local v2    # "reqPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_44
    monitor-exit v1

    .line 2435
    return-object v0

    .line 2434
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_46

    throw v2
.end method

.method private getRuntimePermissionGroupsForMDM()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2393
    .local v0, "permissionGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2394
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionsLocked()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 2395
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 2396
    const/4 v4, 0x0

    .line 2397
    .local v4, "permissionGroup":Ljava/lang/String;
    iget-object v5, v3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v5, :cond_3c

    iget-object v5, v3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2398
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_34

    goto :goto_3c

    .line 2402
    :cond_34
    iget-object v5, v3, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_48

    .line 2400
    :cond_3c
    :goto_3c
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object v4, v5

    .line 2405
    :goto_48
    if-eqz v4, :cond_4e

    .line 2406
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 2408
    :cond_4e
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Group is null for permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    iget-object v5, v3, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2412
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "permissionGroup":Ljava/lang/String;
    :cond_6b
    :goto_6b
    goto :goto_12

    .line 2413
    :cond_6c
    monitor-exit v1

    .line 2414
    return-object v0

    .line 2413
    :catchall_6e
    move-exception v2

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_8 .. :try_end_70} :catchall_6e

    throw v2
.end method

.method private getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;
    .registers 4
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;

    .line 4579
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 4580
    .local v0, "sourcePackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    return-object v1
.end method

.method private getSourcePackageSigningDetails(Lcom/android/server/pm/permission/BasePermission;)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 4
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;

    .line 4570
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4571
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_9

    .line 4572
    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v1

    .line 4574
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method private static getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5544
    if-nez p0, :cond_5

    .line 5545
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 5547
    :cond_5
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5548
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5549
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 5551
    :cond_19
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5554
    :cond_1e
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private grantRequestedRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 15
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userIds"    # [I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4637
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget v8, p2, v1

    .line 4638
    .local v8, "userId":I
    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsForUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4637
    .end local v8    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4641
    :cond_12
    return-void
.end method

.method private grantRequestedRuntimePermissionsForUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 28
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4645
    move-object/from16 v10, p0

    move/from16 v11, p2

    move-object/from16 v12, p3

    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4646
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4645
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 4647
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_13

    .line 4648
    return-void

    .line 4651
    :cond_13
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    .line 4653
    .local v14, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/16 v15, 0x14

    .line 4656
    .local v15, "immutableFlags":I
    const/16 v16, 0x48

    .line 4659
    .local v16, "compatFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    move/from16 v17, v0

    .line 4662
    .local v17, "supportsRuntimePermissions":Z
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v18

    .line 4664
    .local v18, "instantApp":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 4666
    .local v9, "permission":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4667
    :try_start_4a
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    move-object/from16 v19, v2

    .line 4668
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_b6

    .line 4669
    if-eqz v19, :cond_b3

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_61

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_b5

    :cond_61
    if-eqz v18, :cond_69

    .line 4670
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v1

    if-eqz v1, :cond_b5

    :cond_69
    if-nez v17, :cond_71

    .line 4671
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v1

    if-nez v1, :cond_b5

    :cond_71
    if-eqz v12, :cond_79

    .line 4673
    invoke-static {v12, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 4674
    :cond_79
    invoke-virtual {v14, v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v20

    .line 4675
    .local v20, "flags":I
    if-eqz v17, :cond_95

    .line 4677
    and-int/lit8 v1, v20, 0x14

    if-nez v1, :cond_b5

    .line 4678
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_b5

    .line 4684
    :cond_95
    and-int/lit8 v1, v20, 0x48

    if-eqz v1, :cond_b0

    .line 4685
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v6, p4

    move/from16 v7, p2

    move-object/from16 v21, v9

    .end local v9    # "permission":Ljava/lang/String;
    .local v21, "permission":Ljava/lang/String;
    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_b5

    .line 4684
    .end local v21    # "permission":Ljava/lang/String;
    .restart local v9    # "permission":Ljava/lang/String;
    :cond_b0
    move-object/from16 v21, v9

    .end local v9    # "permission":Ljava/lang/String;
    .restart local v21    # "permission":Ljava/lang/String;
    goto :goto_b5

    .line 4669
    .end local v20    # "flags":I
    .end local v21    # "permission":Ljava/lang/String;
    .restart local v9    # "permission":Ljava/lang/String;
    :cond_b3
    move-object/from16 v21, v9

    .line 4690
    .end local v9    # "permission":Ljava/lang/String;
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_b5
    :goto_b5
    goto :goto_3a

    .line 4668
    .restart local v9    # "permission":Ljava/lang/String;
    :catchall_b6
    move-exception v0

    move-object/from16 v21, v9

    .end local v9    # "permission":Ljava/lang/String;
    .restart local v21    # "permission":Ljava/lang/String;
    :goto_b9
    :try_start_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_bb

    throw v0

    :catchall_bb
    move-exception v0

    goto :goto_b9

    .line 4691
    .end local v21    # "permission":Ljava/lang/String;
    :cond_bd
    return-void
.end method

.method private grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 15
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 1503
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;I)V

    .line 1505
    return-void
.end method

.method private grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;I)V
    .registers 24
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .param p7, "granted"    # I

    .line 1516
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return-void

    .line 1521
    :cond_29
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "grantRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1531
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1532
    .local v1, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1534
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_21d

    if-nez v2, :cond_56

    move/from16 v5, p4

    goto/16 :goto_21f

    .line 1539
    :cond_56
    iget-object v3, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1540
    :try_start_59
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    move-object v4, v0

    .line 1541
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_216

    .line 1542
    if-eqz v4, :cond_1fd

    .line 1545
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v5, p4

    invoke-virtual {v0, v1, v5, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_1e6

    .line 1549
    invoke-virtual {v4, v1, v2}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    .line 1555
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v3, 0x17

    if-ge v0, v3, :cond_7f

    .line 1556
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1557
    return-void

    .line 1560
    :cond_7f
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 1562
    .local v6, "uid":I
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 1564
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v13

    .line 1565
    .local v13, "flags":I
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_b6

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot grant system fixed permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    return-void

    .line 1570
    :cond_b6
    if-nez p3, :cond_db

    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_db

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot grant policy fixed permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return-void

    .line 1576
    :cond_db
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    if-eqz v0, :cond_104

    and-int/lit16 v0, v13, 0x3800

    if-nez v0, :cond_104

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    return-void

    .line 1583
    :cond_104
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v0

    if-eqz v0, :cond_13d

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 1584
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 1583
    invoke-static {v0, v14, v1, v15, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v0

    .line 1585
    invoke-virtual {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v0

    if-nez v0, :cond_13d

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot grant soft restricted permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    return-void

    .line 1591
    :cond_13d
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    const/4 v14, -0x1

    if-eqz v0, :cond_150

    .line 1594
    invoke-virtual {v7, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    if-eq v0, v14, :cond_14f

    .line 1596
    if-eqz v12, :cond_14f

    .line 1597
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionGranted()V

    .line 1600
    :cond_14f
    return-void

    .line 1603
    :cond_150
    invoke-virtual {v2, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-eqz v0, :cond_17c

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_15d

    goto :goto_17c

    .line 1604
    :cond_15d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot grant non-ephemeral permission"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for package "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1608
    :cond_17c
    :goto_17c
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v3, :cond_18a

    .line 1609
    const-string v0, "PackageManager"

    const-string v3, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    return-void

    .line 1613
    :cond_18a
    invoke-virtual {v7, v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v3

    .line 1614
    .local v3, "result":I
    if-eq v3, v14, :cond_1e5

    const/4 v0, 0x1

    if-eq v3, v0, :cond_194

    goto :goto_1a1

    .line 1620
    :cond_194
    if-eqz v12, :cond_1a1

    .line 1621
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v12, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onGidsChanged(II)V

    .line 1627
    :cond_1a1
    :goto_1a1
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 1628
    const/16 v0, 0x4db

    invoke-direct {v8, v0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1631
    :cond_1ac
    if-eqz v12, :cond_1b1

    .line 1632
    invoke-virtual {v12, v6, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionGranted(II)V

    .line 1635
    :cond_1b1
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 1636
    invoke-direct {v8, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1642
    :cond_1ba
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ca

    .line 1643
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 1644
    :cond_1ca
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1648
    .local v14, "token":J
    :try_start_1ce
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 1652
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    if-eqz p7, :cond_1db

    .line 1653
    invoke-virtual {v0, v6, v10}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_1db
    .catchall {:try_start_1ce .. :try_end_1db} :catchall_1e0

    .line 1666
    .end local v0    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_1db
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1667
    nop

    .line 1670
    .end local v14    # "token":J
    :cond_1df
    return-void

    .line 1666
    .restart local v14    # "token":J
    :catchall_1e0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1667
    throw v0

    .line 1616
    .end local v14    # "token":J
    :cond_1e5
    return-void

    .line 1546
    .end local v3    # "result":I
    .end local v6    # "uid":I
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v13    # "flags":I
    :cond_1e6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1543
    :cond_1fd
    move/from16 v5, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1541
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_216
    move-exception v0

    move/from16 v5, p4

    :goto_219
    :try_start_219
    monitor-exit v3
    :try_end_21a
    .catchall {:try_start_219 .. :try_end_21a} :catchall_21b

    throw v0

    :catchall_21b
    move-exception v0

    goto :goto_219

    .line 1534
    :cond_21d
    move/from16 v5, p4

    .line 1535
    :goto_21f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    return-void
.end method

.method private grantSignaturePermission(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z
    .registers 24
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p5, "origPermissions"    # Lcom/android/server/pm/permission/PermissionsState;

    .line 4318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isOEM()Z

    move-result v2

    .line 4319
    .local v2, "oemPermission":Z
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v3

    .line 4320
    .local v3, "vendorPrivilegedPermission":Z
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isPrivileged()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1c

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v4, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v4, v5

    .line 4321
    .local v4, "privilegedPermission":Z
    :goto_1d
    sget-boolean v7, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 4323
    .local v7, "privappPermissionsDisable":Z
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 4324
    .local v8, "platformPermission":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 4325
    .local v9, "platformPackage":Z
    const-string v10, "PackageManager"

    if-nez v7, :cond_14f

    if-eqz v4, :cond_14f

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v11

    if-eqz v11, :cond_14f

    if-nez v9, :cond_14f

    if-eqz v8, :cond_14f

    .line 4327
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11

    if-nez v11, :cond_14a

    .line 4329
    iget-boolean v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v11, :cond_140

    .line 4331
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v11

    if-nez v11, :cond_13a

    .line 4332
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v11

    .line 4333
    .local v11, "apexMgr":Lcom/android/server/pm/ApexManager;
    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v13

    .line 4337
    .local v13, "apexContainingPkg":Ljava/lang/String;
    if-eqz v13, :cond_71

    .line 4338
    invoke-virtual {v11, v13, v5}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 4337
    invoke-static {v14}, Lcom/android/server/pm/ApexManager;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v14

    if-eqz v14, :cond_6c

    goto :goto_71

    :cond_6c
    move/from16 v17, v7

    const/4 v5, 0x0

    goto/16 :goto_145

    .line 4341
    :cond_71
    :goto_71
    const/4 v14, 0x0

    .line 4342
    .local v14, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v15

    if-eqz v15, :cond_85

    .line 4343
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v15

    .line 4344
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    .end local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_b7

    .line 4345
    .end local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_85
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v5

    if-eqz v5, :cond_98

    .line 4346
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    .line 4347
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    .end local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_b7

    .line 4348
    .end local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_98
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 4349
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    .line 4350
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    .end local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_b7

    .line 4352
    .end local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_ab
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    .line 4353
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    .line 4355
    .end local v14    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_b7
    if-eqz v5, :cond_c2

    .line 4356
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c0

    goto :goto_c2

    :cond_c0
    const/4 v14, 0x0

    goto :goto_c3

    :cond_c2
    :goto_c2
    const/4 v14, 0x1

    .line 4357
    .local v14, "permissionViolation":Z
    :goto_c3
    if-eqz v14, :cond_136

    .line 4358
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Privileged permission "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for package "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4359
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v5

    .end local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v16, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") not in privapp-permissions whitelist"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4358
    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    sget-boolean v5, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v5, :cond_132

    .line 4363
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v5, :cond_107

    .line 4364
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 4366
    :cond_107
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 4367
    move/from16 v17, v7

    .end local v7    # "privappPermissionsDisable":Z
    .local v17, "privappPermissionsDisable":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4366
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_145

    .line 4362
    .end local v17    # "privappPermissionsDisable":Z
    .restart local v7    # "privappPermissionsDisable":Z
    :cond_132
    move/from16 v17, v7

    .end local v7    # "privappPermissionsDisable":Z
    .restart local v17    # "privappPermissionsDisable":Z
    const/4 v5, 0x0

    goto :goto_145

    .line 4371
    .end local v16    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "privappPermissionsDisable":Z
    .restart local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "privappPermissionsDisable":Z
    :cond_136
    move-object/from16 v16, v5

    .end local v5    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    return v5

    .line 4331
    .end local v11    # "apexMgr":Lcom/android/server/pm/ApexManager;
    .end local v13    # "apexContainingPkg":Ljava/lang/String;
    .end local v14    # "permissionViolation":Z
    .end local v16    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_13a
    move-object/from16 v12, p2

    move/from16 v17, v7

    const/4 v5, 0x0

    .end local v7    # "privappPermissionsDisable":Z
    .restart local v17    # "privappPermissionsDisable":Z
    goto :goto_145

    .line 4329
    .end local v17    # "privappPermissionsDisable":Z
    .restart local v7    # "privappPermissionsDisable":Z
    :cond_140
    move-object/from16 v12, p2

    move/from16 v17, v7

    const/4 v5, 0x0

    .line 4375
    .end local v7    # "privappPermissionsDisable":Z
    .restart local v17    # "privappPermissionsDisable":Z
    :goto_145
    sget-boolean v6, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v6, :cond_153

    .line 4376
    return v5

    .line 4327
    .end local v17    # "privappPermissionsDisable":Z
    .restart local v7    # "privappPermissionsDisable":Z
    :cond_14a
    move-object/from16 v12, p2

    move/from16 v17, v7

    .end local v7    # "privappPermissionsDisable":Z
    .restart local v17    # "privappPermissionsDisable":Z
    goto :goto_153

    .line 4325
    .end local v17    # "privappPermissionsDisable":Z
    .restart local v7    # "privappPermissionsDisable":Z
    :cond_14f
    move-object/from16 v12, p2

    move/from16 v17, v7

    .line 4381
    .end local v7    # "privappPermissionsDisable":Z
    .restart local v17    # "privappPermissionsDisable":Z
    :cond_153
    :goto_153
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4383
    .local v5, "systemPackageName":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4384
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 4393
    .local v6, "systemPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 4394
    move-object/from16 v7, p4

    invoke-direct {v0, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSigningDetails(Lcom/android/server/pm/permission/BasePermission;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v11

    .line 4395
    .local v11, "sourceSigningDetails":Landroid/content/pm/PackageParser$SigningDetails;
    nop

    .line 4396
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_1a2

    .line 4398
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    .line 4397
    const/4 v14, 0x4

    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-nez v13, :cond_1a2

    .line 4400
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_1a2

    .line 4401
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    .line 4402
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v15

    .line 4401
    invoke-virtual {v13, v15, v14}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-eqz v13, :cond_1a0

    goto :goto_1a2

    :cond_1a0
    const/4 v13, 0x0

    goto :goto_1a3

    :cond_1a2
    :goto_1a2
    const/4 v13, 0x1

    .line 4404
    .local v13, "allowed":Z
    :goto_1a3
    if-nez v13, :cond_274

    if-nez v4, :cond_1ae

    if-eqz v2, :cond_1aa

    goto :goto_1ae

    :cond_1aa
    move-object/from16 v16, v5

    goto/16 :goto_276

    .line 4405
    :cond_1ae
    :goto_1ae
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v14

    if-eqz v14, :cond_271

    .line 4408
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v14

    if-eqz v14, :cond_218

    .line 4409
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4410
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    .line 4411
    .local v14, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_1cc

    const/4 v15, 0x0

    goto :goto_1ce

    :cond_1cc
    iget-object v15, v14, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4412
    .local v15, "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_1ce
    if-eqz v14, :cond_1f4

    .line 4413
    move-object/from16 v16, v5

    .end local v5    # "systemPackageName":Ljava/lang/String;
    .local v16, "systemPackageName":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f6

    .line 4417
    if-eqz v4, :cond_1e4

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v5

    if-nez v5, :cond_1f2

    :cond_1e4
    if-eqz v2, :cond_217

    .line 4418
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v5

    if-eqz v5, :cond_217

    .line 4419
    invoke-static {v14, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_217

    .line 4420
    :cond_1f2
    const/4 v13, 0x1

    goto :goto_217

    .line 4412
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .restart local v5    # "systemPackageName":Ljava/lang/String;
    :cond_1f4
    move-object/from16 v16, v5

    .line 4429
    .end local v5    # "systemPackageName":Ljava/lang/String;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    :cond_1f6
    if-eqz v14, :cond_217

    if-eqz v15, :cond_217

    .line 4430
    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_217

    if-eqz v4, :cond_208

    .line 4431
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v5

    if-nez v5, :cond_216

    :cond_208
    if-eqz v2, :cond_217

    .line 4432
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v5

    if-eqz v5, :cond_217

    .line 4433
    invoke-static {v14, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_217

    .line 4434
    :cond_216
    const/4 v13, 0x1

    .line 4437
    .end local v14    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "disabledPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_217
    :goto_217
    goto :goto_23e

    .line 4438
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .restart local v5    # "systemPackageName":Ljava/lang/String;
    :cond_218
    move-object/from16 v16, v5

    .end local v5    # "systemPackageName":Ljava/lang/String;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4439
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4438
    invoke-virtual {v5, v14}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 4440
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_22c

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v14

    if-nez v14, :cond_23a

    :cond_22c
    if-eqz v2, :cond_23c

    .line 4441
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOem()Z

    move-result v14

    if-eqz v14, :cond_23c

    .line 4442
    invoke-static {v5, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23c

    :cond_23a
    const/4 v14, 0x1

    goto :goto_23d

    :cond_23c
    const/4 v14, 0x0

    :goto_23d
    move v13, v14

    .line 4447
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_23e
    if-eqz v13, :cond_276

    if-eqz v4, :cond_276

    if-nez v3, :cond_276

    .line 4448
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v5

    if-eqz v5, :cond_276

    .line 4449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " cannot be granted to privileged vendor apk "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4450
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4449
    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    const/4 v13, 0x0

    goto :goto_276

    .line 4405
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .local v5, "systemPackageName":Ljava/lang/String;
    :cond_271
    move-object/from16 v16, v5

    .end local v5    # "systemPackageName":Ljava/lang/String;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    goto :goto_276

    .line 4404
    .end local v16    # "systemPackageName":Ljava/lang/String;
    .restart local v5    # "systemPackageName":Ljava/lang/String;
    :cond_274
    move-object/from16 v16, v5

    .line 4456
    .end local v5    # "systemPackageName":Ljava/lang/String;
    .restart local v16    # "systemPackageName":Ljava/lang/String;
    :cond_276
    :goto_276
    if-nez v13, :cond_3f6

    .line 4457
    if-nez v13, :cond_289

    .line 4458
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isPre23()Z

    move-result v5

    if-eqz v5, :cond_289

    .line 4459
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    const/16 v10, 0x17

    if-ge v5, v10, :cond_289

    .line 4463
    const/4 v13, 0x1

    .line 4468
    :cond_289
    if-nez v13, :cond_2a3

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isInstaller()Z

    move-result v5

    if-eqz v5, :cond_2a3

    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v10, 0x2

    .line 4469
    const/4 v14, 0x0

    invoke-virtual {v5, v10, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 4471
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 4469
    invoke-static {v5, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b5

    :cond_2a3
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v10, 0x6

    .line 4472
    const/4 v14, 0x0

    invoke-virtual {v5, v10, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 4474
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 4471
    invoke-static {v5, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b6

    .line 4477
    :cond_2b5
    const/4 v13, 0x1

    .line 4479
    :cond_2b6
    if-nez v13, :cond_2d1

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isVerifier()Z

    move-result v5

    if-eqz v5, :cond_2d1

    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v10, 0x3

    .line 4480
    const/4 v14, 0x0

    invoke-virtual {v5, v10, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v5

    .line 4482
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 4480
    invoke-static {v5, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d1

    .line 4485
    const/4 v13, 0x1

    .line 4487
    :cond_2d1
    if-nez v13, :cond_2e0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isPreInstalled()Z

    move-result v5

    if-eqz v5, :cond_2e0

    .line 4488
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_2e0

    .line 4490
    const/4 v13, 0x1

    .line 4492
    :cond_2e0
    if-nez v13, :cond_2ef

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v5

    if-eqz v5, :cond_2ef

    .line 4495
    move-object/from16 v5, p5

    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v13

    goto :goto_2f1

    .line 4492
    :cond_2ef
    move-object/from16 v5, p5

    .line 4497
    :goto_2f1
    if-nez v13, :cond_30c

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isSetup()Z

    move-result v10

    if-eqz v10, :cond_30c

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4498
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 4500
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4498
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30c

    .line 4503
    const/4 v13, 0x1

    .line 4505
    :cond_30c
    if-nez v13, :cond_327

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isSystemTextClassifier()Z

    move-result v10

    if-eqz v10, :cond_327

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x5

    .line 4506
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 4508
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4506
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_327

    .line 4510
    const/4 v13, 0x1

    .line 4512
    :cond_327
    if-nez v13, :cond_343

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isConfigurator()Z

    move-result v10

    if-eqz v10, :cond_343

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0x9

    .line 4513
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 4515
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4513
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_343

    .line 4517
    const/4 v13, 0x1

    .line 4519
    :cond_343
    if-nez v13, :cond_35e

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isWellbeing()Z

    move-result v10

    if-eqz v10, :cond_35e

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x7

    .line 4520
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 4522
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4520
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35e

    .line 4524
    const/4 v13, 0x1

    .line 4526
    :cond_35e
    if-nez v13, :cond_37a

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isDocumenter()Z

    move-result v10

    if-eqz v10, :cond_37a

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0x8

    .line 4527
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 4529
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4527
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37a

    .line 4532
    const/4 v13, 0x1

    .line 4534
    :cond_37a
    if-nez v13, :cond_396

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isIncidentReportApprover()Z

    move-result v10

    if-eqz v10, :cond_396

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xa

    .line 4535
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 4537
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4535
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_396

    .line 4540
    const/4 v13, 0x1

    .line 4542
    :cond_396
    if-nez v13, :cond_3b2

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isAppPredictor()Z

    move-result v10

    if-eqz v10, :cond_3b2

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xb

    .line 4543
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 4545
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4543
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b2

    .line 4547
    const/4 v13, 0x1

    .line 4549
    :cond_3b2
    if-nez v13, :cond_3cf

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isCompanion()Z

    move-result v10

    if-eqz v10, :cond_3cf

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xe

    .line 4550
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 4552
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4550
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3cf

    .line 4554
    const/4 v10, 0x1

    move v13, v10

    .line 4556
    :cond_3cf
    if-nez v13, :cond_3f8

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/permission/BasePermission;->isRetailDemo()Z

    move-result v10

    if-eqz v10, :cond_3f8

    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v14, 0xf

    .line 4557
    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v10

    .line 4559
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4557
    invoke-static {v10, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f8

    .line 4559
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/pm/permission/PermissionManagerService;->isProfileOwner(I)Z

    move-result v10

    if-eqz v10, :cond_3f8

    .line 4561
    const/4 v13, 0x1

    goto :goto_3f8

    .line 4456
    :cond_3f6
    move-object/from16 v5, p5

    .line 4564
    :cond_3f8
    :goto_3f8
    return v13
.end method

.method private hasCrossUserPermission(IIIZZ)Z
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I
    .param p4, "requireFullPermission"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z

    .line 5409
    const/4 v0, 0x1

    if-nez p5, :cond_6

    if-ne p3, p2, :cond_6

    .line 5410
    return v0

    .line 5412
    :cond_6
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_29

    if-nez p1, :cond_d

    goto :goto_29

    .line 5415
    :cond_d
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_16

    .line 5416
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 5418
    :cond_16
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 5419
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    nop

    .line 5418
    :goto_28
    return v0

    .line 5413
    :cond_29
    :goto_29
    return v0
.end method

.method private static hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 6
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "permName"    # Ljava/lang/String;

    .line 5559
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 5560
    return v1

    .line 5563
    :cond_c
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_16
    if-ltz v0, :cond_30

    .line 5564
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 5565
    return v2

    .line 5563
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 5568
    .end local v0    # "i":I
    :cond_30
    return v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 5423
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private hasPrivappWhitelistEntry(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 5
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4299
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4301
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .local v0, "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_45

    .line 4302
    .end local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_13
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4304
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .restart local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_45

    .line 4305
    .end local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_26
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 4307
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 4308
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4307
    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getSystemExtPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .restart local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_45

    .line 4310
    .end local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_39
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 4313
    .restart local v0    # "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_45
    if-eqz v0, :cond_4f

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x1

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    :goto_50
    return v1
.end method

.method private inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 13
    .param p2, "newPerm"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p4, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "I)V"
        }
    .end annotation

    .line 4049
    .local p1, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4050
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4051
    .local v1, "isGranted":Z
    const/4 v2, 0x0

    .line 4053
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 4054
    .local v3, "numSourcePerm":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    if-ge v4, v3, :cond_34

    .line 4055
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4056
    .local v5, "sourcePerm":Ljava/lang/String;
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_28

    .line 4057
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_28

    .line 4065
    :cond_20
    if-nez v1, :cond_31

    .line 4066
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_31

    .line 4058
    :cond_28
    :goto_28
    if-nez v1, :cond_2b

    .line 4059
    const/4 v2, 0x0

    .line 4062
    :cond_2b
    const/4 v1, 0x1

    .line 4063
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    .line 4054
    .end local v5    # "sourcePerm":Ljava/lang/String;
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 4071
    .end local v4    # "i":I
    :cond_34
    if-eqz v1, :cond_3f

    .line 4077
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 4081
    :cond_3f
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 4082
    return-void
.end method

.method private isNewPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 9
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4274
    const/4 v0, 0x0

    .line 4275
    .local v0, "allowed":Z
    sget-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v1

    .line 4276
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_5
    if-ge v2, v1, :cond_42

    .line 4277
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    .line 4279
    .local v3, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 4280
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v5, :cond_3f

    .line 4281
    const/4 v0, 0x1

    .line 4282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-granting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to old pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4283
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4282
    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    goto :goto_42

    .line 4276
    .end local v3    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4287
    .end local v2    # "ip":I
    :cond_42
    :goto_42
    return v0
.end method

.method private isPackageRequestingPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "permission"    # Ljava/lang/String;

    .line 4625
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4626
    .local v0, "permCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_9
    if-ge v1, v0, :cond_20

    .line 4627
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4628
    .local v2, "requestedPermission":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4629
    const/4 v3, 0x1

    return v3

    .line 4626
    .end local v2    # "requestedPermission":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4632
    .end local v1    # "j":I
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method private isPermissionsReviewRequired(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 4610
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_a

    .line 4611
    return v1

    .line 4615
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4616
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4615
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4617
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_17

    .line 4618
    return v1

    .line 4620
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 4621
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState;->isPermissionReviewRequired(I)Z

    move-result v2

    return v2
.end method

.method private isPkgLicenseActivated(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2984
    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-eqz v0, :cond_22

    .line 2985
    nop

    .line 2986
    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2985
    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    .line 2988
    .local v0, "lService":Lcom/samsung/android/knox/license/IEnterpriseLicense;
    if-eqz v0, :cond_22

    :try_start_11
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_15} :catch_19

    if-eqz v1, :cond_22

    .line 2989
    const/4 v1, 0x1

    return v1

    .line 2993
    :catch_19
    move-exception v1

    .line 2994
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_22

    .line 2991
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1e
    move-exception v1

    .line 2992
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2997
    .end local v0    # "lService":Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method private static isProfileOwner(I)Z
    .registers 3
    .param p0, "uid"    # I

    .line 4584
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 4585
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 4586
    .local v0, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_10

    .line 4587
    const/4 v1, -0x1

    .line 4588
    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v1

    .line 4587
    return v1

    .line 4590
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method private isSameProfileGroup(II)Z
    .registers 6
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I

    .line 5428
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5430
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 5432
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5430
    return v2

    .line 5432
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5433
    throw v2
.end method

.method public static killUid(IILjava/lang/String;)V
    .registers 7
    .param p0, "appId"    # I
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 568
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    .line 569
    .local v2, "am":Landroid/app/IActivityManager;
    if-eqz v2, :cond_f

    .line 571
    :try_start_a
    invoke-interface {v2, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 574
    goto :goto_f

    .line 572
    :catch_e
    move-exception v3

    .line 577
    .end local v2    # "am":Landroid/app/IActivityManager;
    :cond_f
    :goto_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    nop

    .line 579
    return-void

    .line 577
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    throw v2
.end method

.method public static synthetic lambda$NPd9St1HBvGAtg1uhMV2Upfww4g(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$eApyRxwI3JHTSVAxV9EbP43gFOo(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionImpl(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getPackagesWithAutoRevokePolicy$10(ILjava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4
    .param p0, "autoRevokePolicy"    # I
    .param p1, "result"    # Ljava/util/List;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4266
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAutoRevokePermissions()I

    move-result v0

    if-ne v0, p0, :cond_d

    .line 4267
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4269
    :cond_d
    return-void
.end method

.method public static synthetic lambda$iwnRBDwjg4K5iRGbRU5_sVt0zaU(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$resetRuntimePermissionsInternal$2(II)V
    .registers 4
    .param p0, "revocationUID"    # I
    .param p1, "revocationUserId"    # I

    .line 1993
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-string/jumbo v1, "permissions revoked"

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 5579
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 5580
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 5581
    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 5583
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 5584
    return-void
.end method

.method private notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2369
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;

    .line 2371
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2370
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2369
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2372
    return-void
.end method

.method private reconcileAdditionalRuntimePermissionsForMDM(Ljava/lang/String;)V
    .registers 16
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 2693
    const-string v0, "PackageManager"

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 2694
    .local v1, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2696
    .local v2, "perms":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedPermission;>;"
    if-eqz v1, :cond_f9

    .line 2697
    :try_start_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2698
    .local v3, "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    .line 2699
    if-eqz v2, :cond_5a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5a

    .line 2701
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 2702
    .local v5, "permission":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtectionLevel()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_39

    .line 2703
    goto :goto_25

    .line 2705
    :cond_39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is a new runtime permission"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2707
    nop

    .end local v5    # "permission":Landroid/content/pm/parsing/component/ParsedPermission;
    goto :goto_25

    .line 2710
    :cond_5a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f9

    .line 2712
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2715
    .local v4, "packagesRequestingNewRuntimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_69
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_aa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2717
    .local v6, "runtimePerm":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7}, Landroid/content/pm/PackageManagerInternal;->getPackageMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_83
    :goto_83
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 2718
    .local v8, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_83

    .line 2719
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a0

    .line 2720
    goto :goto_83

    .line 2722
    :cond_a0
    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2723
    nop

    .end local v8    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    goto :goto_83

    .line 2724
    .end local v6    # "runtimePerm":Ljava/lang/String;
    :cond_a9
    goto :goto_69

    .line 2728
    :cond_aa
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v5}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 2729
    .local v5, "users":[I
    if-eqz v5, :cond_f9

    .line 2730
    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_b5
    if-ge v8, v6, :cond_f9

    aget v9, v5, v8

    .line 2731
    .local v9, "userId":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_bd
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2734
    .local v11, "pkgRequestingNewPerms":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v11, v7, v13, v9}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    if-eqz v12, :cond_d8

    .line 2735
    invoke-direct {p0, v11, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->applyRuntimePermissionsOnInstallationForMDM(Ljava/lang/String;I)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_d8} :catch_dc

    .line 2737
    .end local v11    # "pkgRequestingNewPerms":Ljava/lang/String;
    :cond_d8
    goto :goto_bd

    .line 2730
    .end local v9    # "userId":I
    :cond_d9
    add-int/lit8 v8, v8, 0x1

    goto :goto_b5

    .line 2742
    .end local v3    # "runtimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "packagesRequestingNewRuntimePerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "users":[I
    :catch_dc
    move-exception v3

    .line 2743
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reconciling Additional Runtime Permissions Failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    .line 2745
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_f9
    nop

    .line 2746
    :goto_fa
    return-void
.end method

.method private removeAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 3320
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3321
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 3322
    .local v1, "N":I
    const/4 v2, 0x0

    .line 3323
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_64

    .line 3324
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 3325
    .local v4, "p":Landroid/content/pm/parsing/component/ParsedPermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/BasePermission;

    .line 3326
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_38

    .line 3327
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/BasePermission;

    move-object v5, v6

    .line 3329
    :cond_38
    if-eqz v5, :cond_44

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/BasePermission;->isPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 3330
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/BasePermission;->setPermission(Landroid/content/pm/parsing/component/ParsedPermission;)V

    .line 3340
    :cond_44
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_61

    .line 3341
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 3342
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 3343
    .local v6, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v6, :cond_61

    .line 3344
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3323
    .end local v4    # "p":Landroid/content/pm/parsing/component/ParsedPermission;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3348
    .end local v3    # "i":I
    :cond_64
    nop

    .line 3352
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 3353
    const/4 v2, 0x0

    .line 3354
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_70
    if-ge v3, v1, :cond_a7

    .line 3355
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3356
    .local v4, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionAppOp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 3357
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 3358
    .local v5, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_a4

    .line 3359
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3360
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 3361
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3354
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_a4
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 3366
    .end local v3    # "i":I
    :cond_a7
    nop

    .line 3369
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    monitor-exit v0

    .line 3370
    return-void

    .line 3369
    :catchall_aa
    move-exception v1

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_3 .. :try_end_ac} :catchall_aa

    throw v1
.end method

.method private removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 2362
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2363
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2364
    monitor-exit v0

    .line 2365
    return-void

    .line 2364
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2965
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2966
    return-void
.end method

.method private resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 30
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 1819
    move-object/from16 v15, p0

    move/from16 v13, p2

    if-nez p1, :cond_13

    .line 1820
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "PackageManager"

    const-string v2, "Package was null!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1821
    return-void

    .line 1824
    :cond_13
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1827
    .local v12, "packageName":Ljava/lang/String;
    const v16, 0x1004b

    .line 1833
    .local v16, "userSettableMask":I
    const/16 v17, 0x14

    .line 1837
    .local v17, "policyOrSystemFlags":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v11

    .line 1838
    .local v11, "permissionCount":I
    const/4 v0, 0x1

    new-array v10, v0, [Z

    .line 1839
    .local v10, "permissionRemoved":[Z
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v1

    .line 1840
    .local v9, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4, v11}, Landroid/util/IntArray;-><init>(I)V

    .line 1841
    .local v4, "syncUpdatedUsers":Landroid/util/IntArray;
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5, v11}, Landroid/util/IntArray;-><init>(I)V

    .line 1843
    .local v5, "asyncUpdatedUsers":Landroid/util/IntArray;
    new-instance v14, Lcom/android/server/pm/permission/PermissionManagerService$2;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$2;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/util/ArraySet;Landroid/util/IntArray;Landroid/util/IntArray;[Z)V

    .line 1903
    .local v14, "delayingPermCallback":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_42
    if-ge v1, v11, :cond_160

    .line 1904
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1906
    .local v3, "permName":Ljava/lang/String;
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1907
    :try_start_51
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v7

    move-object/from16 v18, v7

    .line 1908
    .local v18, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_153

    .line 1909
    if-nez v18, :cond_66

    .line 1910
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_144

    .line 1913
    :cond_66
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 1914
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_144

    .line 1918
    :cond_76
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1919
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1918
    invoke-virtual {v6, v7, v13}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 1920
    .local v8, "pkgNames":[Ljava/lang/String;
    array-length v6, v8

    if-lez v6, :cond_c2

    .line 1921
    const/4 v6, 0x0

    .line 1922
    .local v6, "used":Z
    array-length v7, v8

    const/4 v0, 0x0

    :goto_86
    if-ge v0, v7, :cond_b4

    aget-object v2, v8, v0

    .line 1923
    .local v2, "sharedPkgName":Ljava/lang/String;
    move/from16 v20, v6

    .end local v6    # "used":Z
    .local v20, "used":Z
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1924
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 1925
    .local v6, "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v6, :cond_ad

    move-object/from16 v21, v2

    .end local v2    # "sharedPkgName":Ljava/lang/String;
    .local v21, "sharedPkgName":Ljava/lang/String;
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    .line 1926
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 1927
    const/4 v0, 0x1

    .line 1928
    .end local v20    # "used":Z
    .local v0, "used":Z
    move v6, v0

    goto :goto_b6

    .line 1925
    .end local v0    # "used":Z
    .end local v21    # "sharedPkgName":Ljava/lang/String;
    .restart local v2    # "sharedPkgName":Ljava/lang/String;
    .restart local v20    # "used":Z
    :cond_ad
    move-object/from16 v21, v2

    .line 1922
    .end local v2    # "sharedPkgName":Ljava/lang/String;
    .end local v6    # "sharedPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_af
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v20

    goto :goto_86

    .end local v20    # "used":Z
    .local v6, "used":Z
    :cond_b4
    move/from16 v20, v6

    .line 1931
    :goto_b6
    if-eqz v6, :cond_c2

    .line 1932
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    goto/16 :goto_144

    .line 1936
    .end local v6    # "used":Z
    :cond_c2
    const/16 v0, 0x3e8

    .line 1937
    invoke-direct {v15, v3, v12, v0, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 1942
    .local v0, "oldFlags":I
    iget-object v2, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v2, v12, v6, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 1943
    .local v2, "uid":I
    iget-object v6, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v7

    .line 1944
    .local v7, "targetSdk":I
    const/16 v6, 0x17

    if-ge v7, v6, :cond_e4

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 1945
    const/16 v6, 0x48

    move/from16 v19, v6

    goto :goto_e6

    .line 1946
    :cond_e4
    const/16 v19, 0x0

    :goto_e6
    nop

    .line 1948
    .local v19, "flags":I
    const v20, 0x1004b

    const/16 v21, 0x3e8

    const/16 v22, 0x0

    move-object/from16 v6, p0

    move/from16 v23, v7

    .end local v7    # "targetSdk":I
    .local v23, "targetSdk":I
    move-object v7, v3

    move-object/from16 v24, v8

    .end local v8    # "pkgNames":[Ljava/lang/String;
    .local v24, "pkgNames":[Ljava/lang/String;
    move-object v8, v12

    move-object/from16 v25, v9

    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v25, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    move/from16 v9, v20

    move-object/from16 v20, v10

    .end local v10    # "permissionRemoved":[Z
    .local v20, "permissionRemoved":[Z
    move/from16 v10, v19

    move/from16 v26, v11

    .end local v11    # "permissionCount":I
    .local v26, "permissionCount":I
    move/from16 v11, v21

    move-object/from16 v21, v12

    .end local v12    # "packageName":Ljava/lang/String;
    .local v21, "packageName":Ljava/lang/String;
    move/from16 v12, p2

    move/from16 v13, v22

    invoke-direct/range {v6 .. v14}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1953
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-nez v6, :cond_112

    .line 1954
    goto :goto_144

    .line 1958
    :cond_112
    and-int/lit8 v6, v0, 0x14

    if-eqz v6, :cond_117

    .line 1959
    goto :goto_144

    .line 1963
    :cond_117
    and-int/lit8 v6, v0, 0x20

    if-nez v6, :cond_136

    const v6, 0x8000

    and-int/2addr v6, v0

    if-eqz v6, :cond_122

    goto :goto_136

    .line 1970
    :cond_122
    and-int/lit8 v6, v19, 0x40

    if-nez v6, :cond_144

    .line 1972
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v3

    move-object/from16 v8, v21

    move/from16 v11, p2

    move-object v13, v14

    invoke-direct/range {v6 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_144

    .line 1966
    :cond_136
    :goto_136
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    move-object/from16 v6, p0

    move-object v7, v3

    move-object/from16 v8, v21

    move/from16 v11, p2

    move-object v12, v14

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1903
    .end local v0    # "oldFlags":I
    .end local v2    # "uid":I
    .end local v3    # "permName":Ljava/lang/String;
    .end local v18    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v19    # "flags":I
    .end local v23    # "targetSdk":I
    .end local v24    # "pkgNames":[Ljava/lang/String;
    :cond_144
    :goto_144
    add-int/lit8 v1, v1, 0x1

    move/from16 v13, p2

    move-object/from16 v10, v20

    move-object/from16 v12, v21

    move-object/from16 v9, v25

    move/from16 v11, v26

    const/4 v0, 0x1

    goto/16 :goto_42

    .line 1908
    .end local v20    # "permissionRemoved":[Z
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v26    # "permissionCount":I
    .restart local v3    # "permName":Ljava/lang/String;
    .restart local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v10    # "permissionRemoved":[Z
    .restart local v11    # "permissionCount":I
    .restart local v12    # "packageName":Ljava/lang/String;
    :catchall_153
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v10    # "permissionRemoved":[Z
    .end local v11    # "permissionCount":I
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v20    # "permissionRemoved":[Z
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v26    # "permissionCount":I
    :goto_15c
    :try_start_15c
    monitor-exit v6
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15e

    throw v0

    :catchall_15e
    move-exception v0

    goto :goto_15c

    .line 1903
    .end local v3    # "permName":Ljava/lang/String;
    .end local v20    # "permissionRemoved":[Z
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v26    # "permissionCount":I
    .restart local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v10    # "permissionRemoved":[Z
    .restart local v11    # "permissionCount":I
    .restart local v12    # "packageName":Ljava/lang/String;
    :cond_160
    move-object/from16 v25, v9

    move-object/from16 v20, v10

    move/from16 v26, v11

    move-object/from16 v21, v12

    .line 1978
    .end local v1    # "i":I
    .end local v9    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v10    # "permissionRemoved":[Z
    .end local v11    # "permissionCount":I
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v20    # "permissionRemoved":[Z
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v26    # "permissionCount":I
    const/4 v0, 0x0

    aget-boolean v1, v20, v0

    if-eqz v1, :cond_172

    .line 1979
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRemoved()V

    .line 1984
    :cond_172
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b2

    .line 1985
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1986
    .local v0, "numRevokedPermissions":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_17d
    if-ge v1, v0, :cond_1af

    .line 1987
    move-object/from16 v2, v25

    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v2, "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v3

    .line 1988
    .local v3, "revocationUID":I
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v6

    .line 1990
    .local v6, "revocationUserId":I
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1993
    iget-object v7, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$igfYI7thImnYrDxs3qWtqs2SCRk;

    invoke-direct {v8, v3, v6}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$igfYI7thImnYrDxs3qWtqs2SCRk;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1986
    .end local v3    # "revocationUID":I
    .end local v6    # "revocationUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_17d

    .end local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1af
    move-object/from16 v2, v25

    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    goto :goto_1b4

    .line 1984
    .end local v0    # "numRevokedPermissions":I
    .end local v1    # "i":I
    .end local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1b2
    move-object/from16 v2, v25

    .line 1998
    .end local v25    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v2    # "revokedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_1b4
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 1999
    iget-object v0, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 2000
    return-void
.end method

.method private restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2335
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2336
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2337
    monitor-exit v0

    return-void

    .line 2340
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2341
    invoke-static {}, Lcom/android/server/pm/PmThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$5wIJaBo3ATYcr96ofI23sjuUqoA;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)V

    .line 2340
    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2350
    monitor-exit v0

    .line 2351
    return-void

    .line 2350
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 42
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replace"    # Z
    .param p3, "packageOfInterest"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3401
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 3402
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3401
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    .line 3403
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v12, :cond_17

    .line 3404
    return-void

    .line 3407
    :cond_17
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    .line 3409
    .local v13, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v14

    .line 3411
    .local v14, "currentUserIds":[I
    const/4 v1, 0x0

    .line 3412
    .local v1, "runtimePermissionsRevoked":Z
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 3414
    .local v0, "updatedUserIds":[I
    array-length v2, v14

    move-object v3, v0

    const/4 v0, 0x0

    .end local v0    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    :goto_29
    if-ge v0, v2, :cond_f5

    aget v4, v14, v0

    .line 3415
    .local v4, "userId":I
    invoke-virtual {v13, v4}, Lcom/android/server/pm/permission/PermissionsState;->isMissing(I)Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 3418
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v5

    if-nez v5, :cond_48

    .line 3419
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    .line 3420
    .local v5, "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v16

    move/from16 v19, v1

    move/from16 v1, v16

    move/from16 v16, v2

    .local v16, "targetSdkVersion":I
    goto :goto_86

    .line 3422
    .end local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v16    # "targetSdkVersion":I
    :cond_48
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 3423
    .restart local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v16, 0x2710

    .line 3424
    .restart local v16    # "targetSdkVersion":I
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v15

    .line 3425
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    .line 3426
    .local v6, "packagesSize":I
    const/16 v18, 0x0

    move/from16 v19, v1

    move/from16 v1, v16

    move/from16 v16, v2

    move/from16 v2, v18

    .end local v16    # "targetSdkVersion":I
    .local v1, "targetSdkVersion":I
    .local v2, "i":I
    .local v19, "runtimePermissionsRevoked":Z
    :goto_65
    if-ge v2, v6, :cond_84

    .line 3427
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 3428
    .local v18, "sharedUserPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    move/from16 v20, v6

    .end local v6    # "packagesSize":I
    .local v20, "packagesSize":I
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 3429
    nop

    .line 3430
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v6

    .line 3429
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3426
    .end local v18    # "sharedUserPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v20

    goto :goto_65

    .end local v20    # "packagesSize":I
    .restart local v6    # "packagesSize":I
    :cond_84
    move/from16 v20, v6

    .line 3434
    .end local v2    # "i":I
    .end local v6    # "packagesSize":I
    .end local v15    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_86
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3435
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v15, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v15, v6}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v15

    .line 3436
    .local v15, "permission":Lcom/android/server/pm/permission/BasePermission;
    if-nez v15, :cond_9f

    .line 3437
    goto :goto_8a

    .line 3439
    :cond_9f
    move-object/from16 v18, v2

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v5

    .end local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v20, "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v5, "android"

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 3440
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_d8

    .line 3441
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v2

    if-nez v2, :cond_c7

    .line 3442
    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isImmutablyRestricted()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 3443
    :cond_c7
    const/16 v2, 0x2000

    invoke-virtual {v13, v15, v4, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 3447
    :cond_cc
    const/16 v2, 0x17

    if-ge v1, v2, :cond_d8

    .line 3448
    const/16 v2, 0x48

    invoke-virtual {v13, v15, v4, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 3453
    invoke-virtual {v13, v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 3456
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v15    # "permission":Lcom/android/server/pm/permission/BasePermission;
    :cond_d8
    move-object/from16 v2, v18

    move-object/from16 v5, v20

    goto :goto_8a

    .line 3458
    .end local v20    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_dd
    move-object/from16 v20, v5

    .end local v5    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v20    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {v13, v2, v4}, Lcom/android/server/pm/permission/PermissionsState;->setMissing(ZI)V

    .line 3459
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    move-object v3, v2

    .end local v3    # "updatedUserIds":[I
    .local v2, "updatedUserIds":[I
    goto :goto_ed

    .line 3415
    .end local v2    # "updatedUserIds":[I
    .end local v19    # "runtimePermissionsRevoked":Z
    .end local v20    # "requestedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v1, "runtimePermissionsRevoked":Z
    .restart local v3    # "updatedUserIds":[I
    :cond_e9
    move/from16 v19, v1

    move/from16 v16, v2

    .line 3414
    .end local v1    # "runtimePermissionsRevoked":Z
    .end local v4    # "userId":I
    .restart local v19    # "runtimePermissionsRevoked":Z
    :goto_ed
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v16

    move/from16 v1, v19

    goto/16 :goto_29

    .line 3463
    .end local v19    # "runtimePermissionsRevoked":Z
    .restart local v1    # "runtimePermissionsRevoked":Z
    :cond_f5
    move/from16 v19, v1

    .end local v1    # "runtimePermissionsRevoked":Z
    .restart local v19    # "runtimePermissionsRevoked":Z
    move-object v1, v13

    .line 3465
    .local v1, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    const/4 v2, 0x0

    .line 3467
    .local v2, "changedInstallPermission":Z
    if-eqz v9, :cond_138

    .line 3468
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    .line 3469
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v0

    if-nez v0, :cond_112

    .line 3470
    new-instance v0, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v0, v13}, Lcom/android/server/pm/permission/PermissionsState;-><init>(Lcom/android/server/pm/permission/PermissionsState;)V

    move-object v1, v0

    .line 3471
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionsState;->reset()V

    move-object v15, v1

    move/from16 v6, v19

    goto :goto_13b

    .line 3478
    :cond_112
    iget-object v4, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3479
    nop

    .line 3480
    :try_start_116
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    .line 3479
    invoke-direct {v7, v0, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I

    move-result-object v0

    move-object v3, v0

    .line 3481
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_130

    .line 3482
    const/4 v0, 0x1

    move/from16 v19, v0

    .line 3484
    :cond_130
    monitor-exit v4

    move-object v15, v1

    move/from16 v6, v19

    goto :goto_13b

    :catchall_135
    move-exception v0

    monitor-exit v4
    :try_end_137
    .catchall {:try_start_116 .. :try_end_137} :catchall_135

    throw v0

    .line 3467
    :cond_138
    move-object v15, v1

    move/from16 v6, v19

    .line 3488
    .end local v1    # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v19    # "runtimePermissionsRevoked":Z
    .local v6, "runtimePermissionsRevoked":Z
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :goto_13b
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v13, v0}, Lcom/android/server/pm/permission/PermissionsState;->setGlobalGids([I)V

    .line 3490
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3491
    :try_start_143
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3493
    .local v0, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_150
    .catchall {:try_start_143 .. :try_end_150} :catchall_88b

    move v4, v1

    .line 3494
    .local v4, "N":I
    const/4 v1, 0x0

    move/from16 v16, v2

    move-object v2, v3

    move v3, v1

    .local v2, "updatedUserIds":[I
    .local v3, "i":I
    .local v16, "changedInstallPermission":Z
    :goto_156
    if-ge v3, v4, :cond_7d1

    .line 3495
    :try_start_158
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_162
    .catchall {:try_start_158 .. :try_end_162} :catchall_7bb

    .line 3496
    .local v1, "permName":Ljava/lang/String;
    move-object/from16 v19, v2

    .end local v2    # "updatedUserIds":[I
    .local v19, "updatedUserIds":[I
    :try_start_164
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 3497
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    nop

    .line 3498
    move/from16 v20, v3

    .end local v3    # "i":I
    .local v20, "i":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3
    :try_end_171
    .catchall {:try_start_164 .. :try_end_171} :catchall_7a4

    move/from16 v21, v6

    const/16 v6, 0x17

    .end local v6    # "runtimePermissionsRevoked":Z
    .local v21, "runtimePermissionsRevoked":Z
    if-lt v3, v6, :cond_179

    const/4 v3, 0x1

    goto :goto_17a

    :cond_179
    const/4 v3, 0x0

    :goto_17a
    move/from16 v17, v3

    .line 3499
    .local v17, "appSupportsRuntimePermissions":Z
    const/4 v3, 0x0

    .line 3506
    .local v3, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    if-eqz v2, :cond_753

    :try_start_17f
    invoke-direct {v7, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v22

    if-nez v22, :cond_19f

    move-object/from16 v18, v1

    move-object/from16 v25, v3

    move/from16 v23, v4

    move-object/from16 v27, v5

    move-object/from16 v35, v12

    move-object/from16 v34, v14

    move-object/from16 v11, v19

    move/from16 v19, v20

    move/from16 v29, v21

    const/4 v7, 0x0

    move-object/from16 v20, v0

    move-object v12, v2

    move/from16 v21, v6

    goto/16 :goto_76b

    .line 3519
    :cond_19f
    invoke-virtual {v15, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Ljava/lang/String;)Z

    move-result v22
    :try_end_1a3
    .catchall {:try_start_17f .. :try_end_1a3} :catchall_73a

    if-nez v22, :cond_22e

    .line 3520
    :try_start_1a5
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1be

    const-string v6, "android.permission.ACTIVITY_RECOGNITION"

    .line 3521
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b8

    goto :goto_1be

    :cond_1b8
    move-object/from16 v25, v3

    move/from16 v23, v4

    goto/16 :goto_232

    .line 3522
    :cond_1be
    :goto_1be
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d1

    .line 3524
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v3

    move/from16 v23, v4

    goto/16 :goto_232

    .line 3537
    :cond_1d1
    nop

    .line 3538
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissions()Ljava/util/List;

    move-result-object v6

    .line 3539
    .local v6, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v24, v23

    .line 3540
    .local v24, "numSplitPerms":I
    const/16 v23, 0x0

    move-object/from16 v25, v3

    move/from16 v3, v23

    .local v3, "splitPermNum":I
    .local v25, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :goto_1e2
    move/from16 v23, v4

    move/from16 v4, v24

    .end local v24    # "numSplitPerms":I
    .local v4, "numSplitPerms":I
    .local v23, "N":I
    if-ge v3, v4, :cond_219

    .line 3541
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 3542
    .local v24, "sp":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v27, v26

    .line 3543
    .local v27, "splitPermName":Ljava/lang/String;
    move/from16 v26, v4

    .end local v4    # "numSplitPerms":I
    .local v26, "numSplitPerms":I
    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_210

    .line 3544
    move-object/from16 v4, v27

    .end local v27    # "splitPermName":Ljava/lang/String;
    .local v4, "splitPermName":Ljava/lang/String;
    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_212

    .line 3545
    move-object/from16 v25, v4

    .line 3546
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_20d
    .catchall {:try_start_1a5 .. :try_end_20d} :catchall_21c

    .line 3552
    move-object/from16 v6, v25

    goto :goto_234

    .line 3543
    .end local v4    # "splitPermName":Ljava/lang/String;
    .restart local v27    # "splitPermName":Ljava/lang/String;
    :cond_210
    move-object/from16 v4, v27

    .line 3540
    .end local v24    # "sp":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    .end local v27    # "splitPermName":Ljava/lang/String;
    :cond_212
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v23

    move/from16 v24, v26

    goto :goto_1e2

    .end local v26    # "numSplitPerms":I
    .local v4, "numSplitPerms":I
    :cond_219
    move/from16 v26, v4

    .end local v4    # "numSplitPerms":I
    .restart local v26    # "numSplitPerms":I
    goto :goto_232

    .line 3959
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "permName":Ljava/lang/String;
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "splitPermNum":I
    .end local v6    # "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v20    # "i":I
    .end local v23    # "N":I
    .end local v25    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v26    # "numSplitPerms":I
    :catchall_21c
    move-exception v0

    move-object/from16 v27, v5

    move-object v1, v11

    move-object/from16 v34, v14

    move/from16 v2, v16

    move-object/from16 v3, v19

    move/from16 v4, v21

    move-object v14, v8

    move-object v8, v10

    move-object v10, v12

    move-object v12, v7

    goto/16 :goto_896

    .line 3519
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "permName":Ljava/lang/String;
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v3, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v4, "N":I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v20    # "i":I
    :cond_22e
    move-object/from16 v25, v3

    move/from16 v23, v4

    .line 3569
    .end local v3    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v4    # "N":I
    .restart local v23    # "N":I
    .restart local v25    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :goto_232
    move-object/from16 v6, v25

    .end local v25    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v6, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :goto_234
    :try_start_234
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v3

    if-eqz v3, :cond_250

    if-nez v17, :cond_250

    .line 3574
    move-object/from16 v27, v5

    move-object v8, v10

    move-object/from16 v35, v12

    move-object/from16 v34, v14

    move-object/from16 v11, v19

    move/from16 v19, v20

    move/from16 v29, v21

    const/4 v7, 0x0

    const/16 v21, 0x17

    move-object/from16 v20, v0

    goto/16 :goto_78a

    .line 3577
    :cond_250
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 3578
    .local v4, "perm":Ljava/lang/String;
    const/16 v24, 0x0

    .line 3579
    .local v24, "allowedSig":Z
    const/16 v25, 0x1

    .line 3582
    .local v25, "grant":I
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v3
    :try_end_25d
    .catchall {:try_start_234 .. :try_end_25d} :catchall_73a

    if-eqz v3, :cond_26b

    .line 3583
    :try_start_25f
    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    move-object/from16 v26, v1

    .end local v1    # "permName":Ljava/lang/String;
    .local v26, "permName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26a
    .catchall {:try_start_25f .. :try_end_26a} :catchall_21c

    goto :goto_26d

    .line 3582
    .end local v26    # "permName":Ljava/lang/String;
    .restart local v1    # "permName":Ljava/lang/String;
    :cond_26b
    move-object/from16 v26, v1

    .line 3586
    .end local v1    # "permName":Ljava/lang/String;
    .restart local v26    # "permName":Ljava/lang/String;
    :goto_26d
    :try_start_26d
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_28e

    .line 3588
    const/16 v25, 0x2

    move-object/from16 v28, v4

    move-object/from16 v27, v5

    move-object/from16 v30, v6

    move-object/from16 v11, v19

    move/from16 v19, v20

    move/from16 v29, v21

    move/from16 v1, v25

    move-object/from16 v18, v26

    const/16 v21, 0x17

    move-object/from16 v20, v0

    move-object/from16 v26, v2

    const/4 v0, 0x1

    goto/16 :goto_333

    .line 3589
    :cond_28e
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1
    :try_end_292
    .catchall {:try_start_26d .. :try_end_292} :catchall_73a

    if-eqz v1, :cond_2d7

    .line 3590
    :try_start_294
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v1
    :try_end_29c
    .catchall {:try_start_294 .. :try_end_29c} :catchall_21c

    if-nez v1, :cond_2bc

    if-eqz v6, :cond_2a1

    goto :goto_2bc

    .line 3597
    :cond_2a1
    const/16 v25, 0x3

    move-object/from16 v28, v4

    move-object/from16 v27, v5

    move-object/from16 v30, v6

    move-object/from16 v11, v19

    move/from16 v19, v20

    move/from16 v29, v21

    move/from16 v1, v25

    move-object/from16 v18, v26

    const/16 v21, 0x17

    move-object/from16 v20, v0

    move-object/from16 v26, v2

    const/4 v0, 0x1

    goto/16 :goto_333

    .line 3594
    :cond_2bc
    :goto_2bc
    const/16 v25, 0x4

    move-object/from16 v28, v4

    move-object/from16 v27, v5

    move-object/from16 v30, v6

    move-object/from16 v11, v19

    move/from16 v19, v20

    move/from16 v29, v21

    move/from16 v1, v25

    move-object/from16 v18, v26

    const/16 v21, 0x17

    move-object/from16 v20, v0

    move-object/from16 v26, v2

    const/4 v0, 0x1

    goto/16 :goto_333

    .line 3599
    :cond_2d7
    :try_start_2d7
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v1
    :try_end_2db
    .catchall {:try_start_2d7 .. :try_end_2db} :catchall_73a

    if-eqz v1, :cond_31c

    .line 3601
    move-object/from16 v18, v26

    const/4 v3, 0x1

    .end local v26    # "permName":Ljava/lang/String;
    .local v18, "permName":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v26, v2

    move-object/from16 v11, v19

    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v19    # "updatedUserIds":[I
    .local v11, "updatedUserIds":[I
    .local v26, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object v2, v4

    move/from16 v19, v20

    move-object/from16 v20, v0

    move v0, v3

    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v19, "i":I
    .local v20, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v3, p1

    move-object/from16 v28, v4

    .end local v4    # "perm":Ljava/lang/String;
    .local v28, "perm":Ljava/lang/String;
    move-object v4, v12

    move-object/from16 v27, v5

    move-object/from16 v5, v26

    move-object/from16 v30, v6

    move/from16 v29, v21

    const/16 v21, 0x17

    .end local v6    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v21    # "runtimePermissionsRevoked":Z
    .local v29, "runtimePermissionsRevoked":Z
    .local v30, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    move-object v6, v15

    :try_start_2fc
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantSignaturePermission(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z

    move-result v1
    :try_end_300
    .catchall {:try_start_2fc .. :try_end_300} :catchall_30c

    move/from16 v24, v1

    .line 3602
    if-eqz v24, :cond_309

    .line 3604
    const/16 v25, 0x2

    move/from16 v1, v25

    goto :goto_333

    .line 3602
    :cond_309
    move/from16 v1, v25

    goto :goto_333

    .line 3959
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v28    # "perm":Ljava/lang/String;
    .end local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_30c
    move-exception v0

    move-object/from16 v1, p4

    move-object v3, v11

    move-object/from16 v34, v14

    move/from16 v2, v16

    move/from16 v4, v29

    move-object v14, v8

    move-object v8, v10

    move-object v10, v12

    move-object v12, v7

    goto/16 :goto_896

    .line 3599
    .end local v11    # "updatedUserIds":[I
    .end local v29    # "runtimePermissionsRevoked":Z
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v6    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .local v19, "updatedUserIds":[I
    .local v20, "i":I
    .restart local v21    # "runtimePermissionsRevoked":Z
    .restart local v23    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v25    # "grant":I
    .local v26, "permName":Ljava/lang/String;
    :cond_31c
    move-object/from16 v28, v4

    move-object/from16 v27, v5

    move-object/from16 v30, v6

    move-object/from16 v11, v19

    move/from16 v19, v20

    move/from16 v29, v21

    move-object/from16 v18, v26

    const/16 v21, 0x17

    move-object/from16 v20, v0

    move-object/from16 v26, v2

    const/4 v0, 0x1

    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "perm":Ljava/lang/String;
    .end local v6    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v21    # "runtimePermissionsRevoked":Z
    .restart local v11    # "updatedUserIds":[I
    .restart local v18    # "permName":Ljava/lang/String;
    .local v19, "i":I
    .local v20, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v26, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v28    # "perm":Ljava/lang/String;
    .restart local v29    # "runtimePermissionsRevoked":Z
    .restart local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    move/from16 v1, v25

    .line 3613
    .end local v25    # "grant":I
    .local v1, "grant":I
    :goto_333
    if-eq v1, v0, :cond_700

    .line 3614
    :try_start_335
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4
    :try_end_339
    .catchall {:try_start_335 .. :try_end_339} :catchall_6eb

    if-nez v4, :cond_35c

    :try_start_33b
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v4

    if-eqz v4, :cond_35c

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v4

    if-nez v4, :cond_35c

    .line 3618
    if-nez v24, :cond_359

    move-object/from16 v4, v28

    .end local v28    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35e

    .line 3622
    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v5

    if-nez v5, :cond_35e

    .line 3623
    const/4 v1, 0x1

    goto :goto_35e

    .line 3618
    .end local v4    # "perm":Ljava/lang/String;
    .restart local v28    # "perm":Ljava/lang/String;
    :cond_359
    move-object/from16 v4, v28

    .end local v28    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    goto :goto_35e

    .line 3614
    .end local v4    # "perm":Ljava/lang/String;
    .restart local v28    # "perm":Ljava/lang/String;
    :cond_35c
    move-object/from16 v4, v28

    .line 3628
    .end local v28    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    :cond_35e
    :goto_35e
    const/4 v5, 0x2

    if-eq v1, v5, :cond_692

    const/4 v5, 0x3

    if-eq v1, v5, :cond_4fe

    const/4 v5, 0x4

    if-eq v1, v5, :cond_381

    .line 3904
    if-eqz v10, :cond_379

    .line 3905
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_371
    .catchall {:try_start_33b .. :try_end_371} :catchall_30c

    move-object v8, v10

    move-object/from16 v35, v12

    move-object/from16 v34, v14

    const/4 v7, 0x0

    goto/16 :goto_78a

    .line 3904
    :cond_379
    move-object v8, v10

    move-object/from16 v35, v12

    move-object/from16 v34, v14

    const/4 v7, 0x0

    goto/16 :goto_78a

    .line 3784
    :cond_381
    nop

    .line 3785
    :try_start_382
    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v5
    :try_end_386
    .catchall {:try_start_382 .. :try_end_386} :catchall_4ea

    .line 3786
    .local v5, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v5, :cond_38d

    :try_start_388
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v6
    :try_end_38c
    .catchall {:try_start_388 .. :try_end_38c} :catchall_30c

    goto :goto_38e

    :cond_38d
    const/4 v6, 0x0

    .line 3789
    .local v6, "flags":I
    :goto_38e
    move-object/from16 v0, v30

    .end local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v0, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    if-nez v0, :cond_395

    .line 3790
    move-object/from16 v2, v26

    goto :goto_39b

    :cond_395
    :try_start_395
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 3793
    .local v2, "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :goto_39b
    invoke-virtual {v15, v2}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3
    :try_end_39f
    .catchall {:try_start_395 .. :try_end_39f} :catchall_4ea

    move-object/from16 v30, v0

    const/4 v0, -0x1

    .end local v0    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    if-eq v3, v0, :cond_3b1

    .line 3795
    const v3, 0x3bbff

    move/from16 v31, v1

    const/4 v1, 0x0

    .end local v1    # "grant":I
    .local v31, "grant":I
    :try_start_3aa
    invoke-virtual {v15, v2, v0, v3, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_3ad
    .catchall {:try_start_3aa .. :try_end_3ad} :catchall_30c

    .line 3799
    const/4 v0, 0x1

    move/from16 v16, v0

    .end local v16    # "changedInstallPermission":Z
    .local v0, "changedInstallPermission":Z
    goto :goto_3b3

    .line 3793
    .end local v0    # "changedInstallPermission":Z
    .end local v31    # "grant":I
    .restart local v1    # "grant":I
    .restart local v16    # "changedInstallPermission":Z
    :cond_3b1
    move/from16 v31, v1

    .line 3802
    .end local v1    # "grant":I
    .restart local v31    # "grant":I
    :goto_3b3
    :try_start_3b3
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    .line 3803
    .local v0, "hardRestricted":Z
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v1

    .line 3805
    .local v1, "softRestricted":Z
    array-length v3, v14

    move-object/from16 v32, v2

    const/4 v2, 0x0

    .end local v2    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .local v32, "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :goto_3bf
    if-ge v2, v3, :cond_4da

    aget v33, v14, v2

    move/from16 v34, v33

    .line 3809
    .local v34, "userId":I
    move/from16 v33, v3

    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_3c9
    .catchall {:try_start_3b3 .. :try_end_3c9} :catchall_4ea

    if-eqz v3, :cond_3e8

    :try_start_3cb
    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 3811
    move/from16 v8, v34

    .end local v34    # "userId":I
    .local v8, "userId":I
    invoke-virtual {v3, v8}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v3
    :try_end_3d3
    .catchall {:try_start_3cb .. :try_end_3d3} :catchall_3d7

    if-eqz v3, :cond_3ea

    const/4 v3, 0x1

    goto :goto_3eb

    .line 3959
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v6    # "flags":I
    .end local v8    # "userId":I
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v31    # "grant":I
    .end local v32    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :catchall_3d7
    move-exception v0

    move-object/from16 v1, p4

    move-object v8, v10

    move-object v3, v11

    move-object v10, v12

    move-object/from16 v34, v14

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v14, p1

    move-object v12, v7

    goto/16 :goto_896

    .line 3809
    .restart local v0    # "hardRestricted":Z
    .restart local v1    # "softRestricted":Z
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v6    # "flags":I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v31    # "grant":I
    .restart local v32    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .restart local v34    # "userId":I
    :cond_3e8
    move/from16 v8, v34

    .line 3811
    .end local v34    # "userId":I
    .restart local v8    # "userId":I
    :cond_3ea
    const/4 v3, 0x0

    .line 3813
    .local v3, "permissionPolicyInitialized":Z
    :goto_3eb
    const/16 v34, 0x0

    .line 3815
    .local v34, "wasChanged":Z
    move-object/from16 v35, v12

    move-object/from16 v12, v26

    .end local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v12, "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v35, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_3f1
    iget-object v9, v12, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 3816
    invoke-virtual {v15, v9, v8}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v9

    and-int/lit16 v9, v9, 0x3800

    if-eqz v9, :cond_3fd

    const/4 v9, 0x1

    goto :goto_3fe

    :cond_3fd
    const/4 v9, 0x0

    .line 3818
    .local v9, "restrictionExempt":Z
    :goto_3fe
    iget-object v10, v12, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v15, v10, v8}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v10

    and-int/lit16 v10, v10, 0x4000

    if-eqz v10, :cond_40a

    const/4 v10, 0x1

    goto :goto_40b

    :cond_40a
    const/4 v10, 0x0

    .line 3821
    .local v10, "restrictionApplied":Z
    :goto_40b
    if-eqz v17, :cond_46b

    .line 3823
    if-eqz v3, :cond_43a

    if-eqz v0, :cond_43a

    .line 3824
    if-nez v9, :cond_435

    .line 3825
    if-eqz v5, :cond_42a

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v26

    if-eqz v26, :cond_42a

    .line 3826
    move-object/from16 v26, v5

    .end local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v26, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v13, v12, v8}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v5

    move-object/from16 v36, v4

    const/4 v4, -0x1

    .end local v4    # "perm":Ljava/lang/String;
    .local v36, "perm":Ljava/lang/String;
    if-eq v5, v4, :cond_42e

    .line 3828
    const/4 v4, 0x1

    move/from16 v34, v4

    .end local v34    # "wasChanged":Z
    .local v4, "wasChanged":Z
    goto :goto_42e

    .line 3825
    .end local v26    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v36    # "perm":Ljava/lang/String;
    .local v4, "perm":Ljava/lang/String;
    .restart local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v34    # "wasChanged":Z
    :cond_42a
    move-object/from16 v36, v4

    move-object/from16 v26, v5

    .line 3830
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v26    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v36    # "perm":Ljava/lang/String;
    :cond_42e
    :goto_42e
    if-nez v10, :cond_44a

    .line 3831
    or-int/lit16 v6, v6, 0x4000

    .line 3832
    const/16 v34, 0x1

    goto :goto_44a

    .line 3824
    .end local v26    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v36    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_435
    move-object/from16 v36, v4

    move-object/from16 v26, v5

    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v26    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v36    # "perm":Ljava/lang/String;
    goto :goto_44a

    .line 3823
    .end local v26    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v36    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_43a
    move-object/from16 v36, v4

    move-object/from16 v26, v5

    .line 3836
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v26    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v36    # "perm":Ljava/lang/String;
    if-eqz v3, :cond_44a

    if-eqz v1, :cond_44a

    .line 3839
    if-nez v9, :cond_44a

    if-nez v10, :cond_44a

    .line 3840
    or-int/lit16 v6, v6, 0x4000

    .line 3841
    const/16 v34, 0x1

    .line 3846
    :cond_44a
    :goto_44a
    and-int/lit8 v4, v6, 0x40

    if-eqz v4, :cond_452

    .line 3847
    and-int/lit8 v6, v6, -0x41

    .line 3848
    const/16 v34, 0x1

    .line 3851
    :cond_452
    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_45b

    .line 3852
    and-int/lit8 v6, v6, -0x9

    .line 3853
    const/16 v34, 0x1

    goto :goto_490

    .line 3855
    :cond_45b
    if-eqz v3, :cond_461

    if-eqz v0, :cond_461

    if-eqz v9, :cond_490

    .line 3857
    :cond_461
    invoke-virtual {v13, v12, v8}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_490

    .line 3859
    const/16 v34, 0x1

    goto :goto_490

    .line 3863
    .end local v26    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v36    # "perm":Ljava/lang/String;
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_46b
    move-object/from16 v36, v4

    move-object/from16 v26, v5

    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v26    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v36    # "perm":Ljava/lang/String;
    iget-object v4, v12, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v4, v8}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_482

    .line 3864
    invoke-virtual {v13, v12, v8}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_482

    .line 3866
    or-int/lit8 v6, v6, 0x40

    .line 3867
    const/16 v34, 0x1

    .line 3872
    :cond_482
    if-eqz v3, :cond_490

    if-nez v0, :cond_488

    if-eqz v1, :cond_490

    :cond_488
    if-nez v9, :cond_490

    if-nez v10, :cond_490

    .line 3875
    or-int/lit16 v6, v6, 0x4000

    .line 3876
    const/16 v34, 0x1

    .line 3881
    :cond_490
    :goto_490
    if-eqz v3, :cond_4a3

    .line 3882
    if-nez v0, :cond_496

    if-eqz v1, :cond_498

    :cond_496
    if-eqz v9, :cond_4a3

    .line 3883
    :cond_498
    if-eqz v10, :cond_4a3

    .line 3884
    and-int/lit16 v4, v6, -0x4001

    .line 3886
    .end local v6    # "flags":I
    .local v4, "flags":I
    if-nez v17, :cond_4a0

    .line 3887
    or-int/lit8 v4, v4, 0x40

    .line 3889
    :cond_4a0
    const/16 v34, 0x1

    move v6, v4

    .line 3894
    .end local v4    # "flags":I
    .restart local v6    # "flags":I
    :cond_4a3
    if-eqz v34, :cond_4aa

    .line 3895
    invoke-static {v11, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    move-object v11, v4

    .line 3898
    :cond_4aa
    const v4, 0x3fbff

    invoke-virtual {v13, v12, v8, v4, v6}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_4b0
    .catchall {:try_start_3f1 .. :try_end_4b0} :catchall_4c5

    .line 3805
    nop

    .end local v3    # "permissionPolicyInitialized":Z
    .end local v8    # "userId":I
    .end local v9    # "restrictionExempt":Z
    .end local v10    # "restrictionApplied":Z
    .end local v34    # "wasChanged":Z
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v5, v26

    move/from16 v3, v33

    move-object/from16 v4, v36

    move-object/from16 v26, v12

    move-object/from16 v12, v35

    goto/16 :goto_3bf

    .line 3959
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v6    # "flags":I
    .end local v12    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v26    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v31    # "grant":I
    .end local v32    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v36    # "perm":Ljava/lang/String;
    :catchall_4c5
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move-object v12, v7

    move-object v3, v11

    move-object/from16 v34, v14

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v10, v35

    move-object/from16 v14, p1

    goto/16 :goto_896

    .line 3805
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "hardRestricted":Z
    .restart local v1    # "softRestricted":Z
    .local v4, "perm":Ljava/lang/String;
    .restart local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v6    # "flags":I
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    .restart local v24    # "allowedSig":Z
    .local v26, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v31    # "grant":I
    .restart local v32    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :cond_4da
    move-object/from16 v36, v4

    move-object/from16 v35, v12

    move-object/from16 v12, v26

    move-object/from16 v26, v5

    .line 3901
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v6    # "flags":I
    .end local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v32    # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .local v12, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v36    # "perm":Ljava/lang/String;
    move-object/from16 v8, p3

    move-object v2, v11

    move-object/from16 v34, v14

    const/4 v7, 0x0

    goto/16 :goto_78b

    .line 3959
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v31    # "grant":I
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v36    # "perm":Ljava/lang/String;
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_4ea
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move-object v3, v11

    move-object v10, v12

    move-object/from16 v34, v14

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v14, p1

    move-object v12, v7

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_896

    .line 3654
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v1, "grant":I
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_4fe
    move/from16 v31, v1

    move-object/from16 v36, v4

    move-object/from16 v35, v12

    move-object/from16 v12, v26

    .end local v1    # "grant":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v12, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v31    # "grant":I
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v36    # "perm":Ljava/lang/String;
    :try_start_506
    invoke-virtual {v12}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    .line 3655
    .restart local v0    # "hardRestricted":Z
    invoke-virtual {v12}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v1

    .line 3657
    .local v1, "softRestricted":Z
    array-length v2, v14
    :try_end_50f
    .catchall {:try_start_506 .. :try_end_50f} :catchall_67c

    move-object v3, v11

    const/4 v4, 0x0

    .end local v11    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    :goto_511
    if-ge v4, v2, :cond_672

    :try_start_513
    aget v5, v14, v4

    .line 3661
    .local v5, "userId":I
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_517
    .catchall {:try_start_513 .. :try_end_517} :catchall_65d

    if-eqz v6, :cond_537

    :try_start_519
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 3663
    invoke-virtual {v6, v5}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v6
    :try_end_51f
    .catchall {:try_start_519 .. :try_end_51f} :catchall_523

    if-eqz v6, :cond_537

    const/4 v6, 0x1

    goto :goto_538

    .line 3959
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v5    # "userId":I
    .end local v12    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v31    # "grant":I
    .end local v36    # "perm":Ljava/lang/String;
    :catchall_523
    move-exception v0

    move/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move-object v12, v7

    move-object/from16 v34, v14

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v10, v35

    move-object/from16 v14, p1

    goto/16 :goto_896

    .line 3663
    .restart local v0    # "hardRestricted":Z
    .restart local v1    # "softRestricted":Z
    .restart local v5    # "userId":I
    .restart local v12    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v31    # "grant":I
    .restart local v36    # "perm":Ljava/lang/String;
    :cond_537
    const/4 v6, 0x0

    .line 3665
    .local v6, "permissionPolicyInitialized":Z
    :goto_538
    nop

    .line 3666
    move-object/from16 v8, v36

    .end local v36    # "perm":Ljava/lang/String;
    .local v8, "perm":Ljava/lang/String;
    :try_start_53b
    invoke-virtual {v15, v8, v5}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v9
    :try_end_53f
    .catchall {:try_start_53b .. :try_end_53f} :catchall_65d

    .line 3667
    .local v9, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v9, :cond_546

    :try_start_541
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v10
    :try_end_545
    .catchall {:try_start_541 .. :try_end_545} :catchall_523

    goto :goto_547

    :cond_546
    const/4 v10, 0x0

    .line 3669
    .local v10, "flags":I
    :goto_547
    const/4 v11, 0x0

    .line 3671
    .local v11, "wasChanged":Z
    move/from16 v26, v2

    :try_start_54a
    iget-object v2, v12, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 3672
    invoke-virtual {v15, v2, v5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v2

    and-int/lit16 v2, v2, 0x3800

    if-eqz v2, :cond_556

    const/4 v2, 0x1

    goto :goto_557

    :cond_556
    const/4 v2, 0x0

    .line 3674
    .local v2, "restrictionExempt":Z
    :goto_557
    move/from16 v32, v11

    .end local v11    # "wasChanged":Z
    .local v32, "wasChanged":Z
    iget-object v11, v12, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v15, v11, v5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v11

    and-int/lit16 v11, v11, 0x4000

    if-eqz v11, :cond_565

    const/4 v11, 0x1

    goto :goto_566

    :cond_565
    const/4 v11, 0x0

    .line 3678
    .local v11, "restrictionApplied":Z
    :goto_566
    sget-boolean v33, Lcom/android/server/pm/permission/PermissionManagerService;->sIsBvtBuild:Z
    :try_end_568
    .catchall {:try_start_54a .. :try_end_568} :catchall_65d

    if-eqz v33, :cond_596

    .line 3679
    or-int/lit8 v10, v10, 0x20

    .line 3680
    move/from16 v33, v10

    .end local v10    # "flags":I
    .local v33, "flags":I
    :try_start_56e
    invoke-virtual {v13, v12, v5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v10
    :try_end_572
    .catchall {:try_start_56e .. :try_end_572} :catchall_582

    move-object/from16 v34, v14

    const/4 v14, -0x1

    .end local v14    # "currentUserIds":[I
    .local v34, "currentUserIds":[I
    if-eq v10, v14, :cond_57e

    .line 3682
    const/4 v10, 0x1

    move/from16 v32, v10

    move/from16 v10, v33

    .end local v32    # "wasChanged":Z
    .local v10, "wasChanged":Z
    goto/16 :goto_62e

    .line 3680
    .end local v10    # "wasChanged":Z
    .restart local v32    # "wasChanged":Z
    :cond_57e
    move/from16 v10, v33

    goto/16 :goto_62e

    .line 3959
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v2    # "restrictionExempt":Z
    .end local v5    # "userId":I
    .end local v6    # "permissionPolicyInitialized":Z
    .end local v8    # "perm":Ljava/lang/String;
    .end local v9    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v11    # "restrictionApplied":Z
    .end local v12    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v31    # "grant":I
    .end local v32    # "wasChanged":Z
    .end local v33    # "flags":I
    .end local v34    # "currentUserIds":[I
    .restart local v14    # "currentUserIds":[I
    :catchall_582
    move-exception v0

    move-object/from16 v34, v14

    move-object/from16 v14, p1

    move/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move-object v12, v7

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v10, v35

    .end local v14    # "currentUserIds":[I
    .restart local v34    # "currentUserIds":[I
    goto/16 :goto_896

    .line 3686
    .end local v34    # "currentUserIds":[I
    .restart local v0    # "hardRestricted":Z
    .restart local v1    # "softRestricted":Z
    .restart local v2    # "restrictionExempt":Z
    .restart local v5    # "userId":I
    .restart local v6    # "permissionPolicyInitialized":Z
    .restart local v8    # "perm":Ljava/lang/String;
    .restart local v9    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v10, "flags":I
    .restart local v11    # "restrictionApplied":Z
    .restart local v12    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v14    # "currentUserIds":[I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v31    # "grant":I
    .restart local v32    # "wasChanged":Z
    :cond_596
    move-object/from16 v34, v14

    .end local v14    # "currentUserIds":[I
    .restart local v34    # "currentUserIds":[I
    if-eqz v17, :cond_5f4

    .line 3688
    if-eqz v6, :cond_5ba

    if-eqz v0, :cond_5ba

    .line 3689
    if-nez v2, :cond_5c7

    .line 3690
    if-eqz v9, :cond_5b2

    :try_start_5a2
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v14

    if-eqz v14, :cond_5b2

    .line 3691
    invoke-virtual {v13, v12, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v14

    const/4 v7, -0x1

    if-eq v14, v7, :cond_5b2

    .line 3693
    const/4 v7, 0x1

    move/from16 v32, v7

    .line 3695
    :cond_5b2
    if-nez v11, :cond_5c7

    .line 3696
    or-int/lit16 v10, v10, 0x4000

    .line 3697
    const/4 v7, 0x1

    move/from16 v32, v7

    .end local v32    # "wasChanged":Z
    .local v7, "wasChanged":Z
    goto :goto_5c7

    .line 3701
    .end local v7    # "wasChanged":Z
    .restart local v32    # "wasChanged":Z
    :cond_5ba
    if-eqz v6, :cond_5c7

    if-eqz v1, :cond_5c7

    .line 3704
    if-nez v2, :cond_5c7

    if-nez v11, :cond_5c7

    .line 3705
    or-int/lit16 v10, v10, 0x4000

    .line 3706
    const/4 v7, 0x1

    move/from16 v32, v7

    .line 3711
    :cond_5c7
    :goto_5c7
    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_5d1

    .line 3712
    and-int/lit8 v7, v10, -0x41

    .line 3713
    .end local v10    # "flags":I
    .local v7, "flags":I
    const/4 v10, 0x1

    move/from16 v32, v10

    move v10, v7

    .line 3716
    .end local v7    # "flags":I
    .restart local v10    # "flags":I
    :cond_5d1
    and-int/lit8 v7, v10, 0x8

    if-eqz v7, :cond_5db

    .line 3717
    and-int/lit8 v10, v10, -0x9

    .line 3718
    const/4 v7, 0x1

    move/from16 v32, v7

    .end local v32    # "wasChanged":Z
    .local v7, "wasChanged":Z
    goto :goto_62e

    .line 3720
    .end local v7    # "wasChanged":Z
    .restart local v32    # "wasChanged":Z
    :cond_5db
    if-eqz v6, :cond_5e1

    if-eqz v0, :cond_5e1

    if-eqz v2, :cond_62e

    .line 3722
    :cond_5e1
    if-eqz v9, :cond_62e

    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v7

    if-eqz v7, :cond_62e

    .line 3723
    invoke-virtual {v13, v12, v5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v7

    const/4 v14, -0x1

    if-ne v7, v14, :cond_62e

    .line 3725
    const/4 v7, 0x1

    move/from16 v32, v7

    .end local v32    # "wasChanged":Z
    .restart local v7    # "wasChanged":Z
    goto :goto_62e

    .line 3730
    .end local v7    # "wasChanged":Z
    .restart local v32    # "wasChanged":Z
    :cond_5f4
    if-nez v9, :cond_60d

    .line 3732
    const-string v7, "android"

    .line 3733
    invoke-virtual {v12}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v14

    .line 3732
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60d

    .line 3734
    invoke-virtual {v12}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_60d

    .line 3735
    or-int/lit8 v10, v10, 0x48

    .line 3737
    const/4 v7, 0x1

    move/from16 v32, v7

    .line 3742
    :cond_60d
    iget-object v7, v12, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v7, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_61f

    .line 3743
    invoke-virtual {v13, v12, v5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v7

    const/4 v14, -0x1

    if-eq v7, v14, :cond_61f

    .line 3745
    const/4 v7, 0x1

    move/from16 v32, v7

    .line 3750
    :cond_61f
    if-eqz v6, :cond_62e

    if-nez v0, :cond_625

    if-eqz v1, :cond_62e

    :cond_625
    if-nez v2, :cond_62e

    if-nez v11, :cond_62e

    .line 3753
    or-int/lit16 v10, v10, 0x4000

    .line 3754
    const/4 v7, 0x1

    move/from16 v32, v7

    .line 3759
    :cond_62e
    :goto_62e
    if-eqz v6, :cond_643

    .line 3760
    if-nez v0, :cond_634

    if-eqz v1, :cond_636

    :cond_634
    if-eqz v2, :cond_643

    .line 3761
    :cond_636
    if-eqz v11, :cond_643

    .line 3762
    and-int/lit16 v7, v10, -0x4001

    .line 3764
    .end local v10    # "flags":I
    .local v7, "flags":I
    if-nez v17, :cond_640

    .line 3765
    or-int/lit8 v7, v7, 0x40

    move v10, v7

    goto :goto_641

    .line 3764
    :cond_640
    move v10, v7

    .line 3767
    .end local v7    # "flags":I
    .restart local v10    # "flags":I
    :goto_641
    const/16 v32, 0x1

    .line 3772
    :cond_643
    if-eqz v32, :cond_64a

    .line 3773
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    move-object v3, v7

    .line 3776
    :cond_64a
    const v7, 0x3fbff

    invoke-virtual {v13, v12, v5, v7, v10}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_650
    .catchall {:try_start_5a2 .. :try_end_650} :catchall_6d8

    .line 3657
    nop

    .end local v2    # "restrictionExempt":Z
    .end local v5    # "userId":I
    .end local v6    # "permissionPolicyInitialized":Z
    .end local v9    # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v10    # "flags":I
    .end local v11    # "restrictionApplied":Z
    .end local v32    # "wasChanged":Z
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v7, p0

    move-object/from16 v36, v8

    move/from16 v2, v26

    move-object/from16 v14, v34

    goto/16 :goto_511

    .line 3959
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v8    # "perm":Ljava/lang/String;
    .end local v12    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v31    # "grant":I
    .end local v34    # "currentUserIds":[I
    .restart local v14    # "currentUserIds":[I
    :catchall_65d
    move-exception v0

    move-object/from16 v34, v14

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v10, v35

    .end local v14    # "currentUserIds":[I
    .restart local v34    # "currentUserIds":[I
    goto/16 :goto_896

    .line 3657
    .end local v34    # "currentUserIds":[I
    .restart local v0    # "hardRestricted":Z
    .restart local v1    # "softRestricted":Z
    .restart local v12    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v14    # "currentUserIds":[I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v31    # "grant":I
    .restart local v36    # "perm":Ljava/lang/String;
    :cond_672
    move-object/from16 v34, v14

    move-object/from16 v8, v36

    .line 3779
    .end local v0    # "hardRestricted":Z
    .end local v1    # "softRestricted":Z
    .end local v14    # "currentUserIds":[I
    .end local v36    # "perm":Ljava/lang/String;
    .restart local v8    # "perm":Ljava/lang/String;
    .restart local v34    # "currentUserIds":[I
    move-object/from16 v8, p3

    move-object v2, v3

    const/4 v7, 0x0

    goto/16 :goto_78b

    .line 3959
    .end local v3    # "updatedUserIds":[I
    .end local v8    # "perm":Ljava/lang/String;
    .end local v12    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v31    # "grant":I
    .end local v34    # "currentUserIds":[I
    .local v11, "updatedUserIds":[I
    .restart local v14    # "currentUserIds":[I
    :catchall_67c
    move-exception v0

    move-object/from16 v34, v14

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move-object v3, v11

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v10, v35

    .end local v14    # "currentUserIds":[I
    .restart local v34    # "currentUserIds":[I
    goto/16 :goto_896

    .line 3634
    .end local v34    # "currentUserIds":[I
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v1, "grant":I
    .restart local v4    # "perm":Ljava/lang/String;
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_692
    move/from16 v31, v1

    move-object v8, v4

    move-object/from16 v35, v12

    move-object/from16 v34, v14

    move-object/from16 v12, v26

    .end local v1    # "grant":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v14    # "currentUserIds":[I
    .end local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v8    # "perm":Ljava/lang/String;
    .local v12, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v31    # "grant":I
    .restart local v34    # "currentUserIds":[I
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_69b
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0
    :try_end_6a4
    .catchall {:try_start_69b .. :try_end_6a4} :catchall_726

    move-object v3, v11

    const/4 v2, 0x0

    .end local v11    # "updatedUserIds":[I
    .restart local v3    # "updatedUserIds":[I
    :goto_6a6
    if-ge v2, v1, :cond_6c2

    :try_start_6a8
    aget v4, v0, v2

    .line 3635
    .local v4, "userId":I
    invoke-virtual {v15, v8, v4}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v5

    if-eqz v5, :cond_6bf

    .line 3638
    invoke-virtual {v15, v12, v4}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 3639
    const v5, 0x3fbff

    const/4 v6, 0x0

    invoke-virtual {v15, v12, v4, v5, v6}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 3642
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v3, v5

    .line 3634
    .end local v4    # "userId":I
    :cond_6bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a6

    .line 3647
    :cond_6c2
    invoke-virtual {v13, v12}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0
    :try_end_6c6
    .catchall {:try_start_6a8 .. :try_end_6c6} :catchall_6d8

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6d2

    .line 3649
    const/4 v0, 0x1

    move-object/from16 v8, p3

    move/from16 v16, v0

    move-object v2, v3

    const/4 v7, 0x0

    .end local v16    # "changedInstallPermission":Z
    .local v0, "changedInstallPermission":Z
    goto/16 :goto_78b

    .line 3647
    .end local v0    # "changedInstallPermission":Z
    .restart local v16    # "changedInstallPermission":Z
    :cond_6d2
    move-object/from16 v8, p3

    move-object v2, v3

    const/4 v7, 0x0

    goto/16 :goto_78b

    .line 3959
    .end local v8    # "perm":Ljava/lang/String;
    .end local v12    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v31    # "grant":I
    :catchall_6d8
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v10, v35

    goto/16 :goto_896

    .end local v3    # "updatedUserIds":[I
    .end local v34    # "currentUserIds":[I
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v11    # "updatedUserIds":[I
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    :catchall_6eb
    move-exception v0

    move-object/from16 v34, v14

    move-object/from16 v14, p1

    move/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move-object v3, v11

    move-object v10, v12

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v12, p0

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .restart local v34    # "currentUserIds":[I
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_896

    .line 3915
    .end local v34    # "currentUserIds":[I
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v1    # "grant":I
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v18    # "permName":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    .restart local v24    # "allowedSig":Z
    .restart local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v28    # "perm":Ljava/lang/String;
    .restart local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_700
    move-object/from16 v35, v12

    move-object/from16 v34, v14

    move-object/from16 v12, v26

    move-object/from16 v8, v28

    .end local v14    # "currentUserIds":[I
    .end local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v28    # "perm":Ljava/lang/String;
    .restart local v8    # "perm":Ljava/lang/String;
    .local v12, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v34    # "currentUserIds":[I
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_708
    invoke-virtual {v13, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_71e

    .line 3918
    const v0, 0x3fbff

    const/4 v7, 0x0

    invoke-virtual {v13, v12, v2, v0, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 3920
    const/4 v0, 0x1

    move-object/from16 v8, p3

    move/from16 v16, v0

    move-object v2, v11

    .end local v16    # "changedInstallPermission":Z
    .restart local v0    # "changedInstallPermission":Z
    goto/16 :goto_78b

    .line 3929
    .end local v0    # "changedInstallPermission":Z
    .restart local v16    # "changedInstallPermission":Z
    :cond_71e
    const/4 v7, 0x0

    invoke-virtual {v12}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z
    :try_end_722
    .catchall {:try_start_708 .. :try_end_722} :catchall_726

    move-object/from16 v8, p3

    goto/16 :goto_78a

    .line 3959
    .end local v1    # "grant":I
    .end local v8    # "perm":Ljava/lang/String;
    .end local v12    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v24    # "allowedSig":Z
    .end local v30    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_726
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move-object v3, v11

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v10, v35

    goto/16 :goto_896

    .end local v11    # "updatedUserIds":[I
    .end local v29    # "runtimePermissionsRevoked":Z
    .end local v34    # "currentUserIds":[I
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .local v19, "updatedUserIds":[I
    .restart local v21    # "runtimePermissionsRevoked":Z
    :catchall_73a
    move-exception v0

    move-object/from16 v27, v5

    move-object/from16 v34, v14

    move-object/from16 v11, v19

    move-object/from16 v14, p1

    move/from16 v9, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    move-object v3, v11

    move-object v10, v12

    move/from16 v2, v16

    move/from16 v4, v21

    move-object/from16 v12, p0

    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v19    # "updatedUserIds":[I
    .end local v21    # "runtimePermissionsRevoked":Z
    .restart local v11    # "updatedUserIds":[I
    .restart local v29    # "runtimePermissionsRevoked":Z
    .restart local v34    # "currentUserIds":[I
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_896

    .line 3506
    .end local v11    # "updatedUserIds":[I
    .end local v29    # "runtimePermissionsRevoked":Z
    .end local v34    # "currentUserIds":[I
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v0, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "permName":Ljava/lang/String;
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v3, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v4, "N":I
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .restart local v17    # "appSupportsRuntimePermissions":Z
    .restart local v19    # "updatedUserIds":[I
    .local v20, "i":I
    .restart local v21    # "runtimePermissionsRevoked":Z
    :cond_753
    move-object/from16 v18, v1

    move-object/from16 v25, v3

    move/from16 v23, v4

    move-object/from16 v27, v5

    move-object/from16 v35, v12

    move-object/from16 v34, v14

    move-object/from16 v11, v19

    move/from16 v19, v20

    move/from16 v29, v21

    const/4 v7, 0x0

    move-object/from16 v20, v0

    move-object v12, v2

    move/from16 v21, v6

    .line 3507
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "permName":Ljava/lang/String;
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v4    # "N":I
    .end local v14    # "currentUserIds":[I
    .end local v21    # "runtimePermissionsRevoked":Z
    .restart local v11    # "updatedUserIds":[I
    .local v12, "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v18    # "permName":Ljava/lang/String;
    .local v19, "i":I
    .local v20, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    .local v25, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v29    # "runtimePermissionsRevoked":Z
    .restart local v34    # "currentUserIds":[I
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_76b
    move-object/from16 v8, p3

    if-eqz v8, :cond_78a

    .line 3508
    :try_start_76f
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3507
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_777
    .catchall {:try_start_76f .. :try_end_777} :catchall_778

    goto :goto_78a

    .line 3959
    .end local v12    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17    # "appSupportsRuntimePermissions":Z
    .end local v18    # "permName":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v25    # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_778
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move/from16 v9, p2

    move-object/from16 v1, p4

    move-object v3, v11

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v10, v35

    goto/16 :goto_896

    .line 3494
    .restart local v19    # "i":I
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    :cond_78a
    :goto_78a
    move-object v2, v11

    .end local v11    # "updatedUserIds":[I
    .local v2, "updatedUserIds":[I
    :goto_78b
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v7, p0

    move/from16 v9, p2

    move-object/from16 v11, p4

    move-object v10, v8

    move-object/from16 v0, v20

    move/from16 v4, v23

    move-object/from16 v5, v27

    move/from16 v6, v29

    move-object/from16 v14, v34

    move-object/from16 v12, v35

    move-object/from16 v8, p1

    .end local v19    # "i":I
    .local v3, "i":I
    goto/16 :goto_156

    .line 3959
    .end local v2    # "updatedUserIds":[I
    .end local v3    # "i":I
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    .end local v29    # "runtimePermissionsRevoked":Z
    .end local v34    # "currentUserIds":[I
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v6, "runtimePermissionsRevoked":Z
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    .local v19, "updatedUserIds":[I
    :catchall_7a4
    move-exception v0

    move-object/from16 v27, v5

    move-object v8, v10

    move-object/from16 v34, v14

    move-object/from16 v11, v19

    move-object/from16 v14, p1

    move/from16 v9, p2

    move-object/from16 v1, p4

    move v4, v6

    move-object v3, v11

    move-object v10, v12

    move/from16 v2, v16

    move-object/from16 v12, p0

    .end local v6    # "runtimePermissionsRevoked":Z
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .end local v19    # "updatedUserIds":[I
    .restart local v11    # "updatedUserIds":[I
    .restart local v29    # "runtimePermissionsRevoked":Z
    .restart local v34    # "currentUserIds":[I
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_896

    .end local v11    # "updatedUserIds":[I
    .end local v29    # "runtimePermissionsRevoked":Z
    .end local v34    # "currentUserIds":[I
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "updatedUserIds":[I
    .restart local v6    # "runtimePermissionsRevoked":Z
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    :catchall_7bb
    move-exception v0

    move-object v11, v2

    move-object/from16 v27, v5

    move-object v8, v10

    move-object/from16 v34, v14

    move-object/from16 v14, p1

    move/from16 v9, p2

    move-object/from16 v1, p4

    move v4, v6

    move-object v3, v11

    move-object v10, v12

    move/from16 v2, v16

    move-object/from16 v12, p0

    .end local v2    # "updatedUserIds":[I
    .end local v6    # "runtimePermissionsRevoked":Z
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .restart local v11    # "updatedUserIds":[I
    .restart local v29    # "runtimePermissionsRevoked":Z
    .restart local v34    # "currentUserIds":[I
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_896

    .line 3494
    .end local v11    # "updatedUserIds":[I
    .end local v29    # "runtimePermissionsRevoked":Z
    .end local v34    # "currentUserIds":[I
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "updatedUserIds":[I
    .restart local v3    # "i":I
    .restart local v4    # "N":I
    .restart local v6    # "runtimePermissionsRevoked":Z
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    :cond_7d1
    move-object/from16 v20, v0

    move-object v11, v2

    move/from16 v19, v3

    move/from16 v23, v4

    move-object/from16 v27, v5

    move/from16 v29, v6

    move-object v8, v10

    move-object/from16 v35, v12

    move-object/from16 v34, v14

    const/4 v7, 0x0

    .line 3946
    .end local v0    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "updatedUserIds":[I
    .end local v3    # "i":I
    .end local v4    # "N":I
    .end local v6    # "runtimePermissionsRevoked":Z
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .restart local v11    # "updatedUserIds":[I
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    .restart local v29    # "runtimePermissionsRevoked":Z
    .restart local v34    # "currentUserIds":[I
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v16, :cond_7e9

    move/from16 v9, p2

    if-eqz v9, :cond_808

    goto :goto_7eb

    :cond_7e9
    move/from16 v9, p2

    :goto_7eb
    :try_start_7eb
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v0
    :try_end_7ef
    .catchall {:try_start_7eb .. :try_end_7ef} :catchall_87b

    if-nez v0, :cond_808

    .line 3947
    :try_start_7f1
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0
    :try_end_7f5
    .catchall {:try_start_7f1 .. :try_end_7f5} :catchall_7f8

    if-eqz v0, :cond_812

    goto :goto_808

    .line 3959
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    :catchall_7f8
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v1, p4

    move-object v3, v11

    move/from16 v2, v16

    move/from16 v4, v29

    move-object/from16 v10, v35

    goto/16 :goto_896

    .line 3947
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    :cond_808
    :goto_808
    :try_start_808
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0
    :try_end_810
    .catchall {:try_start_808 .. :try_end_810} :catchall_87b

    if-eqz v0, :cond_827

    .line 3951
    :cond_812
    move-object/from16 v10, v35

    const/4 v0, 0x1

    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v10, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_815
    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V
    :try_end_818
    .catchall {:try_start_815 .. :try_end_818} :catchall_819

    goto :goto_829

    .line 3959
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    :catchall_819
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v1, p4

    move-object v3, v11

    move/from16 v2, v16

    move/from16 v4, v29

    goto/16 :goto_896

    .line 3947
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "N":I
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_827
    move-object/from16 v10, v35

    .line 3954
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_829
    move-object/from16 v12, p0

    move-object/from16 v14, p1

    :try_start_82d
    invoke-direct {v12, v13, v14, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I)[I

    move-result-object v6
    :try_end_831
    .catchall {:try_start_82d .. :try_end_831} :catchall_871

    .line 3956
    .end local v11    # "updatedUserIds":[I
    .local v6, "updatedUserIds":[I
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, v20

    :try_start_839
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;[I)[I

    move-result-object v0
    :try_end_83d
    .catchall {:try_start_839 .. :try_end_83d} :catchall_868

    move-object v3, v0

    .line 3958
    .end local v6    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    :try_start_83e
    invoke-direct {v12, v14, v9, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkIfLegacyStorageOpsNeedToBeUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z[I)[I

    move-result-object v0

    move-object v3, v0

    .line 3959
    .end local v20    # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "N":I
    monitor-exit v27
    :try_end_844
    .catchall {:try_start_83e .. :try_end_844} :catchall_860

    .line 3964
    move-object/from16 v1, p4

    if-eqz v1, :cond_84e

    .line 3965
    move/from16 v4, v29

    .end local v29    # "runtimePermissionsRevoked":Z
    .local v4, "runtimePermissionsRevoked":Z
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    goto :goto_850

    .line 3964
    .end local v4    # "runtimePermissionsRevoked":Z
    .restart local v29    # "runtimePermissionsRevoked":Z
    :cond_84e
    move/from16 v4, v29

    .line 3968
    .end local v29    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    :goto_850
    array-length v0, v3

    :goto_851
    if-ge v7, v0, :cond_85f

    aget v2, v3, v7

    .line 3969
    .local v2, "userId":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 3968
    .end local v2    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_851

    .line 3971
    :cond_85f
    return-void

    .line 3959
    .end local v4    # "runtimePermissionsRevoked":Z
    .restart local v29    # "runtimePermissionsRevoked":Z
    :catchall_860
    move-exception v0

    move-object/from16 v1, p4

    move/from16 v4, v29

    move/from16 v2, v16

    .end local v29    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    goto :goto_896

    .end local v3    # "updatedUserIds":[I
    .end local v4    # "runtimePermissionsRevoked":Z
    .restart local v6    # "updatedUserIds":[I
    .restart local v29    # "runtimePermissionsRevoked":Z
    :catchall_868
    move-exception v0

    move-object/from16 v1, p4

    move/from16 v4, v29

    move-object v3, v6

    move/from16 v2, v16

    .end local v29    # "runtimePermissionsRevoked":Z
    .restart local v4    # "runtimePermissionsRevoked":Z
    goto :goto_896

    .end local v4    # "runtimePermissionsRevoked":Z
    .end local v6    # "updatedUserIds":[I
    .restart local v11    # "updatedUserIds":[I
    .restart local v29    # "runtimePermissionsRevoked":Z
    :catchall_871
    move-exception v0

    move-object/from16 v1, p4

    move-object v2, v11

    move/from16 v4, v29

    move-object v3, v2

    move/from16 v2, v16

    .end local v11    # "updatedUserIds":[I
    .end local v29    # "runtimePermissionsRevoked":Z
    .local v2, "updatedUserIds":[I
    .restart local v4    # "runtimePermissionsRevoked":Z
    goto :goto_896

    .end local v2    # "updatedUserIds":[I
    .end local v4    # "runtimePermissionsRevoked":Z
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v11    # "updatedUserIds":[I
    .restart local v29    # "runtimePermissionsRevoked":Z
    .restart local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_87b
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v1, p4

    move-object v2, v11

    move/from16 v4, v29

    move-object/from16 v10, v35

    move-object v3, v2

    move/from16 v2, v16

    .end local v11    # "updatedUserIds":[I
    .end local v29    # "runtimePermissionsRevoked":Z
    .end local v35    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "updatedUserIds":[I
    .restart local v4    # "runtimePermissionsRevoked":Z
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_896

    .end local v4    # "runtimePermissionsRevoked":Z
    .end local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "changedInstallPermission":Z
    .end local v34    # "currentUserIds":[I
    .local v2, "changedInstallPermission":Z
    .restart local v3    # "updatedUserIds":[I
    .local v6, "runtimePermissionsRevoked":Z
    .restart local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "currentUserIds":[I
    :catchall_88b
    move-exception v0

    move-object/from16 v27, v5

    move v4, v6

    move-object v1, v11

    move-object/from16 v34, v14

    move-object v14, v8

    move-object v8, v10

    move-object v10, v12

    move-object v12, v7

    .end local v6    # "runtimePermissionsRevoked":Z
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "currentUserIds":[I
    .restart local v4    # "runtimePermissionsRevoked":Z
    .restart local v10    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v34    # "currentUserIds":[I
    :goto_896
    :try_start_896
    monitor-exit v27
    :try_end_897
    .catchall {:try_start_896 .. :try_end_897} :catchall_898

    throw v0

    :catchall_898
    move-exception v0

    goto :goto_896
.end method

.method private restoreRuntimePermissions([BLandroid/os/UserHandle;)V
    .registers 6
    .param p1, "backup"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2317
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2318
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2319
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, p1, p2}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    .line 2320
    monitor-exit v0

    .line 2321
    return-void

    .line 2320
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 16
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 5206
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5207
    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {v0, p1, v1, v2, v1}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5209
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_12

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_12

    .line 5211
    return-void

    .line 5214
    :cond_12
    invoke-direct {p0, p2, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_44

    .line 5217
    const/16 v6, 0x3e8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v7, p4

    move-object v9, p5

    :try_start_21
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_24} :catch_25

    .line 5231
    goto :goto_44

    .line 5224
    :catch_25
    move-exception v1

    .line 5225
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to revoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5233
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_44
    :goto_44
    return-void
.end method

.method private revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I)[I
    .registers 20
    .param p1, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "updatedUserIds"    # [I

    .line 3987
    move-object/from16 v0, p1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3988
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-lt v2, v4, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    move v2, v3

    .line 3991
    .local v2, "supportsRuntimePermissions":Z
    :goto_12
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    .line 3992
    .local v4, "users":[I
    array-length v5, v4

    .line 3993
    .local v5, "numUsers":I
    const/4 v6, 0x0

    move v7, v6

    move-object/from16 v6, p3

    .end local p3    # "updatedUserIds":[I
    .local v6, "updatedUserIds":[I
    .local v7, "i":I
    :goto_1f
    if-ge v7, v5, :cond_80

    .line 3994
    aget v8, v4, v7

    .line 3996
    .local v8, "userId":I
    invoke-virtual {v0, v8}, Lcom/android/server/pm/permission/PermissionsState;->getPermissions(I)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3997
    .local v10, "permission":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_78

    .line 3998
    invoke-virtual {v0, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_75

    .line 3999
    invoke-virtual {v0, v10, v8}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v11

    .line 4001
    .local v11, "flags":I
    and-int/lit16 v12, v11, 0x80

    if-eqz v12, :cond_72

    .line 4002
    move-object/from16 v12, p0

    iget-object v13, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v13, v10}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v13

    .line 4004
    .local v13, "bp":Lcom/android/server/pm/permission/BasePermission;
    const/16 v14, 0x80

    .line 4006
    .local v14, "flagsToRemove":I
    and-int/lit8 v15, v11, 0x34

    if-nez v15, :cond_6a

    if-eqz v2, :cond_6a

    .line 4008
    invoke-virtual {v0, v13, v8}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v15

    .line 4009
    .local v15, "revokeResult":I
    nop

    .line 4017
    or-int/lit8 v14, v14, 0x3

    .line 4020
    .end local v15    # "revokeResult":I
    :cond_6a
    invoke-virtual {v0, v13, v8, v14, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 4021
    invoke-static {v6, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    goto :goto_7a

    .line 4001
    .end local v13    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v14    # "flagsToRemove":I
    :cond_72
    move-object/from16 v12, p0

    goto :goto_7a

    .line 3998
    .end local v11    # "flags":I
    :cond_75
    move-object/from16 v12, p0

    goto :goto_7a

    .line 3997
    :cond_78
    move-object/from16 v12, p0

    .line 4025
    .end local v10    # "permission":Ljava/lang/String;
    :goto_7a
    goto :goto_2b

    .line 3996
    :cond_7b
    move-object/from16 v12, p0

    .line 3993
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_80
    move-object/from16 v12, p0

    .line 4028
    .end local v7    # "i":I
    return-object v6
.end method

.method private revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 23
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 1695
    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v10}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const-string v12, "PackageManager"

    if-nez v0, :cond_28

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    return-void

    .line 1700
    :cond_28
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "revokeRuntimePermission"

    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1710
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1711
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1713
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v2, "Unknown package: "

    if-eqz v0, :cond_158

    if-nez v1, :cond_58

    move/from16 v4, p4

    move-object/from16 v13, p6

    goto/16 :goto_15c

    .line 1717
    :cond_58
    iget-object v3, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v4, p4

    invoke-virtual {v3, v0, v4, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v3

    if-nez v3, :cond_141

    .line 1720
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 1721
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v2, :cond_128

    .line 1725
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V

    .line 1731
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v5, 0x17

    if-ge v3, v5, :cond_7c

    .line 1732
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 1733
    return-void

    .line 1736
    :cond_7c
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 1738
    .local v3, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v3, v8, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v5

    .line 1740
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x10

    const-string v12, " for package "

    if-eqz v6, :cond_b0

    .line 1741
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v13, 0x3e8

    if-ne v6, v13, :cond_93

    goto :goto_b0

    .line 1742
    :cond_93
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1745
    :cond_b0
    :goto_b0
    if-nez p3, :cond_d4

    and-int/lit8 v6, v5, 0x4

    if-nez v6, :cond_b7

    goto :goto_d4

    .line 1746
    :cond_b7
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot revoke policy fixed permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1750
    :cond_d4
    :goto_d4
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v6

    const/4 v12, -0x1

    if-eqz v6, :cond_e9

    .line 1753
    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v6

    if-eq v6, v12, :cond_e8

    .line 1755
    if-eqz v11, :cond_e8

    .line 1756
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionRevoked()V

    .line 1759
    :cond_e8
    return-void

    .line 1763
    :cond_e9
    invoke-virtual {v3, v8, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_f0

    .line 1764
    return-void

    .line 1767
    :cond_f0
    invoke-virtual {v3, v2, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    if-ne v6, v12, :cond_f7

    .line 1769
    return-void

    .line 1772
    :cond_f7
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_102

    .line 1773
    const/16 v6, 0x4dd

    invoke-direct {p0, v6, v8, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1776
    :cond_102
    if-eqz v11, :cond_117

    .line 1777
    nop

    .line 1778
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 1777
    invoke-static {v10, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    move-object/from16 v13, p6

    invoke-virtual {v11, v6, v10, v13}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    goto :goto_119

    .line 1776
    :cond_117
    move-object/from16 v13, p6

    .line 1781
    :goto_119
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_122

    .line 1782
    invoke-direct {p0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1785
    :cond_122
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v9, v8, v10, v6}, Lcom/android/server/pm/PmLog;->logOwnerPermissionRevoked(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1787
    return-void

    .line 1722
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "flags":I
    :cond_128
    move-object/from16 v13, p6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1718
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_141
    move-object/from16 v13, p6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1713
    :cond_158
    move/from16 v4, p4

    move-object/from16 v13, p6

    .line 1714
    :goto_15c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    return-void
.end method

.method private revokeRuntimePermissionsIfGroupChanged(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 34
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 3102
    .local p3, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v10

    .line 3103
    .local v10, "numOldPackagePermissions":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v10}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v11, v0

    .line 3106
    .local v11, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v10, :cond_35

    .line 3107
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 3109
    .local v1, "permission":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3110
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3111
    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3110
    invoke-virtual {v11, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    .end local v1    # "permission":Landroid/content/pm/parsing/component/ParsedPermission;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 3115
    .end local v0    # "i":I
    :cond_35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 3116
    .local v12, "callingUid":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v13

    .line 3117
    .local v13, "numNewPackagePermissions":I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "newPermissionNum":I
    :goto_43
    if-ge v14, v13, :cond_1a9

    .line 3119
    nop

    .line 3120
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/parsing/component/ParsedPermission;

    .line 3121
    .local v15, "newPermission":Landroid/content/pm/parsing/component/ParsedPermission;
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtection()I

    move-result v16

    .line 3123
    .local v16, "newProtection":I
    and-int/lit8 v0, v16, 0x1

    if-eqz v0, :cond_19d

    .line 3124
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3126
    .local v8, "permissionName":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v0

    if-nez v0, :cond_65

    .line 3127
    const/4 v0, 0x0

    goto :goto_6d

    :cond_65
    invoke-virtual {v15}, Landroid/content/pm/parsing/component/ParsedPermission;->getParsedPermissionGroup()Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_6d
    move-object v7, v0

    .line 3128
    .local v7, "newPermissionGroupName":Ljava/lang/String;
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 3131
    .local v6, "oldPermissionGroupName":Ljava/lang/String;
    if-eqz v7, :cond_193

    .line 3132
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_189

    .line 3133
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 3134
    .local v5, "userIds":[I
    array-length v4, v5

    .line 3135
    .local v4, "numUserIds":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "userIdNum":I
    :goto_86
    if-ge v3, v4, :cond_179

    .line 3136
    aget v2, v5, v3

    .line 3138
    .local v2, "userId":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3139
    .local v1, "numPackages":I
    const/4 v0, 0x0

    move/from16 v17, v4

    move v4, v0

    .local v4, "packageNum":I
    .local v17, "numUserIds":I
    :goto_92
    if-ge v4, v1, :cond_15c

    .line 3140
    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v10    # "numOldPackagePermissions":I
    .local v18, "numOldPackagePermissions":I
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move/from16 v19, v4

    .end local v4    # "packageNum":I
    .local v19, "packageNum":I
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 3141
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v9, v8, v4, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    .line 3143
    .local v20, "permissionState":I
    if-nez v20, :cond_139

    .line 3144
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v22, 0x0

    const-string v23, "72710897"

    aput-object v23, v0, v22

    .line 3145
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v0, v23

    const/16 v22, 0x2

    move/from16 v23, v1

    .end local v1    # "numPackages":I
    .local v23, "numPackages":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v2

    .end local v2    # "userId":I
    .local v24, "userId":I
    const-string v2, "Revoking permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the group changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v22

    .line 3144
    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3152
    const/4 v0, 0x0

    const/16 v21, 0x0

    move/from16 v22, v23

    .end local v23    # "numPackages":I
    .local v22, "numPackages":I
    move-object/from16 v1, p0

    move/from16 v23, v24

    .end local v24    # "userId":I
    .local v23, "userId":I
    move-object v2, v8

    move/from16 v24, v3

    .end local v3    # "userIdNum":I
    .local v24, "userIdNum":I
    move-object v3, v4

    move-object/from16 v25, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v25, "packageName":Ljava/lang/String;
    move v4, v0

    move-object/from16 v26, v5

    .end local v5    # "userIds":[I
    .local v26, "userIds":[I
    move v5, v12

    move-object/from16 v27, v6

    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .local v27, "oldPermissionGroupName":Ljava/lang/String;
    move/from16 v6, v23

    move-object/from16 v28, v7

    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .local v28, "newPermissionGroupName":Ljava/lang/String;
    move-object/from16 v7, v21

    move-object v9, v8

    .end local v8    # "permissionName":Ljava/lang/String;
    .local v9, "permissionName":Ljava/lang/String;
    move-object/from16 v8, p4

    :try_start_111
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_114
    .catch Ljava/lang/IllegalArgumentException; {:try_start_111 .. :try_end_114} :catch_115

    .line 3157
    goto :goto_147

    .line 3154
    :catch_115
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 3155
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v25

    .end local v25    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_147

    .line 3143
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v22    # "numPackages":I
    .end local v23    # "userId":I
    .end local v24    # "userIdNum":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v1    # "numPackages":I
    .local v2, "userId":I
    .restart local v3    # "userIdNum":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "userIds":[I
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    :cond_139
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move-object v2, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    .line 3139
    .end local v1    # "numPackages":I
    .end local v2    # "userId":I
    .end local v3    # "userIdNum":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "userIds":[I
    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v20    # "permissionState":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v22    # "numPackages":I
    .restart local v23    # "userId":I
    .restart local v24    # "userIdNum":I
    .restart local v26    # "userIds":[I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    :goto_147
    add-int/lit8 v4, v19, 0x1

    move-object v8, v9

    move/from16 v10, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v9, p0

    .end local v19    # "packageNum":I
    .local v4, "packageNum":I
    goto/16 :goto_92

    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v18    # "numOldPackagePermissions":I
    .end local v22    # "numPackages":I
    .end local v23    # "userId":I
    .end local v24    # "userIdNum":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v1    # "numPackages":I
    .restart local v2    # "userId":I
    .restart local v3    # "userIdNum":I
    .restart local v5    # "userIds":[I
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_15c
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v19, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .line 3135
    .end local v1    # "numPackages":I
    .end local v2    # "userId":I
    .end local v3    # "userIdNum":I
    .end local v4    # "packageNum":I
    .end local v5    # "userIds":[I
    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v24    # "userIdNum":I
    .restart local v26    # "userIds":[I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    add-int/lit8 v3, v24, 0x1

    move/from16 v4, v17

    move/from16 v10, v18

    move-object/from16 v9, p0

    .end local v24    # "userIdNum":I
    .restart local v3    # "userIdNum":I
    goto/16 :goto_86

    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v17    # "numUserIds":I
    .end local v18    # "numOldPackagePermissions":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .local v4, "numUserIds":I
    .restart local v5    # "userIds":[I
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_179
    move/from16 v24, v3

    move/from16 v17, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v3    # "userIdNum":I
    .end local v4    # "numUserIds":I
    .end local v5    # "userIds":[I
    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v17    # "numUserIds":I
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v24    # "userIdNum":I
    .restart local v26    # "userIds":[I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_1a1

    .line 3132
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v17    # "numUserIds":I
    .end local v18    # "numOldPackagePermissions":I
    .end local v24    # "userIdNum":I
    .end local v26    # "userIds":[I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_189
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_1a1

    .line 3131
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v18    # "numOldPackagePermissions":I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v7    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v8    # "permissionName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_193
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object v9, v8

    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v6    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v7    # "newPermissionGroupName":Ljava/lang/String;
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v10    # "numOldPackagePermissions":I
    .restart local v9    # "permissionName":Ljava/lang/String;
    .restart local v18    # "numOldPackagePermissions":I
    .restart local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v28    # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_1a1

    .line 3123
    .end local v9    # "permissionName":Ljava/lang/String;
    .end local v18    # "numOldPackagePermissions":I
    .end local v27    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v28    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v10    # "numOldPackagePermissions":I
    :cond_19d
    move/from16 v18, v10

    move-object/from16 v10, p3

    .line 3118
    .end local v10    # "numOldPackagePermissions":I
    .end local v15    # "newPermission":Landroid/content/pm/parsing/component/ParsedPermission;
    .end local v16    # "newProtection":I
    .restart local v18    # "numOldPackagePermissions":I
    :goto_1a1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p0

    move/from16 v10, v18

    goto/16 :goto_43

    .line 3164
    .end local v14    # "newPermissionNum":I
    .end local v18    # "numOldPackagePermissions":I
    .restart local v10    # "numOldPackagePermissions":I
    :cond_1a9
    return-void
.end method

.method private revokeRuntimePermissionsIfPermissionDefinitionChanged(Ljava/util/List;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 35
    .param p3, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 3179
    .local p1, "permissionsToRevoke":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v10

    .line 3180
    .local v10, "userIds":[I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 3181
    .local v11, "numPermissions":I
    array-length v12, v10

    .line 3182
    .local v12, "numUserIds":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3183
    .local v13, "numPackages":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 3185
    .local v14, "callingUid":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "permNum":I
    :goto_17
    if-ge v15, v11, :cond_18a

    .line 3186
    move-object/from16 v8, p1

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 3187
    .local v7, "permName":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 3188
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v6, :cond_180

    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_34

    .line 3189
    move-object/from16 v17, v10

    goto/16 :goto_184

    .line 3191
    :cond_34
    const/4 v0, 0x0

    move v5, v0

    .local v5, "userIdNum":I
    :goto_36
    if-ge v5, v12, :cond_172

    .line 3192
    aget v3, v10, v5

    .line 3193
    .local v3, "userId":I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "packageNum":I
    :goto_3c
    if-ge v2, v13, :cond_161

    .line 3194
    move-object/from16 v1, p2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 3195
    .local v4, "packageName":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v17, v10

    const/4 v1, 0x0

    .end local v10    # "userIds":[I
    .local v17, "userIds":[I
    invoke-virtual {v0, v4, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v10

    .line 3196
    .local v10, "uid":I
    const/16 v0, 0x2710

    if-ge v10, v0, :cond_5f

    .line 3198
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v16, v5

    move-object/from16 v29, v6

    move-object v2, v7

    goto/16 :goto_151

    .line 3200
    :cond_5f
    invoke-direct {v9, v7, v4, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    .line 3202
    .local v18, "permissionState":I
    invoke-virtual {v9, v7, v4, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    .line 3203
    .local v19, "flags":I
    const v20, 0x8034

    .line 3207
    .local v20, "flagMask":I
    if-nez v18, :cond_147

    const v0, 0x8034

    and-int v0, v19, v0

    if-nez v0, :cond_147

    .line 3209
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v21, "154505240"

    const/16 v16, 0x0

    aput-object v21, v1, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v1, v22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v2

    .end local v2    # "packageNum":I
    .local v23, "packageNum":I
    const-string v2, "Revoking permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v3

    .end local v3    # "userId":I
    .local v24, "userId":I
    const-string v3, " from package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v25, v5

    .end local v5    # "userIdNum":I
    .local v25, "userIdNum":I
    const-string v5, " due to definition change"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v26, 0x2

    aput-object v0, v1, v26

    const v0, 0x534e4554

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3212
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v21, "168319670"

    const/16 v16, 0x0

    aput-object v21, v1, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v1, v22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v26

    const v0, 0x534e4554

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "PackageManager"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    const/4 v0, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move/from16 v22, v23

    .end local v23    # "packageNum":I
    .local v22, "packageNum":I
    move-object v2, v7

    move/from16 v23, v24

    .end local v24    # "userId":I
    .local v23, "userId":I
    move-object v3, v4

    move-object/from16 v27, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v27, "packageName":Ljava/lang/String;
    move v4, v0

    move-object/from16 v28, v5

    move/from16 v16, v25

    .end local v25    # "userIdNum":I
    .local v16, "userIdNum":I
    move v5, v14

    move-object/from16 v29, v6

    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v29, "bp":Lcom/android/server/pm/permission/BasePermission;
    move/from16 v6, v23

    move-object/from16 v30, v7

    .end local v7    # "permName":Ljava/lang/String;
    .local v30, "permName":Ljava/lang/String;
    move-object/from16 v7, v21

    move-object/from16 v8, p3

    :try_start_11b
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11e} :catch_121

    .line 3223
    move-object/from16 v2, v30

    goto :goto_151

    .line 3220
    :catch_121
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 3221
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v30

    .end local v30    # "permName":Ljava/lang/String;
    .local v2, "permName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    .end local v27    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v28

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_151

    .line 3207
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "userIdNum":I
    .end local v22    # "packageNum":I
    .end local v23    # "userId":I
    .end local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v2, "packageNum":I
    .local v3, "userId":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "userIdNum":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "permName":Ljava/lang/String;
    :cond_147
    move/from16 v22, v2

    move/from16 v23, v3

    move-object v3, v4

    move/from16 v16, v5

    move-object/from16 v29, v6

    move-object v2, v7

    .line 3193
    .end local v3    # "userId":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "userIdNum":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "permName":Ljava/lang/String;
    .end local v10    # "uid":I
    .end local v18    # "permissionState":I
    .end local v19    # "flags":I
    .end local v20    # "flagMask":I
    .local v2, "permName":Ljava/lang/String;
    .restart local v16    # "userIdNum":I
    .restart local v22    # "packageNum":I
    .restart local v23    # "userId":I
    .restart local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_151
    add-int/lit8 v0, v22, 0x1

    move-object/from16 v8, p1

    move-object v7, v2

    move/from16 v5, v16

    move-object/from16 v10, v17

    move/from16 v3, v23

    move-object/from16 v6, v29

    move v2, v0

    .end local v22    # "packageNum":I
    .local v0, "packageNum":I
    goto/16 :goto_3c

    .end local v0    # "packageNum":I
    .end local v16    # "userIdNum":I
    .end local v17    # "userIds":[I
    .end local v23    # "userId":I
    .end local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v2, "packageNum":I
    .restart local v3    # "userId":I
    .restart local v5    # "userIdNum":I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "permName":Ljava/lang/String;
    .local v10, "userIds":[I
    :cond_161
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v16, v5

    move-object/from16 v29, v6

    move-object v2, v7

    move-object/from16 v17, v10

    .line 3191
    .end local v3    # "userId":I
    .end local v5    # "userIdNum":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "permName":Ljava/lang/String;
    .end local v10    # "userIds":[I
    .local v2, "permName":Ljava/lang/String;
    .restart local v16    # "userIdNum":I
    .restart local v17    # "userIds":[I
    .restart local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v8, p1

    .end local v16    # "userIdNum":I
    .restart local v5    # "userIdNum":I
    goto/16 :goto_36

    .end local v2    # "permName":Ljava/lang/String;
    .end local v17    # "userIds":[I
    .end local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "permName":Ljava/lang/String;
    .restart local v10    # "userIds":[I
    :cond_172
    move/from16 v16, v5

    move-object/from16 v29, v6

    move-object v2, v7

    move-object/from16 v17, v10

    .line 3227
    .end local v5    # "userIdNum":I
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "permName":Ljava/lang/String;
    .end local v10    # "userIds":[I
    .restart local v2    # "permName":Ljava/lang/String;
    .restart local v17    # "userIds":[I
    .restart local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object/from16 v1, v29

    const/4 v3, 0x0

    .end local v29    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v1, v3}, Lcom/android/server/pm/permission/BasePermission;->setPermissionDefinitionChanged(Z)V

    goto :goto_184

    .line 3188
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v2    # "permName":Ljava/lang/String;
    .end local v17    # "userIds":[I
    .restart local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "permName":Ljava/lang/String;
    .restart local v10    # "userIds":[I
    :cond_180
    move-object v1, v6

    move-object v2, v7

    move-object/from16 v17, v10

    .line 3185
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "permName":Ljava/lang/String;
    .end local v10    # "userIds":[I
    .restart local v17    # "userIds":[I
    :goto_184
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v17

    goto/16 :goto_17

    .line 3229
    .end local v15    # "permNum":I
    .end local v17    # "userIds":[I
    .restart local v10    # "userIds":[I
    :cond_18a
    return-void
.end method

.method private revokeStoragePermissionsIfScopeExpanded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 25
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3047
    move-object/from16 v9, p0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lt v0, v1, :cond_14

    .line 3048
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_14

    move v0, v10

    goto :goto_15

    :cond_14
    move v0, v11

    :goto_15
    move v12, v0

    .line 3049
    .local v12, "downgradedSdk":Z
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_24

    .line 3050
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_24

    move v0, v10

    goto :goto_25

    :cond_24
    move v0, v11

    :goto_25
    move v13, v0

    .line 3051
    .local v13, "upgradedSdk":Z
    if-nez v13, :cond_36

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-nez v0, :cond_36

    .line 3052
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v10

    goto :goto_37

    :cond_36
    move v0, v11

    :goto_37
    move v14, v0

    .line 3054
    .local v14, "newlyRequestsLegacy":Z
    if-nez v14, :cond_3d

    if-nez v12, :cond_3d

    .line 3055
    return-void

    .line 3058
    :cond_3d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3059
    .local v15, "callingUid":I
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v8

    array-length v7, v8

    move v6, v11

    :goto_49
    if-ge v6, v7, :cond_159

    aget v5, v8, v6

    .line 3060
    .local v5, "userId":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 3061
    .local v4, "numRequestedPermissions":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_57
    if-ge v3, v4, :cond_149

    .line 3062
    nop

    .line 3063
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3064
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3062
    invoke-virtual {v9, v0, v1, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 3065
    .local v2, "permInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v2, :cond_131

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->STORAGE_PERMISSIONS:Ljava/util/List;

    iget-object v1, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 3066
    move/from16 v18, v3

    move v10, v4

    move v11, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v16, v8

    goto/16 :goto_13b

    .line 3069
    :cond_84
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v16, "171430330"

    aput-object v16, v1, v11

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v1, v10

    const/16 v16, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Revoking permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " as either the sdk downgraded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " or newly requested legacy full storage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v16

    .line 3069
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3076
    :try_start_ce
    iget-object v0, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10
    :try_end_d4
    .catch Ljava/lang/IllegalStateException; {:try_start_ce .. :try_end_d4} :catch_f4
    .catch Ljava/lang/SecurityException; {:try_start_ce .. :try_end_d4} :catch_f4

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .local v17, "permInfo":Landroid/content/pm/PermissionInfo;
    move-object v2, v0

    move/from16 v18, v3

    .end local v3    # "i":I
    .local v18, "i":I
    move-object v3, v10

    move v10, v4

    .end local v4    # "numRequestedPermissions":I
    .local v10, "numRequestedPermissions":I
    move v4, v11

    move v11, v5

    .end local v5    # "userId":I
    .local v11, "userId":I
    move v5, v15

    move/from16 v19, v6

    move v6, v11

    move/from16 v20, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v8

    move-object/from16 v8, p3

    :try_start_ee
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_f1
    .catch Ljava/lang/IllegalStateException; {:try_start_ee .. :try_end_f1} :catch_f2
    .catch Ljava/lang/SecurityException; {:try_start_ee .. :try_end_f1} :catch_f2

    .line 3081
    goto :goto_13b

    .line 3078
    :catch_f2
    move-exception v0

    goto :goto_101

    .end local v10    # "numRequestedPermissions":I
    .end local v11    # "userId":I
    .end local v17    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v18    # "i":I
    .restart local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v3    # "i":I
    .restart local v4    # "numRequestedPermissions":I
    .restart local v5    # "userId":I
    :catch_f4
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move v10, v4

    move v11, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v16, v8

    .line 3079
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v3    # "i":I
    .end local v4    # "numRequestedPermissions":I
    .end local v5    # "userId":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v10    # "numRequestedPermissions":I
    .restart local v11    # "userId":I
    .restart local v17    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v18    # "i":I
    :goto_101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    .end local v17    # "permInfo":Landroid/content/pm/PermissionInfo;
    .restart local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3080
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3079
    const-string v3, "PackageManager"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13b

    .line 3065
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "numRequestedPermissions":I
    .end local v11    # "userId":I
    .end local v18    # "i":I
    .restart local v3    # "i":I
    .restart local v4    # "numRequestedPermissions":I
    .restart local v5    # "userId":I
    :cond_131
    move/from16 v18, v3

    move v10, v4

    move v11, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v16, v8

    .line 3061
    .end local v2    # "permInfo":Landroid/content/pm/PermissionInfo;
    .end local v3    # "i":I
    .end local v4    # "numRequestedPermissions":I
    .end local v5    # "userId":I
    .restart local v10    # "numRequestedPermissions":I
    .restart local v11    # "userId":I
    .restart local v18    # "i":I
    :goto_13b
    add-int/lit8 v3, v18, 0x1

    move v4, v10

    move v5, v11

    move-object/from16 v8, v16

    move/from16 v6, v19

    move/from16 v7, v20

    const/4 v10, 0x1

    const/4 v11, 0x0

    .end local v18    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_57

    .end local v10    # "numRequestedPermissions":I
    .end local v11    # "userId":I
    .restart local v4    # "numRequestedPermissions":I
    .restart local v5    # "userId":I
    :cond_149
    move/from16 v18, v3

    move v10, v4

    move v11, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v16, v8

    .line 3059
    .end local v3    # "i":I
    .end local v4    # "numRequestedPermissions":I
    .end local v5    # "userId":I
    add-int/lit8 v6, v19, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_49

    .line 3085
    :cond_159
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I
    .registers 20
    .param p1, "suSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "allUserIds"    # [I

    .line 4840
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4841
    .local v2, "usedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v3

    .line 4842
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    if-eqz v3, :cond_e9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_e9

    .line 4845
    :cond_17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4846
    .local v5, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4847
    goto :goto_1b

    .line 4849
    :cond_32
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 4850
    .local v6, "requestedPermCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3b
    if-ge v7, v6, :cond_55

    .line 4851
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4852
    .local v8, "permission":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    .line 4853
    .local v9, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v9, :cond_52

    .line 4854
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4850
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    .line 4857
    .end local v5    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v6    # "requestedPermCount":I
    .end local v7    # "j":I
    :cond_55
    goto :goto_1b

    .line 4859
    :cond_56
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 4861
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v5

    .line 4862
    .local v5, "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 4863
    .local v6, "installPermCount":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_64
    const v8, 0x3fbff

    const/4 v9, 0x0

    if-ltz v7, :cond_90

    .line 4864
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 4865
    .local v10, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8d

    .line 4866
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v11

    .line 4867
    .local v11, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v11, :cond_8d

    .line 4868
    invoke-virtual {v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 4869
    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 4863
    .end local v10    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v11    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_8d
    add-int/lit8 v7, v7, -0x1

    goto :goto_64

    .line 4875
    .end local v7    # "i":I
    :cond_90
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    .line 4878
    .local v7, "runtimePermissionChangedUserIds":[I
    array-length v10, v1

    move v11, v9

    :goto_94
    if-ge v11, v10, :cond_e8

    aget v12, v1, v11

    .line 4879
    .local v12, "userId":I
    nop

    .line 4880
    invoke-virtual {v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v13

    .line 4881
    .local v13, "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 4882
    .local v14, "runtimePermCount":I
    add-int/lit8 v15, v14, -0x1

    .local v15, "i":I
    :goto_a3
    if-ltz v15, :cond_e0

    .line 4883
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 4884
    .local v16, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d5

    .line 4885
    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v8

    .line 4886
    .local v8, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v8, :cond_d0

    .line 4887
    invoke-virtual {v4, v8, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 4888
    const/4 v0, 0x0

    const v9, 0x3fbff

    invoke-virtual {v4, v8, v12, v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 4890
    invoke-static {v7, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    goto :goto_d9

    .line 4886
    :cond_d0
    const/4 v0, 0x0

    const v9, 0x3fbff

    goto :goto_d9

    .line 4884
    .end local v8    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_d5
    move v0, v9

    const v9, 0x3fbff

    .line 4882
    .end local v16    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :goto_d9
    add-int/lit8 v15, v15, -0x1

    move v8, v9

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_a3

    :cond_e0
    move v0, v9

    move v9, v8

    .line 4878
    .end local v12    # "userId":I
    .end local v13    # "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v14    # "runtimePermCount":I
    .end local v15    # "i":I
    add-int/lit8 v11, v11, 0x1

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_94

    .line 4897
    :cond_e8
    return-object v7

    .line 4843
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v6    # "installPermCount":I
    .end local v7    # "runtimePermissionChangedUserIds":[I
    :cond_e9
    :goto_e9
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method private setDefaultBrowserInternal(Ljava/lang/String;ZZI)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "async"    # Z
    .param p3, "doGrant"    # Z
    .param p4, "userId"    # I

    .line 2068
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p4, v1, :cond_5

    .line 2069
    return v0

    .line 2072
    :cond_5
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2073
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    .line 2074
    .local v2, "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2e

    .line 2075
    if-nez v2, :cond_e

    .line 2076
    return v0

    .line 2078
    :cond_e
    if-eqz p2, :cond_14

    .line 2079
    invoke-interface {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;->setDefaultBrowserAsync(Ljava/lang/String;I)V

    goto :goto_1b

    .line 2081
    :cond_14
    invoke-interface {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;->setDefaultBrowser(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2082
    return v0

    .line 2085
    :cond_1b
    :goto_1b
    if-eqz p3, :cond_2c

    if-eqz p1, :cond_2c

    .line 2086
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2087
    :try_start_22
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V

    .line 2089
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v1

    .line 2091
    :cond_2c
    :goto_2c
    const/4 v0, 0x1

    return v0

    .line 2074
    .end local v2    # "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/util/ArraySet;[I)[I
    .registers 29
    .param p1, "origPs"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p2, "ps"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "updatedUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;[I)[I"
        }
    .end annotation

    .line 4121
    .local p4, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p2

    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 4122
    .local v7, "pkgName":Ljava/lang/String;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v0

    .line 4124
    .local v8, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissions()Ljava/util/List;

    move-result-object v9

    .line 4125
    .local v9, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/SplitPermissionInfoParcelable;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 4126
    .local v10, "numSplitPerms":I
    const/4 v0, 0x0

    .local v0, "splitPermNum":I
    :goto_15
    if-ge v0, v10, :cond_4c

    .line 4127
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 4129
    .local v1, "spi":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    invoke-virtual {v1}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v2

    .line 4130
    .local v2, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 4131
    .local v3, "numNewPerms":I
    const/4 v4, 0x0

    .local v4, "newPermNum":I
    :goto_26
    if-ge v4, v3, :cond_49

    .line 4132
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4134
    .local v5, "newPerm":Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 4135
    .local v11, "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v11, :cond_3f

    .line 4136
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v12

    .line 4137
    invoke-virtual {v8, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4140
    :cond_3f
    invoke-virtual {v1}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4131
    .end local v5    # "newPerm":Ljava/lang/String;
    .end local v11    # "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 4126
    .end local v1    # "spi":Landroid/content/pm/permission/SplitPermissionInfoParcelable;
    .end local v2    # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "numNewPerms":I
    .end local v4    # "newPermNum":I
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 4144
    .end local v0    # "splitPermNum":I
    :cond_4c
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 4145
    .local v11, "numNewImplicitPerms":I
    const/4 v0, 0x0

    move v12, v0

    move-object/from16 v0, p5

    .end local p5    # "updatedUserIds":[I
    .local v0, "updatedUserIds":[I
    .local v12, "newImplicitPermNum":I
    :goto_54
    if-ge v12, v11, :cond_104

    .line 4147
    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 4148
    .local v14, "newPerm":Ljava/lang/String;
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArraySet;

    .line 4150
    .local v15, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v15, :cond_fc

    .line 4151
    invoke-virtual {v6, v14}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f9

    .line 4152
    move-object/from16 v5, p0

    iget-object v1, v5, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 4154
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    .line 4155
    .local v3, "users":[I
    array-length v2, v3

    .line 4156
    .local v2, "numUsers":I
    const/4 v1, 0x0

    .local v1, "userNum":I
    :goto_80
    if-ge v1, v2, :cond_ee

    .line 4157
    move-object/from16 v16, v7

    .end local v7    # "pkgName":Ljava/lang/String;
    .local v16, "pkgName":Ljava/lang/String;
    aget v7, v3, v1

    .line 4159
    .local v7, "userId":I
    move/from16 p5, v1

    .end local v1    # "userNum":I
    .local p5, "userNum":I
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 4160
    const/16 v1, 0x80

    invoke-virtual {v6, v4, v7, v1, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 4164
    :cond_95
    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v17

    .line 4166
    .end local v0    # "updatedUserIds":[I
    .local v17, "updatedUserIds":[I
    const/4 v0, 0x0

    .line 4167
    .local v0, "inheritsFromInstallPerm":Z
    const/4 v1, 0x0

    .local v1, "sourcePermNum":I
    :goto_9b
    move/from16 v18, v0

    .end local v0    # "inheritsFromInstallPerm":Z
    .local v18, "inheritsFromInstallPerm":Z
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_b8

    .line 4169
    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 4170
    const/4 v0, 0x1

    .line 4171
    .end local v18    # "inheritsFromInstallPerm":Z
    .restart local v0    # "inheritsFromInstallPerm":Z
    move/from16 v18, v0

    goto :goto_b8

    .line 4168
    .end local v0    # "inheritsFromInstallPerm":Z
    .restart local v18    # "inheritsFromInstallPerm":Z
    :cond_b3
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v18

    goto :goto_9b

    .line 4175
    .end local v1    # "sourcePermNum":I
    :cond_b8
    :goto_b8
    move-object/from16 v1, p1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_cb

    if-nez v18, :cond_cb

    move/from16 v19, p5

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    goto :goto_df

    .line 4184
    :cond_cb
    move-object/from16 v0, p0

    move/from16 v19, p5

    .end local p5    # "userNum":I
    .local v19, "userNum":I
    move-object v1, v15

    move/from16 v20, v2

    .end local v2    # "numUsers":I
    .local v20, "numUsers":I
    move-object v2, v14

    move-object/from16 v21, v3

    .end local v3    # "users":[I
    .local v21, "users":[I
    move-object/from16 v3, p2

    move-object/from16 v22, v4

    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v22, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object/from16 v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 4156
    .end local v7    # "userId":I
    .end local v18    # "inheritsFromInstallPerm":Z
    :goto_df
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, v16

    move-object/from16 v0, v17

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    .end local v19    # "userNum":I
    .local v1, "userNum":I
    goto :goto_80

    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "updatedUserIds":[I
    .end local v20    # "numUsers":I
    .end local v21    # "users":[I
    .end local v22    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v0, "updatedUserIds":[I
    .restart local v2    # "numUsers":I
    .restart local v3    # "users":[I
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v7, "pkgName":Ljava/lang/String;
    :cond_ee
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v16, v7

    .end local v1    # "userNum":I
    .end local v2    # "numUsers":I
    .end local v3    # "users":[I
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v19    # "userNum":I
    .restart local v20    # "numUsers":I
    .restart local v21    # "users":[I
    .restart local v22    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_fe

    .line 4151
    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v19    # "userNum":I
    .end local v20    # "numUsers":I
    .end local v21    # "users":[I
    .end local v22    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_f9
    move-object/from16 v16, v7

    .end local v7    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkgName":Ljava/lang/String;
    goto :goto_fe

    .line 4150
    .end local v16    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_fc
    move-object/from16 v16, v7

    .line 4146
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v14    # "newPerm":Ljava/lang/String;
    .end local v15    # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "pkgName":Ljava/lang/String;
    :goto_fe
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v16

    goto/16 :goto_54

    .line 4192
    .end local v12    # "newImplicitPermNum":I
    .end local v16    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_104
    return-object v0
.end method

.method private setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2848
    .local p2, "mdmPermissionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLicensePermissions : packageName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2849
    invoke-virtual {v3}, Landroid/content/pm/PackageManagerInternal;->getPackageMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2848
    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 2851
    .local v4, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string/jumbo v5, "setLicensePermissions : "

    if-nez v4, :cond_50

    .line 2852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is invalid (NULL)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    :cond_50
    const/4 v6, 0x0

    .line 2856
    .local v6, "isPackageSignedWithPlatformKey":Z
    const/4 v7, 0x0

    .line 2858
    .local v7, "isPrivilegedApp":Z
    const/4 v8, 0x0

    :try_start_53
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2859
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v9

    move v6, v9

    .line 2860
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v9
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_66} :catch_68

    move v7, v9

    .line 2863
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_85

    .line 2861
    :catch_68
    move-exception v0

    .line 2862
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " cannot be found."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_85
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 2865
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_93

    .line 2866
    const/4 v3, -0x3

    return v3

    .line 2870
    :cond_93
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_97
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, ","

    if-eqz v10, :cond_fb

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2873
    .local v10, "permission":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v12

    .line 2874
    .local v12, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2875
    .local v11, "mdmPermissions":[Ljava/lang/String;
    if-eqz v11, :cond_df

    array-length v13, v11

    if-lez v13, :cond_df

    .line 2876
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_b3
    array-length v14, v11

    if-ge v13, v14, :cond_de

    .line 2877
    aget-object v14, v11, v13

    .line 2878
    .local v14, "mdmPermission":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v15, v15, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/permission/BasePermission;

    .line 2879
    .local v15, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v15, :cond_da

    invoke-direct {v1, v15}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v16

    if-eqz v16, :cond_da

    .line 2880
    if-eqz v6, :cond_d7

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d7

    .line 2881
    goto :goto_da

    .line 2883
    :cond_d7
    invoke-virtual {v12, v15}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 2876
    .end local v14    # "mdmPermission":Ljava/lang/String;
    .end local v15    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_da
    :goto_da
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto :goto_b3

    .end local v13    # "i":I
    :cond_de
    goto :goto_f9

    .line 2887
    :cond_df
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " : invalid permission "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    .end local v10    # "permission":Ljava/lang/String;
    .end local v11    # "mdmPermissions":[Ljava/lang/String;
    .end local v12    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :goto_f9
    const/4 v8, 0x0

    goto :goto_97

    .line 2893
    :cond_fb
    iget-object v8, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSamsungPassPermissionSet:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_ff
    if-ge v10, v9, :cond_15e

    aget-object v12, v8, v10

    .line 2896
    .local v12, "permission":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    .line 2897
    .local v13, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2898
    .local v14, "passPermissions":[Ljava/lang/String;
    if-eqz v14, :cond_139

    array-length v15, v14

    if-lez v15, :cond_139

    .line 2899
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_111
    move-object/from16 v17, v8

    array-length v8, v14

    if-ge v15, v8, :cond_136

    .line 2900
    aget-object v8, v14, v15

    .line 2901
    .local v8, "passPermission":Ljava/lang/String;
    move/from16 v18, v9

    iget-object v9, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/permission/BasePermission;

    .line 2902
    .local v9, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v9, :cond_12f

    invoke-direct {v1, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v19

    if-eqz v19, :cond_12f

    .line 2903
    invoke-virtual {v13, v9}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 2899
    .end local v8    # "passPermission":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_12f
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v17

    move/from16 v9, v18

    goto :goto_111

    :cond_136
    move/from16 v18, v9

    .end local v15    # "i":I
    goto :goto_157

    .line 2898
    :cond_139
    move-object/from16 v17, v8

    move/from16 v18, v9

    .line 2907
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " : invalid samsung pass permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    .end local v12    # "permission":Ljava/lang/String;
    .end local v13    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v14    # "passPermissions":[Ljava/lang/String;
    :goto_157
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v17

    move/from16 v9, v18

    goto :goto_ff

    .line 2912
    :cond_15e
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 2917
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const-string v8, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 2918
    .local v8, "readPrivilegedPhoneStatePermission":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/permission/BasePermission;

    .line 2919
    .local v9, "basePermission":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v9, :cond_17d

    invoke-direct {v1, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-eqz v10, :cond_17d

    if-nez v7, :cond_17d

    if-nez v6, :cond_17d

    .line 2921
    invoke-virtual {v5, v9}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 2925
    :cond_17d
    const/4 v10, 0x0

    .line 2926
    .local v10, "licensedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    move-result-object v11

    .line 2927
    .local v11, "ELM":Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
    invoke-virtual {v11, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 2929
    if-nez v10, :cond_18c

    .line 2930
    const/4 v3, -0x4

    return v3

    .line 2934
    :cond_18c
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2936
    .local v12, "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_195
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1f4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2937
    .local v14, "permission":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v15, v15, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/permission/BasePermission;

    .line 2939
    .local v15, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v15, :cond_1ed

    invoke-direct {v1, v15}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v17

    if-eqz v17, :cond_1ed

    .line 2940
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->hasSelectivePermissionsForMDM()Z

    move-result v17

    if-eqz v17, :cond_1de

    .line 2941
    move-object/from16 v17, v0

    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v17, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 2942
    invoke-virtual {v5, v15}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 2943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasSelectivePermissionsForMDM(): permission granted = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e3

    .line 2946
    .end local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1de
    move-object/from16 v17, v0

    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v5, v15}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 2948
    :cond_1e3
    :goto_1e3
    invoke-virtual {v5, v14}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 2949
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1ef

    .line 2939
    .end local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1ed
    move-object/from16 v17, v0

    .line 2952
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "permission":Ljava/lang/String;
    .end local v15    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1ef
    :goto_1ef
    move-object/from16 v2, p1

    move-object/from16 v0, v17

    goto :goto_195

    .line 2954
    .end local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1f4
    move-object/from16 v17, v0

    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageGrantedPermissions:Landroid/util/ArrayMap;

    invoke-interface {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2957
    const/4 v2, 0x0

    return v2
.end method

.method private setUidMode(IIILjava/lang/String;ZZ)V
    .registers 18
    .param p1, "userId"    # I
    .param p2, "appId"    # I
    .param p3, "appOp"    # I
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "checkAppOpsAllowed"    # Z
    .param p6, "killUid"    # Z

    .line 2674
    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/pm/permission/PermissionManagerService$6;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$6;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;IIILjava/lang/String;ZZ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2690
    return-void
.end method

.method private setWhitelistedRestrictedPermissionsForUsers(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 37
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userIds"    # [I
    .param p4, "callingUid"    # I
    .param p5, "whitelistFlags"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 4696
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4697
    invoke-static {v0, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPermissionsState(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    .line 4698
    .local v14, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    if-nez v14, :cond_13

    .line 4699
    return-void

    .line 4702
    :cond_13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v15, v0

    .line 4703
    .local v15, "oldGrantedRestrictedPermissions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 4704
    .local v0, "updatePermissions":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 4706
    .local v8, "permissionCount":I
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_24
    array-length v1, v11

    if-ge v7, v1, :cond_164

    .line 4707
    aget v5, v11, v7

    .line 4708
    .local v5, "userId":I
    const/4 v1, 0x0

    move v4, v1

    .local v4, "j":I
    :goto_2b
    if-ge v4, v8, :cond_156

    .line 4709
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 4711
    .local v3, "permissionName":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v16

    .line 4713
    .local v16, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v16, :cond_13e

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v1

    if-nez v1, :cond_52

    .line 4714
    move/from16 v19, v0

    move/from16 v21, v4

    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    goto/16 :goto_14a

    .line 4717
    :cond_52
    invoke-virtual {v14, v3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 4718
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_66

    .line 4719
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v15, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4721
    :cond_66
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4724
    :cond_6f
    invoke-virtual {v14, v3, v5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v2

    .line 4726
    .local v2, "oldFlags":I
    move v1, v2

    .line 4727
    .local v1, "newFlags":I
    const/16 v17, 0x0

    .line 4728
    .local v17, "mask":I
    move/from16 v18, p5

    move/from16 v6, v17

    .line 4729
    .end local v17    # "mask":I
    .local v6, "mask":I
    .local v18, "whitelistFlagsCopy":I
    :goto_7a
    move/from16 v19, v0

    .end local v0    # "updatePermissions":Z
    .local v19, "updatePermissions":Z
    const/4 v0, 0x1

    if-eqz v18, :cond_ce

    .line 4730
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v20

    move/from16 v21, v4

    .end local v4    # "j":I
    .local v21, "j":I
    shl-int v4, v0, v20

    .line 4731
    .local v4, "flag":I
    not-int v0, v4

    and-int v18, v18, v0

    .line 4732
    const/4 v0, 0x1

    if-eq v4, v0, :cond_b8

    const/4 v0, 0x2

    if-eq v4, v0, :cond_a6

    const/4 v0, 0x4

    if-eq v4, v0, :cond_94

    goto :goto_c9

    .line 4743
    :cond_94
    or-int/lit16 v0, v6, 0x2000

    .line 4744
    .end local v6    # "mask":I
    .local v0, "mask":I
    if-eqz v12, :cond_a2

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 4745
    or-int/lit16 v1, v1, 0x2000

    move v6, v0

    goto :goto_c9

    .line 4747
    :cond_a2
    and-int/lit16 v1, v1, -0x2001

    .line 4750
    move v6, v0

    goto :goto_c9

    .line 4752
    .end local v0    # "mask":I
    .restart local v6    # "mask":I
    :cond_a6
    or-int/lit16 v0, v6, 0x800

    .line 4753
    .end local v6    # "mask":I
    .restart local v0    # "mask":I
    if-eqz v12, :cond_b4

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 4754
    or-int/lit16 v1, v1, 0x800

    move v6, v0

    goto :goto_c9

    .line 4756
    :cond_b4
    and-int/lit16 v1, v1, -0x801

    move v6, v0

    goto :goto_c9

    .line 4734
    .end local v0    # "mask":I
    .restart local v6    # "mask":I
    :cond_b8
    or-int/lit16 v0, v6, 0x1000

    .line 4735
    .end local v6    # "mask":I
    .restart local v0    # "mask":I
    if-eqz v12, :cond_c6

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 4736
    or-int/lit16 v1, v1, 0x1000

    move v6, v0

    goto :goto_c9

    .line 4738
    :cond_c6
    and-int/lit16 v1, v1, -0x1001

    .line 4741
    move v6, v0

    .line 4761
    .end local v0    # "mask":I
    .end local v4    # "flag":I
    .restart local v6    # "mask":I
    :goto_c9
    move/from16 v0, v19

    move/from16 v4, v21

    goto :goto_7a

    .line 4763
    .end local v21    # "j":I
    .local v4, "j":I
    :cond_ce
    move/from16 v21, v4

    .end local v4    # "j":I
    .restart local v21    # "j":I
    if-ne v2, v1, :cond_da

    .line 4764
    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    goto/16 :goto_14a

    .line 4767
    :cond_da
    const/16 v19, 0x1

    .line 4769
    and-int/lit16 v4, v2, 0x3800

    if-eqz v4, :cond_e2

    move v4, v0

    goto :goto_e3

    :cond_e2
    const/4 v4, 0x0

    :goto_e3
    move/from16 v20, v4

    .line 4771
    .local v20, "wasWhitelisted":Z
    and-int/lit16 v4, v1, 0x3800

    if-eqz v4, :cond_ea

    goto :goto_eb

    :cond_ea
    const/4 v0, 0x0

    :goto_eb
    move/from16 v22, v0

    .line 4778
    .local v22, "isWhitelisted":Z
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_fd

    .line 4779
    invoke-virtual {v14, v3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    .line 4781
    .local v0, "isGranted":Z
    if-nez v22, :cond_fd

    if-eqz v0, :cond_fd

    .line 4782
    or-int/lit8 v6, v6, 0x4

    .line 4783
    and-int/lit8 v1, v1, -0x5

    .line 4789
    .end local v0    # "isGranted":Z
    :cond_fd
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v4, 0x17

    if-ge v0, v4, :cond_112

    if-nez v20, :cond_112

    if-eqz v22, :cond_112

    .line 4791
    or-int/lit8 v6, v6, 0x40

    .line 4792
    or-int/lit8 v1, v1, 0x40

    move/from16 v23, v1

    move/from16 v24, v6

    goto :goto_116

    .line 4795
    :cond_112
    move/from16 v23, v1

    move/from16 v24, v6

    .end local v1    # "newFlags":I
    .end local v6    # "mask":I
    .local v23, "newFlags":I
    .local v24, "mask":I
    :goto_116
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v27, v2

    .end local v2    # "oldFlags":I
    .local v27, "oldFlags":I
    move-object v2, v4

    move-object/from16 v28, v3

    .end local v3    # "permissionName":Ljava/lang/String;
    .local v28, "permissionName":Ljava/lang/String;
    move/from16 v3, v24

    move/from16 v4, v23

    move/from16 v29, v5

    .end local v5    # "userId":I
    .local v29, "userId":I
    move/from16 v5, p4

    move/from16 v6, v29

    move/from16 v17, v7

    .end local v7    # "i":I
    .local v17, "i":I
    move/from16 v7, v25

    move/from16 v25, v8

    .end local v8    # "permissionCount":I
    .local v25, "permissionCount":I
    move-object/from16 v8, v26

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    move/from16 v0, v19

    goto :goto_14c

    .line 4713
    .end local v17    # "i":I
    .end local v18    # "whitelistFlagsCopy":I
    .end local v19    # "updatePermissions":Z
    .end local v20    # "wasWhitelisted":Z
    .end local v21    # "j":I
    .end local v22    # "isWhitelisted":Z
    .end local v23    # "newFlags":I
    .end local v24    # "mask":I
    .end local v25    # "permissionCount":I
    .end local v27    # "oldFlags":I
    .end local v28    # "permissionName":Ljava/lang/String;
    .end local v29    # "userId":I
    .local v0, "updatePermissions":Z
    .restart local v3    # "permissionName":Ljava/lang/String;
    .restart local v4    # "j":I
    .restart local v5    # "userId":I
    .restart local v7    # "i":I
    .restart local v8    # "permissionCount":I
    :cond_13e
    move/from16 v19, v0

    move-object/from16 v28, v3

    move/from16 v21, v4

    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    .line 4708
    .end local v0    # "updatePermissions":Z
    .end local v3    # "permissionName":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "userId":I
    .end local v7    # "i":I
    .end local v8    # "permissionCount":I
    .end local v16    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v17    # "i":I
    .restart local v19    # "updatePermissions":Z
    .restart local v21    # "j":I
    .restart local v25    # "permissionCount":I
    .restart local v29    # "userId":I
    :goto_14a
    move/from16 v0, v19

    .end local v19    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :goto_14c
    add-int/lit8 v4, v21, 0x1

    move/from16 v7, v17

    move/from16 v8, v25

    move/from16 v5, v29

    .end local v21    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_2b

    .end local v17    # "i":I
    .end local v25    # "permissionCount":I
    .end local v29    # "userId":I
    .restart local v5    # "userId":I
    .restart local v7    # "i":I
    .restart local v8    # "permissionCount":I
    :cond_156
    move/from16 v19, v0

    move/from16 v21, v4

    move/from16 v29, v5

    move/from16 v17, v7

    move/from16 v25, v8

    .line 4706
    .end local v0    # "updatePermissions":Z
    .end local v4    # "j":I
    .end local v5    # "userId":I
    .end local v7    # "i":I
    .end local v8    # "permissionCount":I
    .restart local v17    # "i":I
    .restart local v19    # "updatePermissions":Z
    .restart local v25    # "permissionCount":I
    add-int/lit8 v7, v17, 0x1

    .end local v17    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_24

    .end local v19    # "updatePermissions":Z
    .end local v25    # "permissionCount":I
    .restart local v0    # "updatePermissions":Z
    .restart local v8    # "permissionCount":I
    :cond_164
    move/from16 v17, v7

    move/from16 v25, v8

    .line 4800
    .end local v7    # "i":I
    .end local v8    # "permissionCount":I
    .restart local v25    # "permissionCount":I
    if-eqz v0, :cond_1c3

    .line 4802
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v9, v10, v2, v1, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4806
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPkgLicenseActivated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17f

    .line 4807
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAdminPermissions()V

    .line 4813
    :cond_17f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_180
    array-length v2, v11

    if-ge v1, v2, :cond_1c0

    .line 4814
    aget v2, v11, v1

    .line 4815
    .local v2, "userId":I
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 4816
    .local v3, "oldPermsForUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v3, :cond_190

    .line 4817
    move/from16 v16, v0

    goto :goto_1bb

    .line 4820
    :cond_190
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 4821
    .local v4, "oldGrantedCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_195
    if-ge v5, v4, :cond_1b9

    .line 4822
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4824
    .local v6, "permission":Ljava/lang/String;
    iget-object v7, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4825
    invoke-static {v7, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPermissionsState(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 4827
    .local v7, "newPermissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, v6, v2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1b4

    .line 4828
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v8

    move/from16 v16, v0

    .end local v0    # "updatePermissions":Z
    .local v16, "updatePermissions":Z
    const/4 v0, 0x0

    invoke-virtual {v13, v8, v2, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;)V

    .line 4829
    goto :goto_1bb

    .line 4827
    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_1b4
    move/from16 v16, v0

    .line 4821
    .end local v0    # "updatePermissions":Z
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "newPermissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v16    # "updatePermissions":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_195

    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_1b9
    move/from16 v16, v0

    .line 4813
    .end local v0    # "updatePermissions":Z
    .end local v2    # "userId":I
    .end local v3    # "oldPermsForUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "oldGrantedCount":I
    .end local v5    # "j":I
    .restart local v16    # "updatePermissions":Z
    :goto_1bb
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v16

    goto :goto_180

    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_1c0
    move/from16 v16, v0

    .end local v0    # "updatePermissions":Z
    .restart local v16    # "updatePermissions":Z
    goto :goto_1c5

    .line 4800
    .end local v1    # "i":I
    .end local v16    # "updatePermissions":Z
    .restart local v0    # "updatePermissions":Z
    :cond_1c3
    move/from16 v16, v0

    .line 4834
    .end local v0    # "updatePermissions":Z
    .restart local v16    # "updatePermissions":Z
    :goto_1c5
    return-void
.end method

.method private setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 1334
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    const/4 v0, 0x7

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1339
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_19

    move v0, v12

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1340
    int-to-float v0, v11

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1342
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v11, :cond_41

    .line 1343
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWhitelistedRestrictedPermissions for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    :cond_41
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v14

    .line 1349
    .local v14, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v14, :cond_4c

    .line 1350
    return v1

    .line 1353
    :cond_4c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1354
    .local v15, "callingUid":I
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v14, v15, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1355
    return v1

    .line 1358
    :cond_5d
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_69

    move v0, v12

    goto :goto_6a

    :cond_69
    move v0, v1

    :goto_6a
    move/from16 v16, v0

    .line 1361
    .local v16, "isCallerPrivileged":Z
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1362
    invoke-virtual {v0, v14, v15}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v17

    .line 1364
    .local v17, "isCallerInstallerOnRecord":Z
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_81

    if-eqz v16, :cond_79

    goto :goto_81

    .line 1366
    :cond_79
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Modifying system whitelist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1370
    :cond_81
    :goto_81
    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_df

    .line 1371
    if-nez v16, :cond_92

    if-eqz v17, :cond_8a

    goto :goto_92

    .line 1372
    :cond_8a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Modifying upgrade whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1376
    :cond_92
    :goto_92
    nop

    .line 1377
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1378
    .local v0, "whitelistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_c4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a4

    goto :goto_c4

    .line 1384
    :cond_a4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    .line 1385
    .local v2, "permissionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a9
    if-ge v3, v2, :cond_cd

    .line 1386
    if-eqz v0, :cond_b7

    .line 1387
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    :cond_b7
    if-eqz v16, :cond_bc

    .line 1385
    :cond_b9
    add-int/lit8 v3, v3, 0x1

    goto :goto_a9

    .line 1389
    :cond_bc
    new-instance v1, Ljava/lang/SecurityException;

    const-string v4, "Adding to upgrade whitelist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1379
    .end local v2    # "permissionCount":I
    .end local v3    # "i":I
    :cond_c4
    :goto_c4
    if-eqz v0, :cond_de

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_cd

    goto :goto_de

    .line 1395
    :cond_cd
    and-int/lit8 v2, v10, 0x2

    if-eqz v2, :cond_df

    .line 1396
    if-nez v16, :cond_df

    if-eqz v17, :cond_d6

    goto :goto_df

    .line 1397
    :cond_d6
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Modifying installer whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1380
    :cond_de
    :goto_de
    return v12

    .line 1404
    .end local v0    # "whitelistedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_df
    :goto_df
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1406
    .local v18, "identity":J
    :try_start_e3
    new-array v3, v12, [I

    aput v11, v3, v1

    .line 1407
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iget-object v7, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 1406
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsForUsers(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_f7
    .catchall {:try_start_e3 .. :try_end_f7} :catchall_fc

    .line 1409
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1410
    nop

    .line 1412
    return v12

    .line 1409
    :catchall_fc
    move-exception v0

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1410
    throw v0
.end method

.method private systemReady()V
    .registers 9

    .line 5500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    .line 5501
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-eqz v1, :cond_57

    .line 5503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5504
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "We detected some permission violations from below apps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5505
    const/4 v2, 0x1

    .line 5506
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5507
    .local v4, "violation":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")    "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5508
    .end local v4    # "violation":Ljava/lang/String;
    move v2, v6

    goto :goto_18

    .line 5509
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_44
    const-string v3, "\nPrivileged apps MUST put their \'signature|privileged\' permissions into the allowlist.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5510
    const-string v3, "Please ASSIGN this issue to above apps to apply.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5511
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5515
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_57
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 5516
    const-class v1, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 5518
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 5519
    .local v1, "grantPermissionsUserIds":[I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_7a
    if-ge v5, v3, :cond_8d

    aget v6, v2, v5

    .line 5520
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->isPermissionUpgradeNeeded(I)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 5521
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    .line 5519
    .end local v6    # "userId":I
    :cond_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    .line 5526
    :cond_8d
    invoke-static {v4}, Lcom/android/server/pm/PmLog;->setPermDebugLogging(Z)V

    .line 5529
    array-length v2, v1

    :goto_91
    if-ge v4, v2, :cond_9d

    aget v3, v1, v4

    .line 5530
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissions(I)V

    .line 5529
    .end local v3    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    .line 5532
    :cond_9d
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    if-ne v1, v2, :cond_a6

    .line 5536
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->scheduleReadDefaultPermissionExceptions()V

    .line 5539
    :cond_a6
    invoke-static {v0}, Lcom/android/server/pm/PmLog;->setPermDebugLogging(Z)V

    .line 5541
    return-void
.end method

.method private updateAdminPermissions()V
    .registers 5

    .line 2969
    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-eqz v0, :cond_24

    .line 2970
    nop

    .line 2971
    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2970
    invoke-static {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v0

    .line 2973
    .local v0, "lService":Lcom/samsung/android/knox/license/IEnterpriseLicense;
    :try_start_f
    invoke-interface {v0}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->updateAdminPermissions()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_12} :catch_13

    .line 2979
    :goto_12
    goto :goto_24

    .line 2976
    :catch_13
    move-exception v1

    .line 2977
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "PackageManager"

    const-string v3, "NPE occurs for EnterpriseLicense"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2978
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_24

    .line 2974
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1f
    move-exception v1

    .line 2975
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_12

    .line 2981
    .end local v0    # "lService":Lcom/samsung/android/knox/license/IEnterpriseLicense;
    :cond_24
    :goto_24
    return-void
.end method

.method private updateAllPermissions(Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 12
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "sdkUpdated"    # Z
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4937
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 4939
    const/4 v0, 0x1

    .line 4940
    if-eqz p2, :cond_8

    .line 4941
    const/4 v1, 0x6

    goto :goto_9

    .line 4942
    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    .line 4943
    .local v0, "flags":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move v6, v0

    move-object v7, p3

    :try_start_10
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_18

    .line 4945
    .end local v0    # "flags":I
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 4946
    nop

    .line 4947
    return-void

    .line 4945
    :catchall_18
    move-exception v0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 4946
    throw v0
.end method

.method private updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 28
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "overridePolicy"    # Z
    .param p8, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 831
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p8

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 832
    return-void

    .line 835
    :cond_15
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-direct {v8, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 837
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlags"

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 843
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_3a

    if-eqz p7, :cond_31

    goto :goto_3a

    .line 844
    :cond_31
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_3a
    :goto_3a
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_53

    .line 850
    and-int/lit8 v0, p3, -0x11

    .line 851
    .end local p3    # "flagMask":I
    .local v0, "flagMask":I
    and-int/lit8 v1, p4, -0x11

    .line 852
    .end local p4    # "flagValues":I
    .local v1, "flagValues":I
    and-int/lit8 v0, v0, -0x21

    .line 853
    and-int/lit8 v1, v1, -0x21

    .line 854
    and-int/lit8 v1, v1, -0x41

    .line 855
    and-int/lit16 v1, v1, -0x1001

    .line 856
    and-int/lit16 v1, v1, -0x801

    .line 857
    and-int/lit16 v1, v1, -0x2001

    .line 858
    and-int/lit16 v1, v1, -0x4001

    move v2, v1

    move v1, v0

    goto :goto_57

    .line 849
    .end local v0    # "flagMask":I
    .end local v1    # "flagValues":I
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    :cond_53
    move/from16 v1, p3

    move/from16 v2, p4

    .line 861
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .local v1, "flagMask":I
    .local v2, "flagValues":I
    :goto_57
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 862
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 864
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_16a

    if-nez v4, :cond_6b

    move-object/from16 v16, v4

    goto/16 :goto_16c

    .line 868
    :cond_6b
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-nez v0, :cond_151

    .line 873
    iget-object v5, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 874
    :try_start_76
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 875
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_14a

    .line 876
    if-eqz v0, :cond_131

    .line 880
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 881
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 882
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6

    if-eqz v6, :cond_8c

    const/4 v6, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v6, 0x0

    .line 883
    .local v6, "hadState":Z
    :goto_8d
    if-nez v6, :cond_ef

    .line 884
    const/4 v15, 0x0

    .line 886
    .local v15, "isRequested":Z
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9b

    .line 887
    const/4 v15, 0x1

    .line 889
    :cond_9b
    if-nez v15, :cond_cc

    .line 891
    iget-object v14, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 892
    invoke-virtual {v14, v10, v12}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 893
    .local v14, "sharedUserPackageNames":[Ljava/lang/String;
    array-length v7, v14

    move-object/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v16, "ps":Lcom/android/server/pm/PackageSetting;
    :goto_a7
    if-ge v4, v7, :cond_ce

    move/from16 v17, v7

    aget-object v7, v14, v4

    .line 894
    .local v7, "sharedUserPackageName":Ljava/lang/String;
    iget-object v11, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v11, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v11

    .line 896
    .local v11, "sharedUserPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v11, :cond_c3

    .line 897
    move-object/from16 v18, v7

    .end local v7    # "sharedUserPackageName":Ljava/lang/String;
    .local v18, "sharedUserPackageName":Ljava/lang/String;
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 898
    const/4 v15, 0x1

    .line 899
    goto :goto_ce

    .line 896
    .end local v18    # "sharedUserPackageName":Ljava/lang/String;
    .restart local v7    # "sharedUserPackageName":Ljava/lang/String;
    :cond_c3
    move-object/from16 v18, v7

    .line 893
    .end local v7    # "sharedUserPackageName":Ljava/lang/String;
    .end local v11    # "sharedUserPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_c5
    add-int/lit8 v4, v4, 0x1

    move/from16 v11, p5

    move/from16 v7, v17

    goto :goto_a7

    .line 889
    .end local v14    # "sharedUserPackageNames":[Ljava/lang/String;
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_cc
    move-object/from16 v16, v4

    .line 903
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_ce
    :goto_ce
    if-nez v15, :cond_f1

    .line 904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isn\'t requested by package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "PackageManager"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void

    .line 883
    .end local v15    # "isRequested":Z
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_ef
    move-object/from16 v16, v4

    .line 908
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_f1
    nop

    .line 909
    invoke-virtual {v5, v0, v12, v1, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    move-result v4

    .line 910
    .local v4, "permissionUpdated":Z
    if-eqz v4, :cond_101

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_101

    .line 911
    invoke-direct {v8, v10, v12}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 913
    :cond_101
    if-eqz v4, :cond_130

    if-eqz v13, :cond_130

    .line 916
    invoke-virtual {v5, v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v7

    if-eqz v7, :cond_11b

    .line 917
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v12, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 918
    .local v7, "userUid":I
    invoke-virtual {v13, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdatedNotifyListener(I)V

    .line 919
    .end local v7    # "userUid":I
    :cond_11a
    goto :goto_130

    :cond_11b
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v7

    if-nez v7, :cond_123

    if-eqz v6, :cond_11a

    .line 921
    :cond_123
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v11, 0x0

    aput v12, v7, v11

    .line 922
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v14

    .line 921
    invoke-virtual {v13, v7, v11, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdatedNotifyListener([IZI)V

    .line 925
    :cond_130
    :goto_130
    return-void

    .line 877
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v6    # "hadState":Z
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    :cond_131
    move-object/from16 v16, v4

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 875
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_14a
    move-exception v0

    move-object/from16 v16, v4

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_14d
    :try_start_14d
    monitor-exit v5
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14f

    throw v0

    :catchall_14f
    move-exception v0

    goto :goto_14d

    .line 869
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_151
    move-object/from16 v16, v4

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    .end local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_16a
    move-object/from16 v16, v4

    .line 865
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_16c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "PackageManager"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method private updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 5121
    if-nez p1, :cond_4

    .line 5122
    const/4 v0, 0x1

    return v0

    .line 5125
    :cond_4
    const/4 v0, 0x0

    .line 5126
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 5127
    .local v1, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5128
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5129
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 5130
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 5131
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 5132
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/BasePermission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 5134
    :cond_32
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 5138
    goto :goto_15

    .line 5142
    :cond_3d
    const/4 v0, 0x1

    .line 5145
    if-eqz p2, :cond_4a

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9d

    .line 5146
    :cond_4a
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5147
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5146
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 5149
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v5}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 5150
    .local v5, "userIds":[I
    array-length v6, v5

    .line 5151
    .local v6, "numUserIds":I
    const/4 v7, 0x0

    .local v7, "userIdNum":I
    :goto_7e
    if-ge v7, v6, :cond_8f

    .line 5152
    aget v8, v5, v7

    .line 5153
    .local v8, "userId":I
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v10, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$tAcOXvvLnf8YMDota79zZypUyds;

    invoke-direct {v10, p0, v4, v8, p3}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$tAcOXvvLnf8YMDota79zZypUyds;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 5151
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_7e

    .line 5157
    .end local v5    # "userIds":[I
    .end local v6    # "numUserIds":I
    .end local v7    # "userIdNum":I
    :cond_8f
    goto :goto_9a

    .line 5158
    :cond_90
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$j-DIsHtFHtuJlpA7bCF_7WTaYZs;

    invoke-direct {v6, p0, v4}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$j-DIsHtFHtuJlpA7bCF_7WTaYZs;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/BasePermission;)V

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 5172
    :goto_9a
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 5174
    :cond_9d
    if-nez v1, :cond_ad

    .line 5175
    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(I)V

    move-object v1, v5

    .line 5177
    :cond_ad
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5178
    nop

    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto/16 :goto_15

    .line 5179
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_b3
    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_9 .. :try_end_b4} :catchall_118

    .line 5180
    if-eqz v1, :cond_117

    .line 5181
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ba
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_117

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 5182
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5183
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 5184
    .local v4, "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5186
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 5185
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 5187
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5188
    if-eqz v4, :cond_e3

    if-eqz v5, :cond_e3

    .line 5189
    :try_start_e1
    monitor-exit v6

    goto :goto_ba

    .line 5191
    :cond_e3
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5192
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5191
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5193
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 5194
    monitor-exit v6

    .line 5195
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    goto :goto_ba

    .line 5194
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_114
    move-exception v2

    monitor-exit v6
    :try_end_116
    .catchall {:try_start_e1 .. :try_end_116} :catchall_114

    throw v2

    .line 5197
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_117
    return v0

    .line 5179
    :catchall_118
    move-exception v3

    :try_start_119
    monitor-exit v2
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    throw v3
.end method

.method private updatePermissionStatesAndFlagsInternalForMDM(Ljava/lang/String;Ljava/util/List;IIIIZ)Z
    .registers 41
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "permState"    # I
    .param p4, "flagMask"    # I
    .param p5, "flagValues"    # I
    .param p6, "userId"    # I
    .param p7, "writeToFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIIZ)Z"
        }
    .end annotation

    .line 2440
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p6

    const/4 v1, 0x0

    .local v1, "isExternalStoragePermChanged":Z
    const/4 v2, 0x0

    .line 2441
    .local v2, "isRuntimePermissionsSupported":Z
    const/4 v3, 0x1

    .line 2444
    .local v3, "res":Z
    const/4 v13, 0x0

    :try_start_e
    iget-object v14, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_5cf

    .line 2445
    :try_start_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_5be

    .line 2446
    .local v0, "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    if-eqz v9, :cond_2a

    .line 2447
    :try_start_18
    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 2646
    .end local v0    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catchall_22
    move-exception v0

    move-object/from16 v26, p2

    move/from16 v5, p5

    move-object v6, v9

    goto/16 :goto_5c4

    .line 2450
    .restart local v0    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_2a
    :goto_2a
    if-nez v9, :cond_37

    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->getPackageMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_22

    goto :goto_38

    :cond_37
    move-object v4, v0

    :goto_38
    :try_start_38
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_5be

    move v4, v3

    move v3, v2

    move v2, v1

    move-object/from16 v1, p2

    .end local p2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "isExternalStoragePermChanged":Z
    .local v3, "isRuntimePermissionsSupported":Z
    .local v4, "res":Z
    :goto_41
    :try_start_41
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_5b4

    if-eqz v5, :cond_567

    :try_start_47
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_563

    move-object/from16 v16, v5

    .line 2451
    .local v16, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v2, 0x0

    .line 2452
    const/4 v3, 0x0

    .line 2453
    if-nez v16, :cond_68

    .line 2454
    :try_start_53
    const-string v5, "PackageManager"

    const-string v6, "AndroidPackage is null "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5d

    .line 2455
    and-int/lit8 v4, v4, 0x0

    .line 2456
    goto :goto_41

    .line 2646
    .end local v0    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catchall_5d
    move-exception v0

    move/from16 v5, p5

    move-object/from16 v26, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v6, v9

    goto/16 :goto_5c4

    .line 2459
    .restart local v0    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_68
    :try_start_68
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    .line 2460
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v7, v13, v6, v12}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_554

    move-object v6, v5

    .line 2461
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_a3

    .line 2462
    if-eqz p7, :cond_a0

    .line 2463
    :try_start_7c
    const-string v5, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v17, "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const-string v0, "Package "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not installed for user "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_7c .. :try_end_9c} :catchall_5d

    .line 2464
    move-object/from16 v0, v17

    const/4 v13, 0x0

    goto :goto_41

    .line 2462
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v0    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_a0
    move-object/from16 v17, v0

    .end local v0    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    goto :goto_a5

    .line 2461
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v0    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_a3
    move-object/from16 v17, v0

    .line 2469
    .end local v0    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_a5
    :try_start_a5
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0
    :try_end_af
    .catchall {:try_start_a5 .. :try_end_af} :catchall_554

    .line 2470
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_e2

    .line 2471
    :try_start_b1
    const-string v5, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_d6

    move/from16 p2, v2

    .end local v2    # "isExternalStoragePermChanged":Z
    .local p2, "isExternalStoragePermChanged":Z
    :try_start_ba
    const-string v2, "SettingBase is null: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    and-int/lit8 v4, v4, 0x0

    .line 2473
    move/from16 v2, p2

    move-object/from16 v0, v17

    const/4 v13, 0x0

    goto/16 :goto_41

    .line 2646
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local p2    # "isExternalStoragePermChanged":Z
    .restart local v2    # "isExternalStoragePermChanged":Z
    :catchall_d6
    move-exception v0

    move/from16 p2, v2

    move/from16 v5, p5

    move-object/from16 v26, v1

    move v2, v3

    move v3, v4

    move-object v6, v9

    goto/16 :goto_55f

    .line 2477
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_e2
    move/from16 p2, v2

    .end local v2    # "isExternalStoragePermChanged":Z
    .restart local p2    # "isExternalStoragePermChanged":Z
    if-eqz v6, :cond_fb

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_e8
    .catchall {:try_start_ba .. :try_end_e8} :catchall_ef

    const/16 v5, 0x16

    if-gt v2, v5, :cond_ed

    goto :goto_fb

    :cond_ed
    const/4 v2, 0x1

    goto :goto_fc

    .line 2646
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catchall_ef
    move-exception v0

    move/from16 v5, p5

    move-object/from16 v26, v1

    move v2, v3

    move v3, v4

    move-object v6, v9

    move/from16 v1, p2

    goto/16 :goto_5c4

    .line 2477
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_fb
    :goto_fb
    const/4 v2, 0x0

    :goto_fc
    move/from16 v18, v2

    .line 2478
    .end local v3    # "isRuntimePermissionsSupported":Z
    .local v18, "isRuntimePermissionsSupported":Z
    :try_start_fe
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    move v5, v2

    .line 2479
    .local v5, "appId":I
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2
    :try_end_10b
    .catchall {:try_start_fe .. :try_end_10b} :catchall_546

    move-object v3, v2

    .line 2480
    .local v3, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    if-eqz v1, :cond_122

    :try_start_10e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_112
    .catchall {:try_start_10e .. :try_end_112} :catchall_115

    if-gtz v2, :cond_135

    goto :goto_122

    .line 2646
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "appId":I
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catchall_115
    move-exception v0

    move/from16 v5, p5

    move-object/from16 v26, v1

    move v3, v4

    move-object v6, v9

    move/from16 v2, v18

    move/from16 v1, p2

    goto/16 :goto_5c4

    .line 2481
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "appId":I
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_122
    :goto_122
    :try_start_122
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 2482
    if-eqz v1, :cond_52b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_135

    .line 2483
    move/from16 v5, p5

    move-object/from16 v27, v15

    goto/16 :goto_537

    .line 2486
    :cond_135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2487
    .local v2, "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_13e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20
    :try_end_142
    .catchall {:try_start_122 .. :try_end_142} :catchall_546

    if-eqz v20, :cond_164

    :try_start_144
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v21, v20

    .line 2488
    .local v21, "permission":Ljava/lang/String;
    iget-object v13, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    .end local v21    # "permission":Ljava/lang/String;
    .local v0, "permission":Ljava/lang/String;
    .local v22, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v13, v0}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v13

    .line 2489
    .local v13, "basepermission":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v13, :cond_161

    invoke-virtual {v13}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v21

    if-eqz v21, :cond_161

    .line 2490
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_161
    .catchall {:try_start_144 .. :try_end_161} :catchall_115

    .line 2492
    .end local v0    # "permission":Ljava/lang/String;
    .end local v13    # "basepermission":Lcom/android/server/pm/permission/BasePermission;
    :cond_161
    move-object/from16 v0, v22

    goto :goto_13e

    .line 2494
    .end local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    :cond_164
    move-object/from16 v22, v0

    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v13, 0x0

    .line 2495
    .end local v1    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p7, :cond_18a

    :try_start_169
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_179

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2496
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_177
    .catchall {:try_start_169 .. :try_end_177} :catchall_17d

    if-eqz v0, :cond_18a

    .line 2497
    :cond_179
    const/4 v0, 0x1

    move/from16 v19, v0

    .end local p2    # "isExternalStoragePermChanged":Z
    .local v0, "isExternalStoragePermChanged":Z
    goto :goto_18c

    .line 2646
    .end local v0    # "isExternalStoragePermChanged":Z
    .end local v2    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "appId":I
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local p2    # "isExternalStoragePermChanged":Z
    :catchall_17d
    move-exception v0

    move/from16 v1, p2

    move/from16 v5, p5

    move v3, v4

    move-object v6, v9

    move-object/from16 v26, v13

    move/from16 v2, v18

    goto/16 :goto_5c4

    .line 2500
    .restart local v2    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "appId":I
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_18a
    move/from16 v19, p2

    .end local p2    # "isExternalStoragePermChanged":Z
    .local v19, "isExternalStoragePermChanged":Z
    :goto_18c
    :try_start_18c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_190
    .catchall {:try_start_18c .. :try_end_190} :catchall_51d

    move/from16 v21, v4

    .end local v4    # "res":Z
    .local v21, "res":Z
    :goto_192
    :try_start_192
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4ed

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    .line 2501
    .local v4, "permission":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1
    :try_end_1a5
    .catchall {:try_start_192 .. :try_end_1a5} :catchall_50e

    .line 2502
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v1, :cond_1da

    .line 2503
    move-object/from16 p2, v0

    :try_start_1a9
    const-string v0, "PackageManager"

    move-object/from16 v23, v2

    .end local v2    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v23, "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v6

    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v24, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v6, "BasePermission is null: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c3
    .catchall {:try_start_1a9 .. :try_end_1c3} :catchall_1cc

    .line 2504
    and-int/lit8 v21, v21, 0x0

    .line 2505
    move-object/from16 v0, p2

    move-object/from16 v2, v23

    move-object/from16 v6, v24

    goto :goto_192

    .line 2646
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "appId":I
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_1cc
    move-exception v0

    move/from16 v5, p5

    move-object v6, v9

    move-object/from16 v26, v13

    move/from16 v2, v18

    move/from16 v1, v19

    move/from16 v3, v21

    goto/16 :goto_5c4

    .line 2508
    .restart local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v2    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v4    # "permission":Ljava/lang/String;
    .restart local v5    # "appId":I
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1da
    move-object/from16 p2, v0

    move-object/from16 v23, v2

    move-object/from16 v24, v6

    .end local v2    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v23    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1e0
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getContainerCriticalApps()Ljava/util/List;

    move-result-object v0
    :try_end_1e4
    .catchall {:try_start_1e0 .. :try_end_1e4} :catchall_50e

    .line 2509
    .local v0, "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_25b

    .line 2510
    :try_start_1e6
    invoke-virtual {v3, v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v2

    .line 2511
    .local v2, "flags":I
    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_256

    .line 2512
    if-eqz v0, :cond_208

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_208

    .line 2513
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_208

    const/16 v6, 0x10

    if-ne v11, v6, :cond_208

    .line 2514
    move/from16 v5, p5

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    goto/16 :goto_4fb

    .line 2516
    :cond_208
    if-eqz p7, :cond_245

    .line 2517
    const-string v6, "PackageManager"

    move-object/from16 v25, v0

    .end local v0    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v2

    .end local v2    # "flags":I
    .local v26, "flags":I
    const-string v2, "Cannot modify system fixed permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2518
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2517
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v29, v5

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    const/4 v0, 0x1

    move/from16 v5, p5

    move-object v15, v3

    move-object v13, v7

    goto/16 :goto_4cc

    .line 2516
    .end local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "flags":I
    .restart local v0    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "flags":I
    :cond_245
    move-object/from16 v25, v0

    move/from16 v26, v2

    .end local v0    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "flags":I
    .restart local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "flags":I
    move/from16 v29, v5

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    const/4 v0, 0x1

    move/from16 v5, p5

    move-object v15, v3

    move-object v13, v7

    goto/16 :goto_4cc

    .line 2511
    .end local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "flags":I
    .restart local v0    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "flags":I
    :cond_256
    move-object/from16 v25, v0

    move/from16 v26, v2

    .end local v0    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "flags":I
    .restart local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "flags":I
    goto :goto_25d

    .line 2509
    .end local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "flags":I
    .restart local v0    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_25b
    move-object/from16 v25, v0

    .line 2525
    .end local v0    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_25d
    const/16 v0, 0x8

    const/4 v6, -0x1

    const/4 v2, 0x1

    if-eq v10, v2, :cond_368

    const/4 v2, 0x2

    if-eq v10, v2, :cond_273

    move-object v10, v1

    move-object v9, v4

    move/from16 v29, v5

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    const/4 v0, 0x1

    move-object v15, v3

    move-object v13, v7

    goto/16 :goto_4b2

    .line 2579
    :cond_273
    if-eqz v18, :cond_2e1

    .line 2580
    invoke-virtual {v3, v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d4

    .line 2581
    nop

    .line 2582
    invoke-virtual {v3, v1, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    if-ne v6, v0, :cond_2ae

    .line 2583
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to deny the permission "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2584
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2583
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    and-int/lit8 v21, v21, 0x0

    .line 2586
    move-object/from16 v0, p2

    move-object/from16 v2, v23

    move-object/from16 v6, v24

    goto/16 :goto_192

    .line 2588
    :cond_2ae
    if-eqz p7, :cond_2c7

    .line 2589
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$4;

    invoke-direct {v2, v8, v5, v12}, Lcom/android/server/pm/permission/PermissionManagerService$4;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;II)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2ba
    .catchall {:try_start_1e6 .. :try_end_2ba} :catchall_1cc

    move-object v10, v1

    move-object v9, v4

    move/from16 v29, v5

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    const/4 v0, 0x1

    move-object v15, v3

    move-object v13, v7

    goto/16 :goto_4b2

    .line 2588
    :cond_2c7
    move-object v10, v1

    move-object v9, v4

    move/from16 v29, v5

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    const/4 v0, 0x1

    move-object v15, v3

    move-object v13, v7

    goto/16 :goto_4b2

    .line 2580
    :cond_2d4
    move-object v10, v1

    move-object v9, v4

    move/from16 v29, v5

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    const/4 v0, 0x1

    move-object v15, v3

    move-object v13, v7

    goto/16 :goto_4b2

    .line 2605
    :cond_2e1
    :try_start_2e1
    invoke-virtual {v3, v1, v12, v0, v0}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2609
    const-string v0, "android"

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2ee
    .catchall {:try_start_2e1 .. :try_end_2ee} :catchall_359

    if-eqz v0, :cond_2f9

    .line 2610
    :try_start_2f0
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    goto :goto_2fa

    :cond_2f9
    move v0, v6

    .line 2611
    .local v0, "appOp":I
    :goto_2fa
    if-ne v0, v6, :cond_331

    .line 2612
    const-string v2, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v1

    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v26, "bp":Lcom/android/server/pm/permission/BasePermission;
    const-string v1, "Invalid appOp "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for package "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " permission "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_324
    .catchall {:try_start_2f0 .. :try_end_324} :catchall_1cc

    .line 2613
    move/from16 v29, v5

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    const/4 v0, 0x1

    move/from16 v5, p5

    move-object v15, v3

    move-object v13, v7

    goto/16 :goto_4cc

    .line 2616
    .end local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_331
    move-object/from16 v26, v1

    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :try_start_333
    iget-object v6, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$5;
    :try_end_337
    .catchall {:try_start_333 .. :try_end_337} :catchall_359

    move-object/from16 v10, v26

    .end local v26    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v10, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object v1, v2

    move-object/from16 v26, v13

    move-object v13, v2

    .end local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v26, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p0

    move-object/from16 v27, v15

    move-object v15, v3

    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v15, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move/from16 v3, p6

    move-object v9, v4

    .end local v4    # "permission":Ljava/lang/String;
    .local v9, "permission":Ljava/lang/String;
    move v4, v5

    move/from16 v28, v5

    .end local v5    # "appId":I
    .local v28, "appId":I
    move v5, v0

    move/from16 v29, v0

    move-object v0, v6

    .end local v0    # "appOp":I
    .local v29, "appOp":I
    move-object v6, v7

    :try_start_34d
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$5;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;IIILjava/lang/String;)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2634
    move-object v13, v7

    move/from16 v29, v28

    const/4 v0, 0x1

    .end local v29    # "appOp":I
    goto/16 :goto_4b2

    .line 2646
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v9    # "permission":Ljava/lang/String;
    .end local v10    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v15    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "appId":I
    .restart local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_359
    move-exception v0

    move-object/from16 v26, v13

    move-object/from16 v6, p1

    move/from16 v5, p5

    move/from16 v2, v18

    move/from16 v1, v19

    move/from16 v3, v21

    .end local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_5c4

    .line 2529
    .end local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v4    # "permission":Ljava/lang/String;
    .restart local v5    # "appId":I
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v23    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_368
    move-object v10, v1

    move-object v9, v4

    move/from16 v28, v5

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    move-object v15, v3

    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "appId":I
    .end local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "permission":Ljava/lang/String;
    .restart local v10    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v15    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "appId":I
    if-eqz v18, :cond_449

    .line 2530
    invoke-virtual {v15, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_430

    .line 2531
    invoke-virtual {v15, v10, v12}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v0

    .line 2532
    .local v0, "ret":I
    const-string v1, "android"

    invoke-virtual {v10}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_392

    .line 2533
    invoke-virtual {v10}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    goto :goto_393

    :cond_392
    move v1, v6

    :goto_393
    move v13, v1

    .line 2535
    .local v13, "appOp":I
    if-ne v13, v6, :cond_3c4

    .line 2536
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid appOp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    move/from16 v5, p5

    move-object v13, v7

    move/from16 v29, v28

    const/4 v0, 0x1

    goto/16 :goto_4cc

    .line 2540
    :cond_3c4
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p6

    move/from16 v3, v28

    move v4, v13

    move-object v5, v7

    move/from16 v31, v13

    move v13, v6

    .end local v13    # "appOp":I
    .local v31, "appOp":I
    move/from16 v6, v29

    move-object/from16 v32, v7

    .end local v7    # "pkgName":Ljava/lang/String;
    .local v32, "pkgName":Ljava/lang/String;
    move/from16 v7, v30

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->setUidMode(IIILjava/lang/String;ZZ)V

    .line 2541
    if-ne v13, v0, :cond_417

    .line 2542
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to grant the permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2542
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    and-int/lit8 v21, v21, 0x0

    .line 2545
    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move/from16 v10, p3

    move-object v3, v15

    move-object/from16 v2, v23

    move-object/from16 v6, v24

    move-object/from16 v13, v26

    move-object/from16 v15, v27

    move/from16 v5, v28

    move-object/from16 v7, v32

    goto/16 :goto_192

    .line 2546
    :cond_417
    const/4 v7, 0x1

    if-ne v7, v0, :cond_427

    .line 2547
    iget-object v1, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$3;

    move/from16 v6, v28

    .end local v28    # "appId":I
    .local v6, "appId":I
    invoke-direct {v2, v8, v6, v12}, Lcom/android/server/pm/permission/PermissionManagerService$3;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_426
    .catchall {:try_start_34d .. :try_end_426} :catchall_43c

    goto :goto_429

    .line 2546
    .end local v6    # "appId":I
    .restart local v28    # "appId":I
    :cond_427
    move/from16 v6, v28

    .line 2554
    .end local v0    # "ret":I
    .end local v28    # "appId":I
    .end local v31    # "appOp":I
    .restart local v6    # "appId":I
    :goto_429
    move/from16 v29, v6

    move v0, v7

    move-object/from16 v13, v32

    goto/16 :goto_4b2

    .line 2530
    .end local v6    # "appId":I
    .end local v32    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v28    # "appId":I
    :cond_430
    move-object/from16 v32, v7

    move/from16 v6, v28

    const/4 v7, 0x1

    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v28    # "appId":I
    .restart local v6    # "appId":I
    .restart local v32    # "pkgName":Ljava/lang/String;
    move/from16 v29, v6

    move v0, v7

    move-object/from16 v13, v32

    goto/16 :goto_4b2

    .line 2646
    .end local v6    # "appId":I
    .end local v9    # "permission":Ljava/lang/String;
    .end local v10    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v15    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "pkgName":Ljava/lang/String;
    :catchall_43c
    move-exception v0

    move-object/from16 v6, p1

    move/from16 v5, p5

    move/from16 v2, v18

    move/from16 v1, v19

    move/from16 v3, v21

    goto/16 :goto_5c4

    .line 2560
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v9    # "permission":Ljava/lang/String;
    .restart local v10    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v15    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v23    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "appId":I
    :cond_449
    move v13, v6

    move-object/from16 v32, v7

    move/from16 v6, v28

    const/4 v7, 0x1

    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v28    # "appId":I
    .restart local v6    # "appId":I
    .restart local v32    # "pkgName":Ljava/lang/String;
    :try_start_44f
    const-string v1, "android"

    invoke-virtual {v10}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_459
    .catchall {:try_start_44f .. :try_end_459} :catchall_4e0

    if-eqz v1, :cond_464

    .line 2561
    :try_start_45b
    invoke-virtual {v10}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    goto :goto_465

    :cond_464
    move v1, v13

    :goto_465
    move v5, v1

    .line 2563
    .local v5, "appOp":I
    if-ne v5, v13, :cond_496

    .line 2564
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid appOp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v32

    .end local v32    # "pkgName":Ljava/lang/String;
    .local v13, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_490
    .catchall {:try_start_45b .. :try_end_490} :catchall_43c

    .line 2565
    move/from16 v5, p5

    move/from16 v29, v6

    move v0, v7

    goto :goto_4cc

    .line 2569
    .end local v13    # "pkgName":Ljava/lang/String;
    .restart local v32    # "pkgName":Ljava/lang/String;
    :cond_496
    move-object/from16 v13, v32

    .end local v32    # "pkgName":Ljava/lang/String;
    .restart local v13    # "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_499
    invoke-virtual {v15, v10, v12, v0, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2572
    const/4 v0, 0x1

    const/16 v20, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p6

    move v3, v6

    move v4, v5

    move/from16 v28, v5

    .end local v5    # "appOp":I
    .local v28, "appOp":I
    move-object v5, v13

    move/from16 v29, v6

    .end local v6    # "appId":I
    .local v29, "appId":I
    move v6, v0

    move v0, v7

    move/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->setUidMode(IIILjava/lang/String;ZZ)V

    .line 2575
    .end local v28    # "appOp":I
    nop

    .line 2640
    :goto_4b2
    invoke-direct {v8, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->getSourcePackageSetting(Lcom/android/server/pm/permission/BasePermission;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_4b6
    .catchall {:try_start_499 .. :try_end_4b6} :catchall_4e0

    if-eqz v1, :cond_4c9

    .line 2641
    move/from16 v5, p5

    :try_start_4ba
    invoke-virtual {v15, v10, v12, v11, v5}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_4bd
    .catchall {:try_start_4ba .. :try_end_4bd} :catchall_4be

    goto :goto_4cb

    .line 2646
    .end local v9    # "permission":Ljava/lang/String;
    .end local v10    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v15    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "appId":I
    :catchall_4be
    move-exception v0

    move-object/from16 v6, p1

    move/from16 v2, v18

    move/from16 v1, v19

    move/from16 v3, v21

    goto/16 :goto_5c4

    .line 2640
    .restart local v9    # "permission":Ljava/lang/String;
    .restart local v10    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v13    # "pkgName":Ljava/lang/String;
    .restart local v15    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v23    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "appId":I
    :cond_4c9
    move/from16 v5, p5

    .line 2643
    .end local v9    # "permission":Ljava/lang/String;
    .end local v10    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v25    # "containerCriticalApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4cb
    nop

    .line 2500
    :goto_4cc
    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move/from16 v10, p3

    move-object v7, v13

    move-object v3, v15

    move-object/from16 v2, v23

    move-object/from16 v6, v24

    move-object/from16 v13, v26

    move-object/from16 v15, v27

    move/from16 v5, v29

    goto/16 :goto_192

    .line 2646
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v15    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v29    # "appId":I
    :catchall_4e0
    move-exception v0

    move/from16 v5, p5

    move-object/from16 v6, p1

    move/from16 v2, v18

    move/from16 v1, v19

    move/from16 v3, v21

    goto/16 :goto_5c4

    .line 2500
    .end local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v5, "appId":I
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .local v13, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4ed
    move-object/from16 v23, v2

    move/from16 v29, v5

    move-object/from16 v24, v6

    move-object/from16 v26, v13

    move-object/from16 v27, v15

    move/from16 v5, p5

    move-object v15, v3

    move-object v13, v7

    .line 2644
    .end local v2    # "runtimePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "appId":I
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v22    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4fb
    move-object/from16 v9, p1

    move/from16 v10, p3

    move-object/from16 v0, v17

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v4, v21

    move-object/from16 v1, v26

    move-object/from16 v15, v27

    const/4 v13, 0x0

    goto/16 :goto_41

    .line 2646
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_50e
    move-exception v0

    move/from16 v5, p5

    move-object/from16 v26, v13

    move-object/from16 v6, p1

    move/from16 v2, v18

    move/from16 v1, v19

    move/from16 v3, v21

    .end local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_5c4

    .end local v21    # "res":Z
    .end local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "res":Z
    .restart local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_51d
    move-exception v0

    move/from16 v5, p5

    move-object/from16 v26, v13

    move-object/from16 v6, p1

    move v3, v4

    move/from16 v2, v18

    move/from16 v1, v19

    .end local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_5c4

    .line 2482
    .end local v19    # "isExternalStoragePermChanged":Z
    .end local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5    # "appId":I
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local p2    # "isExternalStoragePermChanged":Z
    :cond_52b
    move-object/from16 v22, v0

    move/from16 v29, v5

    move-object/from16 v24, v6

    move-object v13, v7

    move-object/from16 v27, v15

    move/from16 v5, p5

    move-object v15, v3

    .line 2450
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "appId":I
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v16    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_537
    move-object/from16 v9, p1

    move/from16 v2, p2

    move/from16 v10, p3

    move-object/from16 v0, v17

    move/from16 v3, v18

    move-object/from16 v15, v27

    const/4 v13, 0x0

    goto/16 :goto_41

    .line 2646
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catchall_546
    move-exception v0

    move/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v26, v1

    move v3, v4

    move/from16 v2, v18

    move/from16 v1, p2

    goto/16 :goto_5c4

    .end local v18    # "isRuntimePermissionsSupported":Z
    .end local p2    # "isExternalStoragePermChanged":Z
    .local v2, "isExternalStoragePermChanged":Z
    .local v3, "isRuntimePermissionsSupported":Z
    :catchall_554
    move-exception v0

    move/from16 v5, p5

    move/from16 p2, v2

    move-object/from16 v6, p1

    move-object/from16 v26, v1

    move v2, v3

    move v3, v4

    :goto_55f
    move/from16 v1, p2

    .end local v2    # "isExternalStoragePermChanged":Z
    .restart local p2    # "isExternalStoragePermChanged":Z
    goto/16 :goto_5c4

    .end local p2    # "isExternalStoragePermChanged":Z
    .restart local v2    # "isExternalStoragePermChanged":Z
    :catchall_563
    move-exception v0

    move/from16 v5, p5

    goto :goto_5b1

    .line 2645
    .local v0, "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_567
    move/from16 v5, p5

    move-object/from16 v17, v0

    .end local v0    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :try_start_56b
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v0, v12, v6}, Landroid/content/pm/PackageManagerInternal;->writeRuntimePermissionsForUserLPrForMDM(IZ)V

    .line 2646
    .end local v17    # "pkgParser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    monitor-exit v14
    :try_end_572
    .catchall {:try_start_56b .. :try_end_572} :catchall_5b0

    .line 2651
    if-eqz p7, :cond_5ac

    move-object/from16 v6, p1

    if-eqz v6, :cond_5ae

    if-eqz v2, :cond_5ae

    .line 2653
    :try_start_57a
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0

    if-eqz v0, :cond_5a0

    .line 2654
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    .line 2655
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 2656
    .local v0, "mountServiceInternal":Landroid/os/storage/StorageManagerInternal;
    iget-object v7, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v10, v9, v12}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 2657
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_5a0

    .line 2658
    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    .line 2659
    .local v9, "uid":I
    invoke-virtual {v0, v9, v6}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_5a0
    .catch Ljava/lang/Exception; {:try_start_57a .. :try_end_5a0} :catch_5a1

    .line 2664
    .end local v0    # "mountServiceInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "uid":I
    :cond_5a0
    goto :goto_5ae

    .line 2662
    :catch_5a1
    move-exception v0

    .line 2663
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_5a2
    const-string v7, "PackageManager"

    const-string v9, "Failed with mountServiceInternal.onExternalStoragePolicyChanged() "

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a9
    .catch Ljava/lang/Exception; {:try_start_5a2 .. :try_end_5a9} :catch_5aa

    goto :goto_5ae

    .line 2666
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_5aa
    move-exception v0

    goto :goto_5d8

    .line 2651
    :cond_5ac
    move-object/from16 v6, p1

    .line 2670
    :cond_5ae
    :goto_5ae
    nop

    .line 2671
    return v4

    .line 2646
    :catchall_5b0
    move-exception v0

    :goto_5b1
    move-object/from16 v6, p1

    goto :goto_5b8

    :catchall_5b4
    move-exception v0

    move/from16 v5, p5

    move-object v6, v9

    :goto_5b8
    move-object/from16 v26, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_5c4

    .end local v4    # "res":Z
    .local v1, "isExternalStoragePermChanged":Z
    .local v2, "isRuntimePermissionsSupported":Z
    .local v3, "res":Z
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_5be
    move-exception v0

    move/from16 v5, p5

    move-object v6, v9

    move-object/from16 v26, p2

    .end local p2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5c4
    :try_start_5c4
    monitor-exit v14
    :try_end_5c5
    .catchall {:try_start_5c4 .. :try_end_5c5} :catchall_5cd

    .end local v1    # "isExternalStoragePermChanged":Z
    .end local v2    # "isRuntimePermissionsSupported":Z
    .end local v3    # "res":Z
    .end local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p3    # "permState":I
    .end local p4    # "flagMask":I
    .end local p5    # "flagValues":I
    .end local p6    # "userId":I
    .end local p7    # "writeToFile":Z
    :try_start_5c5
    throw v0
    :try_end_5c6
    .catch Ljava/lang/Exception; {:try_start_5c5 .. :try_end_5c6} :catch_5c6

    .line 2666
    .restart local v1    # "isExternalStoragePermChanged":Z
    .restart local v2    # "isRuntimePermissionsSupported":Z
    .restart local v3    # "res":Z
    .restart local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p3    # "permState":I
    .restart local p4    # "flagMask":I
    .restart local p5    # "flagValues":I
    .restart local p6    # "userId":I
    .restart local p7    # "writeToFile":Z
    :catch_5c6
    move-exception v0

    move v4, v3

    move v3, v2

    move v2, v1

    move-object/from16 v1, v26

    goto :goto_5d8

    .line 2646
    :catchall_5cd
    move-exception v0

    goto :goto_5c4

    .line 2666
    .end local v26    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_5cf
    move-exception v0

    move/from16 v5, p5

    move-object v6, v9

    move v4, v3

    move v3, v2

    move v2, v1

    move-object/from16 v1, p2

    .line 2667
    .end local p2    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "isExternalStoragePermChanged":Z
    .local v3, "isRuntimePermissionsSupported":Z
    .restart local v4    # "res":Z
    :goto_5d8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2668
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed with Exception "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PackageManager"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    const/4 v7, 0x0

    return v7
.end method

.method private updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5254
    if-nez p1, :cond_4

    .line 5255
    const/4 v0, 0x1

    return v0

    .line 5257
    :cond_4
    const/4 v0, 0x0

    .line 5259
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 5260
    .local v1, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5261
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5262
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 5263
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 5264
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 5268
    goto :goto_15

    .line 5272
    :cond_2c
    const/4 v0, 0x1

    .line 5273
    if-eqz p2, :cond_39

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 5274
    :cond_39
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing permission tree "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " that used to be declared by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5275
    invoke-virtual {v4}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5274
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5276
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 5278
    :cond_62
    if-nez v1, :cond_72

    .line 5279
    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(I)V

    move-object v1, v5

    .line 5281
    :cond_72
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5282
    nop

    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_15

    .line 5283
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_9 .. :try_end_78} :catchall_dc

    .line 5284
    if-eqz v1, :cond_db

    .line 5285
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_db

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 5286
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5287
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    .line 5288
    .local v4, "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5290
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 5289
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 5291
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5292
    if-eqz v4, :cond_a7

    if-eqz v5, :cond_a7

    .line 5293
    :try_start_a5
    monitor-exit v6

    goto :goto_7e

    .line 5295
    :cond_a7
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dangling permission tree: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5296
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5295
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5297
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 5298
    monitor-exit v6

    .line 5299
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    goto :goto_7e

    .line 5298
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_d8
    move-exception v2

    monitor-exit v6
    :try_end_da
    .catchall {:try_start_a5 .. :try_end_da} :catchall_d8

    throw v2

    .line 5301
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sourcePkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_db
    return v0

    .line 5283
    :catchall_dc
    move-exception v3

    :try_start_dd
    monitor-exit v2
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw v3
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 4917
    if-nez p2, :cond_5

    const/4 v0, 0x3

    move v5, v0

    goto :goto_7

    .line 4918
    :cond_5
    const/4 v0, 0x2

    move v5, v0

    :goto_7
    nop

    .line 4919
    .local v5, "flags":I
    nop

    .line 4920
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    .line 4919
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4921
    return-void
.end method

.method private updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 24
    .param p1, "changingPkgName"    # Ljava/lang/String;
    .param p2, "changingPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 5037
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTreeSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11

    .line 5041
    .local v11, "permissionTreesSourcePackageChanged":Z
    invoke-direct {v7, v8, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionSourcePackage(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result v12

    .line 5044
    .local v12, "permissionSourcePackageChanged":Z
    or-int v0, v11, v12

    if-eqz v0, :cond_1f

    .line 5047
    const-string v0, "PackageManager"

    const-string v1, "Permission ownership changed. Updating all permissions."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5048
    or-int/lit8 v0, p4, 0x1

    move v13, v0

    .end local p4    # "flags":I
    .local v0, "flags":I
    goto :goto_21

    .line 5044
    .end local v0    # "flags":I
    .restart local p4    # "flags":I
    :cond_1f
    move/from16 v13, p4

    .line 5051
    .end local p4    # "flags":I
    .local v13, "flags":I
    :goto_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->cacheBackgroundToForegoundPermissionMapping()V

    .line 5065
    const-wide/32 v14, 0x40000

    const-string/jumbo v0, "restorePermissionState"

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5067
    and-int/lit8 v0, v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v0, :cond_55

    .line 5068
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_3c

    move/from16 v3, v17

    goto :goto_3e

    :cond_3c
    move/from16 v3, v16

    .line 5069
    .local v3, "replaceAll":Z
    :goto_3e
    iget-object v6, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v14, v5

    move-object/from16 v5, p1

    move-object v15, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 5080
    .end local v3    # "replaceAll":Z
    :cond_55
    if-eqz v9, :cond_73

    .line 5082
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 5083
    .local v0, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v1, v13, 0x2

    if-eqz v1, :cond_6a

    .line 5084
    move-object/from16 v1, p3

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    move/from16 v16, v17

    goto :goto_6d

    .line 5083
    :cond_6a
    move-object/from16 v1, p3

    .line 5084
    :cond_6c
    nop

    :goto_6d
    move/from16 v2, v16

    .line 5085
    .local v2, "replace":Z
    invoke-direct {v7, v9, v2, v8, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_75

    .line 5080
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v2    # "replace":Z
    :cond_73
    move-object/from16 v1, p3

    .line 5093
    :goto_75
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAdminPermissions()V

    .line 5097
    const-wide/32 v2, 0x40000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5098
    return-void
.end method


# virtual methods
.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1163
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_c
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->addListenerLocked(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1169
    monitor-exit v0

    .line 1170
    return-void

    .line 1169
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .registers 13
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z

    .line 684
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 685
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_86

    .line 688
    iget v1, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v1, :cond_1d

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_15

    goto :goto_1d

    .line 689
    :cond_15
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Label must be specified in permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 694
    .local v1, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 695
    :try_start_28
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 696
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_34

    const/4 v4, 0x1

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    .line 697
    .local v4, "added":Z
    :goto_35
    iget v5, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v5

    .line 698
    .local v5, "fixedLevel":I
    if-eqz v4, :cond_4e

    .line 699
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V

    .line 700
    new-instance v6, Lcom/android/server/pm/permission/BasePermission;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v6

    goto :goto_54

    .line 702
    :cond_4e
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 706
    :goto_54
    invoke-virtual {v3, v5, p1, v1}, Lcom/android/server/pm/permission/BasePermission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z

    move-result v6

    .line 707
    .local v6, "changed":Z
    if-eqz v4, :cond_61

    .line 708
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 710
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "fixedLevel":I
    :cond_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_28 .. :try_end_62} :catchall_83

    .line 711
    if-eqz v6, :cond_69

    .line 712
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 714
    :cond_69
    return v4

    .line 703
    .end local v6    # "changed":Z
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v5    # "fixedLevel":I
    :cond_6a
    :try_start_6a
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "info":Landroid/content/pm/PermissionInfo;
    .end local p2    # "async":Z
    throw v6

    .line 710
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "added":Z
    .end local v5    # "fixedLevel":I
    .restart local v0    # "callingUid":I
    .restart local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "info":Landroid/content/pm/PermissionInfo;
    .restart local p2    # "async":Z
    :catchall_83
    move-exception v3

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_6a .. :try_end_85} :catchall_83

    throw v3

    .line 686
    .end local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_86
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant apps can\'t add permissions"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1273
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1276
    return v1

    .line 1279
    :cond_b
    nop

    .line 1280
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1281
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_19

    .line 1282
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 1284
    :cond_19
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_27

    .line 1285
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1289
    :cond_27
    return v1
.end method

.method public checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 1113
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v10, p5

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getCallingUid()I

    move-result v11

    .line 1114
    .local v11, "callingUid":I
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getCallingPid()I

    move-result v12

    .line 1115
    .local v12, "callingPid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v13, 0x0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_54

    if-ne v11, v10, :cond_22

    if-ne v12, v9, :cond_22

    goto :goto_54

    .line 1117
    :cond_22
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1120
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v13

    const/4 v2, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v8, v0, v2

    const/4 v2, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1117
    const-string v2, "Calling uid %d, pid %d cannot check device identifier access for package %s (uid=%d, pid=%d)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, "response":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1125
    .end local v0    # "response":Ljava/lang/String;
    :cond_54
    :goto_54
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 1126
    .local v14, "appId":I
    const/16 v0, 0x3e8

    if-eq v14, v0, :cond_c5

    if-nez v14, :cond_61

    move/from16 v16, v14

    goto :goto_c7

    .line 1130
    :cond_61
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_6c

    .line 1132
    return v13

    .line 1136
    :cond_6c
    if-eqz v8, :cond_c1

    .line 1138
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v6

    .line 1139
    .local v6, "token":J
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/AppOpsManager;

    .line 1142
    .local v15, "appOpsManager":Landroid/app/AppOpsManager;
    :try_start_7f
    const-string v3, "android:read_device_identifiers"
    :try_end_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_b7

    move-object v2, v15

    move/from16 v4, p5

    move-object/from16 v5, p1

    move/from16 v16, v14

    move-wide v13, v6

    .end local v6    # "token":J
    .end local v14    # "appId":I
    .local v13, "token":J
    .local v16, "appId":I
    move-object/from16 v6, p3

    move-object/from16 v7, p2

    :try_start_8d
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_b5

    if-nez v2, :cond_9b

    .line 1144
    nop

    .line 1147
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1144
    const/4 v0, 0x0

    return v0

    .line 1147
    :cond_9b
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1148
    nop

    .line 1151
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    .line 1152
    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1153
    .local v2, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_c3

    invoke-virtual {v2, v8, v9, v10}, Landroid/app/admin/DevicePolicyManager;->hasDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 1155
    const/4 v0, 0x0

    return v0

    .line 1147
    .end local v2    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :catchall_b5
    move-exception v0

    goto :goto_bb

    .end local v13    # "token":J
    .end local v16    # "appId":I
    .restart local v6    # "token":J
    .restart local v14    # "appId":I
    :catchall_b7
    move-exception v0

    move/from16 v16, v14

    move-wide v13, v6

    .end local v6    # "token":J
    .end local v14    # "appId":I
    .restart local v13    # "token":J
    .restart local v16    # "appId":I
    :goto_bb
    iget-object v2, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mInjector:Lcom/android/server/pm/permission/PermissionManagerService$Injector;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 1148
    throw v0

    .line 1136
    .end local v13    # "token":J
    .end local v15    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v16    # "appId":I
    .restart local v14    # "appId":I
    :cond_c1
    move/from16 v16, v14

    .line 1158
    .end local v14    # "appId":I
    .restart local v16    # "appId":I
    :cond_c3
    const/4 v0, -0x1

    return v0

    .line 1126
    .end local v16    # "appId":I
    .restart local v14    # "appId":I
    :cond_c5
    move/from16 v16, v14

    .line 1127
    .end local v14    # "appId":I
    .restart local v16    # "appId":I
    :goto_c7
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 974
    const/4 v0, -0x1

    if-eqz p1, :cond_29

    if-nez p2, :cond_6

    goto :goto_29

    .line 977
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v1, p3}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 978
    return v0

    .line 982
    :cond_f
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 983
    :try_start_12
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    .line 984
    .local v0, "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_26

    .line 985
    if-nez v0, :cond_1c

    .line 986
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermissionImpl(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 988
    :cond_1c
    new-instance v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$iwnRBDwjg4K5iRGbRU5_sVt0zaU;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$iwnRBDwjg4K5iRGbRU5_sVt0zaU;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;->checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I

    move-result v1

    return v1

    .line 984
    .end local v0    # "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    .line 975
    :cond_29
    :goto_29
    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .registers 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1050
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 1051
    return v0

    .line 1053
    :cond_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1054
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v2, v1}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1055
    return v0

    .line 1059
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_14
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    .line 1061
    .local v2, "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_28

    .line 1062
    if-nez v2, :cond_1e

    .line 1063
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermissionImpl(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1065
    :cond_1e
    new-instance v0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$eApyRxwI3JHTSVAxV9EbP43gFOo;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$eApyRxwI3JHTSVAxV9EbP43gFOo;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    invoke-interface {v2, p1, p2, v0}, Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;->checkUidPermission(Ljava/lang/String;ILjava/util/function/BiFunction;)I

    move-result v0

    return v0

    .line 1061
    .end local v2    # "checkPermissionDelegate":Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "PackageManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 526
    return-void

    .line 529
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, p1, p3}, Landroid/permission/PermissionControllerManager;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 610
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 611
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 612
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    return-object v1

    .line 614
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_14
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 616
    .local v2, "n":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 617
    .local v3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 618
    .local v5, "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    invoke-static {v5, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    nop

    .end local v5    # "pg":Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    goto :goto_2d

    .line 620
    :cond_42
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    .line 621
    .end local v2    # "n":I
    .end local v3    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_14 .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 590
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackagesInternal(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4256
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4251
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPackagesWithAutoRevokePolicy(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundPermissions()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 5594
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getDefaultBrowser(I)Ljava/lang/String;
    .registers 14
    .param p1, "userId"    # I

    .line 2004
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2005
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v7, 0x0

    if-eq v0, p1, :cond_12

    .line 2006
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2010
    return-object v7

    .line 2013
    :cond_1b
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2016
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    move-object v9, v0

    .line 2017
    .local v9, "appService":Lcom/samsung/android/knox/application/IApplicationPolicy;
    if-eqz v9, :cond_90

    .line 2018
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v10, v0

    .line 2019
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2020
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2021
    const-string/jumbo v0, "http:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_3f
    .catchall {:try_start_1e .. :try_end_3f} :catchall_9a

    .line 2023
    :try_start_3f
    invoke-interface {v9, v10, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v0

    move-object v11, v0

    .line 2025
    .local v11, "compName":Landroid/content/ComponentName;
    if-eqz v11, :cond_8e

    .line 2026
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2027
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x20000

    .line 2026
    move-object v1, v10

    move v4, v6

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    .line 2029
    .local v0, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 2030
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2031
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 2032
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_8b} :catch_8f
    .catchall {:try_start_3f .. :try_end_8b} :catchall_9a

    :try_start_8b
    monitor-exit v8

    return-object v1

    .line 2034
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8d
    goto :goto_5f

    .line 2037
    .end local v0    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "compName":Landroid/content/ComponentName;
    :cond_8e
    goto :goto_90

    .line 2036
    :catch_8f
    move-exception v0

    .line 2042
    .end local v9    # "appService":Lcom/samsung/android/knox/application/IApplicationPolicy;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultBrowserProvider:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    .line 2043
    .local v0, "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    monitor-exit v8
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_9a

    .line 2044
    if-eqz v0, :cond_99

    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v7

    :cond_99
    return-object v7

    .line 2043
    .end local v0    # "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit v8
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0
.end method

.method getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 585
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 741
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 742
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 629
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 630
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 631
    const/4 v1, 0x0

    return-object v1

    .line 633
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 634
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 635
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    .line 634
    invoke-static {v2, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 636
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 644
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 645
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 646
    return-object v2

    .line 648
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_11
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 650
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_1b

    .line 651
    monitor-exit v1

    return-object v2

    .line 653
    :cond_1b
    nop

    .line 654
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v2

    .line 653
    invoke-direct {p0, v2, p2, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I

    move-result v2

    .line 655
    .local v2, "adjustedProtectionLevel":I
    invoke-virtual {v3, v2, p3}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 656
    .end local v2    # "adjustedProtectionLevel":I
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public getSplitPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 4198
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object v0

    .line 4197
    invoke-static {v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1185
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    const/4 v0, 0x7

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1190
    int-to-float v0, v3

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 1192
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v3, :cond_31

    .line 1193
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getWhitelistedRestrictedPermissions for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_31
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 1199
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v6, :cond_3c

    .line 1200
    return-object v4

    .line 1203
    :cond_3c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1204
    .local v7, "callingUid":I
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1205
    return-object v4

    .line 1207
    :cond_4d
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v0, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_59

    const/4 v0, 0x1

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    move v8, v0

    .line 1210
    .local v8, "isCallerPrivileged":Z
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1211
    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v9

    .line 1213
    .local v9, "isCallerInstallerOnRecord":Z
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_70

    if-eqz v8, :cond_68

    goto :goto_70

    .line 1215
    :cond_68
    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Querying system whitelist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_70
    :goto_70
    and-int/lit8 v0, v2, 0x6

    if-eqz v0, :cond_81

    .line 1221
    if-nez v8, :cond_81

    if-eqz v9, :cond_79

    goto :goto_81

    .line 1222
    :cond_79
    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Querying upgrade or installer whitelist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1228
    :cond_81
    :goto_81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1230
    .local v10, "identity":J
    :try_start_85
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1231
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPermissionsState(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_d8

    .line 1232
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    if-nez v0, :cond_92

    .line 1233
    nop

    .line 1264
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    return-object v4

    .line 1236
    :cond_92
    const/4 v4, 0x0

    .line 1237
    .local v4, "queryFlags":I
    and-int/lit8 v12, v2, 0x1

    if-eqz v12, :cond_99

    .line 1238
    or-int/lit16 v4, v4, 0x1000

    .line 1240
    :cond_99
    and-int/lit8 v12, v2, 0x4

    if-eqz v12, :cond_9f

    .line 1241
    or-int/lit16 v4, v4, 0x2000

    .line 1243
    :cond_9f
    and-int/lit8 v12, v2, 0x2

    if-eqz v12, :cond_a5

    .line 1244
    or-int/lit16 v4, v4, 0x800

    .line 1247
    :cond_a5
    const/4 v12, 0x0

    .line 1249
    .local v12, "whitelistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_a6
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v13

    .line 1250
    .local v13, "permissionCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_af
    if-ge v14, v13, :cond_d3

    .line 1251
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1252
    .local v15, "permissionName":Ljava/lang/String;
    nop

    .line 1253
    invoke-virtual {v0, v15, v3}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v16

    .line 1254
    .local v16, "currentFlags":I
    and-int v17, v16, v4

    if-eqz v17, :cond_d0

    .line 1255
    if-nez v12, :cond_cd

    .line 1256
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v17

    .line 1258
    :cond_cd
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catchall {:try_start_a6 .. :try_end_d0} :catchall_d8

    .line 1250
    .end local v15    # "permissionName":Ljava/lang/String;
    .end local v16    # "currentFlags":I
    :cond_d0
    add-int/lit8 v14, v14, 0x1

    goto :goto_af

    .line 1262
    .end local v14    # "i":I
    :cond_d3
    nop

    .line 1264
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1262
    return-object v12

    .line 1264
    .end local v0    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v4    # "queryFlags":I
    .end local v12    # "whitelistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "permissionCount":I
    :catchall_d8
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1265
    throw v0
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2145
    .local v0, "callingUid":I
    nop

    .line 2146
    const-string/jumbo v1, "grantDefaultPermissionsToActiveLuiApp"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 2147
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2148
    :try_start_e
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2150
    monitor-exit v1

    .line 2151
    return-void

    .line 2150
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2096
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2097
    .local v0, "callingUid":I
    nop

    .line 2098
    const-string/jumbo v1, "grantPermissionsToEnabledCarrierApps"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 2099
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2100
    :try_start_e
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$aQWnOfCuKK-rSxzDPI_dUOtzv8I;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$aQWnOfCuKK-rSxzDPI_dUOtzv8I;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2102
    monitor-exit v1

    .line 2103
    return-void

    .line 2102
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2108
    .local v0, "callingUid":I
    const-string/jumbo v1, "grantDefaultPermissionsToEnabledImsServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 2110
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2111
    :try_start_d
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$BEPoV9HmbUN2-ZgCcIqC6xfzvew;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$BEPoV9HmbUN2-ZgCcIqC6xfzvew;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2113
    monitor-exit v1

    .line 2114
    return-void

    .line 2113
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v2
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2120
    .local v0, "callingUid":I
    const-string/jumbo v1, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 2122
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2123
    :try_start_d
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$JcWw5txStfnrnbvcFd2durv6YOo;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$JcWw5txStfnrnbvcFd2durv6YOo;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2126
    monitor-exit v1

    .line 2127
    return-void

    .line 2126
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v2
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1490
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1491
    .local v7, "callingUid":I
    nop

    .line 1492
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v0, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move v3, v0

    .line 1495
    .local v3, "overridePolicy":Z
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, v7

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1497
    return-void
.end method

.method public isAutoRevokeWhitelisted(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1468
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1471
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1472
    .local v1, "callingUid":I
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1474
    .local v2, "packageUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1d

    .line 1475
    return v4

    .line 1478
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1480
    .local v5, "identity":J
    :try_start_21
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v7, 0x61

    invoke-virtual {v3, v7, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_31

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2d

    move v4, v7

    .line 1484
    :cond_2d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1480
    return v4

    .line 1484
    :catchall_31
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1485
    throw v3
.end method

.method public isPermissionEnforced(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2193
    const/4 v0, 0x1

    return v0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2260
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_1f

    .line 2261
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPermissionRevokedByPolicy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 2267
    return v1

    .line 2270
    :cond_27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2271
    .local v0, "callingUid":I
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2, v0, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2272
    return v1

    .line 2275
    :cond_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2277
    .local v2, "identity":J
    :try_start_38
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_45

    .line 2278
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_41

    const/4 v1, 0x1

    .line 2280
    :cond_41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2278
    return v1

    .line 2280
    .end local v4    # "flags":I
    :catchall_45
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2281
    throw v1
.end method

.method public synthetic lambda$grantDefaultPermissionsToActiveLuiApp$7$PermissionManagerService(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2148
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2149
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    .line 2148
    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledCarrierApps$3$PermissionManagerService([Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2100
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2101
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 2100
    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledImsServices$4$PermissionManagerService([Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2111
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2112
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    .line 2111
    return-void
.end method

.method public synthetic lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$5$PermissionManagerService([Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2123
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2124
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 2123
    return-void
.end method

.method public synthetic lambda$resetRuntimePermissions$1$PermissionManagerService(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1806
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method public synthetic lambda$restoreDelayedRuntimePermissions$9$PermissionManagerService(Landroid/os/UserHandle;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "hasMoreBackup"    # Ljava/lang/Boolean;

    .line 2342
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2343
    return-void

    .line 2346
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2347
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2348
    monitor-exit v0

    .line 2349
    return-void

    .line 2348
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw v1
.end method

.method public synthetic lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$6$PermissionManagerService([Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2136
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2137
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 2136
    return-void
.end method

.method public synthetic lambda$revokeDefaultPermissionsFromLuiApps$8$PermissionManagerService([Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2159
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 2160
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    .line 2159
    return-void
.end method

.method public synthetic lambda$updatePermissionFlagsForAllApps$0$PermissionManagerService([ZIIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 11
    .param p1, "changed"    # [Z
    .param p2, "userId"    # I
    .param p3, "effectiveFlagMask"    # I
    .param p4, "effectiveFlagValues"    # I
    .param p5, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 955
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 956
    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 955
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 957
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_d

    .line 958
    return-void

    .line 960
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 961
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/4 v2, 0x0

    aget-boolean v3, p1, v2

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlagsForAllPermissions(III)Z

    move-result v4

    or-int/2addr v3, v4

    aput-boolean v3, p1, v2

    .line 963
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-interface {p5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 964
    return-void
.end method

.method public synthetic lambda$updatePermissionSourcePackage$12$PermissionManagerService(Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 11
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .param p4, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5154
    invoke-interface {p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5155
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5154
    const/4 v3, 0x1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method public synthetic lambda$updatePermissionSourcePackage$13$PermissionManagerService(Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 8
    .param p1, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5159
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 5160
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5159
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 5161
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_d

    .line 5162
    return-void

    .line 5164
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 5165
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 5166
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 5167
    const/4 v2, -0x1

    const v3, 0x3fbff

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5170
    :cond_26
    return-void
.end method

.method public synthetic lambda$updatePermissions$11$PermissionManagerService(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 9
    .param p1, "changingPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "replaceAll"    # Z
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "changingPkgName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .param p6, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 5070
    if-ne p6, p1, :cond_3

    .line 5071
    return-void

    .line 5074
    :cond_3
    invoke-static {p6}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 5075
    .local v0, "volumeUuid":Ljava/lang/String;
    if-eqz p2, :cond_11

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 5076
    .local v1, "replace":Z
    :goto_12
    invoke-direct {p0, p6, v1, p4, p5}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 5077
    return-void
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 663
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 664
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 665
    return-object v2

    .line 667
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 668
    if-eqz p1, :cond_1f

    :try_start_13
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 669
    monitor-exit v1

    return-object v2

    .line 671
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 672
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 673
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v4, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 674
    .local v5, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v5, :cond_47

    .line 675
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_47
    goto :goto_32

    .line 678
    :cond_48
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v3

    .line 679
    .end local v2    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :catchall_4f
    move-exception v2

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_13 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1174
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 1177
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1178
    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->removeListenerLocked(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1179
    monitor-exit v0

    .line 1180
    return-void

    .line 1179
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v1

    .line 1175
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePermission(Ljava/lang/String;)V
    .registers 9
    .param p1, "permName"    # Ljava/lang/String;

    .line 719
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v0

    .line 720
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4b

    .line 723
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 724
    .local v1, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 725
    :try_start_15
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 726
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_1f

    .line 727
    monitor-exit v2

    return-void

    .line 729
    :cond_1f
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 731
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_3b
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 735
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 736
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v2

    .line 737
    return-void

    .line 736
    :catchall_48
    move-exception v3

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_15 .. :try_end_4a} :catchall_48

    throw v3

    .line 721
    .end local v1    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_4b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant applications don\'t have access to this method"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 1316
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkExistsAndEnforceCannotModifyImmutablyRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1319
    return v1

    .line 1322
    :cond_b
    nop

    .line 1323
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1324
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1d

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1325
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsInternal(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v1

    return v1

    .line 1328
    :cond_1d
    return v1
.end method

.method public resetRuntimePermissions()V
    .registers 8

    .line 1791
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1796
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1e

    if-eqz v0, :cond_1e

    .line 1797
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v3, "resetRuntimePermissions"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    :cond_1e
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1804
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    :goto_2f
    if-ge v3, v2, :cond_40

    aget v4, v1, v3

    .line 1805
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v6, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM;

    invoke-direct {v6, p0, v4}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;I)V

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 1804
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1808
    :cond_40
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2133
    .local v0, "callingUid":I
    const-string/jumbo v1, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 2135
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2136
    :try_start_d
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$T4uCZ9__oEXYpzLBYEW1T_BN3SU;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$T4uCZ9__oEXYpzLBYEW1T_BN3SU;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2139
    monitor-exit v1

    .line 2140
    return-void

    .line 2139
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw v2
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2156
    .local v0, "callingUid":I
    nop

    .line 2157
    const-string/jumbo v1, "revokeDefaultPermissionsFromLuiApps"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 2158
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2159
    :try_start_e
    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$E0rM1FNIqzKUZzqphmkzeY3ZdTk;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$E0rM1FNIqzKUZzqphmkzeY3ZdTk;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2161
    monitor-exit v1

    .line 2162
    return-void

    .line 2161
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 1675
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1676
    .local v8, "callingUid":I
    nop

    .line 1677
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-virtual {p0, v0, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move v3, v0

    .line 1680
    .local v3, "overridePolicy":Z
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, v8

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1682
    return-void
.end method

.method public setAutoRevokeWhitelisted(Ljava/lang/String;ZI)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "whitelisted"    # Z
    .param p3, "userId"    # I

    .line 1418
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 1421
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1422
    .local v1, "callingUid":I
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1424
    .local v2, "packageUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkAutoRevokeAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1d

    .line 1425
    return v4

    .line 1428
    :cond_1d
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v5, 0x62

    .line 1429
    invoke-virtual {v3, v5, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_28

    .line 1433
    return v4

    .line 1436
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1438
    .local v5, "identity":J
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v7, 0x61

    .line 1440
    const/4 v8, 0x1

    if-eqz p2, :cond_34

    move v4, v8

    .line 1438
    :cond_34
    invoke-virtual {v3, v7, v2, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3c

    .line 1442
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1443
    nop

    .line 1444
    return v8

    .line 1442
    :catchall_3c
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1443
    throw v3
.end method

.method public setDefaultBrowser(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2057
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p2, :cond_15

    .line 2060
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    :cond_15
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->setDefaultBrowserInternal(Ljava/lang/String;ZZI)Z

    move-result v0

    return v0
.end method

.method public setPermissionEnforced(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "enforced"    # Z

    .line 2167
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "setPermissionEnforced"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2170
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->setReadExternalStorageEnforced(Z)V

    .line 2173
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2174
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_31

    .line 2175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2177
    .local v1, "token":J
    :try_start_21
    const-string/jumbo v3, "setPermissionEnforcement"

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->killProcessesBelowForeground(Ljava/lang/String;)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_27} :catch_2d
    .catchall {:try_start_21 .. :try_end_27} :catchall_28

    goto :goto_2e

    .line 2180
    :catchall_28
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2181
    throw v3

    .line 2178
    :catch_2d
    move-exception v3

    .line 2180
    :goto_2e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2183
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "token":J
    :cond_31
    nop

    .line 2186
    return-void

    .line 2184
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No selective enforcement for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 21
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2207
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2208
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, v4, :cond_2a

    .line 2209
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canShowRequestPermissionRationale for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    :cond_2a
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/high16 v6, 0x10000000

    .line 2215
    invoke-virtual {v0, v3, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    .line 2216
    .local v6, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, 0x0

    if-eq v0, v7, :cond_3e

    .line 2217
    return v8

    .line 2220
    :cond_3e
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_45

    .line 2222
    return v8

    .line 2227
    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2229
    .local v9, "identity":J
    :try_start_49
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_9a

    move v7, v0

    .line 2231
    .local v7, "flags":I
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2232
    nop

    .line 2234
    const/16 v11, 0x16

    .line 2238
    .local v11, "fixedFlags":I
    and-int/lit8 v0, v7, 0x16

    if-eqz v0, :cond_59

    .line 2239
    return v8

    .line 2242
    :cond_59
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2244
    .local v12, "token":J
    const/4 v14, 0x1

    :try_start_5e
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_68} :catch_82
    .catchall {:try_start_5e .. :try_end_68} :catchall_7f

    move-wide v15, v9

    .end local v9    # "identity":J
    .local v15, "identity":J
    const-wide/32 v8, 0x8c7dff3

    .line 2245
    :try_start_6c
    invoke-interface {v0, v8, v9, v3, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v0
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_70} :catch_77
    .catchall {:try_start_6c .. :try_end_70} :catchall_95

    if-eqz v0, :cond_7a

    .line 2247
    nop

    .line 2252
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2247
    return v14

    .line 2249
    :catch_77
    move-exception v0

    goto :goto_84

    .line 2244
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :cond_79
    move-wide v15, v9

    .line 2252
    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    :cond_7a
    nop

    :goto_7b
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2253
    goto :goto_8d

    .line 2252
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_7f
    move-exception v0

    move-wide v15, v9

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    goto :goto_96

    .line 2249
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catch_82
    move-exception v0

    move-wide v15, v9

    .line 2250
    .end local v9    # "identity":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15    # "identity":J
    :goto_84
    :try_start_84
    const-string v8, "PackageManager"

    const-string v9, "Unable to check if compatibility change is enabled."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_95

    .line 2252
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_7b

    .line 2255
    :goto_8d
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_93

    move v8, v14

    goto :goto_94

    :cond_93
    const/4 v8, 0x0

    :goto_94
    return v8

    .line 2252
    :catchall_95
    move-exception v0

    :goto_96
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2253
    throw v0

    .line 2231
    .end local v7    # "flags":I
    .end local v11    # "fixedFlags":I
    .end local v12    # "token":J
    .end local v15    # "identity":J
    .restart local v9    # "identity":J
    :catchall_9a
    move-exception v0

    move-wide v15, v9

    move-object v7, v0

    .end local v9    # "identity":J
    .restart local v15    # "identity":J
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2232
    throw v7
.end method

.method public startOneTimePermissionSession(Ljava/lang/String;IJII)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeoutMillis"    # J
    .param p5, "importanceToResetTimer"    # I
    .param p6, "importanceToKeepSessionAlive"    # I

    .line 4220
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to register permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4223
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4225
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4227
    .local v0, "token":J
    :try_start_10
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->startPackageOneTimeSession(Ljava/lang/String;JII)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_20

    .line 4230
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4231
    nop

    .line 4232
    return-void

    .line 4230
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4231
    throw v2
.end method

.method public stopOneTimePermissionSession(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4236
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS"

    const-string v2, "Must hold android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS to remove permissions as one time."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4243
    .local v0, "token":J
    :try_start_10
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getOneTimePermissionUserManager(I)Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->stopPackageOneTimeSession(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1c

    .line 4245
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4246
    nop

    .line 4247
    return-void

    .line 4245
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4246
    throw v2
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .registers 19
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "checkAdjustPolicyFlagPermission"    # Z
    .param p6, "userId"    # I

    .line 782
    move-object v10, p0

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v11

    .line 783
    .local v11, "callingUid":I
    const/4 v1, 0x0

    .line 785
    .local v1, "overridePolicy":Z
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_3f

    if-eqz v11, :cond_3f

    .line 786
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 788
    .local v2, "callingIdentity":J
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_3a

    .line 789
    if-eqz p5, :cond_20

    .line 790
    :try_start_16
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    const-string v5, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 794
    :cond_20
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v4, 0x1d

    if-ge v0, v4, :cond_2d

    .line 802
    :goto_2a
    const/4 v0, 0x1

    move v1, v0

    .end local v1    # "overridePolicy":Z
    .local v0, "overridePolicy":Z
    goto :goto_3a

    .line 796
    .end local v0    # "overridePolicy":Z
    .restart local v1    # "overridePolicy":Z
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs  to be checked for packages targeting 29 or later when changing policy flags"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "overridePolicy":Z
    .end local v2    # "callingIdentity":J
    .end local v11    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1    # "permName":Ljava/lang/String;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .end local p5    # "checkAdjustPolicyFlagPermission":Z
    .end local p6    # "userId":I
    throw v0
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_35

    .line 805
    .restart local v1    # "overridePolicy":Z
    .restart local v2    # "callingIdentity":J
    .restart local v11    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1    # "permName":Ljava/lang/String;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    .restart local p5    # "checkAdjustPolicyFlagPermission":Z
    .restart local p6    # "userId":I
    :catchall_35
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 806
    throw v0

    .line 805
    :cond_3a
    :goto_3a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 806
    move v0, v1

    goto :goto_40

    .line 809
    .end local v2    # "callingIdentity":J
    :cond_3f
    move v0, v1

    .end local v1    # "overridePolicy":Z
    .restart local v0    # "overridePolicy":Z
    :goto_40
    iget-object v9, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move v6, v11

    move/from16 v7, p6

    move v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 812
    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .registers 17
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I

    .line 934
    move-object v7, p0

    move/from16 v8, p3

    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->getCallingUid()I

    move-result v9

    .line 935
    .local v9, "callingUid":I
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v8}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 936
    return-void

    .line 939
    :cond_10
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 941
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "updatePermissionFlagsForAllApps"

    move-object v0, p0

    move v1, v9

    move/from16 v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 948
    const/16 v0, 0x3e8

    if-eq v9, v0, :cond_29

    .line 949
    move v4, p1

    goto :goto_2c

    :cond_29
    and-int/lit8 v1, p1, -0x11

    move v4, v1

    .line 950
    .local v4, "effectiveFlagMask":I
    :goto_2c
    if-eq v9, v0, :cond_30

    .line 951
    move v5, p2

    goto :goto_33

    :cond_30
    and-int/lit8 v0, p2, -0x11

    move v5, v0

    .line 953
    .local v5, "effectiveFlagValues":I
    :goto_33
    const/4 v6, 0x1

    new-array v10, v6, [Z

    .line 954
    .local v10, "changed":[Z
    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v12, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v10

    move/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;[ZIII)V

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 966
    const/4 v0, 0x0

    aget-boolean v1, v10, v0

    if-eqz v1, :cond_53

    .line 967
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-array v2, v6, [I

    aput v8, v2, v0

    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 969
    :cond_53
    return-void
.end method
