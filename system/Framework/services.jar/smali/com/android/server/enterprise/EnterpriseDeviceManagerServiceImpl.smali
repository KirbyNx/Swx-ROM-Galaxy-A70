.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
.super Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.source "EnterpriseDeviceManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;
    }
.end annotation


# static fields
.field private static final ACTION_KES_TRIGGER:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KES_TRIGGER"

.field public static final AVRCP_RESTRICTION_INTENT:I = 0x3

.field private static final BULK_ENROLL_DATA_FILE:Ljava/lang/String; = "BulkEnrollmentProfile"

.field public static final CAMERA_RESTRICTION_INTENT:I = 0x1

.field private static final CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAI_CLIENT_PKG_NAME:Ljava/lang/String; = "com.samsung.android.knox.dai"

.field private static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field private static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field private static final EXCLUDED_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KCTS_CLIENT:Ljava/lang/String; = "com.samsung.android.knoxcts.test"

.field private static final KC_CLIENT_PKG_NAME:Ljava/lang/String; = "com.sec.knox.kccagent"

.field private static final KG_PKG_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field private static final KNOXAI_FRAMEWORK_NAME:Ljava/lang/String; = "com.samsung.android.app.kfa"

.field private static final KNOX_CAPTURE_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.smartscan"

.field private static final KPECORE_PKG_NAME:Ljava/lang/String; = "com.samsung.android.knox.kpecore"

.field public static final MIC_RESTRICTION_INTENT:I = 0x2

.field private static final MY_PID:I

.field private static final NON_MDM_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERIPHERAL_FRAMEWORK_NAME:Ljava/lang/String; = "com.samsung.android.peripheral.framework"

.field private static final PERMISSION_KNOX_ACTIVATE_DEVICE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

.field private static final PERMISSION_KNOX_PROXY_ADMIN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

.field private static final PERMISSION_KNOX_SILENT_ACTIVATION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SILENT_ACTIVATION_INTERNAL"

.field private static final PERMISSION_MARK_DEVICE_ORGANIZATION_OWNED:Ljava/lang/String; = "android.permission.MARK_DEVICE_ORGANIZATION_OWNED"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final TAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"

.field private static final UMC_DATA_PATH:Ljava/lang/String; = "/efs/umc"

