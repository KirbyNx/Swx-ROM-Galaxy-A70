.class public Lcom/android/server/pm/PackageManagerService$Injector;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$Injector$Singleton;,
        Lcom/android/server/pm/PackageManagerService$Injector$SystemServiceProducer;,
        Lcom/android/server/pm/PackageManagerService$Injector$LocalServicesProducer;,
        Lcom/android/server/pm/PackageManagerService$Injector$Producer;
    }
.end annotation


# instance fields
.field private final mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

.field private final mActivityManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Landroid/app/ActivityManagerInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityTaskManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOpsManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Landroid/app/AppOpsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppsFilterProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/AppsFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponentResolverProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/ComponentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDeviceStorageMonitorProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/storage/DeviceStorageMonitorInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Landroid/hardware/display/DisplayManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mLocalDeviceIdleController:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/DeviceIdleInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNetworkPolicyManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/net/NetworkPolicyManagerInternal;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Lcom/android/server/pm/PackageManagerService;

.field private final mPermissionManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionPolicyProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/policy/PermissionPolicyInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/compat/PlatformCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/Settings;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Landroid/os/storage/StorageManagerInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Landroid/os/storage/StorageManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$Injector$Singleton<",
            "Lcom/android/server/pm/UserManagerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/pm/Installer;Ljava/lang/Object;Lcom/android/server/pm/PackageAbiHelper;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V
    .registers 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "installer"    # Lcom/android/server/pm/Installer;
    .param p4, "installLock"    # Ljava/lang/Object;
    .param p5, "abiHelper"    # Lcom/android/server/pm/PackageAbiHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Lcom/android/server/pm/Installer;",
            "Ljava/lang/Object;",
            "Lcom/android/server/pm/PackageAbiHelper;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/ComponentResolver;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/UserManagerService;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/Settings;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Landroid/app/ActivityManagerInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/DeviceIdleInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Landroid/os/storage/StorageManagerInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/net/NetworkPolicyManagerInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/policy/PermissionPolicyInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/storage/DeviceStorageMonitorInternal;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Landroid/hardware/display/DisplayManager;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Landroid/os/storage/StorageManager;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Landroid/app/AppOpsManager;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/pm/AppsFilter;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$Injector$Producer<",
            "Lcom/android/server/compat/PlatformCompat;",
            ">;)V"
        }
    .end annotation

    .line 1265
    .local p6, "componentResolverProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/ComponentResolver;>;"
    .local p7, "permissionManagerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/permission/PermissionManagerServiceInternal;>;"
    .local p8, "userManagerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/UserManagerService;>;"
    .local p9, "settingsProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/Settings;>;"
    .local p10, "activityTaskManagerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/wm/ActivityTaskManagerInternal;>;"
    .local p11, "activityManagerInternalProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Landroid/app/ActivityManagerInternal;>;"
    .local p12, "deviceIdleControllerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/DeviceIdleInternal;>;"
    .local p13, "storageManagerInternalProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Landroid/os/storage/StorageManagerInternal;>;"
    .local p14, "networkPolicyManagerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/net/NetworkPolicyManagerInternal;>;"
    .local p15, "permissionPolicyProvider":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/policy/PermissionPolicyInternal;>;"
    .local p16, "deviceStorageMonitorProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/storage/DeviceStorageMonitorInternal;>;"
    .local p17, "displayManagerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Landroid/hardware/display/DisplayManager;>;"
    .local p18, "storageManagerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Landroid/os/storage/StorageManager;>;"
    .local p19, "appOpsManagerProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Landroid/app/AppOpsManager;>;"
    .local p20, "appsFilterProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/pm/AppsFilter;>;"
    .local p21, "platformCompatProducer":Lcom/android/server/pm/PackageManagerService$Injector$Producer;, "Lcom/android/server/pm/PackageManagerService$Injector$Producer<Lcom/android/server/compat/PlatformCompat;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mContext:Landroid/content/Context;

    .line 1267
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mLock:Ljava/lang/Object;

    .line 1268
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mInstaller:Lcom/android/server/pm/Installer;

    .line 1269
    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 1270
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mInstallLock:Ljava/lang/Object;

    .line 1271
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v7, p6

    invoke-direct {v6, v7}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1272
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v8, p7

    invoke-direct {v6, v8}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mPermissionManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1273
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v9, p8

    invoke-direct {v6, v9}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1274
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v10, p9

    invoke-direct {v6, v10}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1275
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v11, p10

    invoke-direct {v6, v11}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mActivityTaskManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1276
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v12, p11

    invoke-direct {v6, v12}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mActivityManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1277
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v13, p12

    invoke-direct {v6, v13}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mLocalDeviceIdleController:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1278
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v14, p13

    invoke-direct {v6, v14}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mStorageManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1279
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v15, p14

    invoke-direct {v6, v15}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mNetworkPolicyManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1280
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p15

    invoke-direct {v6, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mPermissionPolicyProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1281
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p16

    invoke-direct {v6, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mDeviceStorageMonitorProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1282
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p17

    invoke-direct {v6, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mDisplayManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1283
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p18

    invoke-direct {v6, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mStorageManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1284
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p19

    invoke-direct {v6, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mAppOpsManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1285
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p20

    invoke-direct {v6, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1286
    new-instance v6, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    move-object/from16 v1, p21

    invoke-direct {v6, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerService$Injector$Producer;)V

    iput-object v6, v0, Lcom/android/server/pm/PackageManagerService$Injector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    .line 1287
    return-void
.end method


# virtual methods
.method public bootstrap(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 1294
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 1295
    return-void
.end method

.method public getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;
    .registers 2

    .line 1302
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    return-object v0
.end method

.method public getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 3

    .line 1342
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mActivityManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method public getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 3

    .line 1338
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mActivityTaskManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 1374
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mAppOpsManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public getAppsFilter()Lcom/android/server/pm/AppsFilter;
    .registers 3

    .line 1378
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/AppsFilter;

    return-object v0
.end method

.method public getCompatibility()Lcom/android/server/compat/PlatformCompat;
    .registers 3

    .line 1382
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    return-object v0
.end method

.method public getComponentResolver()Lcom/android/server/pm/ComponentResolver;
    .registers 3

    .line 1322
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ComponentResolver;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1330
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceStorageMonitorInternal()Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .registers 3

    .line 1362
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mDeviceStorageMonitorProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    return-object v0
.end method

.method public getDisplayManager()Landroid/hardware/display/DisplayManager;
    .registers 3

    .line 1366
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mDisplayManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method public getInstallLock()Ljava/lang/Object;
    .registers 2

    .line 1306
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getInstaller()Lcom/android/server/pm/Installer;
    .registers 2

    .line 1318
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mInstaller:Lcom/android/server/pm/Installer;

    return-object v0
.end method

.method public getLocalDeviceIdleController()Lcom/android/server/DeviceIdleInternal;
    .registers 3

    .line 1346
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mLocalDeviceIdleController:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .line 1314
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getNetworkPolicyManagerInternal()Lcom/android/server/net/NetworkPolicyManagerInternal;
    .registers 3

    .line 1354
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mNetworkPolicyManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    return-object v0
.end method

.method public getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 3

    .line 1326
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPermissionManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v0
.end method

.method public getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;
    .registers 3

    .line 1358
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPermissionPolicyProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    return-object v0
.end method

.method public getSettings()Lcom/android/server/pm/Settings;
    .registers 3

    .line 1334
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings;

    return-object v0
.end method

.method public getStorageManager()Landroid/os/storage/StorageManager;
    .registers 3

    .line 1370
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mStorageManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method public getStorageManagerInternal()Landroid/os/storage/StorageManagerInternal;
    .registers 3

    .line 1350
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mStorageManagerInternalProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    return-object v0
.end method

.method public getUserManagerInternal()Landroid/os/UserManagerInternal;
    .registers 2

    .line 1298
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getInternalForInjectorOnly()Landroid/os/UserManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method public getUserManagerService()Lcom/android/server/pm/UserManagerService;
    .registers 3

    .line 1310
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerService$Injector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$Injector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$Injector$Singleton;->get(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method
