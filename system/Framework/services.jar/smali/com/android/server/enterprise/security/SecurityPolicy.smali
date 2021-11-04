.class public Lcom/android/server/enterprise/security/SecurityPolicy;
.super Lcom/samsung/android/knox/ISecurityPolicy$Stub;
.source "SecurityPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;,
        Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;,
        Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;,
        Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;,
        Lcom/android/server/enterprise/security/SecurityPolicy$UserSwitchObserver;,
        Lcom/android/server/enterprise/security/SecurityPolicy$Injector;
    }
.end annotation


# static fields
.field private static final ACTION_LAST_BOOT_SAFE_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LAST_BOOT_SAFE_MODE_INTERNAL"

.field private static final AES256ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final AES_BLOCK_SIZE:I = 0x1000

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DOD_BANNER_PATH:Ljava/lang/String; = "com.samsung.android.mdm.DodBanner"

.field private static final DOD_BANNER_PKG:Ljava/lang/String; = "com.samsung.android.mdm"

.field public static final EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String; = "senderpackagename"

.field private static final InitialVectorNum:I = 0x10

.field private static final KEYCHAIN_RESET_TIMEOUT:I = 0xbb8

.field private static final MAX_DEPTH:I = 0x14

.field private static final MSG_UNREGISTER_RECEIVER:I = 0x1

.field public static final SECURITY_POLICY_PACKAGE_MARKER:Ljava/lang/String; = "SecurityPolicy"

.field private static final TAG:Ljava/lang/String; = "SecurityPolicy"

.field private static final USER_DATA_DIR:Ljava/lang/String; = "/data/user/"

.field private static mBannerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

.field private final mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field private mBootCompleted:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field private final mHandler:Landroid/os/Handler;

.field final mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

.field private mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

.field final mLocalService:Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;

.field private mMediaFormatRet:Z

.field private mPendingGetCerificates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSecureRandom:Ljava/security/SecureRandom;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;

.field private pkgNameList_allowed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 253
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy$Injector;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy$Injector;)V
    .registers 11
    .param p1, "injector"    # Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    .line 207
    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;

    .line 212
    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 213
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mToken:Landroid/os/IBinder;

    .line 220
    new-instance v2, Lcom/android/server/enterprise/security/SecurityPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 228
    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 310
    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 339
    new-instance v2, Lcom/android/server/enterprise/security/SecurityPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$3;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 1861
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    .line 258
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    .line 259
    iget-object v2, p1, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 260
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;

    .line 262
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    invoke-virtual {v2}, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 263
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 264
    .local v2, "filterBoot":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v3, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 268
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    .line 270
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    const-string v4, "com.samsung.android.email.provider"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    invoke-virtual {v3}, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->getEnterpriseDumpHelper()Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 295
    :try_start_84
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/enterprise/security/SecurityPolicy$UserSwitchObserver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$UserSwitchObserver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_98} :catch_99

    .line 299
    goto :goto_a1

    .line 297
    :catch_99
    move-exception v3

    .line 298
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SecurityPolicy"

    const-string v5, "Exception during register UserSwitchObserver "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_a1
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    invoke-virtual {v3}, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->getSemEmergencyManager()Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 301
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getFirmwareUpgrade()Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 303
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->addBannerAppToBatteryOptimizationWhitelist(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 306
    :cond_c2
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mLocalService:Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;

    .line 307
    const-class v1, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 308
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .line 169
    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->saveDeviceBootMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/security/SecurityPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 169
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isLastBootInSafeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/security/SecurityPolicy;)Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;)Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 169
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/security/SecurityPolicy;)Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 169
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getFactoryReceiver()Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .line 169
    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return p1
.end method