.field private static final allowToSkipRuntimePermission:[Ljava/lang/String;

.field private static final allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

.field private static mIsFirmwareUpgrade:Z

.field private static mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private static mServiceAdditionCondition:Landroid/os/ConditionVariable;


# instance fields
.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

.field private mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

.field final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field final mDPMS:Landroid/app/admin/IDevicePolicyManager;

.field private mDeferredServicesCreated:Z

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field final mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

.field private mInternalHandler:Landroid/os/Handler;

.field private final mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

.field private final mLockDoNoUseDirectly:Ljava/lang/Object;

.field mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

.field final mPMS:Landroid/content/pm/IPackageManager;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

.field private mPseudoAdminUid:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    .line 273
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mIsFirmwareUpgrade:Z

    .line 281
    const-string v1, "com.samsung.android.app.smartscan"

    const-string v2, "com.samsung.android.knox.dai"

    const-string v3, "com.samsung.android.knox.kpu"

    const-string v4, "com.sec.knox.kccagent"

    const-string v5, "com.samsung.android.knoxcts.test"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToSkipRuntimePermission:[Ljava/lang/String;

    .line 288
    const-string v1, "com.samsung.android.knox.kpecore"

    const-string v2, "com.samsung.android.peripheral.framework"

    const-string v3, "com.samsung.android.app.kfa"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

    .line 384
    const-string v1, "com.samsung.android.email.provider"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "com.android.exchange"

    const-string v3, "com.android.email"

    if-eqz v0, :cond_3f

    .line 385
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 387
    :cond_3f
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :goto_49
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v4, "com.sec.esdk.elm"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    const-string/jumbo v0, "ro.csc.country_code"

    const-string v4, ""

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "country":Ljava/lang/String;
    const-string v4, "com.samsung.android.kgclient"

    if-eqz v0, :cond_6a

    const-string v5, "China"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 393
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    .end local v0    # "country":Ljava/lang/String;
    :cond_6a
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.nttdocomo.android.wipe"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.nttdocomo.android.remotelock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->NON_MDM_ADMINS:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 414
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    .line 442
    const-string v1, "com.samsung.android.knox.permission.KNOX_WIFI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2259
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;)V

    .line 2260
    return-void
.end method

.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;)V
    .registers 5
    .param p1, "injector"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2262
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>()V

    .line 274
    new-instance v0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    invoke-direct {v0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    .line 278
    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/LockGuard;->installNewLock(IZ)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mLockDoNoUseDirectly:Ljava/lang/Object;

    .line 412
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 433
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 436
    iput v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 580
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2263
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2264
    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 2265
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->setEdmsInstance(Ljava/lang/Object;)V

    .line 2266
    iget-object v0, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2267
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getPackageManagerInstance()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    .line 2268
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getDpmInstance()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 2270
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 2271
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 2272
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 2273
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 2275
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->handleDowngrade()V

    .line 2277
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerBroadcastReceiver()V

    .line 2279
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2283
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->isFirmwareChanged()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 2284
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "handleUpgrade: Checking Upgrade..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    sput-boolean v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mIsFirmwareUpgrade:Z

    .line 2286
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->handleFirmwareUpgrade()V

    .line 2287
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->sendMigrationIntent(Z)V

    .line 2289
    const-string/jumbo v0, "ro.build.fingerprint"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2290
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 2291
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PlatformSoftwareVersion"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2315
    .end local v0    # "value":Ljava/lang/String;
    :cond_ac
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getEnterpriseLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    const-string v1, "enterprise_license_policy"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2317
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    const-string v1, "application_policy"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2319
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getWifiPolicy()Lcom/android/server/enterprise/wifi/WifiPolicy;

    move-result-object v0

    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2321
    nop

    .line 2322
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getPhoneRestrictionPolicy()Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    move-result-object v0

    .line 2321
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2324
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getRemoteInjectionService()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    move-result-object v0

    const-string/jumbo v1, "remoteinjection"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2326
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getRestrictionPolicy()Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    move-result-object v0

    const-string/jumbo v1, "restriction_policy"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2328
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getPasswordPolicy()Lcom/android/server/enterprise/security/PasswordPolicy;

    move-result-object v0

    const-string/jumbo v1, "password_policy"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2330
    new-instance v0, Lcom/android/server/enterprise/EDMProxyService;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EDMProxyService;-><init>(Landroid/content/Context;)V

    const-string v1, "edm_proxy"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->serviceManagerAddService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2336
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->addService(Landroid/content/Context;)V

    .line 2338
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setMediators()V

    .line 2339
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .param p1, "x1"    # I

    .line 250
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->systemReady(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .param p1, "x1"    # I

    .line 250
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->onStartUser(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 250
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->updateCurrentUser()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;Landroid/content/ComponentName;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .param p1, "x1"    # I

    .line 250
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->cleanGenericTableOnUserRemoved(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 250
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removePseudoAdmin()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 250
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$700()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .registers 1

    .line 250
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 250
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isFirmwareChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Landroid/os/ConditionVariable;
    .registers 1

    .line 250
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private activateAdmin(Landroid/content/ComponentName;Z)V
    .registers 21
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    .line 1244
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v4

    .line 1245
    .local v4, "userHandle":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activating admin on user!!!!!! "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "EnterpriseDeviceManagerService"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-virtual {v1, v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 1248
    .local v5, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_239

    .line 1251
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1252
    .local v6, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v6, :cond_47

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_47

    .line 1253
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Admin cannot be activated"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_47
    :goto_47
    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v8, 0x1e

    if-lt v0, v8, :cond_5f

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.samsung.android.kgclient"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1258
    :cond_5f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->adjustKnoxGuardAdmin()V

    .line 1262
    :cond_62
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startDeferredServicesIfNeeded()V

    .line 1266
    :cond_77
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1267
    .local v8, "uid":I
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 1268
    .local v9, "compName":Landroid/content/ComponentName;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin uid: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Component name: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "EnterpriseDeviceManagerService"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1271
    .local v10, "ident":J
    const/4 v12, 0x1

    .line 1273
    .local v12, "ret":Z
    const/4 v13, 0x2

    .line 1274
    .local v13, "retry":I
    const/4 v14, 0x0

    .line 1277
    .local v14, "activationStatus":Z
    :try_start_a8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_ad} :catch_227
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_221

    .line 1278
    if-nez v3, :cond_c9

    :try_start_af
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v9, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-nez v0, :cond_ba

    goto :goto_c9

    .line 1279
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Admin is already added"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "userHandle":I
    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v8    # "uid":I
    .end local v9    # "compName":Landroid/content/ComponentName;
    .end local v10    # "ident":J
    .end local v12    # "ret":Z
    .end local v13    # "retry":I
    .end local v14    # "activationStatus":Z
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "refreshing":Z
    throw v0
    :try_end_c2
    .catchall {:try_start_af .. :try_end_c2} :catchall_c2

    .line 1300
    .restart local v4    # "userHandle":I
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v6    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .restart local v8    # "uid":I
    .restart local v9    # "compName":Landroid/content/ComponentName;
    .restart local v10    # "ident":J
    .restart local v12    # "ret":Z
    .restart local v13    # "retry":I
    .restart local v14    # "activationStatus":Z
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "refreshing":Z
    :catchall_c2
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v16, v9

    goto/16 :goto_21d

    .line 1281
    :cond_c9
    :goto_c9
    if-nez v3, :cond_112

    .line 1282
    :try_start_cb
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_10b

    move-object/from16 v17, v6

    .end local v6    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .local v17, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :try_start_d4
    const-string v6, "Adding admin "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to lists"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6
    :try_end_fc
    .catchall {:try_start_d4 .. :try_end_fc} :catchall_106

    move-object/from16 v16, v9

    const/4 v7, 0x0

    const/4 v9, 0x1

    .end local v9    # "compName":Landroid/content/ComponentName;
    .local v16, "compName":Landroid/content/ComponentName;
    :try_start_100
    invoke-virtual {v0, v8, v6, v9, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v0

    move v12, v0

    goto :goto_116

    .line 1300
    .end local v16    # "compName":Landroid/content/ComponentName;
    .restart local v9    # "compName":Landroid/content/ComponentName;
    :catchall_106
    move-exception v0

    move-object/from16 v16, v9

    .end local v9    # "compName":Landroid/content/ComponentName;
    .restart local v16    # "compName":Landroid/content/ComponentName;
    goto/16 :goto_21d

    .end local v16    # "compName":Landroid/content/ComponentName;
    .end local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .restart local v6    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .restart local v9    # "compName":Landroid/content/ComponentName;
    :catchall_10b
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v16, v9

    .end local v6    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v9    # "compName":Landroid/content/ComponentName;
    .restart local v16    # "compName":Landroid/content/ComponentName;
    .restart local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    goto/16 :goto_21d

    .line 1281
    .end local v16    # "compName":Landroid/content/ComponentName;
    .end local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .restart local v6    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .restart local v9    # "compName":Landroid/content/ComponentName;
    :cond_112
    move-object/from16 v17, v6

    move-object/from16 v16, v9

    .line 1290
    .end local v6    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v9    # "compName":Landroid/content/ComponentName;
    .restart local v16    # "compName":Landroid/content/ComponentName;
    .restart local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :goto_116
    if-eqz v12, :cond_1ec

    .line 1297
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_124
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1298
    .local v6, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v7, v8}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    .line 1299
    .end local v6    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    goto :goto_124

    .line 1300
    :cond_13a
    monitor-exit v15
    :try_end_13b
    .catchall {:try_start_100 .. :try_end_13b} :catchall_1ea

    .line 1306
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_13c
    if-gt v0, v13, :cond_197

    .line 1307
    :try_start_13e
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to active admin in DPM"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v6, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 1309
    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v6, v2, v4}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_17e

    .line 1310
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin sucessfully activated in DPM for user "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v14, 0x1

    .line 1312
    goto :goto_197

    .line 1314
    :cond_17e
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin activation failed for user "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    add-int/lit8 v0, v0, 0x1

    goto :goto_13c

    .line 1317
    .end local v0    # "i":I
    :cond_197
    :goto_197
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EDM setActiveAdmin activationStatus -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " for user - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    if-eqz v14, :cond_1bf

    .line 1324
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v6, "Admin added to DPM!"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22f

    .line 1319
    :cond_1bf
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v6, "Started removing admin information..."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v0, v7, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1321
    invoke-direct {v1, v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EDM - Admin activation failed for user -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "userHandle":I
    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v8    # "uid":I
    .end local v10    # "ident":J
    .end local v12    # "ret":Z
    .end local v13    # "retry":I
    .end local v14    # "activationStatus":Z
    .end local v16    # "compName":Landroid/content/ComponentName;
    .end local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "refreshing":Z
    throw v0
    :try_end_1ea
    .catch Landroid/os/RemoteException; {:try_start_13e .. :try_end_1ea} :catch_21f
    .catchall {:try_start_13e .. :try_end_1ea} :catchall_234

    .line 1300
    .restart local v4    # "userHandle":I
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v8    # "uid":I
    .restart local v10    # "ident":J
    .restart local v12    # "ret":Z
    .restart local v13    # "retry":I
    .restart local v14    # "activationStatus":Z
    .restart local v16    # "compName":Landroid/content/ComponentName;
    .restart local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "refreshing":Z
    :catchall_1ea
    move-exception v0

    goto :goto_21d

    .line 1291
    :cond_1ec
    :try_start_1ec
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " from lists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1293
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable to activate admin"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "userHandle":I
    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v8    # "uid":I
    .end local v10    # "ident":J
    .end local v12    # "ret":Z
    .end local v13    # "retry":I
    .end local v14    # "activationStatus":Z
    .end local v16    # "compName":Landroid/content/ComponentName;
    .end local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "refreshing":Z
    throw v0

    .line 1300
    .restart local v4    # "userHandle":I
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v8    # "uid":I
    .restart local v10    # "ident":J
    .restart local v12    # "ret":Z
    .restart local v13    # "retry":I
    .restart local v14    # "activationStatus":Z
    .restart local v16    # "compName":Landroid/content/ComponentName;
    .restart local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "refreshing":Z
    :goto_21d
    monitor-exit v15
    :try_end_21e
    .catchall {:try_start_1ec .. :try_end_21e} :catchall_1ea

    .end local v4    # "userHandle":I
    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v8    # "uid":I
    .end local v10    # "ident":J
    .end local v12    # "ret":Z
    .end local v13    # "retry":I
    .end local v14    # "activationStatus":Z
    .end local v16    # "compName":Landroid/content/ComponentName;
    .end local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "refreshing":Z
    :try_start_21e
    throw v0
    :try_end_21f
    .catch Landroid/os/RemoteException; {:try_start_21e .. :try_end_21f} :catch_21f
    .catchall {:try_start_21e .. :try_end_21f} :catchall_234

    .line 1325
    .restart local v4    # "userHandle":I
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v8    # "uid":I
    .restart local v10    # "ident":J
    .restart local v12    # "ret":Z
    .restart local v13    # "retry":I
    .restart local v14    # "activationStatus":Z
    .restart local v16    # "compName":Landroid/content/ComponentName;
    .restart local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "refreshing":Z
    :catch_21f
    move-exception v0

    goto :goto_22c

    .line 1328
    .end local v16    # "compName":Landroid/content/ComponentName;
    .end local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .local v6, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .restart local v9    # "compName":Landroid/content/ComponentName;
    :catchall_221
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v16, v9

    .end local v6    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v9    # "compName":Landroid/content/ComponentName;
    .restart local v16    # "compName":Landroid/content/ComponentName;
    .restart local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    goto :goto_235

    .line 1325
    .end local v16    # "compName":Landroid/content/ComponentName;
    .end local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .restart local v6    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .restart local v9    # "compName":Landroid/content/ComponentName;
    :catch_227
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v16, v9

    .line 1326
    .end local v6    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v9    # "compName":Landroid/content/ComponentName;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "compName":Landroid/content/ComponentName;
    .restart local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :goto_22c
    :try_start_22c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_22f
    .catchall {:try_start_22c .. :try_end_22f} :catchall_234

    .line 1328
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22f
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1329
    nop

    .line 1330
    return-void

    .line 1328
    :catchall_234
    move-exception v0

    :goto_235
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1329
    throw v0

    .line 1249
    .end local v8    # "uid":I
    .end local v10    # "ident":J
    .end local v12    # "ret":Z
    .end local v13    # "retry":I
    .end local v14    # "activationStatus":Z
    .end local v16    # "compName":Landroid/content/ComponentName;
    .end local v17    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :cond_239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad admin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjustKnoxGuardAdmin()V
    .registers 7

    .line 3889
    nop

    .line 3890
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKG()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a7

    .line 3891
    :cond_f
    const-string/jumbo v0, "ro.csc.country_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3892
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_a7

    const-string v1, "China"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 3893
    const/4 v1, 0x0

    const-string/jumbo v2, "ro.product.first_api_level"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x1e

    const-string v3, "adjustKnoxGuardAdmin kgclient is removed from EXCLUDED_ADMINS by "

    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "com.samsung.android.kgclient"

    if-lt v1, v2, :cond_58

    .line 3894
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 3895
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 3899
    :cond_58
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKgTurnedOn()Z

    move-result v1

    if-nez v1, :cond_84

    .line 3900
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 3901
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustKnoxGuardAdmin kgclient is added in EXCLUDED_ADMINS by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 3905
    :cond_84
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 3906
    sget-object v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    .end local v0    # "country":Ljava/lang/String;
    :cond_a7
    :goto_a7
    return-void
.end method

.method private checkAdminExistsInELMDB(Ljava/lang/String;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2071
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2073
    .local v0, "ident":J
    const/4 v2, 0x0

    :try_start_5
    const-string v3, "enterprise_license_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 2074
    .local v3, "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-eqz v3, :cond_2e

    .line 2075
    invoke-virtual {v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object v4

    .line 2076
    .local v4, "list":[Lcom/samsung/android/knox/license/LicenseInfo;
    if-eqz v4, :cond_2e

    .line 2077
    array-length v5, v4

    move v6, v2

    :goto_17
    if-ge v6, v5, :cond_2e

    aget-object v7, v4, v6

    .line 2078
    .local v7, "info":Lcom/samsung/android/knox/license/LicenseInfo;
    invoke-virtual {v7}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_35
    .catchall {:try_start_5 .. :try_end_23} :catchall_33

    if-eqz v8, :cond_2b

    .line 2079
    nop

    .line 2087
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2079
    const/4 v2, 0x1

    return v2

    .line 2077
    .end local v7    # "info":Lcom/samsung/android/knox/license/LicenseInfo;
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 2087
    .end local v3    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .end local v4    # "list":[Lcom/samsung/android/knox/license/LicenseInfo;
    :cond_2e
    nop

    :goto_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2088
    goto :goto_4e

    .line 2087
    :catchall_33
    move-exception v2

    goto :goto_4f

    .line 2084
    :catch_35
    move-exception v3

    .line 2085
    .local v3, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAdminExistsInELMDB Ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_33

    .line 2087
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2f

    .line 2089
    :goto_4e
    return v2

    .line 2087
    :goto_4f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2088
    throw v2
.end method

.method private checkCallerIsKG()Z
    .registers 6

    .line 3138
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3140
    .local v0, "uid":I
    const/4 v1, -0x1

    .line 3142
    .local v1, "kguid":I
    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.kgclient"

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_19

    move v1, v2

    .line 3145
    goto :goto_1f

    .line 3143
    :catch_19
    move-exception v2

    .line 3144
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 3147
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1f
    if-ne v0, v1, :cond_23

    .line 3149
    const/4 v2, 0x1

    return v2

    .line 3152
    :cond_23
    const/4 v2, 0x0

    return v2
.end method

.method private checkCallerIsKPECore(Ljava/lang/String;)Z
    .registers 4
    .param p1, "caller"    # Ljava/lang/String;

    .line 3128
    const-string v0, "com.samsung.android.knox.kpecore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3129
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.permission.KNOX_KPECORE_INTERNAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 3130
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "call from kpecore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    const/4 v0, 0x1

    return v0

    .line 3134
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private checkCallerIsUMC()Z
    .registers 6

    .line 3110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3112
    .local v0, "uid":I
    const/4 v1, -0x1

    .line 3114
    .local v1, "umcuid":I
    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.enterprise.knox.cloudmdm.smdms"

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_19

    move v1, v2

    .line 3117
    goto :goto_1f

    .line 3115
    :catch_19
    move-exception v2

    .line 3116
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 3119
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1f
    if-ne v0, v1, :cond_23

    .line 3121
    const/4 v2, 0x1

    return v2

    .line 3124
    :cond_23
    const/4 v2, 0x0

    return v2
.end method

.method private checkContainerOwnerShip(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isCallingPackageKPU"    # Z

    .line 1154
    iget-boolean v0, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v0, :cond_5

    .line 1155
    return-void

    .line 1158
    :cond_5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1159
    .local v0, "userId":I
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1a

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1160
    return-void

    .line 1161
    :cond_1a
    if-eqz p2, :cond_1d

    .line 1162
    return-void

    .line 1165
    :cond_1d
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 1166
    .local v1, "ownerUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1167
    .local v2, "uid":I
    if-ne v1, v2, :cond_2c

    .line 1168
    return-void

    .line 1171
    .end local v1    # "ownerUid":I
    .end local v2    # "uid":I
    :cond_2c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin doesn\'t own container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ContextInfo.uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1177
    iget-boolean v0, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v0, :cond_5

    return-void

    .line 1180
    :cond_5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1181
    .local v0, "userId":I
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1a

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1182
    return-void

    .line 1185
    :cond_1a
    move v1, v0

    .line 1187
    .local v1, "containerId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1188
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1190
    :cond_25
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 1192
    .local v2, "ownerUid":I
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v2, v3, :cond_30

    .line 1195
    return-void

    .line 1193
    :cond_30
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin doesn\'t own container id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ContextInfo.uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3171
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "permissions"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 3174
    .local v1, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3175
    .local v2, "selectionValues":Landroid/content/ContentValues;
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "proxyUid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3176
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PROXY_ADMIN_INFO"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 3177
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_64

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_64

    .line 3178
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3179
    .local v0, "serializedPerms":Ljava/lang/String;
    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_63

    .line 3180
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3181
    .local v6, "perms":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3182
    .local v7, "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_63

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3183
    .local v9, "permission":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 3184
    return v4

    .line 3186
    .end local v9    # "permission":Ljava/lang/String;
    :cond_62
    goto :goto_4f

    .line 3188
    .end local v0    # "serializedPerms":Ljava/lang/String;
    .end local v6    # "perms":[Ljava/lang/String;
    .end local v7    # "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_63
    goto :goto_8b

    .line 3190
    :cond_64
    :try_start_64
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3191
    .local v6, "permission":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-interface {v7, v6, v8}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v7
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7e} :catch_83

    if-nez v7, :cond_81

    .line 3192
    return v4

    .line 3193
    .end local v6    # "permission":Ljava/lang/String;
    :cond_81
    goto :goto_68

    .line 3196
    :cond_82
    goto :goto_8b

    .line 3194
    :catch_83
    move-exception v0

    .line 3195
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v6, "could not check calling permission"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8b
    return v5
.end method

.method private cleanGenericTableOnUserRemoved(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 621
    const-string/jumbo v0, "userID"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "sColumns":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 625
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 627
    .local v1, "sValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "generic"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 629
    return-void
.end method

.method private createDeferredServices()V
    .registers 8

    .line 2352
    const-string/jumbo v0, "phone_restriction_policy"

    const-string/jumbo v1, "wifi_policy"

    iget-boolean v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    const-string v3, "EnterpriseDeviceManagerService"

    if-eqz v2, :cond_12

    .line 2353
    const-string v0, "createDeferredServices() : Skip to create"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    return-void

    .line 2356
    :cond_12
    const-string v2, "createDeferredServices() : Adding services ... "

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :try_start_17
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->wakeUpLazyServices()V

    .line 2361
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2362
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 2361
    invoke-virtual {v2, v1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2365
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 2366
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 2365
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2369
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "device_info"

    new-instance v2, Lcom/android/server/enterprise/device/DeviceInfo;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2371
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "license_log_service"

    new-instance v2, Lcom/android/server/enterprise/license/LicenseLogService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/license/LicenseLogService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2373
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "auditlog"

    new-instance v2, Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2374
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "eas_account_policy"

    new-instance v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2376
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "email_account_policy"

    new-instance v2, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/email/EmailAccountPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2378
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "location_policy"

    new-instance v2, Lcom/android/server/enterprise/location/LocationPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/location/LocationPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2379
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "misc_policy"

    new-instance v2, Lcom/android/server/enterprise/general/MiscPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2380
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "vpn_policy"

    new-instance v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2382
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "security_policy"

    new-instance v2, Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2383
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "roaming_policy"

    new-instance v2, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/restriction/RoamingPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2384
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "bluetooth_policy"

    new-instance v2, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2385
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "email_policy"

    new-instance v2, Lcom/android/server/enterprise/email/EmailPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/email/EmailPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2386
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "firewall"

    new-instance v2, Lcom/android/server/enterprise/firewall/Firewall;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/firewall/Firewall;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2387
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "certificate_policy"

    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2388
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "apn_settings_policy"

    new-instance v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2390
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "browser_policy"

    new-instance v2, Lcom/android/server/enterprise/browser/BrowserPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2392
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "date_time_policy"

    new-instance v2, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/datetime/DateTimePolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2393
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "kioskmode"

    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2394
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "ldap_account_policy"

    new-instance v2, Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2396
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "lockscreen_overlay"

    new-instance v2, Lcom/android/server/enterprise/lso/LSOService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/lso/LSOService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2397
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "geofencing"

    new-instance v2, Lcom/android/server/enterprise/geofencing/GeofenceService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2398
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "device_account_policy"

    new-instance v2, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2403
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v1, "bluetooth_secure_mode_policy"

    new-instance v2, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2405
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v1, "multi_user_manager_service"

    new-instance v2, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2420
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->createInstance(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    .line 2421
    .local v0, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    .line 2422
    .local v1, "knoxSdkVersion":Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v2

    const/16 v4, 0x18

    if-lt v2, v4, :cond_1c7

    .line 2423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThreatDefenseService - knoxSdkVersion : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v4, "threat_defense_service"

    new-instance v5, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2428
    :cond_1c7
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string/jumbo v4, "knoxnap"

    new-instance v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    .line 2433
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v2

    if-eqz v2, :cond_1f1

    .line 2434
    const-string/jumbo v2, "startEnterpriseBillingService | add Lazy Service : startEnterpriseBillingService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v4, "enterprise_billing_policy"

    new-instance v5, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    goto :goto_1f6

    .line 2438
    :cond_1f1
    const-string v2, "EnterpriseBilling Feature Flag is False"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f6
    .catchall {:try_start_17 .. :try_end_1f6} :catchall_1f7

    .line 2444
    .end local v0    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v1    # "knoxSdkVersion":Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    :goto_1f6
    goto :goto_20f

    .line 2441
    :catchall_1f7
    move-exception v0

    .line 2442
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addServices() : Failure creating Policy services"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2446
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_20f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    .line 2447
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setMediators()V

    .line 2448
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->invokeSystemReadyIfNeeded()V

    .line 2449
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerDeferredBroadcastReceiver()V

    .line 2450
    return-void
.end method

.method private deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V
    .registers 15
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerUid"    # I

    .line 3025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deactivateProxyAdminsForOwnerAdmin() : ownerUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", admin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    const-string v2, "adminUid"

    const-string/jumbo v3, "proxyUid"

    const-string/jumbo v4, "proxyType"

    const-string v5, "componentName"

    const-string/jumbo v6, "proxyComponentName"

    const-string/jumbo v7, "label"

    const-string/jumbo v8, "icon"

    const-string v9, "description"

    const-string/jumbo v10, "permissions"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 3033
    .local v0, "columns":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PROXY_ADMIN_INFO"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 3037
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 3038
    .local v4, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "proxyUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 3039
    .local v5, "proxyUid":Ljava/lang/Integer;
    const-string v6, "adminUid"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 3040
    .local v6, "uid":Ljava/lang/Integer;
    const-string v7, "componentName"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3041
    .local v7, "adminName":Ljava/lang/String;
    const-string/jumbo v8, "proxyComponentName"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3042
    .local v8, "proxyName":Ljava/lang/String;
    if-eqz v5, :cond_b5

    if-eqz v6, :cond_b5

    if-eqz v7, :cond_b5

    .line 3043
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    .line 3042
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 3043
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p2, :cond_b5

    if-eqz v8, :cond_b5

    .line 3045
    :try_start_85
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 3046
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 3045
    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3047
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeProxyAdmin(I)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_9b} :catch_9c

    .line 3050
    goto :goto_b5

    .line 3048
    :catch_9c
    move-exception v9

    .line 3049
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deactivateAdminForUser:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "proxyUid":Ljava/lang/Integer;
    .end local v6    # "uid":Ljava/lang/Integer;
    .end local v7    # "adminName":Ljava/lang/String;
    .end local v8    # "proxyName":Ljava/lang/String;
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_b5
    :goto_b5
    goto :goto_47

    .line 3053
    :cond_b6
    return-void
.end method

.method private deviceOwnerExists()Z
    .registers 4

    .line 2049
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2050
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 2051
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "deviceOwnerExists."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    const/4 v1, 0x1

    return v1

    .line 2054
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method private enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;
    .registers 21
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "userPolicy"    # Z
    .param p4, "checkActiveAdmin"    # Z
    .param p5, "isDoOrPoEnforced"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 866
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p0

    move-object/from16 v2, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 867
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 869
    .local v4, "pid":I
    if-nez p1, :cond_14

    .line 871
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object v5, v0

    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v0, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_16

    .line 869
    .end local v0    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_14
    move-object/from16 v5, p1

    .line 875
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v5, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :goto_16
    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 878
    .local v6, "contextUid":I
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 879
    .local v7, "caller":Ljava/lang/String;
    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_2c

    sget v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    if-eq v4, v8, :cond_36

    :cond_2c
    if-eqz v7, :cond_47

    const-string v8, "android.uid.system:1000"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 881
    :cond_36
    if-eqz p3, :cond_46

    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 882
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v0

    .line 884
    :cond_46
    return-object v5

    .line 887
    :cond_47
    iget-object v8, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/samsung/android/knox/SemPersonaManager;->isContainerService(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 888
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v0

    .line 893
    :cond_55
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    .line 896
    .local v8, "isCallingPackageKPU":Z
    if-eqz v7, :cond_6e

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 897
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    iget v10, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const v11, 0x186a0

    mul-int/2addr v10, v11

    add-int/2addr v10, v0

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v9

    .line 900
    :cond_6e
    if-eqz p4, :cond_96

    .line 901
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 903
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_7f

    goto :goto_96

    .line 904
    :cond_7f
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No active admin owned by uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 909
    .end local v0    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_96
    :goto_96
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_c4

    .line 911
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 914
    if-eqz p3, :cond_a5

    .line 915
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    .line 917
    :cond_a5
    if-eqz v2, :cond_c4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c4

    .line 918
    invoke-direct {p0, v5, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    if-ne v0, v9, :cond_c4

    .line 919
    if-eqz p3, :cond_c3

    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 920
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v0

    .line 922
    :cond_c3
    return-object v5

    .line 930
    :cond_c4
    if-nez v8, :cond_f6

    .line 931
    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v0, v3, :cond_f6

    .line 932
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getAuthorizedAdminUid(I)I

    move-result v0

    .line 933
    .local v0, "adminUid":I
    iget v10, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v10, v0, :cond_f6

    .line 935
    if-eqz p3, :cond_d7

    .line 936
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkContainerOwnerShipForUMC(Lcom/samsung/android/knox/ContextInfo;)V

    .line 939
    :cond_d7
    if-eqz v2, :cond_f6

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_f6

    .line 940
    invoke-direct {p0, v5, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkProxyAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v10

    if-ne v10, v9, :cond_f6

    .line 941
    if-eqz p3, :cond_f5

    iget v9, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_f5

    .line 942
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v9

    .line 944
    :cond_f5
    return-object v5

    .line 954
    .end local v0    # "adminUid":I
    :cond_f6
    if-nez v8, :cond_12c

    iget-boolean v0, v5, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-nez v0, :cond_12c

    .line 955
    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v0, v3, :cond_12c

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v10, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0, v10}, Lcom/android/server/enterprise/utils/Utils;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v0

    if-ne v3, v0, :cond_10b

    goto :goto_12c

    .line 956
    :cond_10b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ContextInfo UID voilation info is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " but caller is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_12c
    :goto_12c
    if-eqz p5, :cond_160

    .line 965
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isDeviceOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_160

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_160

    if-nez v8, :cond_160

    iget-boolean v0, v5, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v0, :cond_147

    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v10, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    if-ne v0, v10, :cond_147

    goto :goto_160

    .line 967
    :cond_147
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "caller is not DO or PO or KPU: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_160
    :goto_160
    if-eqz p3, :cond_165

    .line 976
    invoke-direct {p0, v5, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkContainerOwnerShip(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 980
    :cond_165
    const/4 v10, 0x0

    .line 983
    .local v10, "permissionGranted":Z
    const-string v11, "EnterpriseDeviceManagerService"

    if-eqz v2, :cond_18e

    :try_start_16a
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18e

    .line 984
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_174
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 985
    .local v12, "permission":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v12}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_18b

    .line 986
    const/4 v0, 0x1

    .line 987
    .end local v10    # "permissionGranted":Z
    .local v0, "permissionGranted":Z
    move v10, v0

    goto :goto_18e

    .line 989
    .end local v0    # "permissionGranted":Z
    .end local v12    # "permission":Ljava/lang/String;
    .restart local v10    # "permissionGranted":Z
    :cond_18b
    goto :goto_174

    .line 1001
    :catch_18c
    move-exception v0

    goto :goto_1a4

    .line 991
    :cond_18e
    :goto_18e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "is permission granted: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_1a3} :catch_18c

    .line 1004
    goto :goto_1a9

    .line 1003
    .local v0, "e":Ljava/lang/Exception;
    :goto_1a4
    const-string v12, "could not check calling permission"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1007
    .local v0, "permissionString":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    if-nez v10, :cond_1f5

    .line 1008
    if-eqz v2, :cond_1da

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1da

    .line 1009
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1c3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_1da

    .line 1011
    const-string v11, " OR "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c3

    .line 1015
    .end local v9    # "i":I
    :cond_1da
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin  does not have "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1025
    :cond_1f5
    iget-boolean v13, v5, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v13, :cond_224

    iget v13, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_224

    .line 1026
    invoke-virtual {p0, v3, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceWpcod(IZ)V

    .line 1027
    iget v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-direct {p0, v5, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 1028
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "enforceActiveAdminPermissionByContext() - return contextInfo with PseudoUid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    iget v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-direct {v11, v12, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZ)V

    return-object v11

    .line 1035
    :cond_224
    if-eqz p3, :cond_247

    iget v9, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_247

    .line 1036
    if-eqz v8, :cond_241

    .line 1037
    iget-object v9, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v11, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v9, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v9

    .line 1038
    .local v9, "adminUid":I
    invoke-direct {p0, v5, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 1039
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v11

    .line 1041
    .end local v9    # "adminUid":I
    :cond_241
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v9

    .line 1043
    :cond_247
    if-eqz v8, :cond_25c

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isDelegationEnabledForDO(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    if-eqz v9, :cond_25c

    .line 1044
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getDeviceOwnerUid()I

    move-result v9

    .line 1045
    .restart local v9    # "adminUid":I
    invoke-direct {p0, v5, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 1046
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v11

    .line 1050
    .end local v9    # "adminUid":I
    :cond_25c
    const-string v9, "enforceActiveAdminDualPermission >>>"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-object v5
.end method

.method private enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3774
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    move-result-object v0

    .line 3775
    invoke-virtual {v0, p2, p3}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceCallingOrSelfPermissions(Ljava/util/List;Ljava/lang/String;)V

    .line 3776
    return-void
.end method

.method private enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p3, "checkActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .line 685
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v0

    .line 687
    .local v0, "userId":I
    if-nez p1, :cond_12

    .line 689
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object p1, v1

    .line 693
    :cond_12
    iget-boolean v1, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v1, :cond_21

    .line 694
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1

    .line 697
    :cond_21
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 699
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 701
    .local v7, "adminUid":I
    invoke-direct {p0, v7, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->verifyActivePermissions(ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 705
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 706
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    return-object v1

    .line 702
    :cond_42
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation not supported, Device permission not present"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    .end local v7    # "adminUid":I
    :cond_4a
    if-nez v0, :cond_63

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 708
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_63

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-gtz v1, :cond_63

    .line 712
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    return-object v1

    .line 710
    :cond_63
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation supported only on owner space"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceUMCSignature()V
    .registers 5

    .line 3157
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3159
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/Utils;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v1

    .line 3160
    .local v1, "signatureVerified":Z
    if-eqz v1, :cond_19

    .line 3166
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "signatureVerified":Z
    goto :goto_2a

    .line 3162
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v1    # "signatureVerified":Z
    :cond_19
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller is not real UMC. Signature Verification failed."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    throw v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_21

    .line 3164
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "signatureVerified":Z
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    :catch_21
    move-exception v0

    .line 3165
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "package not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .registers 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 1198
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1199
    .local v1, "auxAdm":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1200
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_49

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin found on user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EnterpriseDeviceManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    return-object v1

    .line 1204
    .end local v1    # "auxAdm":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_49
    goto :goto_6

    .line 1205
    :cond_4a
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAuthorizedAdminUid(I)I
    .registers 6
    .param p1, "uid"    # I

    .line 3412
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "getAuthorizedAdminUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3414
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "authorizedUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3415
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v3, "adminUid"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 3416
    .local v1, "result":Landroid/content/ContentValues;
    if-eqz v1, :cond_2d

    .line 3417
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 3418
    .local v2, "ret":Ljava/lang/Integer;
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 3420
    .end local v2    # "ret":Ljava/lang/Integer;
    :cond_2d
    const/4 v2, -0x1

    return v2
.end method

.method private declared-synchronized getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;
    .registers 2

    monitor-enter p0

    .line 3881
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    if-nez v0, :cond_12

    .line 3882
    const-string/jumbo v0, "mum_container_policy"

    .line 3883
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3882
    invoke-static {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 3885
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 3880
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDeviceOwnerUid()I
    .registers 9

    .line 843
    const-string v0, "EnterpriseDeviceManagerService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 845
    .local v1, "token":J
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 846
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v4

    .line 847
    .local v4, "deviceOwnerComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_2b

    .line 848
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 849
    .local v5, "deviceOwnerPackageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_27} :catch_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_2e
    .catchall {:try_start_6 .. :try_end_27} :catchall_2c

    .line 858
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    return v0

    .line 858
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "deviceOwnerComponent":Landroid/content/ComponentName;
    .end local v5    # "deviceOwnerPackageName":Ljava/lang/String;
    :cond_2b
    goto :goto_43

    :catchall_2c
    move-exception v0

    goto :goto_49

    .line 854
    :catch_2e
    move-exception v3

    .line 855
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 856
    const-string v4, "Failed to retrieve DO component on device"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_43

    .line 851
    :catch_39
    move-exception v3

    .line 852
    .local v3, "nne":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 853
    const-string v4, "Failed to get application info for DO component."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_2c

    .line 858
    nop

    .end local v3    # "nne":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 859
    nop

    .line 860
    const/4 v0, -0x1

    return v0

    .line 858
    :goto_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 859
    throw v0
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .registers 1

    .line 2117
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    return-object v0
.end method

.method private handleDowngrade()V
    .registers 8

    .line 2093
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "handleDowngrade: Checking Downgrade..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    const/4 v1, 0x0

    .line 2095
    .local v1, "edmDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "enterprise.db"

    .line 2097
    .local v2, "edmDBPath":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_c
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_15

    move-object v1, v4

    .line 2102
    goto :goto_2a

    .line 2099
    :catch_15
    move-exception v4

    .line 2101
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not open or create databse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    .line 2105
    .local v4, "oldVersion":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2107
    const/4 v5, 0x7

    if-le v4, v5, :cond_55

    .line 2108
    const-string v5, "Current Platform Version is older than the previous DB version"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const-string v5, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/system/enterprise.db"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2111
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/system/dmappmgr.db"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2112
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->sendMigrationIntent(Z)V

    .line 2114
    :cond_55
    return-void
.end method

.method private hasKnoxInternalExceptionPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1944
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isDelegationEnabledForDO(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 835
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 836
    .local v0, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private isFirmwareChanged()Z
    .registers 4

    .line 2537
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PlatformSoftwareVersion"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2538
    .local v0, "swVer":Ljava/lang/String;
    const-string/jumbo v1, "ro.build.fingerprint"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2539
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    move-object v1, v2

    .line 2540
    if-eqz v0, :cond_29

    if-eqz v1, :cond_27

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_29

    .line 2543
    :cond_27
    const/4 v2, 0x0

    return v2

    .line 2541
    :cond_29
    :goto_29
    const/4 v2, 0x1

    return v2
.end method

.method private isKgTurnedOn()Z
    .registers 6

    .line 3916
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "isKgTurnedOn."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    :try_start_8
    new-instance v1, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;)V

    .line 3919
    .local v1, "kgvm":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->isKgTurnedOn()Z

    move-result v2

    .line 3920
    .local v2, "rlcState":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isKgTurnedOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException; {:try_start_8 .. :try_end_28} :catch_40
    .catchall {:try_start_8 .. :try_end_28} :catchall_29

    .line 3921
    return v2

    .line 3924
    .end local v1    # "kgvm":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .end local v2    # "rlcState":Z
    :catchall_29
    move-exception v1

    .line 3925
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKgTurnedOn() : Failure getting KGVM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 3922
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v1

    .line 3923
    .local v1, "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    const-string v2, "KnoxGuardVaultManager not supported (KnoxGuardVaultException)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    .end local v1    # "e":Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
    nop

    .line 3927
    :goto_47
    const/4 v0, 0x0

    return v0
.end method

.method private isKpuPermissionGranted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "callerPackage"    # Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 765
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Caller does not have KPU permission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v0, 0x0

    return v0

    .line 768
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private isMdmAdminPresentInternal()Z
    .registers 10

    .line 2609
    const-string v0, "EnterpriseDeviceManagerService"

    const/4 v1, 0x1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2610
    .local v2, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2611
    .local v4, "storedUid":I
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v5

    .line 2612
    .local v5, "compName":Landroid/content/ComponentName;
    if-eqz v5, :cond_d

    sget-object v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 2613
    goto :goto_d

    .line 2616
    :cond_32
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v6

    if-eqz v6, :cond_64

    .line 2617
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 2618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isMdmAdminPresentInternal() : MDM Admin Found - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    return v1

    .line 2621
    :cond_64
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getEnterpriseLicenseManager()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v6

    .line 2622
    .local v6, "lService":Lcom/samsung/android/knox/license/IEnterpriseLicense;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6f} :catch_a3

    .line 2624
    .local v7, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_6f
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_77} :catch_79
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_77} :catch_a3

    move-object v7, v8

    .line 2627
    goto :goto_7d

    .line 2625
    :catch_79
    move-exception v8

    .line 2626
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_7a
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2628
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_7d
    if-eqz v7, :cond_9f

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9f

    .line 2629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isMdmAdminPresentInternal() : MDM Admin Found(2) - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_9e} :catch_a3

    .line 2630
    return v1

    .line 2632
    .end local v4    # "storedUid":I
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v6    # "lService":Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .end local v7    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9f
    goto/16 :goto_d

    .line 2634
    :cond_a1
    const/4 v0, 0x0

    return v0

    .line 2635
    .end local v2    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_a3
    move-exception v2

    .line 2636
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "isMdmAdminPresentInternal() : failed. "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2640
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private static isPackageInstalled(Ljava/lang/String;I)Z
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3592
    const-string v0, "EnterpriseDeviceManagerService"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 3593
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_58

    .line 3594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3596
    .local v3, "token":J
    :try_start_d
    invoke-interface {v1, p0, v2, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 3597
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_2d

    .line 3598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPackageInstalled() : package present. application : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_28} :catch_49
    .catchall {:try_start_d .. :try_end_28} :catchall_47

    .line 3599
    const/4 v0, 0x1

    .line 3607
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3599
    return v0

    .line 3601
    :cond_2d
    :try_start_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPackageInstalled() : package is not present. application : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_42} :catch_49
    .catchall {:try_start_2d .. :try_end_42} :catchall_47

    .line 3602
    nop

    .line 3607
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3602
    return v2

    .line 3607
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_47
    move-exception v0

    goto :goto_54

    .line 3604
    :catch_49
    move-exception v5

    .line 3605
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4a
    const-string v6, "Exception in isPackageInstalled()"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_47

    .line 3607
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3608
    goto :goto_58

    .line 3607
    :goto_54
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3608
    throw v0

    .line 3610
    .end local v3    # "token":J
    :cond_58
    :goto_58
    return v2
.end method

.method private loadActiveAdmins()V
    .registers 19

    .line 1632
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1633
    :try_start_7
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "loadActiveAdmins"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v0

    move-object v3, v0

    .line 1635
    .local v3, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_1e4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_340

    move v6, v0

    .line 1637
    .local v6, "storedUid":I
    const/4 v7, 0x0

    .line 1639
    .local v7, "isPseudoAdmin":Z
    :try_start_2d
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->checkPseudoAdminForUid(I)Z

    move-result v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_35
    .catchall {:try_start_2d .. :try_end_33} :catchall_340

    move v7, v0

    .line 1642
    goto :goto_51

    .line 1640
    :catch_35
    move-exception v0

    .line 1641
    .local v0, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mEdmStorageProvider.checkPseudoAdminForUid: error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_51
    if-eqz v7, :cond_64

    .line 1651
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Z)V

    .line 1652
    .local v0, "pseudoAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    iput v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 1653
    iget-object v5, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    goto :goto_1a

    .line 1658
    .end local v0    # "pseudoAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_64
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_36 .. :try_end_6a} :catchall_340

    move-object v8, v0

    .line 1659
    .local v8, "compName":Landroid/content/ComponentName;
    if-nez v8, :cond_6e

    .line 1660
    goto :goto_1a

    .line 1664
    :cond_6e
    :try_start_6e
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v8, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    move-object v9, v0

    .line 1665
    .local v9, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    const/4 v0, 0x0

    if-eqz v9, :cond_195

    .line 1666
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1667
    .local v10, "currentUid":I
    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_90} :catch_1c7
    .catchall {:try_start_6e .. :try_end_90} :catchall_340

    .line 1669
    if-ne v10, v6, :cond_da

    .line 1671
    :try_start_92
    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-interface {v11, v8, v12}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_d8

    .line 1673
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v11, v5, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1674
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v1, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1676
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin invalid on DPM, removing from EDM:   "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", uid: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1676
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_d3} :catch_d4
    .catch Ljava/lang/RuntimeException; {:try_start_92 .. :try_end_d3} :catch_1c7
    .catchall {:try_start_92 .. :try_end_d3} :catchall_340

    goto :goto_d8

    .line 1680
    :catch_d4
    move-exception v0

    .line 1681
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_d5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1682
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_d8
    :goto_d8
    goto/16 :goto_194

    .line 1684
    :cond_da
    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ADMIN_INFO"

    const-string v13, "adminUid"

    invoke-virtual {v11, v6, v12, v13, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_157

    .line 1687
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", updated with new currentUid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", old storedUid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catch Ljava/lang/RuntimeException; {:try_start_d5 .. :try_end_110} :catch_1c7
    .catchall {:try_start_d5 .. :try_end_110} :catchall_340

    .line 1691
    :try_start_110
    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 1692
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1691
    invoke-interface {v11, v8, v12}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_156

    .line 1694
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v11, v5, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1695
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v1, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1696
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin invalid on DPM, removing from EDM: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", uid: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1696
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_151} :catch_152
    .catch Ljava/lang/RuntimeException; {:try_start_110 .. :try_end_151} :catch_1c7
    .catchall {:try_start_110 .. :try_end_151} :catchall_340

    goto :goto_156

    .line 1700
    :catch_152
    move-exception v0

    .line 1701
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_153
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1702
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_156
    :goto_156
    goto :goto_194

    .line 1704
    :cond_157
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v6, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1706
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v11, v5, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1707
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v1, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1709
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed updating uid, removed: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", uid: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1709
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    .end local v10    # "currentUid":I
    :goto_194
    goto :goto_1c6

    .line 1716
    :cond_195
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v10, v5, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 1717
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v8, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1719
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin loaded null, removed: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", uid: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1719
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c6
    .catch Ljava/lang/RuntimeException; {:try_start_153 .. :try_end_1c6} :catch_1c7
    .catchall {:try_start_153 .. :try_end_1c6} :catchall_340

    .line 1725
    .end local v9    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :goto_1c6
    goto :goto_1e2

    .line 1723
    :catch_1c7
    move-exception v0

    .line 1724
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1c8
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occured while loading active admins "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "storedUid":I
    .end local v7    # "isPseudoAdmin":Z
    .end local v8    # "compName":Landroid/content/ComponentName;
    :goto_1e2
    goto/16 :goto_1a

    .line 1729
    :cond_1e4
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    move-object v4, v0

    .line 1730
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 1731
    .local v6, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1f9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    move-object v8, v0

    .line 1732
    .local v8, "uf":Landroid/content/pm/UserInfo;
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v0
    :try_end_20c
    .catchall {:try_start_1c8 .. :try_end_20c} :catchall_340

    move-object v9, v0

    .line 1734
    .local v9, "edmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;>;"
    const/4 v10, 0x0

    .line 1736
    .local v10, "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_20e
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v11}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0
    :try_end_216
    .catch Landroid/os/RemoteException; {:try_start_20e .. :try_end_216} :catch_218
    .catchall {:try_start_20e .. :try_end_216} :catchall_340

    move-object v10, v0

    .line 1739
    goto :goto_233

    .line 1737
    :catch_218
    move-exception v0

    .line 1738
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_219
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to get active admins from dpm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_233
    if-eqz v10, :cond_334

    .line 1742
    if-eqz v9, :cond_2c5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_241

    move-object/from16 v17, v3

    goto/16 :goto_2c7

    .line 1756
    :cond_241
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_245
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2c0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    .line 1757
    .local v12, "cn":Landroid/content/ComponentName;
    const/4 v13, 0x0

    .line 1758
    .local v13, "found":Z
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_256
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_26f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1759
    .local v15, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26e

    .line 1760
    const/4 v13, 0x1

    .line 1761
    goto :goto_26f

    .line 1763
    .end local v15    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_26e
    goto :goto_256

    .line 1764
    :cond_26f
    :goto_26f
    if-nez v13, :cond_2ba

    .line 1765
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v12, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 1766
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_2b5

    .line 1767
    const-string v14, "EnterpriseDeviceManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding missing admin to EDM : "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1769
    .local v5, "uid":I
    iget-object v14, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    iget-object v14, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    iget-object v14, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    const/4 v0, 0x0

    const/4 v3, 0x1

    .end local v0    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v16, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .local v17, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v14, v5, v15, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto :goto_2bc

    .line 1766
    .end local v5    # "uid":I
    .end local v16    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v17    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v0    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2b5
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .end local v0    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v16    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v17    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_2bc

    .line 1764
    .end local v16    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v17    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2ba
    move-object/from16 v17, v3

    .line 1775
    .end local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v13    # "found":Z
    .restart local v17    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2bc
    move-object/from16 v3, v17

    const/4 v5, 0x1

    goto :goto_245

    .line 1756
    .end local v17    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2c0
    move-object/from16 v17, v3

    .end local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v17    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v15, 0x1

    goto/16 :goto_337

    .line 1742
    .end local v17    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2c5
    move-object/from16 v17, v3

    .line 1743
    .end local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v17    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2c7
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding all admins from DPM for user : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_332

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1745
    .local v3, "cn":Landroid/content/ComponentName;
    iget v5, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 1746
    .local v5, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_32f

    .line 1747
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding missing admin to EDM : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1749
    .local v11, "uid":I
    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v12, v11, v13, v15, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto :goto_331

    .line 1746
    .end local v11    # "uid":I
    :cond_32f
    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 1754
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :goto_331
    goto :goto_2e3

    :cond_332
    const/4 v15, 0x1

    goto :goto_337

    .line 1741
    .end local v17    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v3, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_334
    move-object/from16 v17, v3

    move v15, v5

    .line 1778
    .end local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "uf":Landroid/content/pm/UserInfo;
    .end local v9    # "edmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;>;"
    .end local v10    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v17    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_337
    move v5, v15

    move-object/from16 v3, v17

    goto/16 :goto_1f9

    .line 1731
    .end local v17    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_33c
    move-object/from16 v17, v3

    .line 1779
    .end local v3    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v6    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    monitor-exit v2

    .line 1780
    return-void

    .line 1779
    :catchall_340
    move-exception v0

    monitor-exit v2
    :try_end_342
    .catchall {:try_start_219 .. :try_end_342} :catchall_340

    throw v0
.end method

.method private onStartUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser() : userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    return-void
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    .line 2342
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2343
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2344
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2345
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->deviceOwnerExists()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2346
    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2348
    :cond_1a
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2349
    return-void
.end method

.method private registerDeferredBroadcastReceiver()V
    .registers 6

    .line 2059
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    if-nez v0, :cond_18

    .line 2060
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;

    .line 2061
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 2063
    :cond_18
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2064
    .local v1, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v2}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->hasDeferredBroadcastReceiverToRegister()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 2065
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v2}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->registerDeferredBoradcastReceiver()V

    .line 2067
    .end local v1    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_45
    goto :goto_24

    .line 2068
    :cond_46
    return-void
.end method

.method private removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1338
    const-string v0, "failed to remove action admin "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1339
    .local v1, "callingUid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveAdmin() : Removing admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterpriseDeviceManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_32} :catch_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_32} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_7a

    .line 1348
    :catch_33
    move-exception v2

    .line 1349
    .local v2, "ex":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 1346
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    :catch_4b
    move-exception v2

    .line 1347
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_7a

    .line 1344
    :catch_63
    move-exception v2

    .line 1345
    .local v2, "ex":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :goto_7a
    nop

    .line 1351
    :goto_7b
    const-string v0, "Admin removed from DPM!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    return-void
.end method

.method private removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    .registers 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 1362
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;IZ)V

    .line 1363
    return-void
.end method

.method private removeActiveAdminDelayed(Landroid/content/ComponentName;IZ)V
    .registers 28
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "isRemovalDueToTransfer"    # Z

    .line 1366
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeActiveAdminDelayed - adminReceiver: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", userId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "EnterpriseDeviceManagerService"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v4

    .line 1369
    .local v4, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-nez v4, :cond_2c

    .line 1370
    return-void

    .line 1372
    :cond_2c
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1373
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1374
    .local v6, "callingUid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin uid: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", calling uid: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "EnterpriseDeviceManagerService"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    if-eq v5, v6, :cond_61

    .line 1379
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BIND_DEVICE_ADMIN"

    const-string v8, "Only system or itself can remove an EDM admin"

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    :cond_61
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v7

    .line 1386
    .local v7, "canRemove":Z
    if-nez v7, :cond_85

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cannot be removed!"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "EnterpriseDeviceManagerService"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    return-void

    .line 1390
    :cond_85
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->cleanUpConstrainedState(I)V

    .line 1392
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1394
    .local v8, "ident":J
    const/4 v10, 0x0

    .line 1398
    .local v10, "isPseudoAdmin":Z
    :try_start_8f
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->checkPseudoAdminForUid(I)Z

    move-result v0
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_95} :catch_380
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_95} :catch_365
    .catchall {:try_start_8f .. :try_end_95} :catchall_35b

    move v10, v0

    .line 1400
    if-nez v10, :cond_eb

    .line 1401
    :try_start_98
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->onPreAdminRemoval(I)V

    .line 1402
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_b5
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_b5} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b5} :catch_d5
    .catchall {:try_start_98 .. :try_end_b5} :catchall_ca

    move-object v12, v0

    .line 1404
    .local v12, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :try_start_b6
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v0, v5}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bf} :catch_c0
    .catch Ljava/lang/RuntimeException; {:try_start_b6 .. :try_end_bf} :catch_e0
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_ca

    .line 1408
    goto :goto_c9

    .line 1405
    :catch_c0
    move-exception v0

    .line 1406
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c1
    const-string v13, "EnterpriseDeviceManagerService"

    const-string/jumbo v14, "removeActiveAdminDelayed Ex1:"

    invoke-static {v13, v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c9
    .catch Ljava/lang/RuntimeException; {:try_start_c1 .. :try_end_c9} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c9} :catch_d5
    .catchall {:try_start_c1 .. :try_end_c9} :catchall_ca

    .line 1409
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :goto_c9
    goto :goto_a9

    .line 1508
    :catchall_ca
    move-exception v0

    move/from16 v13, p3

    :goto_cd
    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    goto/16 :goto_38c

    .line 1505
    :catch_d5
    move-exception v0

    move/from16 v13, p3

    :goto_d8
    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    goto/16 :goto_36e

    .line 1503
    :catch_e0
    move-exception v0

    move/from16 v13, p3

    :goto_e3
    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    goto/16 :goto_389

    .line 1412
    :cond_eb
    :try_start_eb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_f0
    .catch Ljava/lang/RuntimeException; {:try_start_eb .. :try_end_f0} :catch_34f
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f0} :catch_343
    .catchall {:try_start_eb .. :try_end_f0} :catchall_337

    .line 1414
    :try_start_f0
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing Admin with uid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1418
    if-nez v10, :cond_11b

    .line 1420
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeAdminFromDatabase(I)Z
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_11b} :catch_129
    .catchall {:try_start_f0 .. :try_end_11b} :catchall_11c

    .line 1427
    :cond_11b
    goto :goto_131

    .line 1428
    :catchall_11c
    move-exception v0

    move/from16 v13, p3

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    goto/16 :goto_326

    .line 1425
    :catch_129
    move-exception v0

    .line 1426
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_12a
    const-string v12, "EnterpriseDeviceManagerService"

    const-string v13, "FATAL: Admin failed to remove lets try during next boot up"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1428
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_131
    monitor-exit v11
    :try_end_132
    .catchall {:try_start_12a .. :try_end_132} :catchall_31b

    .line 1432
    if-nez v10, :cond_178

    .line 1434
    :try_start_134
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_140
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_167

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_14c
    .catch Ljava/lang/RuntimeException; {:try_start_134 .. :try_end_14c} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_14c} :catch_d5
    .catchall {:try_start_134 .. :try_end_14c} :catchall_ca

    move-object v12, v0

    .line 1436
    .restart local v12    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :try_start_14d
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_153} :catch_15b
    .catch Ljava/lang/RuntimeException; {:try_start_14d .. :try_end_153} :catch_e0
    .catchall {:try_start_14d .. :try_end_153} :catchall_ca

    move/from16 v13, p3

    :try_start_155
    invoke-interface {v0, v5, v13}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(IZ)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_158} :catch_159
    .catch Ljava/lang/RuntimeException; {:try_start_155 .. :try_end_158} :catch_175
    .catchall {:try_start_155 .. :try_end_158} :catchall_16f

    .line 1440
    goto :goto_166

    .line 1437
    :catch_159
    move-exception v0

    goto :goto_15e

    :catch_15b
    move-exception v0

    move/from16 v13, p3

    .line 1438
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_15e
    :try_start_15e
    const-string v14, "EnterpriseDeviceManagerService"

    const-string/jumbo v15, "removeActiveAdminDelayed Ex2:"

    invoke-static {v14, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1441
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :goto_166
    goto :goto_140

    .line 1442
    :cond_167
    move/from16 v13, p3

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->onAdminRemoved(I)V
    :try_end_16e
    .catch Ljava/lang/RuntimeException; {:try_start_15e .. :try_end_16e} :catch_175
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_16e} :catch_172
    .catchall {:try_start_15e .. :try_end_16e} :catchall_16f

    goto :goto_17a

    .line 1508
    :catchall_16f
    move-exception v0

    goto/16 :goto_cd

    .line 1505
    :catch_172
    move-exception v0

    goto/16 :goto_d8

    .line 1503
    :catch_175
    move-exception v0

    goto/16 :goto_e3

    .line 1432
    :cond_178
    move/from16 v13, p3

    .line 1447
    :goto_17a
    if-eqz v2, :cond_30c

    const/16 v0, 0x3e8

    if-ne v5, v0, :cond_30c

    .line 1448
    const/4 v11, 0x0

    .line 1450
    .local v11, "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_181
    iget-object v12, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-interface {v12, v14}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v12

    move-object v11, v12

    .line 1452
    if-eqz v11, :cond_2fd

    .line 1453
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_192
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2f4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ComponentName;

    .line 1454
    .local v14, "compName":Landroid/content/ComponentName;
    invoke-direct {v1, v14, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v15
    :try_end_1a2
    .catch Ljava/lang/RuntimeException; {:try_start_181 .. :try_end_1a2} :catch_30a
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_1a2} :catch_308
    .catchall {:try_start_181 .. :try_end_1a2} :catchall_306

    .line 1457
    .local v15, "activeAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v15, :cond_1d1

    .line 1458
    :try_start_1a4
    invoke-virtual {v15}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1ac
    .catch Ljava/lang/RuntimeException; {:try_start_1a4 .. :try_end_1ac} :catch_1c8
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1ac} :catch_1bf
    .catchall {:try_start_1a4 .. :try_end_1ac} :catchall_1b6

    move-object/from16 v17, v4

    const/16 v4, 0x3e8

    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .local v17, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eq v0, v4, :cond_1d4

    .line 1460
    move v0, v4

    move-object/from16 v4, v17

    goto :goto_192

    .line 1508
    .end local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v14    # "compName":Landroid/content/ComponentName;
    .end local v15    # "activeAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :catchall_1b6
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    goto/16 :goto_38c

    .line 1505
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :catch_1bf
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    goto/16 :goto_36e

    .line 1503
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :catch_1c8
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    goto/16 :goto_389

    .line 1457
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v14    # "compName":Landroid/content/ComponentName;
    .restart local v15    # "activeAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_1d1
    move-object/from16 v17, v4

    move v4, v0

    .line 1463
    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_1d4
    :try_start_1d4
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cd

    .line 1465
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v14, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->reconcileAdmin(Landroid/content/ComponentName;I)V

    .line 1469
    const-string v0, "adminUid"

    const-string/jumbo v4, "proxyUid"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 1471
    .local v0, "columns":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1473
    .local v4, "selectionValues":Landroid/content/ContentValues;
    const-string v12, "adminUid"
    :try_end_1f9
    .catch Ljava/lang/RuntimeException; {:try_start_1d4 .. :try_end_1f9} :catch_2eb
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1f9} :catch_2e2
    .catchall {:try_start_1d4 .. :try_end_1f9} :catchall_2d9

    move/from16 v18, v6

    .end local v6    # "callingUid":I
    .local v18, "callingUid":I
    :try_start_1fb
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1474
    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "PROXY_ADMIN_INFO"

    .line 1475
    invoke-virtual {v6, v12, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 1479
    .local v6, "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_2ac

    .line 1480
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_210
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2a1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    move-object/from16 v19, v16

    .line 1481
    .local v19, "proxAdminInfo":Landroid/content/ContentValues;
    move-object/from16 v16, v0

    .end local v0    # "columns":[Ljava/lang/String;
    .local v16, "columns":[Ljava/lang/String;
    const-string v0, "adminUid"

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    .end local v19    # "proxAdminInfo":Landroid/content/ContentValues;
    .local v4, "proxAdminInfo":Landroid/content/ContentValues;
    .local v20, "selectionValues":Landroid/content/ContentValues;
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1483
    .local v0, "adminUid":Ljava/lang/Integer;
    move-object/from16 v19, v6

    .end local v6    # "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v19, "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string/jumbo v6, "proxyUid"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1486
    .local v6, "proxyAdminUid":Ljava/lang/Integer;
    if-eqz v0, :cond_28f

    if-eqz v6, :cond_28f

    .line 1487
    move-object/from16 v21, v4

    .end local v4    # "proxAdminInfo":Landroid/content/ContentValues;
    .local v21, "proxAdminInfo":Landroid/content/ContentValues;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_28a

    .line 1488
    iget-object v4, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1489
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v22
    :try_end_245
    .catch Ljava/lang/RuntimeException; {:try_start_1fb .. :try_end_245} :catch_2c6
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_245} :catch_2bf
    .catchall {:try_start_1fb .. :try_end_245} :catchall_2b8

    move/from16 v23, v7

    .end local v7    # "canRemove":Z
    .local v23, "canRemove":Z
    :try_start_247
    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7
    :try_end_24b
    .catch Ljava/lang/RuntimeException; {:try_start_247 .. :try_end_24b} :catch_285
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_24b} :catch_280
    .catchall {:try_start_247 .. :try_end_24b} :catchall_27b

    .line 1490
    move/from16 v22, v10

    .end local v10    # "isPseudoAdmin":Z
    .local v22, "isPseudoAdmin":Z
    :try_start_24d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1488
    invoke-virtual {v4, v7, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addMUMContainer(II)Z

    .line 1491
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MUMContainer relation rebuilt : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1491
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27a
    .catch Ljava/lang/RuntimeException; {:try_start_24d .. :try_end_27a} :catch_331
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_27a} :catch_32d
    .catchall {:try_start_24d .. :try_end_27a} :catchall_328

    goto :goto_295

    .line 1508
    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v6    # "proxyAdminUid":Ljava/lang/Integer;
    .end local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v14    # "compName":Landroid/content/ComponentName;
    .end local v15    # "activeAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v16    # "columns":[Ljava/lang/String;
    .end local v19    # "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v20    # "selectionValues":Landroid/content/ContentValues;
    .end local v21    # "proxAdminInfo":Landroid/content/ContentValues;
    .end local v22    # "isPseudoAdmin":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catchall_27b
    move-exception v0

    move/from16 v22, v10

    .end local v10    # "isPseudoAdmin":Z
    .restart local v22    # "isPseudoAdmin":Z
    goto/16 :goto_38c

    .line 1505
    .end local v22    # "isPseudoAdmin":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catch_280
    move-exception v0

    move/from16 v22, v10

    .end local v10    # "isPseudoAdmin":Z
    .restart local v22    # "isPseudoAdmin":Z
    goto/16 :goto_36e

    .line 1503
    .end local v22    # "isPseudoAdmin":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catch_285
    move-exception v0

    move/from16 v22, v10

    .end local v10    # "isPseudoAdmin":Z
    .restart local v22    # "isPseudoAdmin":Z
    goto/16 :goto_389

    .line 1487
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v0    # "adminUid":Ljava/lang/Integer;
    .restart local v6    # "proxyAdminUid":Ljava/lang/Integer;
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    .restart local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v14    # "compName":Landroid/content/ComponentName;
    .restart local v15    # "activeAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v16    # "columns":[Ljava/lang/String;
    .restart local v19    # "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v20    # "selectionValues":Landroid/content/ContentValues;
    .restart local v21    # "proxAdminInfo":Landroid/content/ContentValues;
    :cond_28a
    move/from16 v23, v7

    move/from16 v22, v10

    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto :goto_295

    .line 1486
    .end local v21    # "proxAdminInfo":Landroid/content/ContentValues;
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v4    # "proxAdminInfo":Landroid/content/ContentValues;
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :cond_28f
    move-object/from16 v21, v4

    move/from16 v23, v7

    move/from16 v22, v10

    .line 1495
    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v4    # "proxAdminInfo":Landroid/content/ContentValues;
    .end local v6    # "proxyAdminUid":Ljava/lang/Integer;
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    :goto_295
    move-object/from16 v0, v16

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move/from16 v10, v22

    move/from16 v7, v23

    goto/16 :goto_210

    .line 1480
    .end local v16    # "columns":[Ljava/lang/String;
    .end local v19    # "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v20    # "selectionValues":Landroid/content/ContentValues;
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .local v0, "columns":[Ljava/lang/String;
    .local v4, "selectionValues":Landroid/content/ContentValues;
    .local v6, "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :cond_2a1
    move-object/from16 v16, v0

    move-object/from16 v20, v4

    move-object/from16 v19, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "selectionValues":Landroid/content/ContentValues;
    .end local v6    # "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v16    # "columns":[Ljava/lang/String;
    .restart local v19    # "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v20    # "selectionValues":Landroid/content/ContentValues;
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto :goto_2b6

    .line 1479
    .end local v16    # "columns":[Ljava/lang/String;
    .end local v19    # "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v20    # "selectionValues":Landroid/content/ContentValues;
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v4    # "selectionValues":Landroid/content/ContentValues;
    .restart local v6    # "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :cond_2ac
    move-object/from16 v16, v0

    move-object/from16 v20, v4

    move-object/from16 v19, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .line 1498
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "selectionValues":Landroid/content/ContentValues;
    .end local v6    # "proxyAdminInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    :goto_2b6
    goto/16 :goto_314

    .line 1508
    .end local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v14    # "compName":Landroid/content/ComponentName;
    .end local v15    # "activeAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catchall_2b8
    move-exception v0

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto/16 :goto_38c

    .line 1505
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catch_2bf
    move-exception v0

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto/16 :goto_36e

    .line 1503
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catch_2c6
    move-exception v0

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto/16 :goto_389

    .line 1463
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .local v6, "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    .restart local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v14    # "compName":Landroid/content/ComponentName;
    .restart local v15    # "activeAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_2cd
    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .line 1500
    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .end local v14    # "compName":Landroid/content/ComponentName;
    .end local v15    # "activeAdminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    move-object/from16 v4, v17

    const/16 v0, 0x3e8

    goto/16 :goto_192

    .line 1508
    .end local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catchall_2d9
    move-exception v0

    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto/16 :goto_38c

    .line 1505
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catch_2e2
    move-exception v0

    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto/16 :goto_36e

    .line 1503
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catch_2eb
    move-exception v0

    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto/16 :goto_389

    .line 1453
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .local v4, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    .restart local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2f4
    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto :goto_314

    .line 1452
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :cond_2fd
    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto :goto_314

    .line 1508
    .end local v11    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catchall_306
    move-exception v0

    goto :goto_33a

    .line 1505
    :catch_308
    move-exception v0

    goto :goto_346

    .line 1503
    :catch_30a
    move-exception v0

    goto :goto_352

    .line 1447
    :cond_30c
    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .line 1508
    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    :goto_314
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1509
    move/from16 v10, v22

    goto/16 :goto_375

    .line 1428
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catchall_31b
    move-exception v0

    move/from16 v13, p3

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    :goto_326
    :try_start_326
    monitor-exit v11
    :try_end_327
    .catchall {:try_start_326 .. :try_end_327} :catchall_335

    .end local v5    # "uid":I
    .end local v8    # "ident":J
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "userHandle":I
    .end local p3    # "isRemovalDueToTransfer":Z
    :try_start_327
    throw v0
    :try_end_328
    .catch Ljava/lang/RuntimeException; {:try_start_327 .. :try_end_328} :catch_331
    .catch Ljava/lang/Exception; {:try_start_327 .. :try_end_328} :catch_32d
    .catchall {:try_start_327 .. :try_end_328} :catchall_328

    .line 1508
    .restart local v5    # "uid":I
    .restart local v8    # "ident":J
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "userHandle":I
    .restart local p3    # "isRemovalDueToTransfer":Z
    :catchall_328
    move-exception v0

    move/from16 v10, v22

    goto/16 :goto_38c

    .line 1505
    :catch_32d
    move-exception v0

    move/from16 v10, v22

    goto :goto_36e

    .line 1503
    :catch_331
    move-exception v0

    move/from16 v10, v22

    goto :goto_389

    .line 1428
    :catchall_335
    move-exception v0

    goto :goto_326

    .line 1508
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catchall_337
    move-exception v0

    move/from16 v13, p3

    :goto_33a
    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto :goto_38c

    .line 1505
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catch_343
    move-exception v0

    move/from16 v13, p3

    :goto_346
    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto :goto_36e

    .line 1503
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catch_34f
    move-exception v0

    move/from16 v13, p3

    :goto_352
    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    move/from16 v22, v10

    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .end local v10    # "isPseudoAdmin":Z
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v22    # "isPseudoAdmin":Z
    .restart local v23    # "canRemove":Z
    goto :goto_389

    .line 1508
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v22    # "isPseudoAdmin":Z
    .end local v23    # "canRemove":Z
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    .restart local v10    # "isPseudoAdmin":Z
    :catchall_35b
    move-exception v0

    move/from16 v13, p3

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v23    # "canRemove":Z
    goto :goto_38c

    .line 1505
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v23    # "canRemove":Z
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    :catch_365
    move-exception v0

    move/from16 v13, p3

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    .line 1506
    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v23    # "canRemove":Z
    :goto_36e
    :try_start_36e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_371
    .catchall {:try_start_36e .. :try_end_371} :catchall_38b

    .line 1508
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1509
    nop

    .line 1510
    :goto_375
    invoke-direct {v1, v2, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V

    .line 1511
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    const-string v4, "ADMIN_REMOVED"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->SecContentProviderNotifyPolicyChangesAsUser(Ljava/lang/String;I)V

    .line 1512
    return-void

    .line 1503
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v23    # "canRemove":Z
    .restart local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v6    # "callingUid":I
    .restart local v7    # "canRemove":Z
    :catch_380
    move-exception v0

    move/from16 v13, p3

    move-object/from16 v17, v4

    move/from16 v18, v6

    move/from16 v23, v7

    .line 1504
    .end local v4    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v6    # "callingUid":I
    .end local v7    # "canRemove":Z
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v23    # "canRemove":Z
    :goto_389
    nop

    .end local v5    # "uid":I
    .end local v8    # "ident":J
    .end local v10    # "isPseudoAdmin":Z
    .end local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v18    # "callingUid":I
    .end local v23    # "canRemove":Z
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "userHandle":I
    .end local p3    # "isRemovalDueToTransfer":Z
    :try_start_38a
    throw v0
    :try_end_38b
    .catchall {:try_start_38a .. :try_end_38b} :catchall_38b

    .line 1508
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "uid":I
    .restart local v8    # "ident":J
    .restart local v10    # "isPseudoAdmin":Z
    .restart local v17    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v18    # "callingUid":I
    .restart local v23    # "canRemove":Z
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "userHandle":I
    .restart local p3    # "isRemovalDueToTransfer":Z
    :catchall_38b
    move-exception v0

    :goto_38c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1509
    throw v0
.end method

.method private removePseudoAdmin()V
    .registers 4

    .line 4052
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPseudoAdminUid()I

    move-result v0

    :goto_c
    iput v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 4055
    if-ne v0, v1, :cond_11

    .line 4056
    return-void

    .line 4060
    :cond_11
    const/4 v2, 0x1

    :try_start_12
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(IZ)V

    .line 4061
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeAdminFromDatabase(I)Z

    .line 4064
    iput v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 4065
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_28

    .line 4069
    goto :goto_44

    .line 4067
    :catch_28
    move-exception v0

    .line 4068
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePseudoAdmin exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method private resetAPILevelPrivacyPolicies()V
    .registers 12

    .line 4102
    const-string v0, "canRemove"

    const-string v1, "ADMIN_INFO"

    const-string v2, "MULTI_USER_MGMT"

    const-string v3, "RESTRICTION"

    const-string v4, "EnterpriseDeviceManagerService"

    const v5, -0xe9e7f2

    .line 4119
    .local v5, "resetControlMask":I
    :try_start_d
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->resetControlStateBits(II)V

    .line 4122
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->updateApplicationCacheForWpcod()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    .line 4125
    .end local v5    # "resetControlMask":I
    goto :goto_32

    .line 4123
    :catch_18
    move-exception v5

    .line 4124
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetAPILevelPrivacyPolicies (Application Group): Exception - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_32
    :try_start_32
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v7, "APPLICATION_MISC"

    const-string v8, "appNotificationMode"

    const/4 v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_3f

    .line 4133
    goto :goto_5c

    .line 4130
    :catch_3f
    move-exception v5

    .line 4131
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 4132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetAPILevelPrivacyPolicies : Failed to reset App Notification Mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_5c
    const/4 v5, 0x1

    :try_start_5d
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v8, "backupEnabled"

    invoke-virtual {v6, v7, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4141
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v8, "clipboardEnabled"

    invoke-virtual {v6, v7, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4144
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v8, "factoryresetallowed"

    invoke-virtual {v6, v7, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4147
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v8, "allowClipboardShare"

    invoke-virtual {v6, v7, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4150
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v8, "allowGoogleAccountsAutoSync"

    invoke-virtual {v6, v7, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4153
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->updateRestrictionCacheForWpcod()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_8d} :catch_8e

    .line 4156
    goto :goto_a8

    .line 4154
    :catch_8e
    move-exception v6

    .line 4155
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resetAPILevelPrivacyPolicies (Restriction Group): Exception - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_a8
    :try_start_a8
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string/jumbo v8, "globalProxy"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v3, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b3} :catch_b4

    .line 4163
    goto :goto_ce

    .line 4161
    :catch_b4
    move-exception v3

    .line 4162
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetAPILevelPrivacyPolicies (Global Proxy): Exception - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_ce
    :try_start_ce
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string/jumbo v7, "multiUserCreationAllowed"

    invoke-virtual {v3, v6, v2, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4171
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string/jumbo v7, "multiUserRemovalAllowed"

    invoke-virtual {v3, v6, v2, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_e2} :catch_e3

    .line 4174
    goto :goto_fd

    .line 4172
    :catch_e3
    move-exception v2

    .line 4173
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetAPILevelPrivacyPolicies (MultiUser policy Group): Exception - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_fd
    :try_start_fd
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4180
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "bluetoothLogEnabled"

    const-string v6, "false"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4181
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    const-string v7, "BLUETOOTH"

    invoke-virtual {v3, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_112} :catch_113

    .line 4184
    .end local v2    # "cv":Landroid/content/ContentValues;
    goto :goto_12d

    .line 4182
    :catch_113
    move-exception v2

    .line 4183
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetAPILevelPrivacyPolicies (Bluetooth policy Group): Exception - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_12d
    :try_start_12d
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-virtual {v2, v3, v1, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 4192
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4193
    .local v2, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 4194
    .local v3, "adminPkg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getKPUPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4195
    .local v6, "kpuPkgName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_143
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4196
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-nez v9, :cond_17b

    .line 4197
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 4198
    if-eqz v3, :cond_17b

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_176

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4199
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    invoke-virtual {v9, v10, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_17b

    .line 4200
    :cond_176
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v8, v1, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_17b} :catch_17d

    .line 4203
    .end local v8    # "uid":I
    :cond_17b
    goto :goto_143

    .line 4206
    .end local v2    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "adminPkg":Ljava/lang/String;
    .end local v6    # "kpuPkgName":Ljava/lang/String;
    :cond_17c
    goto :goto_197

    .line 4204
    :catch_17d
    move-exception v0

    .line 4205
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetAPILevelPrivacyPolicies (EDMPolicy.setAdminRemovable): Exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_197
    return-void
.end method

.method private resetClassLevelPrivacyPolicies()V
    .registers 9

    .line 4210
    const-string v0, "GEOFENCING"

    const-string v1, "BROWSER"

    const-string v2, "GEOFENCINGSETTINGS"

    const-string v3, "DomainFilterReportStatus"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 4217
    .local v0, "APIS_TO_RESET":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4218
    .local v1, "selectionValues":Landroid/content/ContentValues;
    iget v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4220
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_52

    aget-object v4, v0, v3

    .line 4222
    .local v4, "apiName":Ljava/lang/String;
    :try_start_22
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    .line 4226
    goto :goto_4f

    .line 4223
    :catch_28
    move-exception v5

    .line 4224
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 4225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetClassLevelPrivacyPolicies : Failed to reset table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "EnterpriseDeviceManagerService"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    .end local v4    # "apiName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 4228
    :cond_52
    return-void
.end method

.method private sendMigrationIntent(Z)V
    .registers 2
    .param p1, "result"    # Z

    .line 2517
    return-void
.end method

.method private setAdminRemovable(IZ)V
    .registers 6
    .param p1, "adminUid"    # I
    .param p2, "removable"    # Z

    .line 4074
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "ADMIN_INFO"

    const-string v2, "canRemove"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 4078
    goto :goto_e

    .line 4076
    :catch_a
    move-exception v0

    .line 4077
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4079
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method private setDelegatorAdminUid(Lcom/samsung/android/knox/ContextInfo;I)V
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "adminUid"    # I

    .line 800
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "mCallerUid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 801
    .local v0, "callingUidField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 802
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 805
    .end local v0    # "callingUidField":Ljava/lang/reflect/Field;
    goto :goto_17

    .line 803
    :catch_13
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 806
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void
.end method

.method private setMediators()V
    .registers 5

    .line 2453
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 2454
    .local v1, "each":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    instance-of v2, v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    if-eqz v2, :cond_24

    .line 2455
    move-object v2, v1

    check-cast v2, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    invoke-interface {v2, v3}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->setMediator(Lcom/android/server/enterprise/common/KeyCodeMediator;)V

    .line 2457
    :cond_24
    instance-of v2, v1, Lcom/android/server/enterprise/common/KeyCodeCustomCallback;

    if-eqz v2, :cond_30

    .line 2458
    move-object v2, v1

    check-cast v2, Lcom/android/server/enterprise/common/KeyCodeCustomCallback;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    invoke-interface {v2, v3}, Lcom/android/server/enterprise/common/KeyCodeCustomCallback;->setMediator(Lcom/android/server/enterprise/common/KeyCodeMediator;)V

    .line 2460
    .end local v1    # "each":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :cond_30
    goto :goto_c

    .line 2461
    :cond_31
    return-void
.end method

.method private showKnoxVersion()Ljava/lang/String;
    .registers 19

    .line 3636
    const-string v0, "No Policy Version"

    const-string/jumbo v1, "ro.config.timaversion"

    const-string/jumbo v2, "true"

    const-string v3, ""

    .line 3637
    .local v3, "knoxVersion":Ljava/lang/String;
    const-string v4, ""

    .line 3638
    .local v4, "knoxMajorVersion":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3640
    .local v5, "softwareInfo":Ljava/lang/StringBuilder;
    :try_start_11
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKnoxContainerVersionString()Ljava/lang/String;

    move-result-object v6
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_225

    .line 3641
    .local v6, "version":Ljava/lang/String;
    if-eqz v6, :cond_56

    :try_start_17
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_56

    .line 3642
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 3643
    .local v7, "last":C
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 3644
    .local v8, "last_str":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3645
    .local v9, "last_int":I
    const-string v10, "Knox "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    if-lez v9, :cond_3a

    .line 3647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 3649
    :cond_3a
    const/16 v10, 0x2e

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 3650
    .local v10, "index":I
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 3651
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3653
    .end local v10    # "index":I
    :goto_49
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_50} :catch_51

    goto :goto_56

    .line 3765
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "last":C
    .end local v8    # "last_str":Ljava/lang/String;
    .end local v9    # "last_int":I
    :catch_51
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_228

    .line 3657
    .restart local v6    # "version":Ljava/lang/String;
    :cond_56
    :goto_56
    :try_start_56
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v7

    .line 3658
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v7
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5e} :catch_225

    .line 3659
    .local v7, "standardVersion":Ljava/lang/String;
    if-eqz v7, :cond_75

    :try_start_60
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_75

    .line 3660
    const-string v8, "Standard SDK "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3661
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3662
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_75} :catch_51

    .line 3666
    :cond_75
    :try_start_75
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v8

    .line 3667
    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v8
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_81} :catch_225

    .line 3668
    .local v8, "premiumVersion":Ljava/lang/String;
    if-eqz v8, :cond_98

    :try_start_83
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_98

    .line 3669
    const-string v9, "Premium SDK "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3670
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3671
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_98} :catch_51

    .line 3675
    :cond_98
    :try_start_98
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    move-result-object v9

    .line 3676
    invoke-virtual {v9}, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->getInternalSdkVersion()Ljava/lang/String;

    move-result-object v9
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a4} :catch_225

    .line 3677
    .local v9, "customizationVersion":Ljava/lang/String;
    if-eqz v9, :cond_bb

    :try_start_a6
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_bb

    .line 3678
    const-string v10, "Customization SDK "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3679
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3680
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_bb} :catch_51

    .line 3684
    :cond_bb
    :try_start_bb
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getKnoxContainerVersionString()Ljava/lang/String;

    move-result-object v10
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bf} :catch_225

    .line 3685
    .local v10, "containerVersion":Ljava/lang/String;
    if-eqz v10, :cond_d6

    :try_start_c1
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d6

    .line 3686
    const-string v11, "Container  "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3687
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3688
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_d6} :catch_51

    .line 3691
    :cond_d6
    :try_start_d6
    const-string/jumbo v11, "net.knoxisl.version"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_de} :catch_225

    .line 3692
    .local v11, "imVersion":Ljava/lang/String;
    if-eqz v11, :cond_f5

    :try_start_e0
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_f5

    .line 3693
    const-string v13, "IM "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3694
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3695
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f5} :catch_51

    .line 3699
    :cond_f5
    :try_start_f5
    const-string/jumbo v13, "net.knoxscep.version"

    invoke-static {v13, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fc} :catch_225

    .line 3700
    .local v13, "scepVersion":Ljava/lang/String;
    if-eqz v13, :cond_113

    :try_start_fe
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_113

    .line 3701
    const-string v14, "CEP "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3702
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3703
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_113} :catch_51

    .line 3707
    :cond_113
    :try_start_113
    const-string/jumbo v14, "sys.enterprise.billing.version"

    invoke-static {v14, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_11a} :catch_225

    .line 3709
    .local v14, "enterpriseBillingVersion":Ljava/lang/String;
    if-eqz v14, :cond_131

    :try_start_11c
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_131

    .line 3710
    const-string v15, "Enterprise Billing "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3711
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3712
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_131} :catch_51

    .line 3716
    :cond_131
    :try_start_131
    invoke-static {}, Landroid/os/SELinux;->getSEAndroidVersion()Ljava/lang/String;

    move-result-object v15
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_135} :catch_225

    .line 3717
    .local v15, "seAndroidVersion":Ljava/lang/String;
    if-eqz v15, :cond_14c

    :try_start_137
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_14c

    .line 3718
    const-string v12, "SE for Android "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3719
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3720
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_14c} :catch_51

    .line 3724
    :cond_14c
    :try_start_14c
    const-string v12, ""
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_14e} :catch_225

    move-object/from16 v17, v3

    .end local v3    # "knoxVersion":Ljava/lang/String;
    .local v17, "knoxVersion":Ljava/lang/String;
    :try_start_150
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_203

    .line 3727
    const-string v3, "3.0"

    .line 3728
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3727
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ef

    .line 3729
    const/4 v0, 0x0

    .line 3730
    .local v0, "version_fragmenting":I
    const/4 v1, 0x1

    .line 3731
    .local v1, "shift":I
    const/16 v3, 0x10e

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v3

    if-eqz v3, :cond_173

    .line 3732
    const-string v3, "3.3"

    .local v3, "timaMajorVersion":Ljava/lang/String;
    goto :goto_175

    .line 3734
    .end local v3    # "timaMajorVersion":Ljava/lang/String;
    :cond_173
    const-string v3, "3.2"

    .line 3735
    .restart local v3    # "timaMajorVersion":Ljava/lang/String;
    :goto_175
    const-string/jumbo v12, "ro.config.dmverity"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_189

    .line 3736
    shl-int/lit8 v12, v1, 0x0

    add-int/2addr v0, v12

    .line 3737
    :cond_189
    const-string/jumbo v12, "ro.config.rkp"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_199

    .line 3738
    shl-int/lit8 v12, v1, 0x1

    add-int/2addr v0, v12

    .line 3739
    :cond_199
    const-string/jumbo v12, "ro.config.kap"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a9

    .line 3740
    shl-int/lit8 v12, v1, 0x2

    add-int/2addr v0, v12

    .line 3741
    :cond_1a9
    const-string/jumbo v12, "ro.config.kap_default_on"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 3742
    shl-int/lit8 v2, v1, 0x3

    add-int/2addr v0, v2

    .line 3743
    :cond_1b9
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1d6

    .line 3744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".00"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3745
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "timaVersion":Ljava/lang/String;
    goto :goto_1ee

    .line 3747
    .end local v2    # "timaVersion":Ljava/lang/String;
    :cond_1d6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".0"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3748
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3749
    .end local v0    # "version_fragmenting":I
    .end local v1    # "shift":I
    .restart local v2    # "timaVersion":Ljava/lang/String;
    :goto_1ee
    goto :goto_1f4

    .line 3750
    .end local v2    # "timaVersion":Ljava/lang/String;
    .end local v3    # "timaMajorVersion":Ljava/lang/String;
    :cond_1ef
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 3753
    .restart local v2    # "timaVersion":Ljava/lang/String;
    :goto_1f4
    const-string v0, "TIMA "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3754
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3755
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3759
    .end local v2    # "timaVersion":Ljava/lang/String;
    :cond_203
    const-string/jumbo v0, "net.knoxvpn.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3760
    .local v0, "vpnVersion":Ljava/lang/String;
    if-eqz v0, :cond_222

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_222

    .line 3761
    const-string v1, "VPN "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3762
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3763
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_222} :catch_223

    .line 3768
    .end local v0    # "vpnVersion":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "standardVersion":Ljava/lang/String;
    .end local v8    # "premiumVersion":Ljava/lang/String;
    .end local v9    # "customizationVersion":Ljava/lang/String;
    .end local v10    # "containerVersion":Ljava/lang/String;
    .end local v11    # "imVersion":Ljava/lang/String;
    .end local v13    # "scepVersion":Ljava/lang/String;
    .end local v14    # "enterpriseBillingVersion":Ljava/lang/String;
    .end local v15    # "seAndroidVersion":Ljava/lang/String;
    :cond_222
    goto :goto_232

    .line 3765
    :catch_223
    move-exception v0

    goto :goto_228

    .end local v17    # "knoxVersion":Ljava/lang/String;
    .local v3, "knoxVersion":Ljava/lang/String;
    :catch_225
    move-exception v0

    move-object/from16 v17, v3

    .line 3766
    .end local v3    # "knoxVersion":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "knoxVersion":Ljava/lang/String;
    :goto_228
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "Failed to get Knox Version "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3769
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_232
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native startRemoteDesktopService()V
.end method