.method private addBannerAppToBatteryOptimizationWhitelist(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isEnrolled"    # Z

    .line 2588
    nop

    .line 2589
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2590
    .local v0, "mAppPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    const/4 v1, 0x0

    const-string v2, "com.samsung.android.mdm"

    if-eqz p2, :cond_17

    .line 2591
    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v3, v2, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addPackageToBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    goto :goto_1f

    .line 2593
    :cond_17
    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v3, v2, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removePackageFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 2595
    :goto_1f
    return-void
.end method

.method private deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "certType"    # Ljava/lang/String;
    .param p4, "keystore"    # I

    .line 2047
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 26
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "certType"    # Ljava/lang/String;
    .param p4, "keystore"    # I
    .param p5, "userId"    # I

    .line 2062
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    .line 2063
    .local v5, "keyStore":Landroid/security/KeyStore;
    const/4 v6, 0x1

    .line 2064
    .local v6, "ret":Z
    const/4 v7, 0x0

    .line 2065
    .local v7, "keyChainCRUD":Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2067
    .local v8, "token":J
    :try_start_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2068
    .local v0, "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_120

    if-nez v10, :cond_23

    .line 2069
    move-object/from16 v10, p2

    :try_start_1f
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 2071
    :cond_23
    move-object/from16 v10, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v11

    move-object v0, v11

    .line 2074
    :goto_2a
    const/4 v11, 0x4

    if-ne v3, v11, :cond_35

    .line 2075
    new-instance v12, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v13, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13, v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    move-object v7, v12

    .line 2077
    :cond_35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_39
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_112

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2078
    .local v13, "name":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2080
    .local v14, "pemCert":[B
    const/4 v15, 0x2

    const/16 v11, 0x3f2

    if-ne v3, v15, :cond_60

    .line 2081
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v15

    move-object v14, v15

    goto :goto_68

    .line 2082
    :cond_60
    const/4 v15, 0x4

    if-ne v3, v15, :cond_68

    .line 2084
    invoke-virtual {v7, v13, v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v15

    move-object v14, v15

    .line 2086
    :cond_68
    :goto_68
    if-eqz v14, :cond_105

    .line 2087
    invoke-static {v14}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v15

    .line 2088
    .local v15, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_72
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_102

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    move-object/from16 v19, v18

    .line 2089
    .local v19, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v11, v19

    .end local v19    # "cert":Ljava/security/cert/X509Certificate;
    .local v11, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v11, :cond_f2

    move-object/from16 v1, p1

    invoke-virtual {v11, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v19
    :try_end_8a
    .catchall {:try_start_1f .. :try_end_8a} :catchall_11e

    if-eqz v19, :cond_f2

    .line 2091
    move-object/from16 v19, v0

    .end local v0    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "USRPKEY_"

    const-string v1, "USRCERT_"

    const/4 v4, 0x4

    if-ne v3, v4, :cond_be

    .line 2094
    :try_start_95
    invoke-virtual {v7, v13, v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    and-int v6, v6, v16

    .line 2095
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 2097
    invoke-virtual {v7, v13, v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr v0, v6

    move v6, v0

    .line 2099
    :cond_a7
    const-string v0, "SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete state for vpn and apps keychain : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    .line 2100
    :cond_be
    const/4 v4, 0x2

    if-ne v3, v4, :cond_107

    .line 2101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x3f2

    invoke-virtual {v5, v4, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v4

    and-int/2addr v6, v4

    .line 2102
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 2105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {v5, v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z
    :try_end_f1
    .catchall {:try_start_95 .. :try_end_f1} :catchall_11e

    goto :goto_107

    .line 2089
    .end local v19    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f2
    move-object/from16 v19, v0

    const/16 v1, 0x3f2

    const/4 v4, 0x2

    .line 2111
    .end local v0    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v19    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v3, p4

    move/from16 v4, p5

    move v11, v1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    goto/16 :goto_72

    .line 2088
    .end local v19    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_102
    move-object/from16 v19, v0

    .end local v0    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_107

    .line 2086
    .end local v15    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_105
    move-object/from16 v19, v0

    .line 2113
    .end local v0    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "pemCert":[B
    .restart local v19    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_107
    :goto_107
    move-object/from16 v1, p0

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v0, v19

    const/4 v11, 0x4

    goto/16 :goto_39

    .line 2077
    .end local v19    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_112
    move-object/from16 v19, v0

    .line 2115
    .end local v0    # "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_119

    .line 2116
    invoke-virtual {v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 2118
    :cond_119
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2119
    nop

    .line 2120
    return v6

    .line 2115
    :catchall_11e
    move-exception v0

    goto :goto_123

    :catchall_120
    move-exception v0

    move-object/from16 v10, p2

    :goto_123
    if-eqz v7, :cond_128

    .line 2116
    invoke-virtual {v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 2118
    :cond_128
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2119
    throw v0
.end method

.method private dumpAliases(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2333
    .local p1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2334
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_39

    .line 2335
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2337
    .local v1, "aliasesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2341
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2342
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 2345
    :cond_2c
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2346
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2348
    .end local v1    # "aliasesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dumpAliases([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "aliases"    # [Ljava/lang/String;

    .line 2329
    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .line 1627
    const-string v0, "SECURITY"

    const/4 v1, 0x1

    .line 1628
    .local v1, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1630
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1632
    .local v2, "callingUid":I
    if-nez p2, :cond_c

    .line 1633
    const/4 p3, 0x0

    .line 1635
    :cond_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "deviceEnrolled"

    invoke-virtual {v3, v2, v0, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1639
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "bannerText"

    invoke-virtual {v3, v2, v0, v4, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1b

    .line 1645
    goto :goto_1d

    .line 1643
    :catch_1b
    move-exception v0

    .line 1644
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1646
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->addBannerAppToBatteryOptimizationWhitelist(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 1647
    return v1
.end method

.method private enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "keystore"    # I

    .line 473
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 473
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAdminContextIfCallerInCertWhiteList(Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    .line 476
    .local v0, "whiteListedCxtInfo":Lcom/samsung/android/knox/ContextInfo;
    if-nez v0, :cond_27

    .line 477
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_22

    .line 478
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_3d

    .line 480
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_3d

    .line 483
    :cond_27
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_3c

    iget v1, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 485
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_34

    goto :goto_3c

    .line 486
    :cond_34
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation supported only on owner space"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :cond_3c
    :goto_3c
    move-object p1, v0

    .line 491
    :goto_3d
    return-object p1
.end method

.method private enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 432
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const-string v3, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 432
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOnlyCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 449
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 449
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 441
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 441
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 467
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 458
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 423
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 423
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private formatExternalStorageCard()Z
    .registers 8

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 797
    .local v0, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 799
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 800
    .local v1, "lock":Ljava/lang/Object;
    new-instance v2, Lcom/android/server/enterprise/security/SecurityPolicy$4;

    invoke-direct {v2, p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$4;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V

    .line 817
    .local v2, "mediaReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 818
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    const-string v4, "file"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 820
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 822
    monitor-enter v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_47

    .line 824
    const-wide/16 v4, 0x1b58

    :try_start_2f
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_35
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    .line 827
    goto :goto_3e

    .line 828
    :catchall_33
    move-exception v4

    goto :goto_45

    .line 825
    :catch_35
    move-exception v4

    .line 826
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_36
    const-string v5, "SecurityPolicy"

    const-string/jumbo v6, "formatStorageCard - InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_33

    .line 829
    :try_start_3f
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_47

    .line 833
    .end local v0    # "sm":Landroid/os/storage/StorageManager;
    .end local v1    # "lock":Ljava/lang/Object;
    .end local v2    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    goto :goto_50

    .line 828
    .restart local v0    # "sm":Landroid/os/storage/StorageManager;
    .restart local v1    # "lock":Ljava/lang/Object;
    .restart local v2    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    :goto_45
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_33

    .end local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    :try_start_46
    throw v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_47

    .line 831
    .end local v0    # "sm":Landroid/os/storage/StorageManager;
    .end local v1    # "lock":Ljava/lang/Object;
    .end local v2    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .restart local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    :catch_47
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecurityPolicy"

    const-string/jumbo v2, "formatStorageCard fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_50
    iget-boolean v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v0
.end method

.method private getAndroidInstalledCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 1158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;
    .registers 21
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 1162
    move/from16 v1, p1

    const-string/jumbo v2, "getAndroidInstalledCertificates "

    const-string v3, "SecurityPolicy"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 1164
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1166
    .local v5, "token":J
    move-object/from16 v7, p0

    :try_start_13
    iget-object v0, v7, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v8}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    move-object v8, v0

    .line 1167
    .local v8, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_23} :catch_ef
    .catch Ljava/lang/AssertionError; {:try_start_13 .. :try_end_23} :catch_d2
    .catchall {:try_start_13 .. :try_end_23} :catchall_d0

    move-object v9, v0

    .line 1169
    .local v9, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v9, :cond_cb

    .line 1171
    :try_start_26
    invoke-interface {v9}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    .line 1172
    .local v10, "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 1173
    .local v12, "alias":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v9, v12, v0}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v13
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_41} :catch_af
    .catchall {:try_start_26 .. :try_end_41} :catchall_ad

    .line 1174
    .local v13, "certData":[B
    if-eqz v13, :cond_a6

    .line 1176
    :try_start_43
    invoke-static {v13}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v14

    .line 1177
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v16

    .line 1178
    .local v17, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, v17

    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_77

    .line 1179
    new-instance v17, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    move-object/from16 v18, v17

    .line 1180
    .local v18, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    move-object/from16 v7, v18

    .end local v18    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .local v7, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1181
    move-object/from16 v17, v0

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v17    # "cert":Ljava/security/cert/X509Certificate;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 1182
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setSystemPreloaded(Z)V

    .line 1183
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_76} :catch_92
    .catch Ljava/security/cert/CertificateException; {:try_start_43 .. :try_end_76} :catch_7e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_76} :catch_af
    .catchall {:try_start_43 .. :try_end_76} :catchall_ad

    goto :goto_7a

    .line 1178
    .end local v7    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local v17    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_77
    move-object/from16 v17, v0

    const/4 v0, 0x0

    .line 1185
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :goto_7a
    move-object/from16 v7, p0

    goto :goto_4b

    .line 1190
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_7d
    goto :goto_a6

    .line 1188
    :catch_7e
    move-exception v0

    .line 1189
    .local v0, "e":Ljava/security/cert/CertificateException;
    :try_start_7f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 1186
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_92
    move-exception v0

    .line 1187
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_a5} :catch_af
    .catchall {:try_start_7f .. :try_end_a5} :catchall_ad

    .line 1190
    nop

    .line 1192
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "alias":Ljava/lang/String;
    .end local v13    # "certData":[B
    :cond_a6
    :goto_a6
    move-object/from16 v7, p0

    goto :goto_2f

    .line 1196
    .end local v10    # "truststoreAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a9
    :try_start_a9
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_a9 .. :try_end_ac} :catch_ef
    .catch Ljava/lang/AssertionError; {:try_start_a9 .. :try_end_ac} :catch_d2
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_d0

    .line 1197
    :goto_ac
    goto :goto_cb

    .line 1196
    :catchall_ad
    move-exception v0

    goto :goto_c6

    .line 1193
    :catch_af
    move-exception v0

    .line 1194
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_b0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_b0 .. :try_end_c2} :catchall_ad

    .line 1196
    .end local v0    # "e":Landroid/os/RemoteException;
    :try_start_c2
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_ac

    :goto_c6
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1197
    nop

    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    .end local v5    # "token":J
    .end local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    .end local p1    # "userId":I
    throw v0
    :try_end_cb
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_cb} :catch_ef
    .catch Ljava/lang/AssertionError; {:try_start_c2 .. :try_end_cb} :catch_d2
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_d0

    .line 1204
    .end local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v9    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    .restart local v5    # "token":J
    .restart local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    .restart local p1    # "userId":I
    :cond_cb
    :goto_cb
    nop

    :goto_cc
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    goto :goto_107

    .line 1204
    :catchall_d0
    move-exception v0

    goto :goto_108

    .line 1201
    :catch_d2
    move-exception v0

    .line 1202
    .local v0, "e":Ljava/lang/AssertionError;
    :try_start_d3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAndroidInstalledCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    nop

    .end local v0    # "e":Ljava/lang/AssertionError;
    goto :goto_cc

    .line 1199
    :catch_ef
    move-exception v0

    .line 1200
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSystemCertificatesAsUser "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catchall {:try_start_d3 .. :try_end_105} :catchall_d0

    .line 1204
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_cc

    .line 1206
    :goto_107
    return-object v4

    .line 1204
    :goto_108
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    throw v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 313
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 315
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getFactoryReceiver()Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    if-nez v0, :cond_c

    .line 321
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 324
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    return-object v0
.end method

.method private getInitialVector()Ljavax/crypto/spec/IvParameterSpec;
    .registers 5

    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "mResult":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 640
    .local v1, "mSecureRandom":Ljava/security/SecureRandom;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v0, v2

    .line 641
    return-object v0
.end method

.method private getKeystoreString(I)Ljava/lang/String;
    .registers 5
    .param p1, "keystore"    # I

    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2209
    .local v0, "keystores":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_e

    .line 2210
    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    :cond_e
    and-int/lit8 v1, p1, 0x2

    const-string v2, "/"

    if-eqz v1, :cond_22

    .line 2213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 2214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    :cond_1d
    const-string v1, "Wi-Fi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    :cond_22
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_34

    .line 2219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 2220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2222
    :cond_2f
    const-string v1, "VPN and Apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3f

    .line 2226
    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .registers 11
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;

    .line 1280
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1281
    .local v0, "keyStore":Landroid/security/KeyStore;
    const/4 v1, 0x0

    .line 1282
    .local v1, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1285
    .local v2, "token":J
    if-eqz p1, :cond_4c

    .line 1286
    :try_start_f
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v4}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    move-object v1, v4

    .line 1287
    if-eqz v0, :cond_4c

    .line 1288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v4

    .line 1289
    .local v4, "pemCert":[B
    if-eqz v4, :cond_4c

    .line 1291
    invoke-static {v4}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v5

    .line 1292
    .local v5, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4c

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4c

    .line 1293
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    invoke-virtual {v1, v6}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_47

    goto :goto_4c

    .line 1299
    .end local v4    # "pemCert":[B
    .end local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catchall_47
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1300
    throw v4

    .line 1299
    :cond_4c
    :goto_4c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1300
    nop

    .line 1302
    return-object v1
.end method

.method private getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1314
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .registers 9
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
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

    .line 1325
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1326
    .local v0, "keyStore":Landroid/security/KeyStore;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1327
    const/4 v1, 0x0

    .line 1328
    .local v1, "names":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1330
    .local v2, "token":J
    if-eqz p1, :cond_2c

    .line 1332
    const/4 v4, 0x2

    if-ne p2, v4, :cond_1c

    .line 1333
    if-eqz v0, :cond_2c

    .line 1334
    const/16 v4, 0x3f2

    :try_start_16
    invoke-virtual {v0, p1, v4}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_2c

    .line 1336
    :cond_1c
    const/4 v4, 0x4

    if-ne p2, v4, :cond_2c

    .line 1338
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, p3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_27

    move-object v1, v4

    goto :goto_2c

    .line 1342
    :catchall_27
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1343
    throw v4

    .line 1342
    :cond_2c
    :goto_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1343
    nop

    .line 1345
    if-eqz v1, :cond_37

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_3c

    :cond_37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_3c
    return-object v4
.end method

.method private getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 1091
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .registers 27
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 1102
    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    .line 1103
    .local v3, "keyStore":Landroid/security/KeyStore;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 1104
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1105
    .local v5, "token":J
    const/4 v7, 0x0

    .line 1107
    .local v7, "keyChainCRUD":Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    const/4 v0, 0x0

    .line 1108
    .local v0, "names":[Ljava/lang/String;
    const/16 v8, 0x3f2

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-ne v2, v10, :cond_35

    .line 1109
    :try_start_1a
    new-instance v11, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_2e

    move-object/from16 v12, p0

    :try_start_1e
    iget-object v13, v12, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_2c

    move/from16 v14, p3

    :try_start_22
    invoke-direct {v11, v13, v14}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    move-object v7, v11

    .line 1110
    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_44

    .line 1149
    .end local v0    # "names":[Ljava/lang/String;
    :catchall_2c
    move-exception v0

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object/from16 v12, p0

    :goto_31
    move/from16 v14, p3

    goto/16 :goto_10c

    .line 1111
    .restart local v0    # "names":[Ljava/lang/String;
    :cond_35
    move-object/from16 v12, p0

    move/from16 v14, p3

    if-ne v2, v9, :cond_44

    .line 1112
    invoke-virtual {v3, v1, v8}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_44

    .line 1149
    .end local v0    # "names":[Ljava/lang/String;
    :catchall_41
    move-exception v0

    goto/16 :goto_10c

    .line 1114
    .restart local v0    # "names":[Ljava/lang/String;
    :cond_44
    :goto_44
    if-eqz v0, :cond_115

    .line 1115
    array-length v11, v0

    const/4 v13, 0x0

    :goto_48
    if-ge v13, v11, :cond_109

    aget-object v15, v0, v13

    .line 1116
    .local v15, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1117
    .local v16, "pemCert":[B
    if-ne v2, v10, :cond_57

    .line 1118
    invoke-virtual {v7, v15, v1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v16, v17

    goto :goto_6e

    .line 1119
    :cond_57
    if-ne v2, v9, :cond_6e

    .line 1120
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v9

    move-object/from16 v16, v9

    .line 1122
    :cond_6e
    :goto_6e
    if-eqz v16, :cond_fb

    .line 1123
    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v9

    .line 1124
    .local v9, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_78
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/security/cert/X509Certificate;

    move-object/from16 v20, v19

    .line 1125
    .local v20, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v8, v20

    .end local v20    # "cert":Ljava/security/cert/X509Certificate;
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_ee

    .line 1126
    new-instance v20, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    move-object/from16 v21, v20

    .line 1127
    .local v21, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    move-object/from16 v10, v21

    .end local v21    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .local v10, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    invoke-virtual {v10, v8}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1128
    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 1129
    invoke-virtual {v10, v15}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setAlias(Ljava/lang/String;)V

    .line 1130
    move-object/from16 v21, v0

    .end local v0    # "names":[Ljava/lang/String;
    .local v21, "names":[Ljava/lang/String;
    const-string v0, "USRCERT_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a4
    .catchall {:try_start_22 .. :try_end_a4} :catchall_41

    if-eqz v0, :cond_ea

    .line 1131
    const/4 v0, 0x0

    .line 1132
    .local v0, "arrayPKeys":[Ljava/lang/String;
    move-object/from16 v22, v0

    .end local v0    # "arrayPKeys":[Ljava/lang/String;
    .local v22, "arrayPKeys":[Ljava/lang/String;
    const-string v0, "USRPKEY_"

    const/4 v1, 0x4

    if-ne v2, v1, :cond_c4

    .line 1133
    :try_start_ae
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f2

    .end local v22    # "arrayPKeys":[Ljava/lang/String;
    .restart local v0    # "arrayPKeys":[Ljava/lang/String;
    goto :goto_e1

    .line 1134
    .end local v0    # "arrayPKeys":[Ljava/lang/String;
    .restart local v22    # "arrayPKeys":[Ljava/lang/String;
    :cond_c4
    const/4 v1, 0x2

    if-ne v2, v1, :cond_dd

    .line 1135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-virtual {v3, v0, v1}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .end local v22    # "arrayPKeys":[Ljava/lang/String;
    .restart local v0    # "arrayPKeys":[Ljava/lang/String;
    goto :goto_e1

    .line 1134
    .end local v0    # "arrayPKeys":[Ljava/lang/String;
    .restart local v22    # "arrayPKeys":[Ljava/lang/String;
    :cond_dd
    const/16 v1, 0x3f2

    move-object/from16 v0, v22

    .line 1138
    .end local v22    # "arrayPKeys":[Ljava/lang/String;
    .restart local v0    # "arrayPKeys":[Ljava/lang/String;
    :goto_e1
    if-eqz v0, :cond_ea

    array-length v1, v0

    if-eqz v1, :cond_ea

    .line 1139
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setHasPrivateKey(Z)V

    .line 1142
    .end local v0    # "arrayPKeys":[Ljava/lang/String;
    :cond_ea
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ed
    .catchall {:try_start_ae .. :try_end_ed} :catchall_41

    goto :goto_f0

    .line 1125
    .end local v10    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local v21    # "names":[Ljava/lang/String;
    .local v0, "names":[Ljava/lang/String;
    :cond_ee
    move-object/from16 v21, v0

    .line 1144
    .end local v0    # "names":[Ljava/lang/String;
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v21    # "names":[Ljava/lang/String;
    :goto_f0
    move-object/from16 v1, p1

    move-object/from16 v0, v21

    const/16 v8, 0x3f2

    const/4 v10, 0x4

    goto :goto_78

    .line 1124
    .end local v21    # "names":[Ljava/lang/String;
    .restart local v0    # "names":[Ljava/lang/String;
    :cond_f8
    move-object/from16 v21, v0

    .end local v0    # "names":[Ljava/lang/String;
    .restart local v21    # "names":[Ljava/lang/String;
    goto :goto_fd

    .line 1122
    .end local v9    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v21    # "names":[Ljava/lang/String;
    .restart local v0    # "names":[Ljava/lang/String;
    :cond_fb
    move-object/from16 v21, v0

    .line 1115
    .end local v0    # "names":[Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "pemCert":[B
    .restart local v21    # "names":[Ljava/lang/String;
    :goto_fd
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, v21

    const/16 v8, 0x3f2

    const/4 v9, 0x2

    const/4 v10, 0x4

    goto/16 :goto_48

    .end local v21    # "names":[Ljava/lang/String;
    .restart local v0    # "names":[Ljava/lang/String;
    :cond_109
    move-object/from16 v21, v0

    .end local v0    # "names":[Ljava/lang/String;
    .restart local v21    # "names":[Ljava/lang/String;
    goto :goto_117

    .line 1149
    .end local v21    # "names":[Ljava/lang/String;
    :goto_10c
    if-eqz v7, :cond_111

    .line 1150
    invoke-virtual {v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 1152
    :cond_111
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    throw v0

    .line 1114
    .restart local v0    # "names":[Ljava/lang/String;
    :cond_115
    move-object/from16 v21, v0

    .line 1149
    .end local v0    # "names":[Ljava/lang/String;
    :goto_117
    if-eqz v7, :cond_11c

    .line 1150
    invoke-virtual {v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 1152
    :cond_11c
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    nop

    .line 1154
    return-object v4
.end method

.method private getSessionKey()Ljava/security/Key;
    .registers 4

    .line 625
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    .line 626
    const/4 v0, 0x0

    .line 628
    .local v0, "keyGen":Ljavax/crypto/KeyGenerator;
    :try_start_8
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    move-object v0, v1

    .line 629
    const/16 v1, 0x100

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 630
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_1c} :catch_1d

    .line 633
    goto :goto_21

    .line 631
    :catch_1d
    move-exception v1

    .line 632
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 634
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_21
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->secretKey:Ljavax/crypto/SecretKey;

    return-object v1
.end method

.method private declared-synchronized getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    .line 328
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    .line 329
    const-string/jumbo v0, "statusbar"

    .line 330
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 331
    if-nez v0, :cond_1c

    .line 332
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    :cond_1c
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 327
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSystemCertificatesAsUser(ZI)Ljava/util/List;
    .registers 22
    .param p1, "includeDisabled"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 1211
    move/from16 v1, p2

    const-string/jumbo v2, "getSystemCertificatesAsUser "

    const-string v3, "SecurityPolicy"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 1212
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1214
    .local v5, "token":J
    move-object/from16 v7, p0

    :try_start_13
    iget-object v0, v7, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v8}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    move-object v8, v0

    .line 1216
    .local v8, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_23} :catch_10c
    .catch Ljava/lang/AssertionError; {:try_start_13 .. :try_end_23} :catch_ed
    .catchall {:try_start_13 .. :try_end_23} :catchall_e9

    move-object v9, v0

    .line 1217
    .local v9, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v9, :cond_e2

    .line 1219
    :try_start_26
    invoke-interface {v9}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    .line 1220
    .local v10, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 1221
    .local v12, "alias":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_41} :catch_bf
    .catchall {:try_start_26 .. :try_end_41} :catchall_bb

    move-object v13, v0

    .line 1222
    .local v13, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    const/4 v14, 0x0

    .line 1223
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move/from16 v15, p1

    :try_start_45
    invoke-interface {v9, v12, v15}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v0
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_49} :catch_b3
    .catchall {:try_start_45 .. :try_end_49} :catchall_d8

    move-object/from16 v16, v0

    .line 1225
    .local v16, "certData":[B
    if-eqz v16, :cond_af

    .line 1227
    :try_start_4d
    invoke-static/range {v16 .. v16}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v0

    move-object v14, v0

    .line 1228
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v17

    .line 1229
    .local v18, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "cert":Ljava/security/cert/X509Certificate;
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_81

    .line 1230
    invoke-virtual {v13, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 1231
    move-object/from16 v18, v0

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "cert":Ljava/security/cert/X509Certificate;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 1232
    invoke-virtual {v13, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setSystemPreloaded(Z)V

    .line 1233
    invoke-interface {v9, v12}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v13, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setEnabled(Z)V

    .line 1234
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_80} :catch_9b
    .catch Ljava/security/cert/CertificateException; {:try_start_4d .. :try_end_80} :catch_87
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_80} :catch_b3
    .catchall {:try_start_4d .. :try_end_80} :catchall_d8

    goto :goto_83

    .line 1229
    .end local v18    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_81
    move-object/from16 v18, v0

    .line 1236
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :goto_83
    move-object/from16 v0, v17

    goto :goto_56

    .line 1241
    :cond_86
    goto :goto_af

    .line 1239
    :catch_87
    move-exception v0

    .line 1240
    .local v0, "e":Ljava/security/cert/CertificateException;
    :try_start_88
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 1237
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_9b
    move-exception v0

    .line 1238
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_ae} :catch_b3
    .catchall {:try_start_88 .. :try_end_ae} :catchall_d8

    .line 1241
    nop

    .line 1243
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "alias":Ljava/lang/String;
    .end local v13    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v16    # "certData":[B
    :cond_af
    :goto_af
    move-object/from16 v7, p0

    goto/16 :goto_2f

    .line 1244
    .end local v10    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_b3
    move-exception v0

    goto :goto_c2

    .line 1220
    .restart local v10    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b5
    move/from16 v15, p1

    .line 1247
    .end local v10    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_b7
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_ba
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_ba} :catch_e0
    .catch Ljava/lang/AssertionError; {:try_start_b7 .. :try_end_ba} :catch_de
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_124

    .line 1248
    :goto_ba
    goto :goto_e4

    .line 1247
    :catchall_bb
    move-exception v0

    move/from16 v15, p1

    goto :goto_d9

    .line 1244
    :catch_bf
    move-exception v0

    move/from16 v15, p1

    .line 1245
    .local v0, "e":Landroid/os/RemoteException;
    :goto_c2
    :try_start_c2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_c2 .. :try_end_d4} :catchall_d8

    .line 1247
    .end local v0    # "e":Landroid/os/RemoteException;
    :try_start_d4
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_ba

    :catchall_d8
    move-exception v0

    :goto_d9
    invoke-virtual {v8}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 1248
    nop

    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    .end local v5    # "token":J
    .end local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    .end local p1    # "includeDisabled":Z
    .end local p2    # "userId":I
    throw v0
    :try_end_de
    .catch Ljava/lang/InterruptedException; {:try_start_d4 .. :try_end_de} :catch_e0
    .catch Ljava/lang/AssertionError; {:try_start_d4 .. :try_end_de} :catch_de
    .catchall {:try_start_d4 .. :try_end_de} :catchall_124

    .line 1252
    .end local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v9    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    .restart local v5    # "token":J
    .restart local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    .restart local p1    # "includeDisabled":Z
    .restart local p2    # "userId":I
    :catch_de
    move-exception v0

    goto :goto_f0

    .line 1250
    :catch_e0
    move-exception v0

    goto :goto_10f

    .line 1217
    .restart local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v9    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_e2
    move/from16 v15, p1

    .line 1255
    .end local v8    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v9    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_e4
    nop

    :goto_e5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1256
    goto :goto_123

    .line 1255
    :catchall_e9
    move-exception v0

    move/from16 v15, p1

    goto :goto_125

    .line 1252
    :catch_ed
    move-exception v0

    move/from16 v15, p1

    .line 1253
    .local v0, "e":Ljava/lang/AssertionError;
    :goto_f0
    :try_start_f0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSystemCertificatesAsUser - is KeyChainService running for user "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    nop

    .end local v0    # "e":Ljava/lang/AssertionError;
    goto :goto_e5

    .line 1250
    :catch_10c
    move-exception v0

    move/from16 v15, p1

    .line 1251
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_10f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_f0 .. :try_end_121} :catchall_124

    .line 1255
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_e5

    .line 1257
    :goto_123
    return-object v4

    .line 1255
    :catchall_124
    move-exception v0

    :goto_125
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1256
    throw v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 529
    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    goto :goto_10

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_11

    if-lez v1, :cond_3

    move-object v0, p1

    :goto_10
    return-object v0

    .line 530
    :catch_11
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "is string valid?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2466
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    .line 2467
    return v1

    .line 2468
    :catch_9
    move-exception v0

    .line 2469
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private isBannerApp(I)Z
    .registers 4
    .param p1, "callingUid"    # I

    .line 1719
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1720
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.samsung.android.mdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1721
    const/4 v1, 0x1

    return v1

    .line 1723
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method private isInternalStorageEncryptedbyDefaultKey(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 2352
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2356
    .local v0, "token":J
    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    .line 2357
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 2358
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_20
    .catchall {:try_start_8 .. :try_end_16} :catchall_1e

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1a

    const/4 v2, 0x1

    .line 2362
    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2358
    return v2

    .line 2362
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catchall_1e
    move-exception v2

    goto :goto_2f

    .line 2359
    :catch_20
    move-exception v3

    .line 2360
    .local v3, "e":Ljava/lang/Exception;
    :try_start_21
    const-string v4, "SecurityPolicy"

    const-string/jumbo v5, "is Internal Storage Encrypted by Default key?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_1e

    .line 2362
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    nop

    .line 2364
    return v2

    .line 2362
    :goto_2f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    throw v2
.end method

.method private isLastBootInSafeMode()Z
    .registers 3

    .line 1799
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "deviceBootMode"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1802
    const/4 v1, 0x1

    return v1

    .line 1804
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method private isPackageAlreadyWhiteListed(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2474
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAdminUidFromWhiteListedPackage(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 2475
    const/4 v0, 0x1

    return v0

    .line 2477
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private needtoCheckPackageCaller()Z
    .registers 3

    .line 2186
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2187
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->pkgNameList_allowed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2188
    const/4 v1, 0x0

    return v1

    .line 2190
    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method private registerDexBlocker()V
    .registers 6

    .line 2564
    const-string v0, "SecurityPolicy"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2566
    .local v1, "token":J
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 2567
    .local v3, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 2568
    const-string v4, "DexBlocker was registered"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_20

    .line 2571
    nop

    .end local v3    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    goto :goto_26

    .line 2569
    :catch_20
    move-exception v3

    .line 2570
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "DexBlocker was failed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2573
    return-void
.end method

.method private removeDuplicatedCertificates(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1071
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 1072
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1073
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1074
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1075
    add-int/lit8 v1, v1, -0x1

    .line 1072
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1071
    .end local v1    # "j":I
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1079
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method private removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;
    .param p3, "storeType"    # I

    .line 1356
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1357
    .local v0, "keyStore":Landroid/security/KeyStore;
    const/4 v1, 0x0

    .line 1358
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1360
    .local v2, "token":J
    if-eqz v0, :cond_23

    .line 1361
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1362
    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    .line 1361
    invoke-virtual {v0, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v4

    move v1, v4

    .line 1365
    :cond_23
    const-string v4, "USRCERT_"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1369
    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    .line 1368
    invoke-virtual {v0, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v4
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_4a

    and-int/2addr v1, v4

    .line 1372
    :cond_45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1373
    nop

    .line 1374
    return v1

    .line 1372
    :catchall_4a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1373
    throw v4
.end method

.method private retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 8
    .param p1, "keyChainService"    # Landroid/security/IKeyChainService;
    .param p2, "certificate"    # Ljava/security/cert/Certificate;

    .line 1912
    const-string/jumbo v0, "retrieveCertificateAliasFromKeyChain: "

    const-string v1, "SecurityPolicy"

    const/4 v2, 0x0

    .line 1913
    .local v2, "certificateAlias":Ljava/lang/String;
    if-eqz p1, :cond_60

    .line 1915
    const/4 v3, 0x1

    :try_start_9
    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 1916
    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/security/IKeyChainService;->getCertificateAlias([B)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_48
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_30
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9 .. :try_end_16} :catch_18

    move-object v2, v0

    .line 1923
    :goto_17
    goto :goto_60

    .line 1921
    :catch_18
    move-exception v3

    .line 1922
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 1919
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    :catch_30
    move-exception v3

    .line 1920
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_17

    .line 1917
    :catch_48
    move-exception v3

    .line 1918
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_17

    .line 1925
    :cond_60
    :goto_60
    return-object v2
.end method

.method private saveDeviceBootMode(Z)Z
    .registers 8
    .param p1, "isSafe"    # Z

    .line 1785
    const/4 v0, 0x1

    .line 1788
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "deviceBootMode"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_b

    move v5, v3

    goto :goto_c

    :cond_b
    move v5, v4

    :goto_c
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .line 1789
    const-string v1, "SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device safe mode saved in generic table : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    move v3, v4

    :goto_25
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_34

    .line 1792
    goto :goto_36

    .line 1790
    :catch_34
    move-exception v1

    .line 1791
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1794
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    return v0
.end method

.method private sendIntentToSettings(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 2198
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 2199
    .local v0, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    iget-boolean v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    .line 2200
    return-void
.end method

.method private setHomeAndRecentKey(Z)V
    .registers 8
    .param p1, "allow"    # Z

    .line 2598
    const-string v0, "SecurityPolicy"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2600
    .local v1, "token":J
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v3, :cond_10

    .line 2601
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2604
    :cond_10
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v3, :cond_28

    .line 2605
    if-nez p1, :cond_20

    .line 2606
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/high16 v4, 0x1200000

    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4, v5, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_28

    .line 2608
    :cond_20
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4, v5, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2611
    :cond_28
    :goto_28
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    if-nez v3, :cond_33

    .line 2612
    const-string/jumbo v3, "mKeyCodeMediator must not be null! This will cause problems on hardware key restriction."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 2614
    :cond_33
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/android/server/enterprise/common/KeyCodeMediator;->update(I)Z

    .line 2615
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    const/16 v4, 0x3e9

    invoke-interface {v3, v4}, Lcom/android/server/enterprise/common/KeyCodeMediator;->update(I)Z

    .line 2617
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    const/16 v4, 0xbb

    invoke-interface {v3, v4}, Lcom/android/server/enterprise/common/KeyCodeMediator;->update(I)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_47} :catch_48

    .line 2621
    :goto_47
    goto :goto_4f

    .line 2619
    :catch_48
    move-exception v3

    .line 2620
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "setHomeAndRecentKey was failed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2623
    return-void
.end method

.method private unRegisterDexBlocker()V
    .registers 6

    .line 2576
    const-string v0, "SecurityPolicy"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2578
    .local v1, "token":J
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 2579
    .local v3, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 2580
    const-string v4, "DexBlocker was unregistered"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_20

    .line 2583
    nop

    .end local v3    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    goto :goto_26

    .line 2581
    :catch_20
    move-exception v3

    .line 2582
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "DexBlocker was failed"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2585
    return-void
.end method

.method private validateKeystoreParam(I)Z
    .registers 5
    .param p1, "keystore"    # I

    .line 2124
    const/4 v0, 0x7

    .line 2125
    .local v0, "all":I
    const/4 v1, 0x1

    .line 2126
    .local v1, "ret":Z
    and-int v2, p1, v0

    if-nez v2, :cond_8

    .line 2128
    const/4 v1, 0x0

    goto :goto_d

    .line 2129
    :cond_8
    or-int v2, p1, v0

    if-eq v2, v0, :cond_d

    .line 2131
    const/4 v1, 0x0

    .line 2133
    :cond_d
    :goto_d
    return v1
.end method

.method private validatePackageName(Ljava/lang/String;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5c

    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5c

    .line 2433
    :cond_10
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2434
    .local v0, "labels":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2435
    .local v2, "numDots":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2b

    .line 2436
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_28

    .line 2437
    add-int/lit8 v2, v2, 0x1

    .line 2435
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 2444
    .end local v3    # "i":I
    :cond_2b
    array-length v3, v0

    if-lt v2, v3, :cond_2f

    .line 2445
    return v1

    .line 2454
    :cond_2f
    const-string v3, "^[A-Za-z0-9_]+$"

    .line 2455
    .local v3, "regex":Ljava/lang/String;
    array-length v4, v0

    move v5, v1

    :goto_33
    if-ge v5, v4, :cond_5a

    aget-object v6, v0, v5

    .line 2456
    .local v6, "label":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5f

    if-eq v7, v8, :cond_59

    .line 2457
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_56

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x39

    if-gt v7, v8, :cond_56

    goto :goto_59

    .line 2455
    .end local v6    # "label":Ljava/lang/String;
    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 2458
    .restart local v6    # "label":Ljava/lang/String;
    :cond_59
    :goto_59
    return v1

    .line 2461
    .end local v6    # "label":Ljava/lang/String;
    :cond_5a
    const/4 v1, 0x1

    return v1

    .line 2430
    .end local v0    # "labels":[Ljava/lang/String;
    .end local v2    # "numDots":I
    .end local v3    # "regex":Ljava/lang/String;
    :cond_5c
    :goto_5c
    return v1
.end method


# virtual methods
.method public addPackagesToCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .line 2368
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    .line 2369
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v2, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2371
    .local v3, "userId":I
    iget-object v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v3}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v4

    .line 2374
    .local v4, "userContext":Landroid/content/Context;
    const/4 v6, 0x1

    .line 2375
    .local v6, "result":Z
    if-eqz p2, :cond_a4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 2376
    const/4 v7, 0x0

    .line 2377
    .local v7, "cv":Landroid/content/ContentValues;
    const/4 v8, 0x0

    .local v8, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2380
    .local v9, "signature":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2382
    .local v10, "identity":J
    :try_start_25
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/AppIdentity;

    .line 2383
    .local v12, "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    const/4 v13, 0x1

    .local v13, "signatureMatch":Z
    const/4 v14, 0x0

    .line 2385
    .local v14, "appInstalled":Z
    if-eqz v12, :cond_43

    .line 2386
    invoke-virtual {v12}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object v8, v15

    .line 2387
    invoke-virtual {v12}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 2390
    :cond_43
    invoke-direct {v1, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->validatePackageName(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_97

    .line 2391
    invoke-direct {v1, v8, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->isPackageAlreadyWhiteListed(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_50

    goto :goto_97

    .line 2397
    :cond_50
    if-eqz v9, :cond_5e

    .line 2398
    invoke-static {v4, v8, v9}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5e

    .line 2400
    const/4 v13, 0x0

    .line 2403
    invoke-direct {v1, v4, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    move v14, v15

    .line 2406
    :cond_5e
    if-nez v13, :cond_65

    if-nez v14, :cond_63

    goto :goto_65

    .line 2415
    :cond_63
    const/4 v6, 0x0

    goto :goto_95

    .line 2407
    :cond_65
    :goto_65
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    move-object v7, v15

    .line 2409
    const-string v15, "adminUid"

    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2410
    const-string/jumbo v5, "packageName"

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    const-string/jumbo v5, "signature"

    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    iget-object v5, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "CertificateWhiteListTable"

    invoke-virtual {v5, v15, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15
    :try_end_8a
    .catchall {:try_start_25 .. :try_end_8a} :catchall_9f

    const-wide/16 v17, 0x0

    cmp-long v5, v15, v17

    if-lez v5, :cond_92

    const/4 v5, 0x1

    goto :goto_93

    :cond_92
    const/4 v5, 0x0

    :goto_93
    and-int/2addr v5, v6

    move v6, v5

    .line 2417
    .end local v12    # "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    :goto_95
    const/4 v5, 0x0

    goto :goto_29

    .line 2393
    .restart local v12    # "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    :cond_97
    :goto_97
    const/4 v6, 0x0

    .line 2394
    const/4 v5, 0x0

    goto :goto_29

    .line 2419
    .end local v12    # "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    .end local v13    # "signatureMatch":Z
    .end local v14    # "appInstalled":Z
    :cond_9a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2420
    nop

    .line 2421
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v10    # "identity":J
    goto :goto_a5

    .line 2419
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "signature":Ljava/lang/String;
    .restart local v10    # "identity":J
    :catchall_9f
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2420
    throw v0

    .line 2422
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v10    # "identity":J
    :cond_a4
    const/4 v6, 0x0

    .line 2425
    :goto_a5
    return v6
.end method

.method public deleteCertificateFromKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z
    .registers 28
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "certInfo"    # Lcom/samsung/android/knox/keystore/CertificateInfo;
    .param p3, "keystore"    # I

    .line 1929
    move-object/from16 v7, p0

    move/from16 v8, p3

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v9

    .line 1931
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v9, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v0

    if-eqz v0, :cond_22f

    if-eqz p2, :cond_22f

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_1a

    goto/16 :goto_22f

    .line 1935
    :cond_1a
    iget v0, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1936
    .local v6, "userId":I
    const/4 v1, 0x1

    .line 1939
    .local v1, "ret":Z
    const/4 v2, 0x0

    .line 1940
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    const/4 v3, 0x0

    .line 1943
    .local v3, "keyChainService":Landroid/security/IKeyChainService;
    const/4 v4, 0x0

    .line 1944
    .local v4, "certificateAlias":Ljava/lang/String;
    :try_start_24
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    move-object v5, v0

    .line 1946
    .local v5, "removeCert":Ljava/security/cert/Certificate;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_227

    move-wide/from16 v17, v10

    .line 1949
    .local v17, "token":J
    and-int/lit8 v0, v8, 0x1

    const-string v15, "deleteCertificateFromKeystore: "

    const-string v14, "SecurityPolicy"

    if-eqz v0, :cond_48

    .line 1950
    :try_start_37
    iget-object v0, v7, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v10}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    move-object v2, v0

    .line 1951
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0

    move-object v3, v0

    .line 1955
    :cond_48
    invoke-static {v6}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1956
    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_58

    .line 1957
    invoke-direct {v7, v3, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local v4    # "certificateAlias":Ljava/lang/String;
    .local v0, "certificateAlias":Ljava/lang/String;
    goto :goto_5d

    .line 1959
    .end local v0    # "certificateAlias":Ljava/lang/String;
    .restart local v4    # "certificateAlias":Ljava/lang/String;
    :cond_58
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    .end local v4    # "certificateAlias":Ljava/lang/String;
    .restart local v0    # "certificateAlias":Ljava/lang/String;
    move-object v4, v0

    .line 1962
    .end local v0    # "certificateAlias":Ljava/lang/String;
    .restart local v4    # "certificateAlias":Ljava/lang/String;
    :goto_5d
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    .line 1963
    .local v0, "cert":Ljava/security/cert/Certificate;
    const/4 v10, 0x0

    .line 1964
    .local v10, "issuer":Ljava/lang/String;
    instance-of v11, v0, Ljava/security/cert/X509Certificate;

    if-eqz v11, :cond_74

    .line 1965
    move-object v11, v0

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 1966
    .local v11, "x509cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object v13, v10

    goto :goto_75

    .line 1964
    .end local v11    # "x509cert":Ljava/security/cert/X509Certificate;
    :cond_74
    move-object v13, v10

    .line 1968
    .end local v10    # "issuer":Ljava/lang/String;
    .local v13, "issuer":Ljava/lang/String;
    :goto_75
    const/4 v10, 0x5

    .line 1969
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    const-string v19, "SecurityPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has requested to delete a certificate. Keystore(s) : "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1971
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Alias : "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    if-nez v4, :cond_a1

    const-string v11, "Not available"

    goto :goto_a2

    :cond_a1
    move-object v11, v4

    :goto_a2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Subject : "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getSubject()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Issuer : "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21
    :try_end_bd
    .catch Ljava/lang/AssertionError; {:try_start_37 .. :try_end_bd} :catch_117
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_bd} :catch_f0
    .catchall {:try_start_37 .. :try_end_bd} :catchall_eb

    .line 1968
    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v20, v13

    .end local v13    # "issuer":Ljava/lang/String;
    .local v20, "issuer":Ljava/lang/String;
    move/from16 v13, v16

    move-object/from16 v22, v14

    move-object/from16 v14, v19

    move-object/from16 v23, v15

    move-object/from16 v15, v21

    move/from16 v16, v6

    :try_start_cd
    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_d0
    .catch Ljava/lang/AssertionError; {:try_start_cd .. :try_end_d0} :catch_d3
    .catch Ljava/lang/InterruptedException; {:try_start_cd .. :try_end_d0} :catch_d1
    .catchall {:try_start_cd .. :try_end_d0} :catchall_eb

    goto :goto_dd

    .line 1979
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v20    # "issuer":Ljava/lang/String;
    :catch_d1
    move-exception v0

    goto :goto_f5

    .line 1976
    :catch_d3
    move-exception v0

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    goto :goto_11a

    .line 1955
    :cond_d9
    move-object/from16 v22, v14

    move-object/from16 v23, v15

    .line 1983
    :goto_dd
    :try_start_dd
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_e7

    .line 1984
    move-object v10, v2

    move-object v13, v3

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    goto :goto_139

    .line 2028
    .end local v4    # "certificateAlias":Ljava/lang/String;
    .end local v5    # "removeCert":Ljava/security/cert/Certificate;
    .end local v17    # "token":J
    :catchall_e7
    move-exception v0

    move v12, v6

    goto/16 :goto_229

    .line 1983
    .restart local v4    # "certificateAlias":Ljava/lang/String;
    .restart local v5    # "removeCert":Ljava/security/cert/Certificate;
    .restart local v17    # "token":J
    :catchall_eb
    move-exception v0

    move-object v14, v5

    move v12, v6

    goto/16 :goto_220

    .line 1979
    :catch_f0
    move-exception v0

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    .line 1980
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_f5
    :try_start_f5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v23

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v12, v22

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_f5 .. :try_end_10f} :catchall_eb

    .line 1981
    and-int/lit8 v1, v1, 0x0

    .line 1983
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_111
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_e7

    .line 1984
    :goto_114
    move-object v10, v2

    move-object v13, v3

    goto :goto_139

    .line 1976
    :catch_117
    move-exception v0

    move-object v12, v14

    move-object v11, v15

    .line 1977
    .local v0, "e":Ljava/lang/AssertionError;
    :goto_11a
    :try_start_11a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deleteCertificateFromKeystore - is KeyChainService running for user "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catchall {:try_start_11a .. :try_end_133} :catchall_21d

    .line 1978
    and-int/lit8 v1, v1, 0x0

    .line 1983
    .end local v0    # "e":Ljava/lang/AssertionError;
    :try_start_135
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_138
    .catchall {:try_start_135 .. :try_end_138} :catchall_227

    goto :goto_114

    .line 1986
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .local v10, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .local v13, "keyChainService":Landroid/security/IKeyChainService;
    :goto_139
    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_184

    .line 1987
    :try_start_13d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_141
    .catchall {:try_start_13d .. :try_end_141} :catchall_17e

    move-wide/from16 v17, v2

    .line 1990
    if-nez v4, :cond_14d

    .line 1991
    :try_start_145
    invoke-direct {v7, v13, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0
    :try_end_149
    .catchall {:try_start_145 .. :try_end_149} :catchall_14b

    move-object v4, v0

    goto :goto_14d

    .line 2009
    :catchall_14b
    move-exception v0

    goto :goto_174

    .line 2000
    :cond_14d
    :goto_14d
    if-eqz v4, :cond_179

    if-eqz v13, :cond_179

    .line 2002
    :try_start_151
    invoke-interface {v13, v4}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v0
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_155} :catch_158
    .catchall {:try_start_151 .. :try_end_155} :catchall_14b

    and-int/2addr v0, v1

    .line 2006
    .end local v1    # "ret":Z
    .local v0, "ret":Z
    move v1, v0

    goto :goto_179

    .line 2003
    .end local v0    # "ret":Z
    .restart local v1    # "ret":Z
    :catch_158
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2004
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_171
    .catchall {:try_start_15b .. :try_end_171} :catchall_14b

    .line 2005
    and-int/lit8 v1, v1, 0x0

    goto :goto_179

    .line 2009
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_174
    :try_start_174
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2010
    nop

    .end local v1    # "ret":Z
    .end local v6    # "userId":I
    .end local v9    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v13    # "keyChainService":Landroid/security/IKeyChainService;
    .end local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    .end local p2    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local p3    # "keystore":I
    throw v0

    .line 2009
    .restart local v1    # "ret":Z
    .restart local v6    # "userId":I
    .restart local v9    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v13    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    .restart local p2    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .restart local p3    # "keystore":I
    :cond_179
    :goto_179
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2010
    move-object v0, v4

    goto :goto_185

    .line 2028
    .end local v4    # "certificateAlias":Ljava/lang/String;
    .end local v5    # "removeCert":Ljava/security/cert/Certificate;
    .end local v17    # "token":J
    :catchall_17e
    move-exception v0

    move v12, v6

    move-object v2, v10

    move-object v3, v13

    goto/16 :goto_229

    .line 1986
    .restart local v4    # "certificateAlias":Ljava/lang/String;
    .restart local v5    # "removeCert":Ljava/security/cert/Certificate;
    .restart local v17    # "token":J
    :cond_184
    move-object v0, v4

    .line 2012
    .end local v4    # "certificateAlias":Ljava/lang/String;
    .local v0, "certificateAlias":Ljava/lang/String;
    :goto_185
    and-int/lit8 v2, v8, 0x2

    if-eqz v2, :cond_1a2

    .line 2013
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CACERT_"

    const/4 v4, 0x2

    invoke-direct {v7, v5, v2, v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    and-int/2addr v1, v2

    .line 2015
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USRCERT_"

    invoke-direct {v7, v5, v2, v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2
    :try_end_19f
    .catchall {:try_start_174 .. :try_end_19f} :catchall_17e

    and-int/2addr v1, v2

    move v11, v1

    goto :goto_1a3

    .line 2012
    :cond_1a2
    move v11, v1

    .line 2018
    .end local v1    # "ret":Z
    .local v11, "ret":Z
    :goto_1a3
    and-int/lit8 v1, v8, 0x4

    if-eqz v1, :cond_1d5

    .line 2019
    :try_start_1a7
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CACERT_"
    :try_end_1ad
    .catchall {:try_start_1a7 .. :try_end_1ad} :catchall_1cf

    const/4 v12, 0x4

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v14, v5

    .end local v5    # "removeCert":Ljava/security/cert/Certificate;
    .local v14, "removeCert":Ljava/security/cert/Certificate;
    move v5, v12

    move v12, v6

    .end local v6    # "userId":I
    .local v12, "userId":I
    :try_start_1b4
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    and-int/2addr v11, v1

    .line 2021
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    const-string v4, "USRCERT_"

    const/4 v5, 0x4

    move-object/from16 v1, p0

    move-object v2, v14

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1
    :try_end_1c8
    .catchall {:try_start_1b4 .. :try_end_1c8} :catchall_1ca

    and-int/2addr v1, v11

    .end local v11    # "ret":Z
    .restart local v1    # "ret":Z
    goto :goto_1d8

    .line 2028
    .end local v0    # "certificateAlias":Ljava/lang/String;
    .end local v1    # "ret":Z
    .end local v14    # "removeCert":Ljava/security/cert/Certificate;
    .end local v17    # "token":J
    .restart local v11    # "ret":Z
    :catchall_1ca
    move-exception v0

    move-object v2, v10

    move v1, v11

    move-object v3, v13

    goto :goto_229

    .end local v12    # "userId":I
    .restart local v6    # "userId":I
    :catchall_1cf
    move-exception v0

    move v12, v6

    move-object v2, v10

    move v1, v11

    move-object v3, v13

    .end local v6    # "userId":I
    .restart local v12    # "userId":I
    goto :goto_229

    .line 2018
    .end local v12    # "userId":I
    .restart local v0    # "certificateAlias":Ljava/lang/String;
    .restart local v5    # "removeCert":Ljava/security/cert/Certificate;
    .restart local v6    # "userId":I
    .restart local v17    # "token":J
    :cond_1d5
    move-object v14, v5

    move v12, v6

    .end local v5    # "removeCert":Ljava/security/cert/Certificate;
    .end local v6    # "userId":I
    .restart local v12    # "userId":I
    .restart local v14    # "removeCert":Ljava/security/cert/Certificate;
    move v1, v11

    .line 2026
    .end local v11    # "ret":Z
    .restart local v1    # "ret":Z
    :goto_1d8
    :try_start_1d8
    invoke-direct {v7, v12}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_1db
    .catchall {:try_start_1d8 .. :try_end_1db} :catchall_219

    .line 2028
    .end local v0    # "certificateAlias":Ljava/lang/String;
    .end local v14    # "removeCert":Ljava/security/cert/Certificate;
    .end local v17    # "token":J
    if-eqz v10, :cond_1e0

    .line 2029
    invoke-virtual {v10}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2032
    :cond_1e0
    if-eqz v1, :cond_218

    .line 2034
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_AKS"

    const/4 v3, 0x1

    const-string v4, "API:deleteCertificateFromKeystore"

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2035
    .local v0, "mData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    iget v2, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "cId"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 2036
    const-string/jumbo v2, "uId"

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 2037
    iget-object v2, v7, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, v9, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pN"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    invoke-direct {v7, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "key"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 2042
    .end local v0    # "mData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    :cond_218
    return v1

    .line 2028
    :catchall_219
    move-exception v0

    move-object v2, v10

    move-object v3, v13

    goto :goto_229

    .line 1983
    .end local v10    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v12    # "userId":I
    .end local v13    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v4    # "certificateAlias":Ljava/lang/String;
    .restart local v5    # "removeCert":Ljava/security/cert/Certificate;
    .restart local v6    # "userId":I
    .restart local v17    # "token":J
    :catchall_21d
    move-exception v0

    move-object v14, v5

    move v12, v6

    .end local v5    # "removeCert":Ljava/security/cert/Certificate;
    .end local v6    # "userId":I
    .restart local v12    # "userId":I
    .restart local v14    # "removeCert":Ljava/security/cert/Certificate;
    :goto_220
    :try_start_220
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1984
    nop

    .end local v1    # "ret":Z
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v9    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v12    # "userId":I
    .end local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    .end local p2    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .end local p3    # "keystore":I
    throw v0
    :try_end_225
    .catchall {:try_start_220 .. :try_end_225} :catchall_225

    .line 2028
    .end local v4    # "certificateAlias":Ljava/lang/String;
    .end local v14    # "removeCert":Ljava/security/cert/Certificate;
    .end local v17    # "token":J
    .restart local v1    # "ret":Z
    .restart local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v9    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v12    # "userId":I
    .restart local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    .restart local p2    # "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    .restart local p3    # "keystore":I
    :catchall_225
    move-exception v0

    goto :goto_229

    .end local v12    # "userId":I
    .restart local v6    # "userId":I
    :catchall_227
    move-exception v0

    move v12, v6

    .end local v6    # "userId":I
    .restart local v12    # "userId":I
    :goto_229
    if-eqz v2, :cond_22e

    .line 2029
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2031
    :cond_22e
    throw v0

    .line 1932
    .end local v1    # "ret":Z
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v12    # "userId":I
    :cond_22f
    :goto_22f
    const/4 v0, 0x0

    return v0
.end method

.method public deleteCertificateFromUserKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "certInfo"    # Lcom/samsung/android/knox/keystore/CertificateInfo;
    .param p3, "keystore"    # I

    .line 2148
    const/4 v0, 0x0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2254
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "Failed to dump Default keystore "

    const-string v4, "SecurityPolicy"

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    .line 2255
    .local v5, "keyStore":Landroid/security/KeyStore;
    iget-object v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 2257
    const-string v0, "Permission Denial: can\'t dump SecurityPolicy"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2258
    return-void

    .line 2260
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 2262
    .local v6, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v7, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    .line 2263
    .local v7, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    invoke-virtual {v7}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v8

    .line 2265
    .local v8, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[VPN and Apps keystore]"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, ""

    const-string v11, ": "

    const-string v12, "Aliases for user "

    if-eqz v9, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2267
    .local v9, "userId":I
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2268
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2269
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2270
    iget-object v11, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 2271
    invoke-static {v11, v10, v9}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 2270
    invoke-direct {v1, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    .end local v9    # "userId":I
    goto :goto_4a

    .line 2274
    :cond_77
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Wifi keystore]"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Aliases: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    if-eqz v5, :cond_aa

    .line 2277
    const/16 v0, 0x3f2

    invoke-virtual {v5, v10, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2280
    :cond_aa
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Default keystore]"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2284
    .local v9, "token":J
    :try_start_cd
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_149

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v14, v0

    .line 2285
    .local v14, "userId":I
    iget-object v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v0, v15}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    move-object v15, v0

    .line 2287
    .local v15, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0
    :try_end_f2
    .catch Ljava/lang/InterruptedException; {:try_start_cd .. :try_end_f2} :catch_16a
    .catch Ljava/lang/AssertionError; {:try_start_cd .. :try_end_f2} :catch_153
    .catchall {:try_start_cd .. :try_end_f2} :catchall_14f

    move-object/from16 v16, v0

    .line 2289
    .local v16, "keyChainService":Landroid/security/IKeyChainService;
    if-eqz v16, :cond_144

    .line 2291
    :try_start_f6
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2293
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2294
    invoke-interface/range {v16 .. v16}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_10a} :catch_121
    .catchall {:try_start_f6 .. :try_end_10a} :catchall_11d

    .line 2300
    :try_start_10a
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_10d
    .catch Ljava/lang/InterruptedException; {:try_start_10a .. :try_end_10d} :catch_119
    .catch Ljava/lang/AssertionError; {:try_start_10a .. :try_end_10d} :catch_115
    .catchall {:try_start_10a .. :try_end_10d} :catchall_110

    .line 2301
    move-object/from16 v17, v5

    goto :goto_146

    .line 2309
    .end local v14    # "userId":I
    .end local v15    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v16    # "keyChainService":Landroid/security/IKeyChainService;
    :catchall_110
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_1b2

    .line 2306
    :catch_115
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_156

    .line 2304
    :catch_119
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_16d

    .line 2300
    .restart local v14    # "userId":I
    .restart local v15    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v16    # "keyChainService":Landroid/security/IKeyChainService;
    :catchall_11d
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_13b

    .line 2296
    :catch_121
    move-exception v0

    .line 2297
    .local v0, "e":Landroid/os/RemoteException;
    move-object/from16 v17, v5

    .end local v5    # "keyStore":Landroid/security/KeyStore;
    .local v17, "keyStore":Landroid/security/KeyStore;
    :try_start_124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catchall {:try_start_124 .. :try_end_136} :catchall_13a

    .line 2300
    .end local v0    # "e":Landroid/os/RemoteException;
    :try_start_136
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2301
    goto :goto_146

    .line 2300
    :catchall_13a
    move-exception v0

    :goto_13b
    invoke-virtual {v15}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2301
    nop

    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    .end local v8    # "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "token":J
    .end local v17    # "keyStore":Landroid/security/KeyStore;
    .end local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    throw v0
    :try_end_140
    .catch Ljava/lang/InterruptedException; {:try_start_136 .. :try_end_140} :catch_142
    .catch Ljava/lang/AssertionError; {:try_start_136 .. :try_end_140} :catch_140
    .catchall {:try_start_136 .. :try_end_140} :catchall_1b1

    .line 2306
    .end local v14    # "userId":I
    .end local v15    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v16    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    .restart local v8    # "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "token":J
    .restart local v17    # "keyStore":Landroid/security/KeyStore;
    .restart local p0    # "this":Lcom/android/server/enterprise/security/SecurityPolicy;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catch_140
    move-exception v0

    goto :goto_156

    .line 2304
    :catch_142
    move-exception v0

    goto :goto_16d

    .line 2289
    .end local v17    # "keyStore":Landroid/security/KeyStore;
    .restart local v5    # "keyStore":Landroid/security/KeyStore;
    .restart local v14    # "userId":I
    .restart local v15    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v16    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_144
    move-object/from16 v17, v5

    .line 2303
    .end local v5    # "keyStore":Landroid/security/KeyStore;
    .end local v14    # "userId":I
    .end local v15    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v16    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v17    # "keyStore":Landroid/security/KeyStore;
    :goto_146
    move-object/from16 v5, v17

    goto :goto_d1

    .line 2309
    .end local v17    # "keyStore":Landroid/security/KeyStore;
    .restart local v5    # "keyStore":Landroid/security/KeyStore;
    :cond_149
    move-object/from16 v17, v5

    .end local v5    # "keyStore":Landroid/security/KeyStore;
    .restart local v17    # "keyStore":Landroid/security/KeyStore;
    :goto_14b
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2310
    goto :goto_181

    .line 2309
    .end local v17    # "keyStore":Landroid/security/KeyStore;
    .restart local v5    # "keyStore":Landroid/security/KeyStore;
    :catchall_14f
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "keyStore":Landroid/security/KeyStore;
    .restart local v17    # "keyStore":Landroid/security/KeyStore;
    goto :goto_1b2

    .line 2306
    .end local v17    # "keyStore":Landroid/security/KeyStore;
    .restart local v5    # "keyStore":Landroid/security/KeyStore;
    :catch_153
    move-exception v0

    move-object/from16 v17, v5

    .line 2307
    .end local v5    # "keyStore":Landroid/security/KeyStore;
    .local v0, "e":Ljava/lang/AssertionError;
    .restart local v17    # "keyStore":Landroid/security/KeyStore;
    :goto_156
    :try_start_156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    nop

    .end local v0    # "e":Ljava/lang/AssertionError;
    goto :goto_14b

    .line 2304
    .end local v17    # "keyStore":Landroid/security/KeyStore;
    .restart local v5    # "keyStore":Landroid/security/KeyStore;
    :catch_16a
    move-exception v0

    move-object/from16 v17, v5

    .line 2305
    .end local v5    # "keyStore":Landroid/security/KeyStore;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v17    # "keyStore":Landroid/security/KeyStore;
    :goto_16d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17f
    .catchall {:try_start_156 .. :try_end_17f} :catchall_1b1

    .line 2309
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_14b

    .line 2312
    :goto_181
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 2316
    iget-object v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v3, "deviceEnrolled"

    const-string v4, "bannerText"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "SECURITY"

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2321
    iget-object v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string v3, "dodBannerVisible"

    const-string v4, "deviceLastAccessDate"

    const-string v5, "deviceBootMode"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "generic"

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2326
    return-void

    .line 2309
    :catchall_1b1
    move-exception v0

    :goto_1b2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2310
    throw v0
.end method

.method public enableRebootBanner(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isEnrolled"    # Z

    .line 1581
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v0

    .line 1582
    .local v0, "result":Z
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1584
    .local v1, "userId":I
    if-eqz v0, :cond_71

    .line 1585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1587
    .local v9, "token":J
    const-string v2, "Admin "

    if-eqz p2, :cond_3f

    .line 1588
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1589
    :try_start_18
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "SecurityPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has enabled reboot banner."

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1588
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_68

    .line 1592
    :cond_3f
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1593
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "SecurityPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has disabled reboot banner."

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1592
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_68
    .catchall {:try_start_18 .. :try_end_68} :catchall_6c

    .line 1597
    :goto_68
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1598
    goto :goto_71

    .line 1597
    :catchall_6c
    move-exception v2

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1598
    throw v2

    .line 1601
    .end local v9    # "token":J
    :cond_71
    :goto_71
    return v0
.end method

.method public enableRebootBannerWithText(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .line 1605
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v0

    .line 1606
    .local v0, "result":Z
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1607
    .local v1, "userId":I
    if-eqz v0, :cond_73

    .line 1608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1610
    .local v9, "token":J
    const-string v2, "Admin "

    if-eqz p2, :cond_41

    .line 1611
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1612
    :try_start_17
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "SecurityPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has enabled reboot banner with text "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1611
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_6a

    .line 1615
    :cond_41
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1616
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "SecurityPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has disabled reboot banner."

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1615
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6a
    .catchall {:try_start_17 .. :try_end_6a} :catchall_6e

    .line 1620
    :goto_6a
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1621
    goto :goto_73

    .line 1620
    :catchall_6e
    move-exception v2

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1621
    throw v2

    .line 1623
    .end local v9    # "token":J
    :cond_73
    :goto_73
    return v0
.end method

.method public formatInternalStorage(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "includeSystemDirectory"    # Z
    .param p3, "includeDataDirectory"    # Z

    .line 713
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 715
    const/4 v0, 0x1

    return v0
.end method

.method public formatSelective(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "fileList"    # [Ljava/lang/String;
    .param p3, "filters"    # [Ljava/lang/String;

    .line 695
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 25
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isExternal"    # Z

    .line 726
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "android.intent.action.MASTER_CLEAR"

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 728
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 730
    .local v5, "ident":J
    iget-object v7, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 731
    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v7

    .line 732
    .local v7, "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    invoke-virtual {v7}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumes()Ljava/util/List;

    move-result-object v8

    .line 733
    .local v8, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    const/4 v9, 0x0

    .line 735
    .local v9, "isExtSDsupported":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_21
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_47

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/VolumeInfo;

    .line 736
    .local v11, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v11, :cond_46

    invoke-virtual {v11}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v12

    if-nez v12, :cond_46

    invoke-virtual {v11}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v12

    if-eqz v12, :cond_46

    invoke-virtual {v11}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v12

    if-eqz v12, :cond_46

    .line 737
    const/4 v9, 0x1

    .line 739
    .end local v11    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_46
    goto :goto_21

    .line 742
    :cond_47
    const-string v10, "Admin "

    const-string v11, "SecurityPolicy"

    const/4 v12, 0x1

    if-ne v3, v12, :cond_5e

    .line 743
    if-ne v9, v12, :cond_55

    .line 744
    :try_start_50
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z

    goto/16 :goto_103

    .line 746
    :cond_55
    const-string v0, "This device doesn\'t suppot External SD card"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iput-boolean v4, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    goto/16 :goto_103

    .line 752
    :cond_5e
    iget-object v13, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "device_provisioned"

    invoke-static {v13, v14, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_7c

    .line 754
    iget-object v13, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "persistent_data_block"

    .line 755
    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 756
    .local v13, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v13, :cond_7c

    .line 757
    invoke-virtual {v13}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 761
    .end local v13    # "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    :cond_7c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getFactoryReceiver()Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 762
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 763
    .local v13, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    iget-object v14, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    invoke-virtual {v14, v15, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 766
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    .line 767
    .local v0, "intent":Landroid/content/Intent;
    iget-object v14, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    iget v15, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 768
    .local v14, "packages":[Ljava/lang/String;
    const-string v15, "android.intent.extra.REASON"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceWipeByMDM("

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_b5

    const/4 v4, 0x0

    aget-object v4, v14, v4

    goto :goto_b8

    :cond_b5
    const-string/jumbo v4, "null!"

    :goto_b8
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    iget-object v4, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 771
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 772
    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 773
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    const-string v19, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " has requested full wipe of device."

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 775
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    .line 772
    invoke-static/range {v15 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_103} :catch_104

    .line 779
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v14    # "packages":[Ljava/lang/String;
    :goto_103
    goto :goto_10b

    .line 777
    :catch_104
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "formatStorageCard fail"

    invoke-static {v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10b
    iget-boolean v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    if-eqz v0, :cond_139

    if-eqz v3, :cond_139

    .line 783
    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 784
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has requested wipe of device external memory."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 786
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 783
    const-string v16, "SecurityPolicy"

    invoke-static/range {v12 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 789
    :cond_139
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "formatStorageCard() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isExternal = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-boolean v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v0
.end method

.method public getAdminUidFromWhiteListedPackage(Ljava/lang/String;I)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2481
    const-string v0, "adminUid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 2485
    .local v1, "returnColumns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2486
    .local v2, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    nop

    .line 2488
    const/4 v3, 0x0

    invoke-static {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v4

    .line 2487
    const-string v5, "#SelectClause#"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CertificateWhiteListTable"

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 2494
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_39

    .line 2495
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 2498
    :cond_39
    const/4 v0, -0x1

    return v0
.end method

.method public getCertificatesFromKeystore(Lcom/samsung/android/knox/ContextInfo;II)Ljava/util/List;
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "keystore"    # I
    .param p3, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 1864
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1866
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1867
    .local v0, "userId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1870
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1871
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6e

    .line 1874
    :cond_2b
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 1875
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_44

    .line 1876
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificatesAsUser(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1877
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1879
    :cond_44
    and-int/lit8 v2, p2, 0x2

    const-string v3, "CACERT_"

    const-string v4, "USRCERT_"

    if-eqz v2, :cond_5b

    .line 1880
    const/4 v2, 0x2

    invoke-direct {p0, v4, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1882
    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1885
    :cond_5b
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_6e

    .line 1886
    const/4 v2, 0x4

    invoke-direct {p0, v4, v2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1888
    invoke-direct {p0, v3, v2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1899
    :cond_6e
    :goto_6e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_91

    .line 1900
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v5, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    sget v2, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_a2

    .line 1905
    :cond_91
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 1908
    :goto_a2
    return-object v1

    .line 1892
    :cond_a3
    const/4 v2, 0x0

    return-object v2
.end method

.method public getCertificatesFromUserKeystore(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "keystore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 2143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1382
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1383
    .local v0, "keyStore":Landroid/security/KeyStore;
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1384
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1383
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAdminContextIfCallerInCertWhiteList(Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    .line 1385
    .local v1, "whiteListedCxtInfo":Lcom/samsung/android/knox/ContextInfo;
    if-nez v1, :cond_2d

    .line 1386
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->needtoCheckPackageCaller()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1387
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_2e

    .line 1389
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlyCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_2e

    .line 1392
    :cond_2d
    move-object p1, v1

    .line 1394
    :goto_2e
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1395
    .local v2, "userId":I
    const/4 v3, 0x4

    .line 1396
    .local v3, "credentialStorageStatus":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1398
    .local v4, "token":J
    :try_start_39
    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v6

    .line 1399
    .local v6, "state":Landroid/security/KeyStore$State;
    sget-object v7, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v6, v7}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 1400
    const/4 v3, 0x1

    goto :goto_5c

    .line 1402
    :cond_47
    sget-object v7, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v6, v7}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1403
    const/4 v3, 0x2

    goto :goto_5c

    .line 1405
    :cond_51
    sget-object v7, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v6, v7}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_57
    .catch Ljava/lang/AssertionError; {:try_start_39 .. :try_end_57} :catch_62
    .catchall {:try_start_39 .. :try_end_57} :catchall_60

    if-eqz v7, :cond_5b

    .line 1406
    const/4 v3, 0x3

    goto :goto_5c

    .line 1408
    :cond_5b
    const/4 v3, 0x4

    .line 1414
    .end local v6    # "state":Landroid/security/KeyStore$State;
    :goto_5c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1415
    goto :goto_7f

    .line 1414
    :catchall_60
    move-exception v6

    goto :goto_80

    .line 1410
    :catch_62
    move-exception v6

    .line 1411
    .local v6, "e":Ljava/lang/AssertionError;
    :try_start_63
    const-string v7, "SecurityPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Keystore State Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_60

    .line 1412
    const/4 v3, 0x4

    .end local v6    # "e":Ljava/lang/AssertionError;
    goto :goto_5c

    .line 1416
    :goto_7f
    return v3

    .line 1414
    :goto_80
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1415
    throw v6
.end method

.method public getDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1777
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1778
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "deviceLastAccessDate"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInstalledCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "certificateName"    # Ljava/lang/String;

    .line 1263
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1264
    const-string v0, "USRCERT_"

    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-result-object v0

    .line 1266
    .local v0, "certInfo":Lcom/samsung/android/knox/keystore/CertificateInfo;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    if-nez v1, :cond_17

    .line 1267
    const-string v1, "CACERT_"

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-result-object v0

    .line 1269
    :cond_17
    return-object v0
.end method

.method public getInstalledCertificateNames(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1306
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1308
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x4

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1309
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1310
    return-object v0
.end method

.method public getInstalledCertificates(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 1059
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/keystore/CertificateInfo;>;"
    const-string v1, "USRCERT_"

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1062
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1063
    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1064
    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1065
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1066
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeDuplicatedCertificates(Ljava/util/List;)V

    .line 1067
    return-object v0
.end method

.method public getPackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    .line 2502
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2504
    const-string/jumbo v0, "packageName"

    const-string/jumbo v1, "signature"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 2509
    .local v2, "returnColumns":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2510
    .local v3, "selectionValues":Landroid/content/ContentValues;
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "adminUid"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2512
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CertificateWhiteListTable"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 2515
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2517
    .local v5, "packagesList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 2518
    .local v7, "cv":Landroid/content/ContentValues;
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2519
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2521
    .local v9, "signature":Ljava/lang/String;
    new-instance v10, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v10, v8, v9}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2522
    .end local v7    # "cv":Landroid/content/ContentValues;
    goto :goto_2f

    .line 2524
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    :cond_4c
    return-object v5
.end method

.method public getRebootBannerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1674
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1675
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1676
    const-string v2, "SECURITY"

    const-string v3, "bannerText"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1678
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_24

    .line 1679
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1680
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_23

    .line 1681
    return-object v3

    .line 1683
    .end local v3    # "value":Ljava/lang/String;
    :cond_23
    goto :goto_14

    .line 1685
    :cond_24
    const/4 v2, 0x0

    return-object v2
.end method

.method public getRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .line 1000
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1001
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1004
    .local v0, "token":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    .line 1005
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1006
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2, p2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_1b
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    .line 1011
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1006
    return v3

    .line 1011
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catchall_19
    move-exception v2

    goto :goto_40

    .line 1007
    :catch_1b
    move-exception v2

    .line 1008
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v3, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRequireDeviceEncryption Ex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_19

    .line 1011
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    nop

    .line 1014
    const/4 v2, 0x0

    return v2

    .line 1011
    :goto_40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1012
    throw v2
.end method

.method public getRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .line 1034
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1035
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1038
    .local v0, "token":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    .line 1039
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1040
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-boolean v3, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    invoke-virtual {v2, p2, v3}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;Z)Z

    move-result v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_1d
    .catchall {:try_start_7 .. :try_end_17} :catchall_1b

    .line 1045
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1040
    return v3

    .line 1045
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catchall_1b
    move-exception v2

    goto :goto_42

    .line 1041
    :catch_1d
    move-exception v2

    .line 1042
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1e
    const-string v3, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRequireStorageCardEncryption Ex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_1b

    .line 1045
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1046
    nop

    .line 1048
    const/4 v2, 0x0

    return v2

    .line 1045
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1046
    throw v2
.end method

.method public getRestrictedKeyCodes()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2173
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Integer;

    .line 2174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v0, 0x1

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v0, 0x2

    const/16 v2, 0xbb

    .line 2175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    .line 2174
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2173
    return-object v1

    .line 2177
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    .line 2182
    const-string v0, "SecurityPolicy"

    return-object v0
.end method

.method public getSystemCertificates(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation

    .line 1053
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1054
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1055
    .local v0, "userId":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(ZI)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public installCertificateToKeystore(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;IZ)I
    .registers 27
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystoreUid"    # I
    .param p7, "isKC"    # Z

    .line 1812
    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move/from16 v10, p6

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceAdminPermissionIfCallerInCertWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    .line 1814
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v11, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget v0, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1815
    .local v12, "userId":I
    const/4 v2, 0x0

    .line 1816
    .local v2, "ret":I
    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1817
    .end local p2    # "type":Ljava/lang/String;
    .local v13, "type":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1819
    .end local p4    # "name":Ljava/lang/String;
    .local v14, "name":Ljava/lang/String;
    if-eqz p5, :cond_27

    .line 1820
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .end local p5    # "password":Ljava/lang/String;
    .local v0, "password":Ljava/lang/String;
    goto :goto_29

    .line 1819
    .end local v0    # "password":Ljava/lang/String;
    .restart local p5    # "password":Ljava/lang/String;
    :cond_27
    move-object/from16 v15, p5

    .line 1823
    .end local p5    # "password":Ljava/lang/String;
    .local v15, "password":Ljava/lang/String;
    :goto_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1826
    .local v16, "token":J
    :try_start_2d
    invoke-virtual {v1, v11}, Lcom/android/server/enterprise/security/SecurityPolicy;->getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_112

    move v8, v0

    .line 1827
    .end local v2    # "ret":I
    .local v8, "ret":I
    const-string v0, "SecurityPolicy"

    const/4 v7, 0x1

    if-eq v8, v7, :cond_57

    const/4 v2, 0x3

    if-eq v8, v2, :cond_57

    .line 1828
    :try_start_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installCertificateToKeystore: Keystore error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_3a .. :try_end_4f} :catchall_53

    move v2, v7

    move v3, v8

    goto/16 :goto_c8

    .line 1845
    :catchall_53
    move-exception v0

    move v2, v8

    goto/16 :goto_113

    .line 1829
    :cond_57
    :try_start_57
    invoke-direct {v1, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    move-result v2

    if-eqz v2, :cond_be

    if-nez p7, :cond_66

    if-eqz v13, :cond_62

    goto :goto_66

    :cond_62
    :goto_62
    move v2, v7

    move/from16 v18, v8

    goto :goto_c1

    :cond_66
    :goto_66
    if-eqz v9, :cond_be

    array-length v2, v9

    if-eqz v2, :cond_be

    if-nez v14, :cond_6e

    goto :goto_62

    .line 1834
    :cond_6e
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has requested to install a certificate. Keystore(s) : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-direct {v1, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Name : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_9e
    .catchall {:try_start_57 .. :try_end_9e} :catchall_10c

    .line 1834
    const/4 v0, 0x1

    move/from16 v18, v8

    .end local v8    # "ret":I
    .local v18, "ret":I
    move v8, v12

    :try_start_a2
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1838
    new-instance v2, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v3, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 1839
    .local v2, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    move-object v3, v13

    move-object/from16 v4, p3

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, p6

    move v8, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)I

    move-result v3
    :try_end_b8
    .catchall {:try_start_a2 .. :try_end_b8} :catchall_ba

    move v2, v0

    .end local v18    # "ret":I
    .local v3, "ret":I
    goto :goto_c8

    .line 1845
    .end local v2    # "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    .end local v3    # "ret":I
    .restart local v18    # "ret":I
    :catchall_ba
    move-exception v0

    move/from16 v2, v18

    goto :goto_113

    .line 1829
    .end local v18    # "ret":I
    .restart local v8    # "ret":I
    :cond_be
    move v2, v7

    move/from16 v18, v8

    .line 1831
    .end local v8    # "ret":I
    .restart local v18    # "ret":I
    :goto_c1
    const/4 v3, -0x1

    .line 1832
    .end local v18    # "ret":I
    .restart local v3    # "ret":I
    :try_start_c2
    const-string/jumbo v4, "installCertificateToKeystore: Invalid parameter(s)"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :goto_c8
    invoke-direct {v1, v12}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_cb
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_109

    .line 1845
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1846
    nop

    .line 1848
    if-nez p7, :cond_108

    if-nez v3, :cond_108

    .line 1850
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "KNOX_AKS"

    const-string v5, "API:installCertificateToKeystore"

    invoke-direct {v0, v4, v2, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1851
    .local v0, "mData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    iget v2, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "cId"

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1852
    const-string/jumbo v2, "uId"

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1853
    iget-object v2, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v4, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "pN"

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    invoke-direct {v1, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "key"

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 1858
    .end local v0    # "mData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    :cond_108
    return v3

    .line 1845
    :catchall_109
    move-exception v0

    move v2, v3

    goto :goto_113

    .end local v3    # "ret":I
    .restart local v8    # "ret":I
    :catchall_10c
    move-exception v0

    move/from16 v18, v8

    move/from16 v2, v18

    .end local v8    # "ret":I
    .restart local v18    # "ret":I
    goto :goto_113

    .end local v18    # "ret":I
    .local v2, "ret":I
    :catchall_112
    move-exception v0

    :goto_113
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1846
    throw v0
.end method

.method public installCertificateToUserKeystore(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I

    .line 2139
    const/4 v0, 0x0

    return v0
.end method

.method public installCertificateWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)V
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .line 561
    const-string v0, "SecurityPolicy"

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 562
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 563
    if-eqz p2, :cond_54

    if-eqz p3, :cond_54

    array-length v1, p3

    if-lez v1, :cond_54

    .line 564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 566
    .local v1, "token":J
    :try_start_14
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 568
    const-string/jumbo v4, "senderpackagename"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 570
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_2e} :catch_35
    .catchall {:try_start_14 .. :try_end_2e} :catchall_33

    .line 574
    .end local v3    # "intent":Landroid/content/Intent;
    nop

    :goto_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 575
    goto :goto_54

    .line 574
    :catchall_33
    move-exception v0

    goto :goto_50

    .line 571
    :catch_35
    move-exception v3

    .line 572
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::installCertificateWithType() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_33

    .line 574
    nop

    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_2f

    :goto_50
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 575
    throw v0

    .line 577
    .end local v1    # "token":J
    :cond_54
    :goto_54
    return-void
.end method

.method public installCertificatesFromSdCard(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 582
    const-string v0, "SecurityPolicy"

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 585
    .local v1, "token":J
    :try_start_9
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    const-string/jumbo v4, "senderpackagename"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_20} :catch_27
    .catchall {:try_start_9 .. :try_end_20} :catchall_25

    .line 592
    .end local v3    # "intent":Landroid/content/Intent;
    nop

    :goto_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    goto :goto_42

    .line 592
    :catchall_25
    move-exception v0

    goto :goto_43

    .line 589
    :catch_27
    move-exception v3

    .line 590
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::installCertificatesFromSdCard() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_25

    .line 592
    nop

    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_21

    .line 594
    :goto_42
    return-void

    .line 592
    :goto_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    throw v0
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .registers 2
    .param p1, "pair"    # Ljava/security/KeyPair;

    .line 554
    return-void
.end method

.method public isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1730
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1732
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isDodBannerVisibleAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1736
    const/4 v0, 0x0

    .line 1738
    .local v0, "status":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "dodBannerVisible"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 1741
    goto :goto_14

    .line 1739
    :catch_b
    move-exception v1

    .line 1740
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string/jumbo v3, "isDodBannerVisibleAsUser facing exception, return default value"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_14
    if-eqz v0, :cond_20

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1744
    const/4 v1, 0x1

    return v1

    .line 1746
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method public isExternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 968
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 969
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 972
    .local v0, "token":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v2

    .line 973
    .local v2, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v2}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isStorageCardEncrypted()Z

    move-result v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_17
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 977
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 973
    return v3

    .line 977
    .end local v2    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :catchall_15
    move-exception v2

    goto :goto_27

    .line 974
    :catch_17
    move-exception v2

    .line 975
    .local v2, "e":Ljava/lang/Exception;
    :try_start_18
    const-string v3, "SecurityPolicy"

    const-string/jumbo v4, "is External Storage Encrypted ?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_15

    .line 977
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 978
    nop

    .line 980
    const/4 v2, 0x0

    return v2

    .line 977
    :goto_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 978
    throw v2
.end method

.method public isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 940
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 944
    .local v0, "token":J
    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    .line 945
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 946
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_29
    .catchall {:try_start_8 .. :try_end_16} :catchall_27

    .line 947
    .local v4, "status":I
    const/4 v5, 0x3

    if-eq v4, v5, :cond_22

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1d

    goto :goto_22

    .line 951
    :cond_1d
    nop

    .line 956
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 951
    return v2

    .line 949
    :cond_22
    :goto_22
    const/4 v2, 0x1

    .line 956
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 949
    return v2

    .line 956
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "status":I
    :catchall_27
    move-exception v2

    goto :goto_38

    .line 953
    :catch_29
    move-exception v3

    .line 954
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v4, "SecurityPolicy"

    const-string/jumbo v5, "is Internal Storage Encrypted ?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_27

    .line 956
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    nop

    .line 959
    return v2

    .line 956
    :goto_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    throw v2
.end method

.method public isKeyCodeInputAllowed(I)Z
    .registers 4
    .param p1, "keyCode"    # I

    .line 2243
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_d

    .line 2249
    return v1

    .line 2247
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public isRebootBannerEnabled(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 1660
    const/4 v0, 0x0

    .line 1661
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1662
    const-string v2, "SECURITY"

    const-string v3, "deviceEnrolled"

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1664
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1665
    .local v3, "value":Z
    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 1666
    move v0, v3

    .line 1667
    goto :goto_25

    .line 1669
    .end local v3    # "value":Z
    :cond_24
    goto :goto_f

    .line 1670
    :cond_25
    :goto_25
    return v0
.end method

.method public isRebootBannerEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1655
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1656
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v1

    return v1
.end method

.method public makeZipFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .registers 10
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 646
    const/4 v0, 0x0

    .line 653
    .local v0, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 658
    const/16 v1, 0x1000

    new-array v2, v1, [B

    .line 660
    .local v2, "buffer":[B
    :goto_b
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    move v5, v4

    .local v5, "length":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_18

    .line 661
    invoke-virtual {v0, v2, v3, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_b

    .line 663
    :cond_18
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_22
    .catchall {:try_start_1 .. :try_end_1b} :catchall_20

    .line 669
    .end local v2    # "buffer":[B
    .end local v5    # "length":I
    nop

    .line 670
    :goto_1c
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_30

    .line 669
    :catchall_20
    move-exception v1

    goto :goto_31

    .line 666
    :catch_22
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/Exception;
    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 669
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_30

    .line 670
    goto :goto_1c

    .line 664
    :catch_29
    move-exception v1

    .line 665
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_20

    .line 669
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_30

    .line 670
    goto :goto_1c

    .line 673
    :cond_30
    :goto_30
    return-object p2

    .line 669
    :goto_31
    if-eqz v0, :cond_36

    .line 670
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 672
    :cond_36
    throw v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 2231
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 2154
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 2159
    return-void
.end method

.method public onKeyguardLaunched()V
    .registers 5

    .line 379
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 392
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 394
    .local v0, "token":J
    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 395
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->startBannerService(I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_20
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    .line 400
    :cond_1a
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 401
    goto :goto_25

    .line 400
    :catchall_1e
    move-exception v2

    goto :goto_26

    .line 397
    :catch_20
    move-exception v2

    .line 398
    .local v2, "e":Ljava/lang/Exception;
    :try_start_21
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1a

    .line 402
    :goto_25
    return-void

    .line 400
    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 401
    throw v2
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 2168
    return-void
.end method

.method public powerOffDevice(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1524
    const-string/jumbo v0, "powerOffDevice(): power off device failed."

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1525
    const-string v1, "SecurityPolicy"

    const-string/jumbo v2, "powerOffDevice(): power off device started ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const/4 v2, 0x1

    .line 1527
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1529
    .local v3, "token":J
    :try_start_13
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1530
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "[SecurityPolicy] PowerOff Device"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;Ljava/lang/String;)V

    .line 1531
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_2b
    .catchall {:try_start_13 .. :try_end_20} :catchall_29

    .line 1536
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1537
    if-nez v2, :cond_3a

    .line 1538
    :goto_25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 1536
    :catchall_29
    move-exception v5

    goto :goto_3b

    .line 1532
    :catch_2b
    move-exception v5

    .line 1533
    .local v5, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1534
    :try_start_2d
    const-string/jumbo v6, "powerOffDevice() : failed. error occurs."

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_29

    .line 1536
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1537
    if-nez v2, :cond_3a

    .line 1538
    goto :goto_25

    .line 1542
    :cond_3a
    :goto_3a
    return-void

    .line 1536
    :goto_3b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1537
    if-nez v2, :cond_43

    .line 1538
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_43
    throw v5
.end method

.method public removeAccountsByType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .line 1545
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1546
    const/4 v0, 0x0

    const-string v1, "SecurityPolicy"

    if-nez p2, :cond_10

    .line 1547
    const-string/jumbo v2, "removeAccountsByType() failed - type is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    return v0

    .line 1550
    :cond_10
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 1552
    .local v2, "userId":I
    const/4 v3, 0x1

    .line 1553
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1555
    .local v4, "token":J
    :try_start_19
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    .line 1556
    .local v6, "am":Landroid/accounts/AccountManager;
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, p2, v7}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v7

    .line 1557
    .local v7, "accs":[Landroid/accounts/Account;
    if-eqz v7, :cond_56

    array-length v8, v7

    if-lez v8, :cond_56

    .line 1558
    array-length v8, v7

    :goto_2e
    if-ge v0, v8, :cond_6b

    aget-object v9, v7, v0

    .line 1559
    .local v9, "item":Landroid/accounts/Account;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "removeAccountsByType() account = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11, v11, v10}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 1558
    nop

    .end local v9    # "item":Landroid/accounts/Account;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1563
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeAccountsByType() : there is no account for type - "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_6b} :catch_6e
    .catchall {:try_start_19 .. :try_end_6b} :catchall_6c

    .line 1569
    .end local v6    # "am":Landroid/accounts/AccountManager;
    .end local v7    # "accs":[Landroid/accounts/Account;
    :cond_6b
    goto :goto_77

    :catchall_6c
    move-exception v0

    goto :goto_93

    .line 1565
    :catch_6e
    move-exception v0

    .line 1566
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1567
    :try_start_70
    const-string/jumbo v6, "removeAccountsByType() : failed. error occurs."

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_6c

    .line 1569
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_77
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1570
    nop

    .line 1571
    if-nez v3, :cond_92

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAccountsByType() : has failed. type - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_92
    return v3

    .line 1569
    :goto_93
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1570
    throw v0
.end method

.method public removePackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .line 2528
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2530
    const/4 v0, 0x1

    .line 2531
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 2533
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "CertificateWhiteListTable"

    const-string v5, "adminUid"

    if-eqz p2, :cond_61

    .line 2534
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5f

    .line 2535
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/AppIdentity;

    .line 2536
    .local v7, "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    if-nez v7, :cond_28

    .line 2537
    const/4 v0, 0x0

    .line 2538
    goto :goto_18

    .line 2541
    :cond_28
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    move-object v1, v8

    .line 2542
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2543
    invoke-virtual {v7}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "packageName"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v7}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_51

    .line 2546
    invoke-virtual {v7}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "signature"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    :cond_51
    iget-object v8, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_5b

    move v8, v2

    goto :goto_5c

    :cond_5b
    move v8, v3

    :goto_5c
    and-int/2addr v0, v8

    .line 2550
    .end local v7    # "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    goto :goto_18

    :cond_5e
    goto :goto_7b

    .line 2552
    :cond_5f
    const/4 v0, 0x0

    goto :goto_7b

    .line 2555
    :cond_61
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v1, v6

    .line 2556
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2557
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_79

    goto :goto_7a

    :cond_79
    move v2, v3

    :goto_7a
    and-int/2addr v0, v2

    .line 2560
    :goto_7b
    return v0
.end method

.method public resetCredentialStorage(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1423
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1424
    .local v0, "keyStore":Landroid/security/KeyStore;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1425
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1426
    .local v1, "userId":I
    const/4 v9, 0x0

    .line 1427
    .local v9, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1429
    .local v10, "token":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 1430
    :try_start_16
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has requested to clear credential storages"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1429
    move v8, v1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1438
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->clearUid(I)Z

    move-result v2

    move v9, v2

    .line 1440
    if-nez v1, :cond_4f

    .line 1441
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->clearUid(I)Z

    move-result v2
    :try_end_4d
    .catchall {:try_start_16 .. :try_end_4d} :catchall_b2

    and-int/2addr v2, v9

    move v9, v2

    .line 1446
    :cond_4f
    const/4 v2, 0x1

    :try_start_50
    new-instance v3, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V

    new-array v4, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    .line 1447
    .local v3, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const-wide/16 v4, 0xbb8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    and-int/2addr v9, v4

    .line 1449
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->sendIntentToSettings(I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_75} :catch_76
    .catchall {:try_start_50 .. :try_end_75} :catchall_b2

    .line 1452
    .end local v3    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    goto :goto_7f

    .line 1450
    :catch_76
    move-exception v3

    .line 1451
    .local v3, "e":Ljava/lang/Exception;
    :try_start_77
    const-string v4, "SecurityPolicy"

    const-string/jumbo v5, "resetCredentialStorage EX: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_b2

    .line 1454
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_7f
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1455
    nop

    .line 1456
    if-eqz v9, :cond_b1

    .line 1458
    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "KNOX_AKS"

    const-string v5, "API:resetCredentialStorage"

    invoke-direct {v3, v4, v2, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v2, v3

    .line 1459
    .local v2, "mData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "cId"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1460
    const-string/jumbo v3, "uId"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1461
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pN"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 1465
    .end local v2    # "mData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    :cond_b1
    return v9

    .line 1454
    :catchall_b2
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1455
    throw v2
.end method

.method public setDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "date"    # Ljava/lang/String;

    .line 1755
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1756
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1757
    const/4 v0, 0x0

    return v0

    .line 1759
    :cond_e
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1760
    .local v0, "userId":I
    const/4 v1, 0x1

    .line 1762
    .local v1, "result":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "deviceLastAccessDate"

    invoke-virtual {v2, v3, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1765
    sget-object v2, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_24

    .line 1768
    goto :goto_26

    .line 1766
    :catch_24
    move-exception v2

    .line 1767
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1769
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_26
    return v1
.end method

.method public setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isVisible"    # Z

    .line 1694
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1695
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 1696
    return v1

    .line 1698
    :cond_e
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1699
    .local v0, "userId":I
    const/4 v2, 0x1

    .line 1701
    .local v2, "result":Z
    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "dodBannerVisible"

    .line 1702
    const/4 v5, 0x1

    if-eqz p2, :cond_1c

    move v6, v5

    goto :goto_1d

    :cond_1c
    move v6, v1

    :goto_1d
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1701
    invoke-virtual {v3, v4, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1703
    if-nez v0, :cond_35

    .line 1704
    if-eqz p2, :cond_2f

    .line 1705
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->registerDexBlocker()V

    .line 1706
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->setHomeAndRecentKey(Z)V

    goto :goto_35

    .line 1708
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->unRegisterDexBlocker()V

    .line 1709
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->setHomeAndRecentKey(Z)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_35} :catch_36

    .line 1714
    :cond_35
    :goto_35
    goto :goto_38

    .line 1712
    :catch_36
    move-exception v1

    .line 1713
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1715
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_38
    return v2
.end method

.method public setExternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .line 896
    const-string v0, "SecurityPolicy"

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 899
    .local v1, "token":J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v3

    .line 900
    .local v3, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v3}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 901
    if-nez p2, :cond_26

    invoke-virtual {v3}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getRequireStorageCardEncryption()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 902
    const-string v4, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_5f
    .catchall {:try_start_9 .. :try_end_22} :catchall_5d

    .line 930
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 903
    return-void

    .line 905
    :cond_26
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2d

    .line 906
    :try_start_29
    invoke-virtual {v3}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->enableStorageCardEncryptionPolicy()I

    goto :goto_30

    .line 908
    :cond_2d
    invoke-virtual {v3}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->disableStorageCardEncryptionPolicy()I

    .line 921
    :cond_30
    :goto_30
    if-eqz p2, :cond_5c

    .line 922
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 923
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has requested encryption of external storage"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 925
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 922
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5c} :catch_5f
    .catchall {:try_start_29 .. :try_end_5c} :catchall_5d

    .line 930
    .end local v3    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :cond_5c
    goto :goto_67

    :catchall_5d
    move-exception v0

    goto :goto_6c

    .line 927
    :catch_5f
    move-exception v3

    .line 928
    .local v3, "e":Ljava/lang/Exception;
    :try_start_60
    const-string/jumbo v4, "is External Storage Encrypted?"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_5d

    .line 930
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    nop

    .line 932
    return-void

    .line 930
    :goto_6c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    throw v0
.end method

.method public setInternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .line 846
    const-string v0, "SecurityPolicy"

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 847
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 848
    return-void

    .line 849
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 851
    .local v1, "token":J
    :try_start_e
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    .line 852
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 853
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p2, :cond_2a

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 854
    const-string v4, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_26} :catch_aa
    .catchall {:try_start_e .. :try_end_26} :catchall_a8

    .line 885
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    return-void

    .line 857
    :cond_2a
    if-nez p2, :cond_3c

    :try_start_2c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 858
    const-string/jumbo v4, "setInternalStorageEncryption : Not encrypted"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_aa
    .catchall {:try_start_2c .. :try_end_38} :catchall_a8

    .line 885
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 859
    return-void

    .line 861
    :cond_3c
    if-eqz p2, :cond_4e

    :try_start_3e
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 862
    const-string/jumbo v4, "setInternalStorageEncryption : device is already encrypted"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_aa
    .catchall {:try_start_3e .. :try_end_4a} :catchall_a8

    .line 885
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    return-void

    .line 865
    :cond_4e
    :try_start_4e
    const-string/jumbo v4, "setInternalStorageEncryption : Launching Encrption activity"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    if-eqz p2, :cond_a7

    .line 868
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncryptedbyDefaultKey(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    const/high16 v5, 0x10000000

    if-eqz v4, :cond_6e

    .line 869
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.app.action.START_CRYPT_INTERSTITIAL"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 870
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 871
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 872
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_7d

    .line 873
    :cond_6e
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.app.action.START_ENCRYPTION"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 875
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 877
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_7d
    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 878
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has requested encryption of internal storage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 880
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 877
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_a7} :catch_aa
    .catchall {:try_start_4e .. :try_end_a7} :catchall_a8

    .line 885
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_a7
    goto :goto_b2

    :catchall_a8
    move-exception v0

    goto :goto_b7

    .line 882
    :catch_aa
    move-exception v3

    .line 883
    .local v3, "e":Ljava/lang/Exception;
    :try_start_ab
    const-string/jumbo v4, "is Internal Storage Encrypted?"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_a8

    .line 885
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_b2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    nop

    .line 887
    return-void

    .line 885
    :goto_b7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    throw v0
.end method

.method public setMediator(Lcom/android/server/enterprise/common/KeyCodeMediator;)V
    .registers 3
    .param p1, "mediator"    # Lcom/android/server/enterprise/common/KeyCodeMediator;

    .line 2235
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    if-nez v0, :cond_9

    .line 2236
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/common/KeyCodeMediator;

    .line 2237
    invoke-interface {p1, p0}, Lcom/android/server/enterprise/common/KeyCodeMediator;->registerCallback(Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;)V

    .line 2239
    :cond_9
    return-void
.end method

.method public setRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .line 984
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 985
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 988
    .local v0, "token":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    .line 989
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 990
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_1b
    .catchall {:try_start_7 .. :try_end_14} :catchall_19

    .line 995
    nop

    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    goto :goto_3b

    .line 995
    :catchall_19
    move-exception v2

    goto :goto_3c

    .line 991
    :catch_1b
    move-exception v2

    .line 992
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v3, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireDeviceEncryption Ex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_19

    .line 995
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_15

    .line 997
    :goto_3b
    return-void

    .line 995
    :goto_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    throw v2
.end method

.method public setRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .line 1018
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1019
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1022
    .local v0, "token":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    .line 1023
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1024
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-boolean v3, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    invoke-virtual {v2, p2, p3, v3}, Landroid/app/admin/DevicePolicyManager;->semSetRequireStorageCardEncryption(Landroid/content/ComponentName;ZZ)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_1c
    .catchall {:try_start_7 .. :try_end_16} :catchall_1a

    .line 1029
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1030
    goto :goto_3c

    .line 1029
    :catchall_1a
    move-exception v2

    goto :goto_3d

    .line 1025
    :catch_1c
    move-exception v2

    .line 1026
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1d
    const-string v3, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequireStorageCardEncryption Ex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_1a

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_16

    .line 1031
    :goto_3c
    return-void

    .line 1029
    :goto_3d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1030
    throw v2
.end method

.method public startBannerService(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 495
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/4 v1, 0x0

    const-string v2, "SecurityPolicy"

    if-eqz v0, :cond_25

    .line 496
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBannerService() emergency mode on and user not owner :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return v1

    .line 502
    :cond_25
    const-string/jumbo v0, "startBannerService() emergency service is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_2b
    const/4 v0, 0x0

    .line 505
    .local v0, "ret":Z
    if-eqz p1, :cond_3a

    sget-object v3, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 506
    :cond_3a
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 507
    .local v3, "intentBanner":Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v4, "com.samsung.android.mdm"

    const-string v5, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_5e

    const/4 v1, 0x1

    :cond_5e
    move v0, v1

    .line 512
    .end local v3    # "intentBanner":Landroid/content/Intent;
    :cond_5f
    if-nez v0, :cond_7e

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBannerService() failed. userId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ret = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_7e
    return v0
.end method

.method public stopBannerService(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "ret":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 520
    .local v1, "intentBanner":Landroid/content/Intent;
    const-string v2, "com.samsung.android.mdm"

    const-string v3, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    .line 522
    if-nez v0, :cond_39

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopBannerService() failed. userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecurityPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_39
    return v0
.end method

.method public systemReady()V
    .registers 3

    .line 2163
    const-string v0, "SecurityPolicy"

    const-string/jumbo v1, "systemReady()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    return-void
.end method

.method public wipeDevice(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "flags"    # I

    .line 1516
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1517
    const/4 v0, 0x1

    return v0
.end method