.method private systemReady(I)V
    .registers 4
    .param p1, "mCurrentPhase"    # I

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "systemReady() : mCurrentPhase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_24

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_20

    goto :goto_29

    .line 1959
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->systemReady()V

    .line 1960
    goto :goto_29

    .line 1956
    :cond_24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->onStartUser(I)V

    .line 1957
    nop

    .line 1964
    :goto_29
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1965
    .local v0, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v0, :cond_37

    .line 1966
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->systemReady(I)V

    .line 1968
    :cond_37
    return-void
.end method

.method private updateApplicationCacheForWpcod()V
    .registers 5

    .line 4243
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "updateApplicationCacheForWpcod() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    :try_start_8
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 4246
    .local v1, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v1, :cond_20

    .line 4247
    iget v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateApplicationCacheForWpcod(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_21

    .line 4251
    .end local v1    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    :cond_20
    goto :goto_3e

    .line 4248
    :catch_21
    move-exception v1

    .line 4249
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateApplicationCacheForWpcod error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method private updateCurrentUser()V
    .registers 8

    .line 1975
    const-string v0, "EnterpriseDeviceManagerService"

    const/4 v1, 0x0

    .line 1976
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1978
    .local v2, "token":J
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_13
    .catchall {:try_start_7 .. :try_end_b} :catchall_11

    move v1, v4

    .line 1982
    nop

    :goto_d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1983
    goto :goto_1c

    .line 1982
    :catchall_11
    move-exception v0

    goto :goto_50

    .line 1979
    :catch_13
    move-exception v4

    .line 1980
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_14
    const-string/jumbo v5, "updateCurrentUser() : cannot get current userId. "

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    .line 1982
    nop

    .end local v4    # "ex":Ljava/lang/Exception;
    goto :goto_d

    .line 1984
    :goto_1c
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    if-eq v4, v1, :cond_4f

    .line 1985
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    .line 1986
    .local v4, "oldUserId":I
    iput v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    .line 1987
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCurrentUser() : User changed ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mSystemUIAdapter:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    iget v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V

    .line 1990
    .end local v4    # "oldUserId":I
    :cond_4f
    return-void

    .line 1982
    :goto_50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1983
    throw v0
.end method

.method private updateRestrictionCacheForWpcod()V
    .registers 5

    .line 4231
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "updateRestrictionCacheForWpcod() called.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4233
    :try_start_8
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 4234
    .local v1, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v1, :cond_16

    .line 4235
    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCacheForWpcod()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_17

    .line 4239
    .end local v1    # "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :cond_16
    goto :goto_34

    .line 4236
    :catch_17
    move-exception v1

    .line 4237
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRestrictionCacheForWpcod error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_34
    return-void
.end method

.method private verifyActivePermissions(ILjava/util/List;)Z
    .registers 8
    .param p1, "proxyAdminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3285
    .local p2, "requirePermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 3286
    .local v0, "adminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3288
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    .line 3289
    .local v1, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3290
    .local v3, "permission":Ljava/lang/String;
    if-eqz v1, :cond_32

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 3291
    const/4 v2, 0x1

    return v2

    .line 3293
    .end local v3    # "permission":Ljava/lang/String;
    :cond_32
    goto :goto_1c

    .line 3295
    .end local v1    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public activateAdminForUser(Landroid/content/ComponentName;ZI)V
    .registers 21
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .line 2940
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/util/ArrayList;

    const-string v6, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 2941
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2940
    const/4 v6, 0x0

    invoke-direct {v1, v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activating proxy admin on user "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "EnterpriseDeviceManagerService"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    invoke-virtual {v1, v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 2945
    .local v5, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_226

    .line 2950
    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v8, 0x1e

    if-lt v0, v8, :cond_51

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.samsung.android.kgclient"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2951
    :cond_51
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->adjustKnoxGuardAdmin()V

    .line 2955
    :cond_54
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 2956
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startDeferredServicesIfNeeded()V

    .line 2959
    :cond_69
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2960
    .local v8, "uid":I
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 2961
    .local v9, "compName":Landroid/content/ComponentName;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin uid: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Component name: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "EnterpriseDeviceManagerService"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    const/4 v10, 0x2

    .line 2964
    .local v10, "retry":I
    const/4 v11, 0x0

    .line 2965
    .local v11, "activationStatus":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 2966
    :try_start_9a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_21f

    .line 2967
    .local v13, "ident":J
    const/4 v15, 0x1

    .line 2969
    .local v15, "ret":Z
    if-nez v3, :cond_be

    :try_start_a1
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v1, v9, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-nez v0, :cond_ac

    goto :goto_be

    .line 2970
    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Admin is already added"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v8    # "uid":I
    .end local v9    # "compName":Landroid/content/ComponentName;
    .end local v10    # "retry":I
    .end local v11    # "activationStatus":Z
    .end local v13    # "ident":J
    .end local v15    # "ret":Z
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "refreshing":Z
    .end local p3    # "userHandle":I
    throw v0
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_b4} :catch_b9
    .catchall {:try_start_a1 .. :try_end_b4} :catchall_b4

    .line 3019
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v8    # "uid":I
    .restart local v9    # "compName":Landroid/content/ComponentName;
    .restart local v10    # "retry":I
    .restart local v11    # "activationStatus":Z
    .restart local v13    # "ident":J
    .restart local v15    # "ret":Z
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "refreshing":Z
    .restart local p3    # "userHandle":I
    :catchall_b4
    move-exception v0

    move-object/from16 v16, v9

    goto/16 :goto_21a

    .line 3016
    :catch_b9
    move-exception v0

    move-object/from16 v16, v9

    goto/16 :goto_211

    .line 2973
    :cond_be
    :goto_be
    if-nez v3, :cond_103

    .line 2974
    :try_start_c0
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding admin "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to lists"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2977
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2979
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_ef} :catch_fe
    .catchall {:try_start_c0 .. :try_end_ef} :catchall_f9

    move-object/from16 v16, v9

    const/4 v7, 0x0

    const/4 v9, 0x1

    .end local v9    # "compName":Landroid/content/ComponentName;
    .local v16, "compName":Landroid/content/ComponentName;
    :try_start_f3
    invoke-virtual {v0, v8, v6, v9, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v0

    move v15, v0

    goto :goto_105

    .line 3019
    .end local v16    # "compName":Landroid/content/ComponentName;
    .restart local v9    # "compName":Landroid/content/ComponentName;
    :catchall_f9
    move-exception v0

    move-object/from16 v16, v9

    .end local v9    # "compName":Landroid/content/ComponentName;
    .restart local v16    # "compName":Landroid/content/ComponentName;
    goto/16 :goto_21a

    .line 3016
    .end local v16    # "compName":Landroid/content/ComponentName;
    .restart local v9    # "compName":Landroid/content/ComponentName;
    :catch_fe
    move-exception v0

    move-object/from16 v16, v9

    .end local v9    # "compName":Landroid/content/ComponentName;
    .restart local v16    # "compName":Landroid/content/ComponentName;
    goto/16 :goto_211

    .line 2973
    .end local v16    # "compName":Landroid/content/ComponentName;
    .restart local v9    # "compName":Landroid/content/ComponentName;
    :cond_103
    move-object/from16 v16, v9

    .line 2982
    .end local v9    # "compName":Landroid/content/ComponentName;
    .restart local v16    # "compName":Landroid/content/ComponentName;
    :goto_105
    if-eqz v15, :cond_1e0

    .line 2989
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_113
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_129

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2990
    .local v6, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v7, v8}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    .line 2991
    .end local v6    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    goto :goto_113

    .line 2997
    :cond_129
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_12a
    if-gt v0, v10, :cond_186

    .line 2998
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to active admin in DPM"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v6, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 3000
    iget-object v6, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v6, v2, v4}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_16d

    .line 3001
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin sucessfully activated in DPM for user "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    const/4 v6, 0x1

    .line 3003
    .end local v11    # "activationStatus":Z
    .local v6, "activationStatus":Z
    move v11, v6

    goto :goto_186

    .line 3005
    .end local v6    # "activationStatus":Z
    .restart local v11    # "activationStatus":Z
    :cond_16d
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin activation failed for user "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    .line 3008
    .end local v0    # "i":I
    :cond_186
    :goto_186
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EDM setActiveAdmin activationStatus -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " for user - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    if-eqz v11, :cond_1b1

    .line 3015
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v6, "Admin added to DPM!"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ad
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_1ad} :catch_1de
    .catchall {:try_start_f3 .. :try_end_1ad} :catchall_1dc

    .line 3019
    :try_start_1ad
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1b0
    .catchall {:try_start_1ad .. :try_end_1b0} :catchall_224

    goto :goto_217

    .line 3010
    :cond_1b1
    :try_start_1b1
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v6, "Started removing admin information..."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v0, v7, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 3012
    invoke-direct {v1, v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 3013
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EDM - Admin activation failed for user -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v8    # "uid":I
    .end local v10    # "retry":I
    .end local v11    # "activationStatus":Z
    .end local v13    # "ident":J
    .end local v15    # "ret":Z
    .end local v16    # "compName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "refreshing":Z
    .end local p3    # "userHandle":I
    throw v0

    .line 3019
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v8    # "uid":I
    .restart local v10    # "retry":I
    .restart local v11    # "activationStatus":Z
    .restart local v13    # "ident":J
    .restart local v15    # "ret":Z
    .restart local v16    # "compName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "refreshing":Z
    .restart local p3    # "userHandle":I
    :catchall_1dc
    move-exception v0

    goto :goto_21a

    .line 3016
    :catch_1de
    move-exception v0

    goto :goto_211

    .line 2983
    :cond_1e0
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " from lists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2985
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2986
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable to activate admin"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v8    # "uid":I
    .end local v10    # "retry":I
    .end local v11    # "activationStatus":Z
    .end local v13    # "ident":J
    .end local v15    # "ret":Z
    .end local v16    # "compName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "refreshing":Z
    .end local p3    # "userHandle":I
    throw v0
    :try_end_211
    .catch Landroid/os/RemoteException; {:try_start_1b1 .. :try_end_211} :catch_1de
    .catchall {:try_start_1b1 .. :try_end_211} :catchall_1dc

    .line 3017
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v8    # "uid":I
    .restart local v10    # "retry":I
    .restart local v11    # "activationStatus":Z
    .restart local v13    # "ident":J
    .restart local v15    # "ret":Z
    .restart local v16    # "compName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "refreshing":Z
    .restart local p3    # "userHandle":I
    :goto_211
    :try_start_211
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_214
    .catchall {:try_start_211 .. :try_end_214} :catchall_1dc

    .line 3019
    .end local v0    # "e":Landroid/os/RemoteException;
    :try_start_214
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3020
    :goto_217
    nop

    .line 3021
    .end local v13    # "ident":J
    .end local v15    # "ret":Z
    monitor-exit v12

    .line 3022
    return-void

    .line 3019
    .restart local v13    # "ident":J
    .restart local v15    # "ret":Z
    :goto_21a
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3020
    nop

    .end local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v8    # "uid":I
    .end local v10    # "retry":I
    .end local v11    # "activationStatus":Z
    .end local v16    # "compName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "refreshing":Z
    .end local p3    # "userHandle":I
    throw v0

    .line 3021
    .end local v13    # "ident":J
    .end local v15    # "ret":Z
    .restart local v5    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local v8    # "uid":I
    .restart local v9    # "compName":Landroid/content/ComponentName;
    .restart local v10    # "retry":I
    .restart local v11    # "activationStatus":Z
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "refreshing":Z
    .restart local p3    # "userHandle":I
    :catchall_21f
    move-exception v0

    move-object/from16 v16, v9

    .end local v9    # "compName":Landroid/content/ComponentName;
    .restart local v16    # "compName":Landroid/content/ComponentName;
    :goto_222
    monitor-exit v12
    :try_end_223
    .catchall {:try_start_214 .. :try_end_223} :catchall_224

    throw v0

    :catchall_224
    move-exception v0

    goto :goto_222

    .line 2946
    .end local v8    # "uid":I
    .end local v10    # "retry":I
    .end local v11    # "activationStatus":Z
    .end local v16    # "compName":Landroid/content/ComponentName;
    :cond_226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad admin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public activateDevicePermissions(Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3216
    .local p1, "devicePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3217
    .local v0, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3218
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3220
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3222
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 3228
    .local v2, "proxyAdminUid":I
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10f

    .line 3232
    const/4 v3, 0x0

    .line 3233
    .local v3, "adminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-object v3, v4

    if-eqz v4, :cond_107

    .line 3234
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 3235
    .local v4, "cn":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3236
    .local v5, "packageName":Ljava/lang/String;
    nop

    .line 3237
    const-string v6, "application_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3238
    .local v6, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v7

    const/4 v8, 0x0

    const-string v9, "EnterpriseDeviceManagerService"

    if-eqz v7, :cond_69

    .line 3239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed due to application is installed in device as user:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    return v8

    .line 3243
    :cond_69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_97

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3245
    .local v10, "permission":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_96

    .line 3246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "This permission cannot be set on device level from the container: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    return v8

    .line 3249
    .end local v10    # "permission":Ljava/lang/String;
    :cond_96
    goto :goto_6d

    .line 3251
    :cond_97
    const-string v7, "com.samsung.android.knox.permission.KNOX_SECURITY"

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e9

    .line 3253
    const/4 v7, 0x7

    invoke-virtual {v3, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_c3

    .line 3254
    const-string v10, "encrypted-storage"

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3255
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add device permission: encrypted-storage, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3256
    invoke-virtual {v3, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3255
    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    :cond_c3
    const/16 v7, 0x14

    invoke-virtual {v3, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_e9

    .line 3259
    const-string/jumbo v10, "require-storagecard-encryption"

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3260
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add device permission: require-storagecard-encryption, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3261
    invoke-virtual {v3, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3260
    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    :cond_e9
    new-instance v7, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    invoke-direct {v7, v9, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 3268
    .local v7, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3270
    .local v9, "token":J
    :try_start_f6
    invoke-virtual {p0, v7, v2, v4, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 3271
    invoke-virtual {p0, v4, v8, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->activateAdminForUser(Landroid/content/ComponentName;ZI)V
    :try_end_fc
    .catchall {:try_start_f6 .. :try_end_fc} :catchall_102

    .line 3273
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3274
    nop

    .line 3275
    const/4 v8, 0x1

    return v8

    .line 3273
    :catchall_102
    move-exception v8

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3274
    throw v8

    .line 3277
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v7    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v9    # "token":J
    :cond_107
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "No active admin"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3229
    .end local v3    # "adminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_10f
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Admin already present and active"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addAuthorizedUid(II)Z
    .registers 6
    .param p1, "authorizedUid"    # I
    .param p2, "adminUid"    # I

    .line 3355
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "addAuthorizedUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3357
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 3358
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3359
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3360
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "authorizedUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3361
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    .line 3363
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method public addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "proxyAdmin"    # Landroid/app/admin/ProxyDeviceAdminInfo;
    .param p2, "proxyUid"    # I
    .param p3, "adminComponentName"    # Landroid/content/ComponentName;
    .param p4, "adminUid"    # I

    .line 2769
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2770
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2769
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2771
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2772
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "adminUid"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2773
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "componentName"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "proxyUid"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2775
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "proxyComponentName"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "proxyType"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2778
    .local v1, "serializedPerms":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2779
    nop

    .line 2780
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_67
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_86

    .line 2781
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2780
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 2783
    .end local v3    # "i":I
    :cond_86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "permissions"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b4

    .line 2786
    invoke-virtual {p1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "label"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v3

    const-string/jumbo v4, "icon"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2788
    invoke-virtual {p1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "description"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    :cond_b4
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PROXY_ADMIN_INFO"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 2792
    return-void
.end method

.method public addPseudoAdminForParent(I)I
    .registers 15
    .param p1, "containerId"    # I

    .line 3964
    const-string v0, "EnterpriseDeviceManagerService"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3965
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 3966
    .local v2, "pid":I
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_12

    sget v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    if-eq v2, v3, :cond_1c

    :cond_12
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3967
    const-string v4, "android.permission.MARK_DEVICE_ORGANIZATION_OWNED"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_89

    .line 3973
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 3974
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    move-result v3

    if-eq v3, p1, :cond_2b

    goto :goto_77

    .line 3980
    :cond_2b
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 3981
    .local v3, "containerOwnerUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 3984
    .local v4, "pseudoAdminUid":I
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v5

    move-object v11, v5

    .line 3986
    .local v11, "containerOwner":Landroid/content/ComponentName;
    const/4 v12, 0x0

    .line 3987
    .local v12, "ret":Z
    if-eqz v11, :cond_4e

    .line 3988
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3989
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 3988
    move v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdminWithPseudo(ILjava/lang/String;ZIZ)Z

    move-result v5

    move v12, v5

    .line 3994
    :cond_4e
    if-eqz v12, :cond_76

    .line 3995
    new-instance v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Z)V

    .line 3996
    .local v5, "adminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3997
    iput v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 3998
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPseudoAdminForParent() success with Pseudo =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    return v4

    .line 4003
    .end local v3    # "containerOwnerUid":I
    .end local v4    # "pseudoAdminUid":I
    .end local v5    # "adminInfo":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v11    # "containerOwner":Landroid/content/ComponentName;
    .end local v12    # "ret":Z
    :cond_76
    goto :goto_82

    .line 3975
    :cond_77
    :goto_77
    const-string v3, "addPseudoAdminForParent() returning 0.."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_7c} :catch_7e

    .line 3976
    const/4 v0, 0x0

    return v0

    .line 4001
    :catch_7e
    move-exception v3

    .line 4002
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4004
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_82
    const-string v3, "addPseudoAdminForParent() failed returning -1.."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    const/4 v0, -0x1

    return v0

    .line 3968
    :cond_89
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Caller must be a system process or have permission android.permission.MARK_DEVICE_ORGANIZATION_OWNED.."

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public captureUmcLogs(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)[B
    .registers 24
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "deviceInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 3511
    .local p3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    const-string v2, "---------------------------------------------------------------\n"

    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 3512
    .local v4, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3513
    move-object/from16 v5, p1

    invoke-virtual {v1, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3515
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_1e

    .line 3516
    return-object v6

    .line 3518
    :cond_1e
    const/4 v7, 0x0

    .line 3519
    .local v7, "logs":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3521
    .local v8, "token":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 3522
    .local v10, "pidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3524
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/ActivityManager;

    .line 3528
    .local v11, "am":Landroid/app/ActivityManager;
    :try_start_3d
    invoke-virtual {v11}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 3529
    .local v0, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v0, :cond_44

    .line 3530
    return-object v6

    .line 3532
    :cond_44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_96

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3533
    .local v13, "runApi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v13, :cond_93

    iget-object v14, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_58} :catch_99

    move-object/from16 v15, p3

    :try_start_5a
    invoke-interface {v15, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_95

    .line 3534
    iget v14, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3535
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_90} :catch_91

    goto :goto_95

    .line 3538
    .end local v0    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v13    # "runApi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_91
    move-exception v0

    goto :goto_9c

    .line 3533
    .restart local v0    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v13    # "runApi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_93
    move-object/from16 v15, p3

    .line 3537
    .end local v13    # "runApi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_95
    :goto_95
    goto :goto_48

    .line 3532
    :cond_96
    move-object/from16 v15, p3

    .line 3540
    .end local v0    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    goto :goto_9f

    .line 3538
    :catch_99
    move-exception v0

    move-object/from16 v15, p3

    .line 3539
    .local v0, "e1":Ljava/lang/Exception;
    :goto_9c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3542
    .end local v0    # "e1":Ljava/lang/Exception;
    :goto_9f
    const-string/jumbo v0, "logcat"

    const-string v6, "-d"

    const-string v12, "-v"

    const-string/jumbo v13, "threadtime"

    filled-new-array {v0, v6, v12, v13}, [Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 3545
    .local v6, "LOGCAT_CMD":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 3547
    .local v12, "logcatProc":Ljava/lang/Process;
    :try_start_af
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    move-object v12, v0

    .line 3549
    const/4 v0, 0x0

    .line 3550
    .local v0, "reader":Ljava/io/BufferedReader;
    const-string/jumbo v13, "line.separator"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3551
    .local v13, "lineSeparator":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3554
    .local v14, "strOutput":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 3555
    .local v16, "zos":Ljava/util/zip/ZipOutputStream;
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v18, v17

    .line 3556
    .local v18, "baos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v17, v0

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .local v17, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    move-object/from16 v1, v18

    .end local v18    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_d7} :catch_175

    .line 3557
    .end local v16    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v0, "zos":Ljava/util/zip/ZipOutputStream;
    move-object/from16 v16, v4

    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_d9
    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v5, "BELogs.txt"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 3558
    .local v4, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 3559
    new-instance v5, Ljava/io/BufferedReader;

    move-object/from16 v18, v4

    .end local v4    # "ze":Ljava/util/zip/ZipEntry;
    .local v18, "ze":Ljava/util/zip/ZipEntry;
    new-instance v4, Ljava/io/InputStreamReader;
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_e9} :catch_16f

    move-object/from16 v19, v6

    .end local v6    # "LOGCAT_CMD":[Ljava/lang/String;
    .local v19, "LOGCAT_CMD":[Ljava/lang/String;
    :try_start_eb
    invoke-virtual {v12}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 3561
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3562
    move-object/from16 v5, p2

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3563
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3565
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 3566
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3567
    :goto_110
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .local v6, "line":Ljava/lang/String;
    if-eqz v2, :cond_151

    .line 3568
    const-string v2, " +"

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3570
    .local v2, "parts":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_149

    array-length v5, v2
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_124} :catch_16b

    move-object/from16 v17, v7

    .end local v7    # "logs":[B
    .local v17, "logs":[B
    const/4 v7, 0x2

    if-le v5, v7, :cond_147

    :try_start_129
    aget-object v5, v2, v7

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 3571
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3572
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3573
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 3574
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_14c

    .line 3570
    :cond_147
    const/4 v5, 0x0

    goto :goto_14c

    .end local v17    # "logs":[B
    .restart local v7    # "logs":[B
    :cond_149
    move-object/from16 v17, v7

    const/4 v5, 0x0

    .line 3577
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v7    # "logs":[B
    .restart local v17    # "logs":[B
    :goto_14c
    move-object/from16 v5, p2

    move-object/from16 v7, v17

    goto :goto_110

    .line 3578
    .end local v17    # "logs":[B
    .restart local v7    # "logs":[B
    :cond_151
    move-object/from16 v17, v7

    .end local v7    # "logs":[B
    .restart local v17    # "logs":[B
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 3579
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 3580
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 3581
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_160} :catch_167

    move-object v7, v2

    .line 3582
    .end local v17    # "logs":[B
    .restart local v7    # "logs":[B
    :try_start_161
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_164} :catch_165

    .line 3586
    .end local v0    # "zos":Ljava/util/zip/ZipOutputStream;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v13    # "lineSeparator":Ljava/lang/String;
    .end local v14    # "strOutput":Ljava/lang/StringBuilder;
    .end local v18    # "ze":Ljava/util/zip/ZipEntry;
    goto :goto_184

    .line 3583
    :catch_165
    move-exception v0

    goto :goto_17c

    .end local v7    # "logs":[B
    .restart local v17    # "logs":[B
    :catch_167
    move-exception v0

    move-object/from16 v7, v17

    goto :goto_17c

    .end local v17    # "logs":[B
    .restart local v7    # "logs":[B
    :catch_16b
    move-exception v0

    move-object/from16 v17, v7

    .end local v7    # "logs":[B
    .restart local v17    # "logs":[B
    goto :goto_17c

    .end local v17    # "logs":[B
    .end local v19    # "LOGCAT_CMD":[Ljava/lang/String;
    .local v6, "LOGCAT_CMD":[Ljava/lang/String;
    .restart local v7    # "logs":[B
    :catch_16f
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v17, v7

    .end local v6    # "LOGCAT_CMD":[Ljava/lang/String;
    .end local v7    # "logs":[B
    .restart local v17    # "logs":[B
    .restart local v19    # "LOGCAT_CMD":[Ljava/lang/String;
    goto :goto_17c

    .end local v16    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "logs":[B
    .end local v19    # "LOGCAT_CMD":[Ljava/lang/String;
    .local v4, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "LOGCAT_CMD":[Ljava/lang/String;
    .restart local v7    # "logs":[B
    :catch_175
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v19, v6

    move-object/from16 v17, v7

    .line 3584
    .end local v4    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "LOGCAT_CMD":[Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "LOGCAT_CMD":[Ljava/lang/String;
    :goto_17c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3585
    const/4 v7, 0x0

    .line 3587
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_184
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3588
    return-object v7
.end method

.method public deactivateAdminForUser(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 3084
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 3085
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3084
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 3087
    :try_start_15
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    .line 3090
    goto :goto_34

    .line 3088
    :catch_19
    move-exception v0

    .line 3089
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateAdminForUser :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method public deactivateProxyAdminsForUser(I)V
    .registers 14
    .param p1, "userHandle"    # I

    .line 3056
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 3057
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3056
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 3058
    const-string v3, "adminUid"

    const-string/jumbo v4, "proxyUid"

    const-string/jumbo v5, "proxyType"

    const-string v6, "componentName"

    const-string/jumbo v7, "proxyComponentName"

    const-string/jumbo v8, "label"

    const-string/jumbo v9, "icon"

    const-string v10, "description"

    const-string/jumbo v11, "permissions"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 3064
    .local v0, "columns":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PROXY_ADMIN_INFO"

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 3068
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 3069
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "proxyUid"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3070
    .local v4, "proxyUid":I
    const-string/jumbo v5, "proxyComponentName"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3071
    .local v5, "adminName":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_87

    .line 3073
    :try_start_61
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3075
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeProxyAdmin(I)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6b} :catch_6c

    .line 3078
    goto :goto_87

    .line 3076
    :catch_6c
    move-exception v6

    .line 3077
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deactivateAdminForUser:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EnterpriseDeviceManagerService"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "proxyUid":I
    .end local v5    # "adminName":Ljava/lang/String;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_87
    :goto_87
    goto :goto_3d

    .line 3081
    :cond_88
    return-void
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 3303
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3615
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 3617
    const-string v0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3618
    return-void

    .line 3620
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterpriseDeviceManagerService Knox Info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3621
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->showKnoxVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterpriseDeviceManagerService SystemUIAdapter Info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3623
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getAdapterId()I

    move-result v1

    if-eq v0, v1, :cond_73

    .line 3624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentUserId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3627
    :cond_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUIAdapter adapterId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getAdapterId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUIAdapter registered count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getRegisteredCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3629
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isKnoxStateMonitorRegistered()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 3630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemUIAdapter is not registed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3632
    :cond_e1
    return-void
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "TargetPkgName"    # Ljava/lang/String;
    .param p5, "TargetSignature"    # Ljava/lang/String;
    .param p6, "PolicyBitMask"    # I

    .line 3299
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public enforceActiveAdminPermission(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 647
    .local p1, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    .line 649
    return-void
.end method

.method public enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 653
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 634
    if-eqz p2, :cond_3a

    .line 635
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 636
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_3a

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_3a

    .line 637
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 638
    .local v1, "callingCN":Landroid/content/ComponentName;
    if-eqz v1, :cond_3a

    invoke-virtual {v1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_3a

    .line 639
    :cond_1f
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component name violation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    .end local v0    # "uid":I
    .end local v1    # "callingCN":Landroid/content/ComponentName;
    :cond_3a
    :goto_3a
    return-void
.end method

.method public enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 661
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 677
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceKnoxV2Permission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "installPermission"    # Ljava/lang/String;
    .param p2, "runtimePermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 717
    const/4 v0, -0x1

    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 718
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 717
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_40

    .line 719
    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 721
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_40

    .line 722
    :cond_30
    const-string v0, "This API is works only with managedProfile(WPC)"

    .line 723
    .local v0, "errMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_38
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 734
    :cond_40
    :goto_40
    if-eqz p2, :cond_53

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 735
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 736
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 734
    invoke-virtual {v1, p2, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v0, :cond_53

    .line 740
    return-void

    .line 737
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application doesn\'t have this permission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    .restart local v0    # "errMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 727
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_6a
    const-string v0, "This API is works only with managed device(DO)"

    .line 728
    .restart local v0    # "errMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enforceKnoxV2VerifyCaller(I)Z
    .registers 6
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 744
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 745
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const-string v2, "android"

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_50

    .line 746
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "internalModuleName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToUsingDirectPermissionCheckAPI:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 749
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_31

    goto :goto_50

    .line 750
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This API can be called by platform signed app only, callerUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, "errMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 755
    .end local v1    # "internalModuleName":Ljava/lang/String;
    .end local v2    # "errMsg":Ljava/lang/String;
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, "clientPackageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isKpuPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->allowToSkipRuntimePermission:[Ljava/lang/String;

    .line 758
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 759
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_79

    goto :goto_7b

    :cond_79
    const/4 v2, 0x0

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 v2, 0x1

    .line 757
    :goto_7c
    return v2
.end method

.method public enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 671
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 666
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceOwnerOnlyAndActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlySupportedOperation()V
    .registers 5

    .line 2750
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v0

    .line 2751
    .local v0, "userId":I
    if-nez v0, :cond_9

    .line 2755
    return-void

    .line 2752
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation not supported on user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", only allowed on owner."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 657
    .local p2, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;ZZZ)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceWpcod(IZ)V
    .registers 9
    .param p1, "callerUid"    # I
    .param p2, "validateKPU"    # Z

    .line 4009
    const-string v0, "EnterpriseDeviceManagerService"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4012
    .local v1, "uid":I
    if-ne p1, v1, :cond_6d

    .line 4017
    :try_start_8
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 4020
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    move-result v2

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v2, v3, :cond_53

    .line 4025
    if-nez p2, :cond_22

    .line 4027
    const-string v2, "enforceWpcod(), caller is a valid KPU.."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    return-void

    .line 4032
    :cond_22
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 4033
    .local v2, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 4034
    .local v3, "caller":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_4c

    .line 4035
    :cond_44
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Caller is not either organization owned PO or KSP inside org owned profile.."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "uid":I
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "callerUid":I
    .end local p2    # "validateKPU":Z
    throw v4

    .line 4037
    .restart local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "callerUid":I
    .restart local p2    # "validateKPU":Z
    :cond_4c
    :goto_4c
    const-string v4, "enforceWpcod(), caller is a either WPCOD PO or valid KPU.."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    nop

    .end local v2    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v3    # "caller":Ljava/lang/String;
    goto :goto_6c

    .line 4021
    :cond_53
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Organization owned managed profile userId and caller userId does not match.."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "uid":I
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "callerUid":I
    .end local p2    # "validateKPU":Z
    throw v2

    .line 4018
    .restart local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "callerUid":I
    .restart local p2    # "validateKPU":Z
    :cond_5b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Device is not organization owned managed profile.."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "uid":I
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "callerUid":I
    .end local p2    # "validateKPU":Z
    throw v2
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_63} :catch_63

    .line 4038
    .restart local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "callerUid":I
    .restart local p2    # "validateKPU":Z
    :catch_63
    move-exception v2

    .line 4039
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "enforceWpcod(), failed to talk to DPMS.."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4042
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6c
    return-void

    .line 4013
    :cond_6d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContextInfo UID voilation info is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but caller is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .registers 12
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1519
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1520
    .local v0, "token":J
    const/4 v2, 0x0

    .line 1522
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    const v4, 0xc8080

    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_15
    .catchall {:try_start_5 .. :try_end_e} :catchall_10

    move-object v2, v3

    goto :goto_16

    .line 1531
    :catchall_10
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1532
    throw v3

    .line 1527
    :catch_15
    move-exception v3

    .line 1531
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1532
    nop

    .line 1535
    const/4 v3, 0x0

    if-nez v2, :cond_5f

    .line 1537
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 1538
    .local v4, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1539
    .local v6, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v6}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 1541
    :try_start_3b
    new-instance v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_42} :catch_45
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_42} :catch_43

    return-object v5

    .line 1545
    :catch_43
    move-exception v5

    .line 1547
    .local v5, "e":Ljava/io/IOException;
    return-object v3

    .line 1542
    .end local v5    # "e":Ljava/io/IOException;
    :catch_45
    move-exception v5

    .line 1544
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    return-object v3

    .line 1550
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v6    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_47
    goto :goto_25

    .line 1551
    :cond_48
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1553
    .end local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_5f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1555
    .local v4, "identity":J
    :try_start_63
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1556
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1557
    new-instance v7, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_63 .. :try_end_71} :catch_80
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_71} :catch_7a
    .catchall {:try_start_63 .. :try_end_71} :catchall_75

    .line 1565
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1557
    return-object v7

    .line 1565
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :catchall_75
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1566
    throw v3

    .line 1561
    :catch_7a
    move-exception v6

    .line 1563
    .local v6, "e":Ljava/io/IOException;
    nop

    .line 1565
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    return-object v3

    .line 1558
    .end local v6    # "e":Ljava/io/IOException;
    :catch_80
    move-exception v6

    .line 1560
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 1565
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1560
    return-object v3
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .registers 3

    .line 1209
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1210
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_17

    .line 1211
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 1213
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public getActiveAdminPackageName(I)Ljava/lang/String;
    .registers 5
    .param p1, "uid"    # I

    .line 3779
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3780
    return-object v1

    .line 3781
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 3782
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isPseudo()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 3783
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3785
    :cond_27
    return-object v1
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1792
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1793
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1792
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1794
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1795
    :try_start_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1796
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_5d

    .line 1798
    :cond_2c
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1799
    .local v3, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    const/16 v4, -0x2710

    if-eq v4, p1, :cond_53

    const/4 v4, -0x1

    if-eq v4, p1, :cond_53

    .line 1801
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_5a

    .line 1802
    :cond_53
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    .end local v3    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_5a
    goto :goto_32

    .line 1805
    :cond_5b
    monitor-exit v0

    return-object v1

    .line 1797
    :cond_5d
    :goto_5d
    monitor-exit v0

    return-object v1

    .line 1806
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_1a .. :try_end_61} :catchall_5f

    throw v1
.end method

.method public getActiveAdminsInfo(I)Ljava/util/List;
    .registers 7
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .line 1810
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1811
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1810
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1812
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1813
    const/16 v1, -0x2710

    if-ne p1, v1, :cond_27

    .line 1814
    :try_start_1e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 1816
    :cond_27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 1818
    .local v3, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_4f

    .line 1819
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1821
    .end local v3    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :cond_4f
    goto :goto_32

    .line 1822
    :cond_50
    monitor-exit v0

    return-object v1

    .line 1824
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;>;"
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_1e .. :try_end_54} :catchall_52

    throw v1
.end method

.method public getActiveSamsungAuthorizedAdmin(I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .registers 4
    .param p1, "uid"    # I

    .line 2548
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 2549
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2550
    return-object v0

    .line 2552
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAdminContextIfCallerInCertWhiteList(Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .line 1067
    .local p1, "reqPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    const-string v2, "EnterpriseDeviceManagerService"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1068
    .local v3, "callingUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1069
    .local v4, "userId":I
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "android"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, v4}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v5

    .line 1072
    .local v5, "userContext":Landroid/content/Context;
    const-string v7, "adminUid"

    const-string/jumbo v8, "packageName"

    const-string/jumbo v9, "signature"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 1078
    .local v10, "returnColumns":[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v11, v0

    .line 1079
    .local v11, "selectionValues":Landroid/content/ContentValues;
    nop

    .line 1080
    invoke-static {v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v0

    .line 1079
    const-string v12, "#SelectClause#"

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "CertificateWhiteListTable"

    invoke-virtual {v0, v12, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v12

    .line 1090
    .local v12, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_184

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/ContentValues;

    .line 1091
    .local v14, "cv":Landroid/content/ContentValues;
    invoke-virtual {v14, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1092
    .local v15, "packageName":Ljava/lang/String;
    invoke-virtual {v14, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1093
    .local v6, "packageSignature":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1095
    .local v17, "identity":J
    if-eqz v5, :cond_172

    .line 1096
    :try_start_59
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5d} :catch_161
    .catchall {:try_start_59 .. :try_end_5d} :catchall_15b

    move-object/from16 v19, v0

    .line 1097
    .local v19, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v1, v19

    .end local v19    # "packageManager":Landroid/content/pm/PackageManager;
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_154

    .line 1098
    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "userId":I
    .local v19, "userId":I
    :try_start_66
    invoke-virtual {v1, v15, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    move/from16 v16, v0

    .line 1100
    .local v16, "uid":I
    move/from16 v4, v16

    .end local v16    # "uid":I
    .local v4, "uid":I
    if-ne v4, v3, :cond_145

    .line 1101
    const/4 v0, 0x0

    .line 1103
    .local v0, "signatureMatch":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b3

    .line 1104
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v16

    .line 1105
    .local v20, "packages":[Ljava/lang/String;
    move/from16 v16, v0

    move-object/from16 v0, v20

    .end local v20    # "packages":[Ljava/lang/String;
    .local v0, "packages":[Ljava/lang/String;
    .local v16, "signatureMatch":Z
    if-eqz v0, :cond_a9

    .line 1106
    move-object/from16 v20, v1

    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .local v20, "packageManager":Landroid/content/pm/PackageManager;
    array-length v1, v0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_86} :catch_150
    .catchall {:try_start_66 .. :try_end_86} :catchall_14c

    move/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "callingUid":I
    .local v21, "callingUid":I
    :goto_89
    if-ge v3, v1, :cond_a4

    :try_start_8b
    aget-object v22, v0, v3

    move-object/from16 v23, v22

    .line 1107
    .local v23, "pkg":Ljava/lang/String;
    nop

    .line 1108
    move-object/from16 v22, v0

    move-object/from16 v0, v23

    .end local v23    # "pkg":Ljava/lang/String;
    .local v0, "pkg":Ljava/lang/String;
    .local v22, "packages":[Ljava/lang/String;
    invoke-static {v5, v0, v6}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    move/from16 v16, v23

    .line 1109
    if-eqz v16, :cond_9f

    .line 1110
    move/from16 v0, v16

    goto :goto_b1

    .line 1106
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_9f
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v22

    goto :goto_89

    .end local v22    # "packages":[Ljava/lang/String;
    .local v0, "packages":[Ljava/lang/String;
    :cond_a4
    move-object/from16 v22, v0

    .end local v0    # "packages":[Ljava/lang/String;
    .restart local v22    # "packages":[Ljava/lang/String;
    move/from16 v0, v16

    goto :goto_b1

    .line 1105
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "callingUid":I
    .end local v22    # "packages":[Ljava/lang/String;
    .restart local v0    # "packages":[Ljava/lang/String;
    .restart local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v3    # "callingUid":I
    :cond_a9
    move-object/from16 v22, v0

    move-object/from16 v20, v1

    move/from16 v21, v3

    .end local v0    # "packages":[Ljava/lang/String;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "callingUid":I
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v21    # "callingUid":I
    .restart local v22    # "packages":[Ljava/lang/String;
    move/from16 v0, v16

    .line 1113
    .end local v16    # "signatureMatch":Z
    .end local v22    # "packages":[Ljava/lang/String;
    .local v0, "signatureMatch":Z
    :goto_b1
    move v1, v0

    goto :goto_bb

    .line 1114
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "callingUid":I
    .restart local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v3    # "callingUid":I
    :cond_b3
    move/from16 v16, v0

    move-object/from16 v20, v1

    move/from16 v21, v3

    .end local v0    # "signatureMatch":Z
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "callingUid":I
    .restart local v16    # "signatureMatch":Z
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v21    # "callingUid":I
    const/4 v0, 0x1

    move v1, v0

    .line 1117
    .end local v16    # "signatureMatch":Z
    .local v1, "signatureMatch":Z
    :goto_bb
    if-eqz v1, :cond_140

    .line 1119
    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    .line 1121
    .local v3, "adminUid":Ljava/lang/Integer;
    if-eqz v3, :cond_139

    if-eqz p1, :cond_139

    .line 1122
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_134

    .line 1123
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_d0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_dc} :catch_13e
    .catchall {:try_start_8b .. :try_end_dc} :catchall_16d

    move-object/from16 v22, v0

    .line 1125
    .local v22, "permission":Ljava/lang/String;
    :try_start_de
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_e2} :catch_108
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e2} :catch_13e
    .catchall {:try_start_de .. :try_end_e2} :catchall_16d

    .line 1127
    move/from16 v23, v1

    .end local v1    # "signatureMatch":Z
    .local v23, "signatureMatch":Z
    :try_start_e4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_e8} :catch_102
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e8} :catch_13e
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_16d

    .line 1125
    move/from16 v24, v4

    move-object/from16 v4, v22

    .end local v22    # "permission":Ljava/lang/String;
    .local v4, "permission":Ljava/lang/String;
    .local v24, "uid":I
    :try_start_ec
    invoke-interface {v0, v4, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_ff

    .line 1129
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_fb} :catch_100
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_fb} :catch_13e
    .catchall {:try_start_ec .. :try_end_fb} :catchall_16d

    .line 1144
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    return-object v0

    .line 1134
    :cond_ff
    goto :goto_12a

    .line 1131
    :catch_100
    move-exception v0

    goto :goto_10f

    .end local v24    # "uid":I
    .local v4, "uid":I
    .restart local v22    # "permission":Ljava/lang/String;
    :catch_102
    move-exception v0

    move/from16 v24, v4

    move-object/from16 v4, v22

    .end local v22    # "permission":Ljava/lang/String;
    .local v4, "permission":Ljava/lang/String;
    .restart local v24    # "uid":I
    goto :goto_10f

    .end local v23    # "signatureMatch":Z
    .end local v24    # "uid":I
    .restart local v1    # "signatureMatch":Z
    .local v4, "uid":I
    .restart local v22    # "permission":Ljava/lang/String;
    :catch_108
    move-exception v0

    move/from16 v23, v1

    move/from16 v24, v4

    move-object/from16 v4, v22

    .line 1132
    .end local v1    # "signatureMatch":Z
    .end local v22    # "permission":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .local v4, "permission":Ljava/lang/String;
    .restart local v23    # "signatureMatch":Z
    .restart local v24    # "uid":I
    :goto_10f
    :try_start_10f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v0

    .end local v0    # "e":Landroid/os/RemoteException;
    .local v22, "e":Landroid/os/RemoteException;
    const-string v0, "Could not check permission "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of the admin that has added caller to cert white list"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_12a} :catch_13e
    .catchall {:try_start_10f .. :try_end_12a} :catchall_16d

    .line 1135
    .end local v4    # "permission":Ljava/lang/String;
    .end local v22    # "e":Landroid/os/RemoteException;
    :goto_12a
    move/from16 v1, v23

    move/from16 v4, v24

    goto :goto_d0

    .line 1123
    .end local v23    # "signatureMatch":Z
    .end local v24    # "uid":I
    .restart local v1    # "signatureMatch":Z
    .local v4, "uid":I
    :cond_12f
    move/from16 v23, v1

    move/from16 v24, v4

    .end local v1    # "signatureMatch":Z
    .end local v4    # "uid":I
    .restart local v23    # "signatureMatch":Z
    .restart local v24    # "uid":I
    goto :goto_176

    .line 1122
    .end local v23    # "signatureMatch":Z
    .end local v24    # "uid":I
    .restart local v1    # "signatureMatch":Z
    .restart local v4    # "uid":I
    :cond_134
    move/from16 v23, v1

    move/from16 v24, v4

    .end local v1    # "signatureMatch":Z
    .end local v4    # "uid":I
    .restart local v23    # "signatureMatch":Z
    .restart local v24    # "uid":I
    goto :goto_176

    .line 1121
    .end local v23    # "signatureMatch":Z
    .end local v24    # "uid":I
    .restart local v1    # "signatureMatch":Z
    .restart local v4    # "uid":I
    :cond_139
    move/from16 v23, v1

    move/from16 v24, v4

    .end local v1    # "signatureMatch":Z
    .end local v4    # "uid":I
    .restart local v23    # "signatureMatch":Z
    .restart local v24    # "uid":I
    goto :goto_176

    .line 1141
    .end local v3    # "adminUid":Ljava/lang/Integer;
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v23    # "signatureMatch":Z
    .end local v24    # "uid":I
    :catch_13e
    move-exception v0

    goto :goto_166

    .line 1117
    .restart local v1    # "signatureMatch":Z
    .restart local v4    # "uid":I
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_140
    move/from16 v23, v1

    move/from16 v24, v4

    .end local v1    # "signatureMatch":Z
    .end local v4    # "uid":I
    .restart local v23    # "signatureMatch":Z
    .restart local v24    # "uid":I
    goto :goto_176

    .line 1100
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "callingUid":I
    .end local v23    # "signatureMatch":Z
    .end local v24    # "uid":I
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    .local v3, "callingUid":I
    .restart local v4    # "uid":I
    :cond_145
    move-object/from16 v20, v1

    move/from16 v21, v3

    move/from16 v24, v4

    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "callingUid":I
    .end local v4    # "uid":I
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v21    # "callingUid":I
    .restart local v24    # "uid":I
    goto :goto_176

    .line 1144
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "callingUid":I
    .end local v24    # "uid":I
    .restart local v3    # "callingUid":I
    :catchall_14c
    move-exception v0

    move/from16 v21, v3

    .end local v3    # "callingUid":I
    .restart local v21    # "callingUid":I
    goto :goto_16e

    .line 1141
    .end local v21    # "callingUid":I
    .restart local v3    # "callingUid":I
    :catch_150
    move-exception v0

    move/from16 v21, v3

    .end local v3    # "callingUid":I
    .restart local v21    # "callingUid":I
    goto :goto_166

    .line 1097
    .end local v19    # "userId":I
    .end local v21    # "callingUid":I
    .restart local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v3    # "callingUid":I
    .local v4, "userId":I
    :cond_154
    move-object/from16 v20, v1

    move/from16 v21, v3

    move/from16 v19, v4

    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "callingUid":I
    .end local v4    # "userId":I
    .restart local v19    # "userId":I
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v21    # "callingUid":I
    goto :goto_176

    .line 1144
    .end local v19    # "userId":I
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v21    # "callingUid":I
    .restart local v3    # "callingUid":I
    .restart local v4    # "userId":I
    :catchall_15b
    move-exception v0

    move/from16 v21, v3

    move/from16 v19, v4

    .end local v3    # "callingUid":I
    .end local v4    # "userId":I
    .restart local v19    # "userId":I
    .restart local v21    # "callingUid":I
    goto :goto_16e

    .line 1141
    .end local v19    # "userId":I
    .end local v21    # "callingUid":I
    .restart local v3    # "callingUid":I
    .restart local v4    # "userId":I
    :catch_161
    move-exception v0

    move/from16 v21, v3

    move/from16 v19, v4

    .line 1142
    .end local v3    # "callingUid":I
    .end local v4    # "userId":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "userId":I
    .restart local v21    # "callingUid":I
    :goto_166
    :try_start_166
    const-string v1, "Package added to certificate whitelisted not installed"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16b
    .catchall {:try_start_166 .. :try_end_16b} :catchall_16d

    .line 1144
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_177

    :catchall_16d
    move-exception v0

    :goto_16e
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1145
    throw v0

    .line 1095
    .end local v19    # "userId":I
    .end local v21    # "callingUid":I
    .restart local v3    # "callingUid":I
    .restart local v4    # "userId":I
    :cond_172
    move/from16 v21, v3

    move/from16 v19, v4

    .line 1144
    .end local v3    # "callingUid":I
    .end local v4    # "userId":I
    .restart local v19    # "userId":I
    .restart local v21    # "callingUid":I
    :goto_176
    nop

    :goto_177
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1145
    nop

    .line 1146
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v17    # "identity":J
    move-object/from16 v1, p0

    move/from16 v4, v19

    move/from16 v3, v21

    const/4 v6, 0x0

    goto/16 :goto_3e

    .line 1148
    .end local v6    # "packageSignature":Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v19    # "userId":I
    .end local v21    # "callingUid":I
    .restart local v3    # "callingUid":I
    .restart local v4    # "userId":I
    :cond_184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1912
    const/4 v0, -0x1

    .line 1913
    .local v0, "callingUid":I
    if-nez p2, :cond_6

    .line 1914
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    goto :goto_56

    .line 1916
    :cond_6
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1917
    .local v1, "userId":I
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1919
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_54

    .line 1920
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1921
    .local v4, "callingIdentity":J
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v7

    .line 1922
    .local v7, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1923
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_23
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_50

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1924
    .local v9, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v9}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 1925
    invoke-virtual {v9}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1926
    invoke-virtual {v9}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v8

    if-ne v8, v10, :cond_50

    .line 1927
    return v3

    .line 1931
    .end local v9    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_4f
    goto :goto_23

    .line 1932
    :cond_50
    if-ne v0, v6, :cond_53

    .line 1933
    return v10

    .line 1935
    .end local v4    # "callingIdentity":J
    .end local v7    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_53
    goto :goto_56

    .line 1936
    :cond_54
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1940
    .end local v1    # "userId":I
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_56
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v1

    return v1
.end method

.method public getAdminUidForAuthorizedUid(I)I
    .registers 6
    .param p1, "authorizedUid"    # I

    .line 3397
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "getAdminUidForAuthorizedUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3399
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 3400
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3401
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "authorizedUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3402
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v3, "adminUid"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 3403
    .local v1, "result":Landroid/content/ContentValues;
    if-eqz v1, :cond_36

    .line 3404
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 3405
    .local v2, "ret":Ljava/lang/Integer;
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 3408
    .end local v0    # "selectionValues":Landroid/content/ContentValues;
    .end local v1    # "result":Landroid/content/ContentValues;
    .end local v2    # "ret":Ljava/lang/Integer;
    :cond_36
    const/4 v0, -0x1

    return v0
.end method

.method public getAuthorizedUidForAdminUid(I)I
    .registers 6
    .param p1, "adminUid"    # I

    .line 3382
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "getAuthorizedUidForAdminUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3384
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 3385
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3386
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3387
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v3, "authorizedUid"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 3388
    .local v1, "result":Landroid/content/ContentValues;
    if-eqz v1, :cond_36

    .line 3389
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 3390
    .local v2, "ret":Ljava/lang/Integer;
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 3393
    .end local v0    # "selectionValues":Landroid/content/ContentValues;
    .end local v1    # "result":Landroid/content/ContentValues;
    .end local v2    # "ret":Ljava/lang/Integer;
    :cond_36
    const/4 v0, -0x1

    return v0
.end method

.method public getConstrainedState()I
    .registers 2

    .line 3311
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedState()I

    move-result v0

    return v0
.end method

.method public getFirmwareUpgrade()Z
    .registers 2

    .line 2121
    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mIsFirmwareUpgrade:Z

    return v0
.end method

.method public getKPUPackageName()Ljava/lang/String;
    .registers 2

    .line 821
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getLockObject()Ljava/lang/Object;
    .registers 2

    .line 296
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/server/LockGuard;->guard(I)V

    .line 299
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mLockDoNoUseDirectly:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrganizationOwnedProfileUserId()I
    .registers 9

    .line 4082
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 4083
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4084
    .local v1, "token":J
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 4086
    .local v3, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_13
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 4087
    .local v5, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_39

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v6, v7}, Landroid/app/admin/IDevicePolicyManager;->isProfileOwnerOfOrganizationOwnedDeviceMDM(I)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 4088
    iget v4, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_35} :catch_3c
    .catchall {:try_start_13 .. :try_end_35} :catchall_3a

    .line 4094
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4088
    return v4

    .line 4090
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    :cond_39
    goto :goto_17

    .line 4094
    :catchall_3a
    move-exception v4

    goto :goto_47

    .line 4091
    :catch_3c
    move-exception v4

    .line 4092
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3d
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    .line 4094
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4095
    nop

    .line 4096
    const/16 v4, -0x2710

    return v4

    .line 4094
    :goto_47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4095
    throw v4
.end method

.method public getProxyAdmins(I)Ljava/util/List;
    .registers 28
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/admin/ProxyDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .line 2829
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 2830
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2829
    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 2832
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const-string v5, "adminUid"

    const-string/jumbo v6, "proxyUid"

    const-string/jumbo v7, "proxyType"

    const-string v8, "componentName"

    const-string/jumbo v9, "proxyComponentName"

    const-string/jumbo v10, "label"

    const-string/jumbo v11, "icon"

    const-string v12, "description"

    const-string/jumbo v13, "permissions"

    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 2839
    .local v5, "columns":[Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PROXY_ADMIN_INFO"

    invoke-virtual {v0, v6, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 2843
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_197

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/ContentValues;

    .line 2844
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "proxyUid"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2845
    .local v8, "proxyUid":I
    const/4 v0, -0x1

    if-eq v0, v2, :cond_6a

    .line 2846
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, v2, :cond_6a

    .line 2847
    goto :goto_48

    .line 2850
    :cond_6a
    const-string/jumbo v0, "proxyType"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2852
    .local v9, "type":I
    const/4 v10, 0x0

    .line 2853
    .local v10, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/4 v0, 0x2

    const-string v11, ";"

    const-string/jumbo v12, "permissions"

    if-ne v9, v0, :cond_f1

    .line 2854
    const-string/jumbo v0, "label"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2855
    .local v0, "label":Ljava/lang/String;
    const-string/jumbo v13, "icon"

    invoke-virtual {v7, v13}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v19

    .line 2856
    .local v19, "icon":[B
    const-string v13, "description"

    invoke-virtual {v7, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2857
    .local v20, "description":Ljava/lang/String;
    invoke-virtual {v7, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2858
    .local v12, "serializedPerms":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2860
    .local v11, "perms":[Ljava/lang/String;
    const-string/jumbo v13, "proxyComponentName"

    invoke-virtual {v7, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2862
    .local v21, "proxyComponentName":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    .line 2863
    .local v22, "cn":Landroid/content/ComponentName;
    new-instance v13, Landroid/content/pm/ResolveInfo;

    invoke-direct {v13}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v15, v13

    .line 2864
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v13, Landroid/content/pm/ActivityInfo;

    invoke-direct {v13}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object v14, v13

    .line 2865
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v13, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v13}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2866
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2867
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2868
    iput v8, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2869
    iput-object v13, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2870
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2871
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2872
    iput-object v14, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2874
    new-instance v2, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v23, v13

    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v23, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v13, v2

    move-object/from16 v24, v14

    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .local v24, "ai":Landroid/content/pm/ActivityInfo;
    move-object v14, v15

    move-object/from16 v25, v15

    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .local v25, "ri":Landroid/content/pm/ResolveInfo;
    move-object v15, v0

    move-object/from16 v16, v20

    move-object/from16 v17, v19

    invoke-direct/range {v13 .. v18}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V

    move-object v10, v2

    .line 2875
    .end local v0    # "label":Ljava/lang/String;
    .end local v11    # "perms":[Ljava/lang/String;
    .end local v12    # "serializedPerms":Ljava/lang/String;
    .end local v19    # "icon":[B
    .end local v20    # "description":Ljava/lang/String;
    .end local v21    # "proxyComponentName":Ljava/lang/String;
    .end local v22    # "cn":Landroid/content/ComponentName;
    .end local v23    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v25    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    goto/16 :goto_18a

    .line 2876
    :cond_f1
    const-string v0, "adminUid"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2877
    .local v2, "adminUid":I
    const-string v0, "componentName"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2878
    .local v13, "componentName":Ljava/lang/String;
    invoke-virtual {v7, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2879
    .restart local v12    # "serializedPerms":Ljava/lang/String;
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    .line 2881
    .local v14, "cn":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 2882
    .local v15, "token":J
    const/16 v17, 0x0

    .line 2884
    .local v17, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_10f
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_111} :catch_138
    .catchall {:try_start_10f .. :try_end_111} :catchall_12f

    move-object/from16 v18, v4

    .line 2888
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v18, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_113
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_117} :catch_12b
    .catchall {:try_start_113 .. :try_end_117} :catchall_127

    .line 2884
    move/from16 v20, v2

    const v2, 0xc8080

    .end local v2    # "adminUid":I
    .local v20, "adminUid":I
    :try_start_11c
    invoke-interface {v0, v14, v2, v4}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_120} :catch_125
    .catchall {:try_start_11c .. :try_end_120} :catchall_123

    move-object/from16 v17, v0

    goto :goto_13d

    .line 2893
    :catchall_123
    move-exception v0

    goto :goto_134

    .line 2889
    :catch_125
    move-exception v0

    goto :goto_13d

    .line 2893
    .end local v20    # "adminUid":I
    .restart local v2    # "adminUid":I
    :catchall_127
    move-exception v0

    move/from16 v20, v2

    .end local v2    # "adminUid":I
    .restart local v20    # "adminUid":I
    goto :goto_134

    .line 2889
    .end local v20    # "adminUid":I
    .restart local v2    # "adminUid":I
    :catch_12b
    move-exception v0

    move/from16 v20, v2

    .end local v2    # "adminUid":I
    .restart local v20    # "adminUid":I
    goto :goto_13d

    .line 2893
    .end local v18    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v20    # "adminUid":I
    .restart local v2    # "adminUid":I
    .restart local v4    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_12f
    move-exception v0

    move/from16 v20, v2

    move-object/from16 v18, v4

    .end local v2    # "adminUid":I
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v18    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v20    # "adminUid":I
    :goto_134
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2894
    throw v0

    .line 2889
    .end local v18    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v20    # "adminUid":I
    .restart local v2    # "adminUid":I
    .restart local v4    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_138
    move-exception v0

    move/from16 v20, v2

    move-object/from16 v18, v4

    .line 2893
    .end local v2    # "adminUid":I
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v18    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v20    # "adminUid":I
    :goto_13d
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2894
    move-object/from16 v2, v17

    .line 2900
    .end local v17    # "ai":Landroid/content/pm/ActivityInfo;
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v2, :cond_14a

    .line 2901
    move/from16 v2, p1

    move-object/from16 v4, v18

    goto/16 :goto_48

    .line 2905
    :cond_14a
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v4, v0

    .line 2907
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v5

    .end local v5    # "columns":[Ljava/lang/String;
    .local v17, "columns":[Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v5}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    move-object v5, v0

    .line 2908
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2909
    iput-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2910
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2911
    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2912
    iput-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2915
    if-nez v12, :cond_177

    .line 2916
    :try_start_16e
    new-instance v0, Landroid/app/admin/ProxyDeviceAdminInfo;

    iget-object v11, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v11}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    move-object v10, v0

    .end local v10    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .local v0, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto :goto_185

    .line 2918
    .end local v0    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v10    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_177
    new-instance v0, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 2919
    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2918
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4, v11}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_184} :catch_186

    move-object v10, v0

    .line 2923
    :goto_185
    goto :goto_18a

    .line 2921
    :catch_186
    move-exception v0

    .line 2922
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2925
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "serializedPerms":Ljava/lang/String;
    .end local v13    # "componentName":Ljava/lang/String;
    .end local v14    # "cn":Landroid/content/ComponentName;
    .end local v15    # "token":J
    .end local v20    # "adminUid":I
    :goto_18a
    if-eqz v10, :cond_18f

    .line 2926
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2927
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "proxyUid":I
    .end local v9    # "type":I
    .end local v10    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_18f
    move/from16 v2, p1

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    goto/16 :goto_48

    .line 2928
    .end local v17    # "columns":[Ljava/lang/String;
    .end local v18    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v5, "columns":[Ljava/lang/String;
    :cond_197
    return-object v3
.end method

.method public getPseudoAdminUid()I
    .registers 2

    .line 4045
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    return v0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1828
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 1829
    return-void
.end method

.method public getUserStatus(I)I
    .registers 15
    .param p1, "userId"    # I

    .line 3835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getUserStatus is called for userid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    const/4 v0, -0x1

    .line 3837
    .local v0, "status":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3838
    .local v2, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3840
    .local v3, "identity":J
    const-string v5, "Failed to getUserStatus"

    if-nez p1, :cond_92

    .line 3841
    :try_start_24
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 3842
    .local v6, "packages":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v7

    .line 3843
    .local v7, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v7, :cond_91

    .line 3844
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_38
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_91

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_44} :catch_c4
    .catchall {:try_start_24 .. :try_end_44} :catchall_c2

    .line 3846
    .local v9, "cmpName":Landroid/content/ComponentName;
    :try_start_44
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 3847
    .local v10, "adminPkgName":Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7c

    .line 3848
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Valid Admin "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " in User 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v11

    if-eqz v11, :cond_7b

    .line 3850
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatusInternal(I)I

    move-result v5
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_7a} :catch_7d
    .catchall {:try_start_44 .. :try_end_7a} :catchall_c2

    move v0, v5

    .line 3853
    :cond_7b
    goto :goto_91

    .line 3857
    .end local v10    # "adminPkgName":Ljava/lang/String;
    :cond_7c
    goto :goto_90

    .line 3855
    :catch_7d
    move-exception v10

    .line 3856
    .local v10, "e":Ljava/lang/Exception;
    :try_start_7e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3858
    .end local v9    # "cmpName":Landroid/content/ComponentName;
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_90
    goto :goto_38

    .line 3860
    .end local v6    # "packages":[Ljava/lang/String;
    .end local v7    # "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_91
    :goto_91
    goto :goto_bd

    .line 3861
    :cond_92
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 3862
    .local v6, "ownerUid":I
    if-ne v2, v6, :cond_bd

    .line 3863
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Valid Admin for User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v7

    if-eqz v7, :cond_bd

    .line 3865
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatusInternal(I)I

    move-result v5
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_bc} :catch_c4
    .catchall {:try_start_7e .. :try_end_bc} :catchall_c2

    move v0, v5

    .line 3874
    .end local v6    # "ownerUid":I
    :cond_bd
    :goto_bd
    nop

    :goto_be
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3875
    goto :goto_cd

    .line 3874
    :catchall_c2
    move-exception v1

    goto :goto_e3

    .line 3870
    :catch_c4
    move-exception v6

    .line 3871
    .local v6, "e":Ljava/lang/Exception;
    :try_start_c5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 3872
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_c5 .. :try_end_cb} :catchall_c2

    .line 3874
    nop

    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_be

    .line 3876
    :goto_cd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    return v0

    .line 3874
    :goto_e3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3875
    throw v1
.end method

.method public hasAnyActiveAdmin()Z
    .registers 3

    .line 2467
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2468
    return v1

    .line 2471
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_d

    .line 2472
    return v1

    .line 2475
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "callerUid"    # I
    .param p3, "scope"    # Ljava/lang/String;

    .line 773
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 775
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "caller":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsKPECore(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 778
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 779
    .local v2, "token":J
    const/4 v4, 0x0

    .line 781
    .local v4, "hasPermission":Z
    :try_start_19
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v5, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1f} :catch_26
    .catchall {:try_start_19 .. :try_end_1f} :catchall_24

    move v4, v5

    .line 785
    :goto_20
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    goto :goto_2b

    .line 785
    :catchall_24
    move-exception v5

    goto :goto_2c

    .line 782
    :catch_26
    move-exception v5

    .line 783
    .local v5, "e":Ljava/lang/Exception;
    :try_start_27
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_20

    .line 787
    :goto_2b
    return v4

    .line 785
    :goto_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    throw v5

    .line 789
    .end local v2    # "token":J
    .end local v4    # "hasPermission":Z
    :cond_30
    const/4 v2, 0x0

    return v2
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .registers 9
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1222
    const/16 v0, 0x16

    if-ge p2, v0, :cond_b

    .line 1223
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0

    .line 1225
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1226
    :try_start_10
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v1

    .line 1227
    .local v1, "info":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v1, :cond_1c

    .line 1230
    invoke-virtual {v1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1228
    :cond_1c
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No active admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "policyId":I
    .end local p3    # "userId":I
    throw v2

    .line 1231
    .end local v1    # "info":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "policyId":I
    .restart local p3    # "userId":I
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .line 1785
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1786
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getActiveAdminLocked(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    monitor-exit v0

    return v1

    .line 1787
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .line 2520
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 2524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isAdminRemovableInternal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 2527
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_49

    .line 2530
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2531
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v3

    .line 2532
    .local v3, "ret":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAdminRemovableInternal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    return v3

    .line 2528
    .end local v2    # "uid":I
    .end local v3    # "ret":Z
    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad admin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 814
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/KpuHelper;->isCallerValidKpu(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public isCameraEnabledNative(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 3339
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "isCameraEnabledNative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 3341
    .local v1, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    const/4 v2, 0x1

    if-eqz v1, :cond_22

    .line 3343
    :try_start_14
    const-string v3, "checking for camera in restriction policy"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    invoke-virtual {v1, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_1e

    return v0

    .line 3345
    :catch_1e
    move-exception v0

    .line 3346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3349
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_22
    return v2
.end method

.method public isDeviceOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 3808
    const/4 v0, 0x0

    .line 3809
    .local v0, "adminPackage":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 3811
    .local v1, "token":J
    :try_start_3
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 3812
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 3813
    if-eqz v0, :cond_46

    .line 3814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_47

    move-wide v1, v4

    .line 3816
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 3817
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v5

    .line 3818
    .local v5, "deviceOwnerComponent":Landroid/content/ComponentName;
    if-eqz v5, :cond_3c

    .line 3819
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_40

    if-eqz v6, :cond_3c

    .line 3820
    const/4 v6, 0x1

    .line 3823
    :try_start_38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3820
    return v6

    .line 3823
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v5    # "deviceOwnerComponent":Landroid/content/ComponentName;
    :cond_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3824
    goto :goto_46

    .line 3823
    :catchall_40
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3824
    nop

    .end local v0    # "adminPackage":Ljava/lang/String;
    .end local v1    # "token":J
    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    throw v4
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_46} :catch_47

    .line 3830
    .end local v3    # "am":Landroid/app/ActivityManager;
    .restart local v0    # "adminPackage":Ljava/lang/String;
    .restart local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_46
    :goto_46
    goto :goto_52

    .line 3827
    :catch_47
    move-exception v3

    .line 3828
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 3829
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Failed to retrive DO"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_52
    const/4 v3, 0x0

    return v3
.end method

.method public isKPUPlatformSigned(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 828
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isMdmAdminPresent()Z
    .registers 2

    .line 2644
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isMdmAdminPresentInternal()Z

    move-result v0

    return v0
.end method

.method public isMdmAdminPresentAsUser(I)Z
    .registers 13
    .param p1, "userId"    # I

    .line 2649
    const-string v0, "EnterpriseDeviceManagerService"

    const/4 v1, 0x1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2650
    .local v2, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2651
    .local v4, "storedUid":I
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v5

    .line 2652
    .local v5, "compName":Landroid/content/ComponentName;
    if-eqz v5, :cond_d

    sget-object v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 2653
    goto :goto_d

    .line 2656
    :cond_32
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v6

    if-eqz v6, :cond_64

    .line 2657
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 2658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isMdmAdminPresentAsUser() : MDM Admin Found - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    return v1

    .line 2661
    :cond_64
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getEnterpriseLicenseManager()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object v6

    .line 2662
    .local v6, "lService":Lcom/samsung/android/knox/license/IEnterpriseLicense;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2663
    .local v7, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_73} :catch_bb

    .line 2665
    .local v8, "token":J
    :try_start_73
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_7b} :catch_82
    .catchall {:try_start_73 .. :try_end_7b} :catchall_80

    move-object v7, v10

    .line 2669
    :try_start_7c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_bb

    goto :goto_89

    :catchall_80
    move-exception v3

    goto :goto_ae

    .line 2666
    :catch_82
    move-exception v10

    .line 2667
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_83
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_80

    .line 2669
    .end local v10    # "e":Landroid/os/RemoteException;
    :try_start_86
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2670
    :goto_89
    nop

    .line 2671
    if-eqz v7, :cond_ac

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_ac

    .line 2672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isMdmAdminPresentAsUser() : MDM Admin Found(2) - "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    return v1

    .line 2675
    .end local v4    # "storedUid":I
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v6    # "lService":Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .end local v7    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "token":J
    :cond_ac
    goto/16 :goto_d

    .line 2669
    .restart local v4    # "storedUid":I
    .restart local v5    # "compName":Landroid/content/ComponentName;
    .restart local v6    # "lService":Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .restart local v7    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "token":J
    :goto_ae
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2670
    nop

    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "userId":I
    throw v3

    .line 2676
    .end local v4    # "storedUid":I
    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v6    # "lService":Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .end local v7    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "token":J
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "userId":I
    :cond_b3
    const-string/jumbo v3, "isMdmAdminPresentAsUser() : MDM Admin is not present."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_b9} :catch_bb

    .line 2677
    const/4 v0, 0x0

    return v0

    .line 2678
    .end local v2    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_bb
    move-exception v2

    .line 2679
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "isMdmAdminPresentAsUser() : failed. "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2683
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public isPossibleTransferOwenerShip(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1624
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkAdminExistsInELMDB(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isProfileOwnerApp(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 3791
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 3792
    .local v0, "containerId":I
    const/4 v1, 0x0

    .line 3793
    .local v1, "isValidContainerId":Z
    iget-boolean v2, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v2, :cond_12

    .line 3794
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3795
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    goto :goto_16

    .line 3797
    :cond_12
    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    .line 3799
    :goto_16
    if-eqz v1, :cond_2a

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isLegacyContainer(I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 3800
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 3801
    .local v2, "ownerUid":I
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v2, v3, :cond_2a

    .line 3802
    const/4 v3, 0x1

    return v3

    .line 3804
    .end local v2    # "ownerUid":I
    :cond_2a
    const/4 v2, 0x0

    return v2
.end method

.method public isRestrictedByConstrainedState(I)Z
    .registers 3
    .param p1, "bitMask"    # I

    .line 3307
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isRestrictedByConstrainedState(I)Z

    move-result v0

    return v0
.end method

.method public isUMCAdmin(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3202
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v0

    .line 3203
    .local v0, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 3204
    .local v2, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    .line 3205
    invoke-virtual {v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 3206
    const/4 v1, 0x1

    return v1

    .line 3208
    .end local v2    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_2c
    goto :goto_9

    .line 3210
    :cond_2d
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$startDeferredServicesIfNeeded$1$EnterpriseDeviceManagerServiceImpl()V
    .registers 4

    .line 2690
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->createDeferredServices()V

    .line 2692
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2693
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2695
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 2696
    return-void
.end method

.method public synthetic lambda$systemReady$0$EnterpriseDeviceManagerServiceImpl()V
    .registers 2

    .line 2044
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    invoke-virtual {v0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->onSystemReady()V

    return-void
.end method

.method public migrateKnoxPoliciesForWpcod(I)Z
    .registers 7
    .param p1, "containerId"    # I

    .line 3933
    const-string v0, "EnterpriseDeviceManagerService"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3934
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 3935
    .local v2, "pid":I
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_49

    sget v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    if-ne v2, v3, :cond_49

    .line 3941
    :try_start_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "migrateKnoxPoliciesForWpcod() containerId received = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->addPseudoAdminForParent(I)I

    move-result v3

    .line 3944
    .local v3, "ret":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3c

    .line 3946
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->resetAPILevelPrivacyPolicies()V

    .line 3949
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->resetClassLevelPrivacyPolicies()V

    .line 3951
    const-string/jumbo v4, "migrateKnoxPoliciesForWpcod() complete.."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3a} :catch_3d

    .line 3952
    const/4 v0, 0x1

    return v0

    .line 3956
    .end local v3    # "ret":I
    :cond_3c
    goto :goto_41

    .line 3954
    :catch_3d
    move-exception v3

    .line 3955
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 3958
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_41
    const-string/jumbo v3, "migrateKnoxPoliciesForWpcod() returning false.."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    const/4 v0, 0x0

    return v0

    .line 3936
    :cond_49
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Caller is not a system process.."

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onContainerCreation(II)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 2558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterpriseDeviceManagerService.onContainerCreation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2561
    .local v2, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 2562
    .local v3, "cb":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v4, :cond_50

    .line 2563
    move-object v4, v3

    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2565
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_46
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerCreation(II)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    .line 2568
    goto :goto_50

    .line 2566
    :catch_4a
    move-exception v5

    .line 2567
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Handled Exception in onContainerCreation"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2570
    .end local v2    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v3    # "cb":Ljava/lang/Object;
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_50
    :goto_50
    goto :goto_2f

    .line 2571
    :cond_51
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 2592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterpriseDeviceManagerService.onContainerRemoved("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2595
    .local v2, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 2596
    .local v3, "cb":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v4, :cond_50

    .line 2597
    move-object v4, v3

    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2599
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_46
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerRemoved(II)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    .line 2602
    goto :goto_50

    .line 2600
    :catch_4a
    move-exception v5

    .line 2601
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Handled Exception in onContainerRemoved"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2604
    .end local v2    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v3    # "cb":Ljava/lang/Object;
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_50
    :goto_50
    goto :goto_2f

    .line 2605
    :cond_51
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 2575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterpriseDeviceManagerService.onPreContainerRemoval("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2578
    .local v2, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 2579
    .local v3, "cb":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v4, :cond_50

    .line 2580
    move-object v4, v3

    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2582
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_46
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onPreContainerRemoval(II)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    .line 2585
    goto :goto_50

    .line 2583
    :catch_4a
    move-exception v5

    .line 2584
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Handled Exception in onPreContainerRemoval"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2587
    .end local v2    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v3    # "cb":Ljava/lang/Object;
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_50
    :goto_50
    goto :goto_2f

    .line 2588
    :cond_51
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2481
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2482
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2484
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_2a

    .line 2485
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2486
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2484
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2489
    .end local v2    # "i":I
    :cond_2a
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2490
    .end local v1    # "N":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    .line 2496
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2497
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2499
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_6e

    .line 2500
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2501
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_6b

    .line 2502
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " packageHasActiveAdminsAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2499
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2508
    .end local v2    # "i":I
    :cond_6e
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2509
    .end local v1    # "N":I
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_5 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public readUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 3474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3475
    .local v0, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3476
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3478
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 3479
    return-object v2

    .line 3481
    :cond_15
    const/4 v1, 0x0

    .line 3482
    .local v1, "io":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 3483
    .local v3, "inFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 3485
    .local v4, "buffer":[B
    :try_start_18
    new-instance v5, Ljava/io/File;

    const-string v6, "/efs/umc"

    const-string v7, "BulkEnrollmentProfile"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    .line 3486
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_33

    goto :goto_6b

    .line 3489
    :cond_33
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v5, v5, [B

    move-object v4, v5

    .line 3490
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 3491
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 3492
    .local v5, "readLen":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 3493
    const/4 v1, 0x0

    .line 3495
    if-lez v5, :cond_5f

    .line 3496
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    array-length v8, v4

    invoke-direct {v6, v4, v7, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_52} :catch_7b
    .catchall {:try_start_18 .. :try_end_52} :catchall_79

    .line 3501
    if-eqz v1, :cond_5d

    .line 3502
    :try_start_54
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5d

    .line 3503
    :catch_58
    move-exception v2

    .line 3504
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5e

    .line 3505
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5d
    :goto_5d
    nop

    .line 3496
    :goto_5e
    return-object v6

    .line 3501
    .end local v5    # "readLen":I
    :cond_5f
    if-eqz v1, :cond_6a

    .line 3502
    :try_start_61
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_6a

    .line 3503
    :catch_65
    move-exception v5

    .line 3504
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3506
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_85

    .line 3505
    :cond_6a
    :goto_6a
    goto :goto_85

    .line 3487
    :cond_6b
    :goto_6b
    nop

    .line 3501
    if-eqz v1, :cond_77

    .line 3502
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_77

    .line 3503
    :catch_72
    move-exception v5

    .line 3504
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    .line 3505
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_77
    :goto_77
    nop

    .line 3487
    :goto_78
    return-object v2

    .line 3500
    :catchall_79
    move-exception v2

    goto :goto_86

    .line 3497
    :catch_7b
    move-exception v5

    .line 3498
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_7c
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_79

    .line 3501
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_6a

    .line 3502
    :try_start_81
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_65

    goto :goto_6a

    .line 3507
    :goto_85
    return-object v2

    .line 3501
    :goto_86
    if-eqz v1, :cond_91

    .line 3502
    :try_start_88
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_91

    .line 3503
    :catch_8c
    move-exception v5

    .line 3504
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_92

    .line 3505
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_91
    :goto_91
    nop

    .line 3506
    :goto_92
    throw v2
.end method

.method public reconcileAdmin(Landroid/content/ComponentName;I)V
    .registers 10
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 1572
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->MY_PID:I

    if-ne v0, v1, :cond_a2

    .line 1577
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 1579
    .local v0, "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_7a

    .line 1580
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1581
    .local v1, "uid":I
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_7b

    .line 1582
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 1583
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1586
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1585
    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v3

    .line 1588
    .local v3, "ret":Z
    if-nez v3, :cond_53

    .line 1589
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1590
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    monitor-exit v2

    return-void

    .line 1597
    :cond_53
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v4

    .line 1598
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 1597
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1599
    .local v5, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v6, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    .line 1600
    .end local v5    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    goto :goto_5f

    .line 1602
    .end local v3    # "ret":Z
    :cond_75
    monitor-exit v2

    goto :goto_7a

    :catchall_77
    move-exception v3

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_1b .. :try_end_79} :catchall_77

    .end local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .end local p1    # "adminReceiver":Landroid/content/ComponentName;
    .end local p2    # "userHandle":I
    :try_start_79
    throw v3
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7a} :catch_7b

    .line 1608
    .end local v0    # "admin":Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
    .restart local p1    # "adminReceiver":Landroid/content/ComponentName;
    .restart local p2    # "userHandle":I
    :cond_7a
    :goto_7a
    goto :goto_a1

    .line 1604
    :catch_7b
    move-exception v0

    .line 1605
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed reconcileAdmin for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "for user id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1609
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a1
    return-void

    .line 1573
    :cond_a2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need to be System Process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->userHandleGetCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 1335
    return-void
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from DPM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1359
    return-void
.end method

.method public removeAuthorizedUid(II)Z
    .registers 8
    .param p1, "authorizedUid"    # I
    .param p2, "adminUid"    # I

    .line 3367
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "removeAuthorizedUid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 3369
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceUMCSignature()V

    .line 3370
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3371
    .local v1, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3372
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "authorizedUid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3373
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 3374
    .local v2, "rows":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAuthorizedUid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    const/4 v0, 0x1

    if-le v2, v0, :cond_49

    .line 3376
    return v0

    .line 3378
    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    .end local v2    # "rows":I
    :cond_49
    const/4 v0, 0x0

    return v0
.end method

.method public removeProxyAdmin(I)V
    .registers 5
    .param p1, "proxyUid"    # I

    .line 2932
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2933
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2932
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2934
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2935
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "proxyUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2936
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PROXY_ADMIN_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 2937
    return-void
.end method

.method public sendIntent(I)V
    .registers 4
    .param p1, "restriction"    # I

    .line 3321
    const/4 v0, -0x1

    .line 3322
    .local v0, "msgResId":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const/4 v1, 0x2

    if-eq p1, v1, :cond_f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    .line 3333
    return-void

    .line 3330
    :cond_b
    const v0, 0x1040201

    .line 3331
    goto :goto_17

    .line 3327
    :cond_f
    const v0, 0x10406b0

    .line 3328
    goto :goto_17

    .line 3324
    :cond_13
    const v0, 0x104023f

    .line 3325
    nop

    .line 3335
    :goto_17
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3336
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 1241
    return-void
.end method

.method public setActiveAdminSilent(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .line 2759
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SILENT_ACTIVATION_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2760
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2759
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2762
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 2763
    return-void
.end method

.method public setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "removable"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1839
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 1840
    .local v4, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1841
    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    .line 1842
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v5, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    const/4 v0, -0x1

    .line 1843
    .local v0, "callingUid":I
    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    .line 1845
    .local v13, "userId":I
    const-string v6, "EnterpriseDeviceManagerService"

    const/4 v7, 0x0

    if-nez v3, :cond_25

    .line 1846
    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move v14, v0

    goto :goto_6b

    .line 1848
    :cond_25
    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v8, v3, v7, v13}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1850
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v8, :cond_64

    .line 1851
    const-string v9, "Can\'t found packageName"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v10

    .line 1853
    .local v10, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_61

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1854
    .local v12, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v12}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_60

    .line 1855
    invoke-virtual {v12}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1856
    goto :goto_61

    .line 1858
    .end local v12    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_60
    goto :goto_3b

    .line 1859
    :cond_61
    :goto_61
    if-ne v0, v9, :cond_64

    .line 1860
    return v7

    .line 1862
    .end local v10    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_64
    if-eqz v8, :cond_6a

    .line 1863
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move v14, v0

    goto :goto_6b

    .line 1862
    :cond_6a
    move v14, v0

    .line 1865
    .end local v0    # "callingUid":I
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v14, "callingUid":I
    :goto_6b
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7d

    .line 1866
    const-string v0, "Admin is not active"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    return v7

    .line 1870
    :cond_7d
    iget v0, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v14, v0, :cond_8d

    .line 1871
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->hasKnoxInternalExceptionPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1872
    const-string v0, "Samsung internal services cannot be controlled by other admin"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    return v7

    .line 1877
    :cond_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAdminRemovable : callingUid = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v0, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN_INFO"

    const-string v7, "canRemove"

    invoke-virtual {v0, v14, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    .line 1881
    .local v15, "result":Z
    if-eqz v15, :cond_12c

    .line 1882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1884
    .local v16, "psToken":J
    const-string/jumbo v0, "removable"

    const-string/jumbo v6, "not removable"

    const-string v7, "Admin "

    if-nez v3, :cond_ec

    .line 1885
    const/4 v8, 0x5

    const/4 v9, 0x1

    .line 1886
    :try_start_be
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has set itself as "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    if-eqz v2, :cond_d9

    goto :goto_da

    :cond_d9
    move-object v0, v6

    :goto_da
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1885
    move v6, v8

    move v7, v9

    const/4 v8, 0x1

    move v9, v11

    move-object v10, v12

    move-object v11, v0

    move v12, v13

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_123

    .line 1891
    :cond_ec
    const/4 v8, 0x5

    const/4 v9, 0x1

    .line 1892
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has set "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " as "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    if-eqz v2, :cond_111

    goto :goto_112

    :cond_111
    move-object v0, v6

    :goto_112
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1891
    move v6, v8

    move v7, v9

    const/4 v8, 0x1

    move v9, v11

    move-object v10, v12

    move-object v11, v0

    move v12, v13

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_123
    .catchall {:try_start_be .. :try_end_123} :catchall_127

    .line 1898
    :goto_123
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1899
    goto :goto_12c

    .line 1898
    :catchall_127
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1899
    throw v0

    .line 1902
    .end local v16    # "psToken":J
    :cond_12c
    :goto_12c
    return v15
.end method

.method public setB2BMode(Z)I
    .registers 3
    .param p1, "value"    # Z

    .line 2746
    const/4 v0, 0x0

    return v0
.end method

.method public setPermissions(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "adminUid"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    .line 3094
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 3095
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3094
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 3096
    if-eqz p2, :cond_46

    array-length v0, p2

    if-nez v0, :cond_1b

    goto :goto_46

    .line 3099
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3100
    .local v0, "serializedPerms":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_27
    array-length v2, p2

    if-ge v1, v2, :cond_37

    .line 3102
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 3104
    .end local v1    # "i":I
    :cond_37
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3104
    const-string v3, "PROXY_ADMIN_INFO"

    const-string/jumbo v4, "permissions"

    invoke-virtual {v1, p1, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3106
    return-void

    .line 3097
    .end local v0    # "serializedPerms":Ljava/lang/StringBuilder;
    :cond_46
    :goto_46
    return-void
.end method

.method public startDeferredServicesIfNeeded()V
    .registers 3

    .line 2687
    iget-boolean v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    if-nez v0, :cond_15

    .line 2688
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 2689
    new-instance v1, Lcom/android/server/enterprise/-$$Lambda$EnterpriseDeviceManagerServiceImpl$kzoKuBWquN07OFB7pne3WhHPdp0;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/-$$Lambda$EnterpriseDeviceManagerServiceImpl$kzoKuBWquN07OFB7pne3WhHPdp0;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2697
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 2700
    :cond_15
    return-void
.end method

.method public startDualDARServices()V
    .registers 3

    .line 2704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_22

    .line 2707
    iget-boolean v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mDeferredServicesCreated:Z

    if-nez v0, :cond_21

    .line 2708
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_21

    .line 2709
    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$3;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2726
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 2729
    :cond_21
    return-void

    .line 2705
    :cond_22
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only KnoxCore app can start DualDAR services"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady()V
    .registers 6

    .line 1997
    const-string v0, "Failed to start remote desktop service."

    const-string v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "systemReady()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    const-string/jumbo v2, "mConstrainedState move to system ready "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getConstrainedState()Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 2002
    const-string/jumbo v2, "ro.product.first_api_level"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_27

    .line 2003
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->adjustKnoxGuardAdmin()V

    .line 2006
    :cond_27
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->deviceOwnerExists()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isMdmAdminPresentInternal()Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-eqz v2, :cond_41

    .line 2007
    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkConstrainedState()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    .line 2008
    :cond_3e
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->createDeferredServices()V

    .line 2010
    :cond_41
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->init(Landroid/content/Context;)V

    .line 2011
    new-instance v2, Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/email/AccountsReceiver;-><init>(Landroid/content/Context;)V

    .line 2012
    new-instance v2, Landroid/os/HandlerThread;

    const/16 v3, 0xa

    const-string v4, "InternalHandlerThread"

    invoke-direct {v2, v4, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2014
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2015
    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$InternalHandler;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Landroid/os/Handler;

    .line 2018
    if-eqz v3, :cond_6e

    .line 2019
    new-instance v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$2;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2031
    :cond_6e
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->loadActiveAdmins()V

    .line 2034
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    invoke-virtual {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->invokeSystemReadyIfNeeded()V

    .line 2036
    :try_start_76
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startRemoteDesktopService()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7f
    .catch Ljava/lang/Error; {:try_start_76 .. :try_end_79} :catch_7a

    .line 2041
    :goto_79
    goto :goto_84

    .line 2039
    :catch_7a
    move-exception v3

    .line 2040
    .local v3, "e":Ljava/lang/Error;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    .line 2037
    .end local v3    # "e":Ljava/lang/Error;
    :catch_7f
    move-exception v3

    .line 2038
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_79

    .line 2043
    :goto_84
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_90

    .line 2044
    new-instance v1, Lcom/android/server/enterprise/-$$Lambda$EnterpriseDeviceManagerServiceImpl$7QTeAL3T4JoPV7y4ZbsRsVoVrbI;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/-$$Lambda$EnterpriseDeviceManagerServiceImpl$7QTeAL3T4JoPV7y4ZbsRsVoVrbI;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2046
    :cond_90
    return-void
.end method

.method public transferOwnerShip(Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "callingUserId"    # I

    .line 1613
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->reconcileAdmin(Landroid/content/ComponentName;I)V

    .line 1614
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(Landroid/content/ComponentName;IZ)V

    .line 1616
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1617
    .local v0, "selectionValues":Landroid/content/ContentValues;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adminName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_INFO"

    const-string v3, "adminUid"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 1620
    .local v1, "targetPkgUid":I
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addMUMContainer(II)Z

    .line 1621
    return-void
.end method

.method public updateProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .registers 11
    .param p1, "proxyAdmin"    # Landroid/app/admin/ProxyDeviceAdminInfo;
    .param p2, "proxyUid"    # I
    .param p3, "adminComponentName"    # Landroid/content/ComponentName;
    .param p4, "adminUid"    # I

    .line 2799
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_PROXY_ADMIN_INTERNAL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2800
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2799
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforceCallingOrSelfPermissions(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2802
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2803
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "proxyUid"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2805
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2806
    .local v1, "updateValues":Landroid/content/ContentValues;
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2807
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "proxyComponentName"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "proxyType"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2811
    .local v3, "serializedPerms":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    nop

    .line 2813
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_6c
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8b

    .line 2814
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2813
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 2816
    .end local v4    # "i":I
    :cond_8b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "permissions"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b9

    .line 2819
    invoke-virtual {p1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "label"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v4

    const-string/jumbo v5, "icon"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2821
    invoke-virtual {p1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "description"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2824
    :cond_b9
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PROXY_ADMIN_INFO"

    invoke-virtual {v2, v4, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 2825
    return-void
.end method

.method public writeUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "data"    # Ljava/lang/String;

    .line 3427
    const-string v0, "/efs/umc"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3428
    .local v1, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3429
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 3431
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->checkCallerIsUMC()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_17

    .line 3432
    return v3

    .line 3434
    :cond_17
    const/4 v2, 0x0

    .line 3435
    .local v2, "os":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 3437
    .local v4, "outFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3439
    .local v5, "token":J
    :try_start_1d
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3440
    .local v7, "dataDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2b

    .line 3441
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 3444
    :cond_2b
    new-instance v8, Ljava/io/File;

    const-string v9, "BulkEnrollmentProfile"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v8

    .line 3445
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3446
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3449
    :cond_3c
    if-eqz p2, :cond_58

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 3450
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 3451
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 3452
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 3453
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_57} :catch_6b
    .catchall {:try_start_1d .. :try_end_57} :catchall_69

    .line 3454
    const/4 v2, 0x0

    .line 3457
    :cond_58
    const/4 v0, 0x1

    .line 3462
    if-eqz v2, :cond_64

    .line 3463
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_64

    .line 3464
    :catch_5f
    move-exception v3

    .line 3465
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65

    .line 3466
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_64
    :goto_64
    nop

    .line 3468
    :goto_65
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3457
    return v0

    .line 3461
    .end local v7    # "dataDir":Ljava/io/File;
    :catchall_69
    move-exception v0

    goto :goto_80

    .line 3458
    :catch_6b
    move-exception v0

    .line 3459
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_69

    .line 3462
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_7a

    .line 3463
    :try_start_71
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_7a

    .line 3464
    :catch_75
    move-exception v0

    .line 3465
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7b

    .line 3466
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7a
    :goto_7a
    nop

    .line 3468
    :goto_7b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3469
    nop

    .line 3470
    return v3

    .line 3462
    :goto_80
    if-eqz v2, :cond_8b

    .line 3463
    :try_start_82
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8b

    .line 3464
    :catch_86
    move-exception v3

    .line 3465
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8c

    .line 3466
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8b
    :goto_8b
    nop

    .line 3468
    :goto_8c
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3469
    throw v0
.end method
