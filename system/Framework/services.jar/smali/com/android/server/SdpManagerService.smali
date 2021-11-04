.class public Lcom/android/server/SdpManagerService;
.super Landroid/os/ISdpManagerService$Stub;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$LocalService;,
        Lcom/android/server/SdpManagerService$SdpManagerProxy;,
        Lcom/android/server/SdpManagerService$SdpHandler;,
        Lcom/android/server/SdpManagerService$SecureFileSystemManager;,
        Lcom/android/server/SdpManagerService$KnoxUtil;,
        Lcom/android/server/SdpManagerService$SecureUtil;,
        Lcom/android/server/SdpManagerService$FileUtil;,
        Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;,
        Lcom/android/server/SdpManagerService$StateListener;,
        Lcom/android/server/SdpManagerService$ListenerRoll;,
        Lcom/android/server/SdpManagerService$SdpEngineDatabase;,
        Lcom/android/server/SdpManagerService$VirtualLockClient;
    }
.end annotation


# static fields
.field private static final ALIAS_EPHEMERAL_KEY:Ljava/lang/String; = "SdpEphemeralKey"

.field private static final ALIAS_EPHEMERAL_TOKEN:Ljava/lang/String; = "SdpEphemeralToken"

.field private static final ALIAS_RESET_TOKEN:Ljava/lang/String; = "SdpResetToken"

.field private static final ALIAS_SECURE_DATA_KEY:Ljava/lang/String; = "SdpSecureDataKey"

.field private static final ALIAS_SESSION_KEY:Ljava/lang/String; = "SdpSessionKey"

.field private static final ALIAS_TOKEN_HANDLE:Ljava/lang/String; = "SdpTokenHandle"

.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final DATA_ENGINEID:Ljava/lang/String; = "engineId"

.field private static final DATA_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final DATA_STATE:Ljava/lang/String; = "state"

.field private static final DATA_USERID:Ljava/lang/String; = "userId"

.field public static final DEFAULT_KEY_LEN:I = 0x20

.field private static final DEFAULT_LEGACY_RESET_TIMEOUT:J = 0xdbba0L

.field private static final DEFAULT_USER_ENGINE_ID:I = 0x0

.field private static final DEVICE_OWNER_CLEARED_KEY:Ljava/lang/String; = "do_cleared"

.field private static final DEVICE_SUPPORT_CMFA:Z

.field private static final DEVICE_SUPPORT_KNOX:Z

.field private static final DEVICE_SUPPORT_SDP:Z

.field private static final EMPTY_STRING:Ljava/lang/String;

.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field private static final MSG_CLEANUP_USER:I = 0x9

.field private static final MSG_DEVICE_OWNER_CLEARED:I = 0xa

.field private static final MSG_ENFORCE_CHANGE_PASSWORD:I = 0xe

.field private static final MSG_LEGACY_RESET_PASSWORD:I = 0xd

.field private static final MSG_LEGACY_RESET_TIMEOUT:I = 0xc

.field private static final MSG_LOCK:I = 0x2

.field private static final MSG_PACKAGE_REMOVED:I = 0x4

.field private static final MSG_SP_FULL_MIGRATION:I = 0xb

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_STATE_CHANGE:I = 0xf

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final MSG_UNLOCK:I = 0x3

.field private static final MSG_UNLOCK_USER:I = 0x8

.field private static final MSG_USER_ADDED:I = 0x5

.field private static final MSG_USER_REMOVED:I = 0x6

.field private static final NULL_USER:Landroid/content/pm/UserInfo;

.field public static final SDK_CURRENT_VERSION:D = 1.3

.field public static final SDK_NOT_SUPPORTED:D = 0.0

.field public static final SDK_VERSION_1_0:D = 1.0

.field public static final SDK_VERSION_1_1:D = 1.1

.field public static final SDK_VERSION_1_2:D = 1.2

.field public static final SDK_VERSION_1_3:D = 1.3

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_LATEST_VERSION:I = 0x6

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final SDP_VERSION_1:I = 0x1

.field public static final SDP_VERSION_2:I = 0x2

.field public static final SDP_VERSION_3:I = 0x3

.field public static final SDP_VERSION_4:I = 0x4

.field public static final SDP_VERSION_5:I = 0x5

.field public static final SDP_VERSION_6:I = 0x6

.field public static final SDP_VERSION_DISABLED:I = 0x0

.field private static final SERVICE_NAME:Ljava/lang/String; = "SdpManagerService"

.field private static final SYSTEM_USER_ENGINE_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SdpManagerService"

.field private static final TAG_RECV:Ljava/lang/String; = "SdpManagerService.receiver"

.field private static mSystemReady:Z


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private final mBinderListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsHandlerReady:Z

.field private mKeyProtector:Lcom/android/server/KeyProtector;

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/SdpManagerService$ListenerRoll;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mManagedCredentialMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mManagedTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mPackageEventReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private final mSdpDatabaseCache:Lcom/android/server/sdp/SdpDatabaseCache;

.field private mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

.field private final mSdpEngineDbLock:Ljava/lang/Object;

.field private final mSdpEngineMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

.field private mSdpManagerInternal:Lcom/android/server/sdp/SdpManagerInternal;

.field private mSdpManagerProxy:Lcom/android/server/SdpManagerService$SdpManagerProxy;

.field private mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

.field private mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 310
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SdpManagerService;->mSystemReady:Z

    .line 315
    new-instance v1, Landroid/content/pm/UserInfo;

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v0}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/SdpManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    .line 316
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;

    .line 349
    invoke-static {}, Lcom/android/server/SdpManagerService$KnoxUtil;->isKnoxSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    .line 350
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_SDP:Z

    .line 351
    sput-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_CMFA:Z

    .line 352
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 319
    invoke-direct {p0}, Landroid/os/ISdpManagerService$Stub;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    .line 192
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    .line 193
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    .line 196
    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 269
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mManagedCredentialMap:Ljava/util/Map;

    .line 270
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mManagedTokenMap:Ljava/util/Map;

    .line 280
    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    .line 281
    iput-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 2558
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    .line 2783
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    .line 3999
    new-instance v1, Lcom/android/server/SdpManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/SdpManagerService$1;-><init>(Lcom/android/server/SdpManagerService;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4024
    new-instance v1, Lcom/android/server/SdpManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/SdpManagerService$2;-><init>(Lcom/android/server/SdpManagerService;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mPackageEventReceiver:Landroid/content/BroadcastReceiver;

    .line 4059
    new-instance v1, Lcom/android/server/SdpManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/SdpManagerService$3;-><init>(Lcom/android/server/SdpManagerService;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    .line 320
    const-string v1, "SdpManagerService"

    const-string v2, "SdpManagerService init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    .line 322
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    .line 323
    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    .line 324
    const-string v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 327
    new-instance v1, Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-direct {v1, p0, p0}, Lcom/android/server/SdpManagerService$VirtualLockClient;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    .line 328
    new-instance v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {v1, p0, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 330
    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 333
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 335
    new-instance v1, Lcom/android/server/sdp/SdpDatabaseCache;

    invoke-direct {v1, p1}, Lcom/android/server/sdp/SdpDatabaseCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpDatabaseCache:Lcom/android/server/sdp/SdpDatabaseCache;

    .line 337
    new-instance v1, Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;-><init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/SdpManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .line 339
    new-instance v1, Lcom/android/server/SdpServiceKeeper;

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/SdpServiceKeeper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    .line 341
    const-class v1, Lcom/android/server/sdp/SdpManagerInternal;

    new-instance v2, Lcom/android/server/SdpManagerService$LocalService;

    invoke-direct {v2, p0, v0}, Lcom/android/server/SdpManagerService$LocalService;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 343
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->readEngineList()V

    .line 345
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService;->systemReady()V

    .line 346
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/SdpManagerService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .line 172
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SdpManagerService;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/SdpManagerService;[BJ[BJI)Z
    .registers 9
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # J
    .param p4, "x3"    # [B
    .param p5, "x4"    # J
    .param p7, "x5"    # I

    .line 172
    invoke-direct/range {p0 .. p7}, Lcom/android/server/SdpManagerService;->changeToken([BJ[BJI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;
    .param p3, "x3"    # Ljava/lang/String;

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .registers 1

    .line 172
    sget-object v0, Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/SdpManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/SdpManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleEmptyListenerRoll(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/SdpManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/SdpManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->quickMessage(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/SdpManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->onManagedProfileUnavailable(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/SdpManagerService;ILandroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->quickMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/SdpManagerService;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/SdpManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/SdpManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->lockKeystore(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/SdpManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->initInternalEngineInfo(I)V

    return-void
.end method

.method static synthetic access$4000()Z
    .registers 1

    .line 172
    sget-boolean v0, Lcom/android/server/SdpManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$4100()Z
    .registers 1

    .line 172
    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_CMFA:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getSdpManagerInternal()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/SdpManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/SdpManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->onSystemReady()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/SdpManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/SdpManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserAdded(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/SdpManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserRemoved(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/SdpManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleStartUser(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/SdpManagerService;Ljava/io/File;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Ljava/io/File;

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/SdpManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleCleanupUser(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/SdpManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->handleDeviceOwnerCleared()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/SdpManagerService;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->handleSendBroadcastForStateChange(III)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getStorageManager()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/SdpManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/SdpManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getMasterKeyVersion(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/SdpManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->setMasterKeyVersion(II)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/SdpManagerService;[B[BI)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->rewrapSdpKeys([B[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/SdpManagerService;Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->checkCredential(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettings()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .line 172
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private addEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILjava/lang/String;Ljava/lang/String;)I
    .registers 26
    .param p1, "param"    # Lcom/samsung/android/knox/sdp/core/SdpCreationParam;
    .param p2, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "resetToken"    # Ljava/lang/String;

    .line 820
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v0

    const/16 v2, 0x20

    if-eqz v0, :cond_13

    .line 821
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_17

    .line 822
    :cond_13
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v0

    :goto_17
    move-object v10, v0

    .line 823
    .local v10, "token":[B
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v11

    .line 824
    .local v11, "sessionKey":[B
    const/4 v0, 0x0

    .line 825
    .local v0, "masterKey":[B
    const/4 v12, 0x0

    .line 827
    .local v12, "handleBytes":[B
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v13

    .line 828
    .local v13, "virtualId":I
    const/16 v2, -0xe

    .line 831
    .local v2, "ret":I
    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clean(I)V

    .line 832
    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clearLock(I)V

    .line 833
    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    .line 834
    invoke-virtual {v3, v9, v10, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->establish(Ljava/lang/String;[BI)J

    move-result-wide v14

    .line 835
    .local v14, "handle":J
    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    .line 836
    invoke-virtual {v3, v9, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v16

    .line 837
    .local v16, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    nop

    .line 838
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v3

    move-object v7, v3

    .line 837
    .end local v0    # "masterKey":[B
    .local v7, "masterKey":[B
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 839
    goto :goto_57

    .line 841
    :cond_47
    nop

    .line 842
    invoke-direct {v1, v14, v15, v13}, Lcom/android/server/SdpManagerService;->saveTokenHandleViaProtector(JI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 841
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 843
    nop

    .line 856
    .end local v14    # "handle":J
    .end local v16    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_57
    move-object/from16 v18, v7

    goto :goto_90

    .line 845
    .restart local v14    # "handle":J
    .restart local v16    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_5a
    nop

    .line 846
    invoke-direct {v1, v8, v7}, Lcom/android/server/SdpManagerService;->addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v0

    move/from16 v17, v0

    .end local v2    # "ret":I
    .local v17, "ret":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 845
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 847
    move-object/from16 v18, v7

    move/from16 v2, v17

    goto :goto_90

    .line 849
    :cond_70
    iget-object v2, v1, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    .line 851
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 850
    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p2

    move-object/from16 v18, v7

    .end local v7    # "masterKey":[B
    .local v18, "masterKey":[B
    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I

    move-result v0

    move v2, v0

    .end local v17    # "ret":I
    .restart local v2    # "ret":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 849
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 856
    .end local v14    # "handle":J
    .end local v16    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_90
    :goto_90
    const/4 v0, 0x1

    if-eqz v2, :cond_bf

    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add engine :: Failed with error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SdpManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clean(I)V

    .line 860
    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v3, v13}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clearLock(I)V

    .line 861
    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v4, v1, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    goto :goto_10e

    .line 863
    :cond_bf
    move/from16 v5, p3

    move/from16 v6, p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add engine - Sucessfully done with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SdpManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    .line 866
    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 867
    :try_start_e3
    iget-object v4, v1, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v13, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 868
    iget-object v4, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    invoke-static {v4, v8}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 869
    iget-object v4, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 870
    monitor-exit v3
    :try_end_f3
    .catchall {:try_start_e3 .. :try_end_f3} :catchall_11d

    .line 872
    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v4, "SdpSessionKey"

    invoke-virtual {v3, v11, v4, v13}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    .line 873
    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v4, "SdpTokenHandle"

    invoke-virtual {v3, v12, v4, v13}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    .line 874
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 875
    iget-object v3, v1, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v4, "SdpResetToken"

    invoke-virtual {v3, v10, v4, v13}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    .line 878
    :cond_10e
    :goto_10e
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    aput-object v11, v3, v0

    const/4 v0, 0x2

    aput-object v10, v3, v0

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    .line 879
    return v2

    .line 870
    :catchall_11d
    move-exception v0

    :try_start_11e
    monitor-exit v3
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    throw v0
.end method

.method private addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I
    .registers 6
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "masterKey"    # [B

    .line 891
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 892
    const/16 v0, -0x63

    return v0

    .line 894
    :cond_12
    nop

    .line 895
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v2

    invoke-static {v0, v2, p2}, Lcom/android/server/SdpManagerService;->nativeOnUserAdded(II[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 894
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add engine - failed to create engine due to native error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/16 v0, -0xb

    return v0

    .line 900
    :cond_46
    return v1
.end method

.method private assignEngineId(Ljava/lang/String;)I
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .line 1424
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v0

    .line 1426
    .local v0, "id":I
    if-gez v0, :cond_45

    .line 1427
    const/16 v1, 0x3e8

    .line 1428
    .local v1, "candidateId":I
    const-string v2, "SdpManagerService"

    const-string v3, "custom engine. assign custom engine id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1430
    :goto_12
    :try_start_12
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1431
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1432
    :cond_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_42

    .line 1434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom engine : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", id assigned. ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return v1

    .line 1432
    :catchall_42
    move-exception v3

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v3

    .line 1437
    .end local v1    # "candidateId":I
    :cond_45
    return v0
.end method

.method private bootInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 10
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1015
    const/16 v0, -0x63

    .line 1016
    .local v0, "ret":I
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    .line 1018
    .local v1, "engineId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boot - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    .line 1022
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 1024
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    .line 1022
    const-string v6, "boot - [ Detected version : %d, Latest version : %d ]"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "SdpManagerService"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v3

    if-eq v3, v4, :cond_62

    .line 1027
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/SdpManagerService;->onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v3

    if-eqz v3, :cond_55

    .line 1028
    const-string v3, "SdpManagerService"

    const-string v4, "boot - Migration failed"

    invoke-static {v3, v4}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_55
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1031
    :try_start_58
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1032
    monitor-exit v3

    goto :goto_62

    :catchall_5f
    move-exception v2

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_5f

    throw v2

    .line 1035
    :cond_62
    :goto_62
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1036
    :try_start_65
    invoke-direct {p0, p1, v7}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 1037
    monitor-exit v3
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_9f

    .line 1039
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->generateAndSaveSessionKey(I)Z

    move-result v3

    .line 1040
    .local v3, "res":Z
    new-array v4, v2, [Ljava/lang/Object;

    .line 1041
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v7

    .line 1040
    const-string v6, "Boot - Prepare session key for engine %d [ res : %s ]"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1043
    new-array v2, v2, [Ljava/lang/Object;

    .line 1044
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    .line 1043
    const-string v4, "Boot - Engine %d boot completed! [ rc : %d ]"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1046
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->loadInternalEngineInfo(I)V

    .line 1047
    return v0

    .line 1037
    .end local v3    # "res":Z
    :catchall_9f
    move-exception v2

    :try_start_a0
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v2
.end method

.method private bootNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 6
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1056
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1057
    .local v0, "engineId":I
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v1

    .line 1059
    .local v1, "userId":I
    nop

    .line 1060
    invoke-static {v0, v1}, Lcom/android/server/SdpManagerService;->nativeOnBoot(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1059
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bootNative - Failed with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/16 v2, -0xb

    return v2

    .line 1064
    :cond_34
    const/4 v2, 0x0

    return v2
.end method

.method private cacheManagedCredential([BI)V
    .registers 5
    .param p1, "credential"    # [B
    .param p2, "userId"    # I

    .line 1888
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/SdpManagerService;->cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V

    .line 1889
    return-void
.end method

.method private cacheManagedToken([BI)V
    .registers 5
    .param p1, "token"    # [B
    .param p2, "userId"    # I

    .line 1905
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/SdpManagerService;->cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V

    .line 1906
    return-void
.end method

.method private cacheSafe(Ljava/util/Map;Ljava/lang/String;[BI)V
    .registers 11
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/lang/String;",
            "[BI)V"
        }
    .end annotation

    .line 1802
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    if-eqz p1, :cond_70

    if-nez p3, :cond_5

    goto :goto_70

    .line 1804
    :cond_5
    const/4 v0, 0x0

    .line 1805
    .local v0, "sessionKey":[B
    const/4 v1, 0x0

    .line 1807
    .local v1, "ciphertext":[B
    monitor-enter p1

    .line 1809
    nop

    .line 1810
    :try_start_9
    invoke-direct {p0, p4}, Lcom/android/server/SdpManagerService;->getSessionKeyViaProtector(I)[B

    move-result-object v2

    move-object v0, v2

    .line 1809
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache - Session key not found for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1812
    goto :goto_68

    .line 1814
    :cond_29
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1815
    invoke-virtual {v2, v0, p3}, Lcom/android/server/KeyProtector;->encryptFast([B[B)[B

    move-result-object v2

    move-object v1, v2

    .line 1814
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache - Fast encryption failed with user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1817
    goto :goto_68

    .line 1819
    :cond_4b
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    const-string v2, "cache - Now %s is under secure management for user %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    .line 1821
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1820
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1823
    :goto_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_9 .. :try_end_69} :catchall_6d

    .line 1824
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 1825
    return-void

    .line 1823
    :catchall_6d
    move-exception v2

    :try_start_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v2

    .line 1802
    .end local v0    # "sessionKey":[B
    .end local v1    # "ciphertext":[B
    :cond_70
    :goto_70
    return-void
.end method

.method private changeToken([BJ[BJI)Z
    .registers 20
    .param p1, "newToken"    # [B
    .param p2, "newHandle"    # J
    .param p4, "oldToken"    # [B
    .param p5, "oldHandle"    # J
    .param p7, "userId"    # I

    .line 4147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4149
    .local v1, "identity":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettings()Ljava/util/Optional;

    move-result-object v0

    new-instance v11, Lcom/android/server/-$$Lambda$SdpManagerService$0xShLJzoHTJqzxIvhJcqCsNMvB0;

    move-object v3, v11

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/server/-$$Lambda$SdpManagerService$0xShLJzoHTJqzxIvhJcqCsNMvB0;-><init>([BJ[BJI)V

    invoke-virtual {v0, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v3, 0x0

    .line 4157
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2d

    .line 4159
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4149
    return v0

    .line 4159
    :catchall_2d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4160
    throw v0
.end method

.method private checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "SdpManagerService"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 371
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred while pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0
.end method

.method private checkCredential(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "userId"    # I

    .line 4190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4192
    .local v0, "identity":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettings()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/-$$Lambda$SdpManagerService$sXKiAB46iTPguhNIiPl4NPXBRpc;

    invoke-direct {v3, p2, p1, p3}, Lcom/android/server/-$$Lambda$SdpManagerService$sXKiAB46iTPguhNIiPl4NPXBRpc;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 4210
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1d

    .line 4212
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4192
    return-object v2

    .line 4212
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4213
    throw v2
.end method

.method private checkSystemPermission()Z
    .registers 4

    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    .line 381
    const/4 v0, 0x1

    return v0

    .line 376
    :cond_a
    const-string v0, "SdpManagerService"

    const-string v1, "Require system permission."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred in pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0
.end method

.method private clearCached(Ljava/util/Map;Ljava/lang/String;I)V
    .registers 9
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1829
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    if-nez p1, :cond_3

    return-void

    .line 1831
    :cond_3
    monitor-enter p1

    .line 1832
    :try_start_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_3a

    .line 1833
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1834
    .local v0, "ciphertext":[B
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 1835
    const/4 v0, 0x0

    .line 1836
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    const-string v4, "clear - Managed %s removed for user %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 1838
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 1837
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1839
    .end local v0    # "ciphertext":[B
    goto :goto_4d

    .line 1840
    :cond_3a
    const-string v0, "clear - Managed %s not found for user %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 1841
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 1840
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1843
    :goto_4d
    monitor-exit p1

    .line 1844
    return-void

    .line 1843
    :catchall_4f
    move-exception v0

    monitor-exit p1
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method private clearInternalEngineInfo(I)V
    .registers 4
    .param p1, "engineId"    # I

    .line 3014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine info cleared for engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3015
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpDatabaseCache:Lcom/android/server/sdp/SdpDatabaseCache;

    invoke-virtual {v0, p1}, Lcom/android/server/sdp/SdpDatabaseCache;->destroy(I)V

    .line 3016
    return-void
.end method

.method private clearManageCredentialIfRequired(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3462
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3463
    return-void

    .line 3466
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasBiometricTypeTraced(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3467
    return-void

    .line 3470
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasNoSecurity(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3471
    return-void

    .line 3474
    :cond_15
    invoke-static {p1}, Lcom/android/server/SdpManagerService$KnoxUtil;->isCMFAEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3475
    return-void

    .line 3478
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->clearManagedCredential(I)V

    .line 3479
    return-void
.end method

.method private clearManagedCredential(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1892
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/SdpManagerService;->clearCached(Ljava/util/Map;Ljava/lang/String;I)V

    .line 1893
    return-void
.end method

.method private clearManagedToken(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1909
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/SdpManagerService;->clearCached(Ljava/util/Map;Ljava/lang/String;I)V

    .line 1910
    return-void
.end method

.method private deleteTokenInternal(ILjava/lang/String;)Z
    .registers 7
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 4730
    const/4 v0, 0x0

    .line 4731
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4732
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v3, p2, p1}, Lcom/android/server/KeyProtector;->exists(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4733
    invoke-direct {p0, p2, p1}, Lcom/android/server/SdpManagerService;->removeSpecificKeyViaProtector(Ljava/lang/String;I)Z

    move-result v0

    .line 4735
    :cond_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4736
    return v0
.end method

.method private doesEphemeralKeyExist(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1635
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpEphemeralKey"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->exists(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private establish([BI)Z
    .registers 23
    .param p1, "masterKey"    # [B
    .param p2, "userId"    # I

    .line 2950
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Establish new engine for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2951
    const/4 v11, 0x0

    .line 2953
    .local v11, "result":Z
    invoke-static/range {p2 .. p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_21

    .line 2954
    return v12

    .line 2956
    :cond_21
    invoke-static/range {p1 .. p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2957
    return v12

    .line 2960
    :cond_28
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v13

    .line 2961
    .local v13, "alias":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v3, v0

    move-object v4, v13

    move/from16 v5, p2

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2970
    .local v3, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2973
    .local v19, "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/sdp/core/SdpDomain;>;"
    nop

    .line 2974
    move-object/from16 v4, p1

    invoke-direct {v1, v3, v4}, Lcom/android/server/SdpManagerService;->addEngineNative(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2973
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2975
    const-string v0, "establish - Unexpected failure while native setup"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2976
    goto :goto_98

    .line 2978
    :cond_57
    iget-object v14, v1, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v15, v1, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    .line 2980
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 2979
    move-object/from16 v18, v3

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2978
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 2982
    const-string v0, "establish - Unexpected failure while policy setup"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2983
    goto :goto_98

    .line 2986
    :cond_79
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/SdpManagerService;->initInternalEngineInfo(I)V

    .line 2988
    iget-object v5, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2989
    :try_start_83
    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2990
    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    invoke-static {v0, v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 2991
    iget-object v0, v1, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 2992
    monitor-exit v5
    :try_end_97
    .catchall {:try_start_83 .. :try_end_97} :catchall_b2

    .line 2993
    const/4 v11, 0x1

    .line 2996
    :goto_98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2997
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v12

    const/4 v5, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v0, v5

    .line 2996
    const-string v5, "Result of engine establishment for user %d : %s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2998
    return v11

    .line 2992
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v5
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0
.end method

.method private generateAndSaveSessionKey(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1658
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v0

    .line 1660
    .local v0, "sessionKey":[B
    nop

    .line 1661
    :try_start_7
    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->saveSessionKeyViaProtector([BI)Z

    move-result v1

    .line 1660
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 1663
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 1660
    return v1

    .line 1663
    :catchall_13
    move-exception v1

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 1664
    throw v1
.end method

.method private getCached(Ljava/util/Map;Ljava/lang/String;I)[B
    .registers 11
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/lang/String;",
            "I)[B"
        }
    .end annotation

    .line 1847
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v0, 0x0

    .line 1848
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 1849
    .local v1, "sessionKey":[B
    const/4 v2, 0x0

    .line 1851
    .local v2, "ciphertext":[B
    monitor-enter p1

    .line 1853
    :try_start_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_27

    .line 1854
    const-string/jumbo v3, "get - Managed %s not found for user %d"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v5

    .line 1855
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    .line 1854
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1856
    goto/16 :goto_a7

    .line 1858
    :cond_27
    nop

    .line 1859
    invoke-direct {p0, p3}, Lcom/android/server/SdpManagerService;->getSessionKeyViaProtector(I)[B

    move-result-object v3

    move-object v1, v3

    .line 1858
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get - Session key not found for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1861
    goto :goto_a7

    .line 1863
    :cond_49
    nop

    .line 1864
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v2, v3

    .line 1863
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1865
    const-string/jumbo v3, "get - Empty managed %s found for user %d"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v5

    .line 1866
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    .line 1865
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1867
    goto :goto_a7

    .line 1869
    :cond_70
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1870
    invoke-virtual {v3, v1, v2}, Lcom/android/server/KeyProtector;->decryptFast([B[B)[B

    move-result-object v3

    move-object v0, v3

    .line 1869
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get - Fast decryption failed with user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1872
    goto :goto_a7

    .line 1874
    :cond_93
    const-string/jumbo v3, "get - Managed %s given for user %d"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v5

    .line 1875
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    .line 1874
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1877
    :goto_a7
    monitor-exit p1
    :try_end_a8
    .catchall {:try_start_4 .. :try_end_a8} :catchall_ac

    .line 1878
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 1879
    return-object v0

    .line 1877
    :catchall_ac
    move-exception v3

    :try_start_ad
    monitor-exit p1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v3
.end method

.method private getDeviceVersion()Ljava/lang/String;
    .registers 5

    .line 4967
    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4968
    .local v0, "version":Ljava/lang/String;
    if-eqz v0, :cond_1e

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    .line 4969
    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    .line 4968
    :goto_1f
    return-object v1
.end method

.method private getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 5
    .param p1, "id"    # I

    .line 1537
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1538
    .local v0, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-nez v0, :cond_21

    .line 1539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get - engine info not found in map  for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_21
    return-object v0
.end method

.method private getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;

    .line 1513
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1514
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1515
    .local v1, "userId":I
    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1516
    return-object v0

    .line 1518
    :cond_18
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1519
    .local v2, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1520
    return-object v0

    .line 1522
    :cond_23
    invoke-static {v1}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object p1

    .line 1525
    .end local v1    # "userId":I
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_27
    if-eqz p1, :cond_48

    .line 1526
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "nsize":I
    :goto_30
    if-ge v1, v2, :cond_48

    .line 1527
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1529
    .local v3, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1530
    return-object v3

    .line 1526
    .end local v3    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1533
    .end local v1    # "i":I
    .end local v2    # "nsize":I
    :cond_48
    return-object v0
.end method

.method private getEphemeralKeyViaProtector(I)[B
    .registers 4
    .param p1, "userId"    # I

    .line 1621
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpEphemeralKey"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private getLockSettings()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/internal/widget/ILockSettings;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_12

    .line 435
    nop

    .line 436
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 435
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 438
    :cond_12
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getLockSettingsInternal()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/internal/widget/LockSettingsInternal;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    if-nez v0, :cond_e

    .line 443
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    .line 445
    :cond_e
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getManagedCredential(I)[B
    .registers 4
    .param p1, "userId"    # I

    .line 1896
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedCredentialMap:Ljava/util/Map;

    const-string v1, "credential"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/SdpManagerService;->getCached(Ljava/util/Map;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private getManagedProfileAlias(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 1500
    const/4 v0, 0x0

    .line 1501
    .local v0, "ret":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1502
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_d

    .line 1503
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v0

    .line 1505
    :cond_d
    return-object v0
.end method

.method private getManagedToken(I)[B
    .registers 4
    .param p1, "userId"    # I

    .line 1913
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mManagedTokenMap:Ljava/util/Map;

    const-string/jumbo v1, "token"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/SdpManagerService;->getCached(Ljava/util/Map;Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private getMasterKeyVersion(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 4978
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpDatabaseCache:Lcom/android/server/sdp/SdpDatabaseCache;

    const-string/jumbo v1, "smk_ver"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/sdp/SdpDatabaseCache;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPackageManagerService()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/pm/PackageManagerService;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_10

    .line 450
    nop

    .line 451
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 453
    :cond_10
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingUid"    # I

    .line 3677
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3678
    .local v0, "pkgNames":[Ljava/lang/String;
    sget-object v1, Lcom/android/server/SdpManagerService;->EMPTY_STRING:Ljava/lang/String;

    .line 3679
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "SdpManagerService"

    if-nez v0, :cond_24

    .line 3680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackage :: Not found with caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 3682
    :cond_24
    array-length v3, v0

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v3, :cond_4b

    aget-object v5, v0, v4

    .line 3683
    .local v5, "pkgName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPackage :: found name for caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    if-eqz v5, :cond_48

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 3685
    move-object v1, v5

    .line 3682
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 3689
    :cond_4b
    :goto_4b
    return-object v1
.end method

.method private getPadded([BI)[B
    .registers 6
    .param p1, "pw"    # [B
    .param p2, "totalLen"    # I

    .line 672
    new-array v0, p2, [B

    .line 673
    .local v0, "padded":[B
    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 675
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    return-object v0
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"    # I

    .line 1474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1476
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 1477
    .local v2, "pi":Landroid/content/pm/UserInfo;
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1478
    if-eqz v2, :cond_15

    move-object v3, v2

    goto :goto_17

    :cond_15
    sget-object v3, Lcom/android/server/SdpManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    :goto_17
    return-object v3
.end method

.method private getProxy()Lcom/android/server/SdpManagerService$SdpManagerProxy;
    .registers 3

    .line 4983
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpManagerProxy:Lcom/android/server/SdpManagerService$SdpManagerProxy;

    if-nez v0, :cond_c

    .line 4984
    new-instance v0, Lcom/android/server/SdpManagerService$SdpManagerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpManagerProxy;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpManagerProxy:Lcom/android/server/SdpManagerService$SdpManagerProxy;

    .line 4986
    :cond_c
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpManagerProxy:Lcom/android/server/SdpManagerService$SdpManagerProxy;

    return-object v0
.end method

.method private getResetTokenViaProtector(I)[B
    .registers 6
    .param p1, "userId"    # I

    .line 1687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1689
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v3, "SdpResetToken"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 1691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1689
    return-object v2

    .line 1691
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1692
    throw v2
.end method

.method private getSdpManagerInternal()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/sdp/SdpManagerInternal;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpManagerInternal:Lcom/android/server/sdp/SdpManagerInternal;

    if-nez v0, :cond_e

    .line 428
    const-class v0, Lcom/android/server/sdp/SdpManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sdp/SdpManagerInternal;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpManagerInternal:Lcom/android/server/sdp/SdpManagerInternal;

    .line 430
    :cond_e
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpManagerInternal:Lcom/android/server/sdp/SdpManagerInternal;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getSessionKeyViaProtector(I)[B
    .registers 4
    .param p1, "userId"    # I

    .line 1644
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v1, "SdpSessionKey"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private getSpecificKeyViaProtector(Ljava/lang/String;I)[B
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1770
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1772
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1770
    return-object v2

    .line 1772
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1773
    throw v2
.end method

.method private getStorageManager()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/os/storage/StorageManager;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 423
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private getTokenHandleViaProtector(I)J
    .registers 9
    .param p1, "userId"    # I

    .line 1734
    const-wide/16 v0, 0x0

    .line 1735
    .local v0, "ret":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1737
    .local v2, "identity":J
    :try_start_6
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v5, "SdpTokenHandle"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1738
    .local v4, "handle":[B
    if-eqz v4, :cond_15

    .line 1739
    invoke-static {v4}, Lcom/android/server/sdp/security/BytesUtil;->bytesToLong([B)J

    move-result-wide v5
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1a

    move-wide v0, v5

    .line 1742
    .end local v4    # "handle":[B
    :cond_15
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1743
    nop

    .line 1744
    return-wide v0

    .line 1742
    :catchall_1a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1743
    throw v4
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"    # I

    .line 1466
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1468
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 1469
    .local v2, "ui":Landroid/content/pm/UserInfo;
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1470
    if-eqz v2, :cond_15

    move-object v3, v2

    goto :goto_17

    :cond_15
    sget-object v3, Lcom/android/server/SdpManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    :goto_17
    return-object v3
.end method

.method private getUserManagerInternal()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/os/UserManagerInternal;",
            ">;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_e

    .line 458
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 460
    :cond_e
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private handleCleanupUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 4859
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->cancelLegacyResetTimeout(I)V

    .line 4861
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->clearLegacyResetStatus(I)V

    .line 4867
    return-void
.end method

.method private handleDeviceOwnerCleared()V
    .registers 5

    .line 3911
    const-string v0, "Device Owner has been cleared!"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3914
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3915
    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    .line 3916
    .local v2, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_21

    .line 3917
    if-nez v2, :cond_16

    .line 3918
    const-string v0, "Device Owner engine already cleared"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_19

    .line 3920
    :cond_16
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 3922
    :goto_19
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpDatabaseCache:Lcom/android/server/sdp/SdpDatabaseCache;

    const-string v3, "do_cleared"

    invoke-virtual {v0, v1, v3, v1}, Lcom/android/server/sdp/SdpDatabaseCache;->putBoolean(ILjava/lang/String;Z)V

    .line 3924
    return-void

    .line 3916
    .end local v2    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private handleEmptyListenerRoll(I)V
    .registers 5
    .param p1, "engineId"    # I

    .line 2566
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$ListenerRoll;

    .line 2567
    .local v0, "roll":Lcom/android/server/SdpManagerService$ListenerRoll;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/SdpManagerService$ListenerRoll;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2568
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2570
    :cond_1d
    const/4 v0, 0x0

    .line 2571
    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3710
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_f2

    if-ltz p2, :cond_f2

    .line 3711
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_f2

    .line 3715
    :cond_10
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3716
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 3715
    const-string/jumbo v3, "handlePackageRemoved - PackageName : %s, UserId : %d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SdpManagerService"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_38

    .line 3719
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "handlePackageRemoved - Device is not provisioned yet..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    return-void

    .line 3723
    :cond_38
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_43

    .line 3724
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->readEngineList()V

    .line 3726
    :cond_43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3727
    .local v1, "removingEngine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;>;"
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3728
    :try_start_4b
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_52
    if-ltz v5, :cond_8f

    .line 3729
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 3730
    .local v6, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-eqz v6, :cond_8c

    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 3731
    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v7

    if-ne v7, p2, :cond_8c

    .line 3732
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePackageRemoved - Add package engine to Removing Engine "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3728
    .end local v6    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :cond_8c
    add-int/lit8 v5, v5, -0x1

    goto :goto_52

    .line 3736
    .end local v5    # "i":I
    :cond_8f
    monitor-exit v3
    :try_end_90
    .catchall {:try_start_4b .. :try_end_90} :catchall_ef

    .line 3737
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_94
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 3738
    .local v5, "sdpEngineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handlePackageRemoved - Removing Sdp Engine "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SdpManagerService"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 3740
    .end local v5    # "sdpEngineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    goto :goto_94

    .line 3742
    :cond_bf
    new-instance v3, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/SdpManagerService$FileUtil;->getEncUserDir(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3743
    .local v3, "encUserDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 3744
    new-array v0, v0, [Ljava/lang/Object;

    .line 3746
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .line 3747
    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->removePkgDir(ILjava/lang/String;)Z
    invoke-static {v2, p2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$3100(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v4

    .line 3744
    const-string/jumbo v2, "handlePackageRemoved - Remove secure package dir : %s [ res : %b ]"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    :cond_ee
    return-void

    .line 3736
    .end local v3    # "encUserDir":Ljava/io/File;
    :catchall_ef
    move-exception v0

    :try_start_f0
    monitor-exit v3
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v0

    .line 3712
    .end local v1    # "removingEngine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;>;"
    :cond_f2
    :goto_f2
    return-void
.end method

.method private handleSendBroadcastForStateChange(III)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "engineId"    # I
    .param p3, "state"    # I

    .line 2927
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.sdp.SDP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2928
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.SDP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2930
    .local v1, "intentNew":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastAsUser(INTENT_SDP_STATE_CHANGED, state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SdpManagerService"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2932
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2933
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2934
    const/high16 v5, 0x4000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2935
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2936
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2938
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendBroadcastAsUser(ACTION_SDP_STATE_CHANGED, state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    const-string v3, "com.samsung.android.knox.intent.extra.SDP_ENGINE_ID"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2940
    const-string v3, "com.samsung.android.knox.intent.extra.SDP_ENGINE_STATE"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2941
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2942
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2943
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2944
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2945
    return-void
.end method

.method private handleStartUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 4851
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 4852
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4853
    return-void

    .line 4855
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    return-void
.end method

.method private handleUserAdded(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 3752
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3753
    return-void

    .line 3756
    :cond_7
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "User %d added"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3759
    .local v1, "ui":Landroid/content/pm/UserInfo;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    .line 3760
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    .line 3759
    const-string/jumbo v5, "user added - Is user %d Bmode? %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SdpManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    new-array v4, v2, [Ljava/lang/Object;

    .line 3762
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    .line 3761
    const-string/jumbo v5, "user added - Is user %d managed profile? %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SdpManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3766
    :try_start_60
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    .line 3767
    .local v5, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_83

    .line 3768
    new-array v2, v2, [Ljava/lang/Object;

    .line 3769
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    if-eqz v5, :cond_70

    move v3, v0

    :cond_70
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3768
    const-string/jumbo v0, "user added - Has user %d sdp engine? %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    return-void

    .line 3767
    .end local v5    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_83
    move-exception v0

    :try_start_84
    monitor-exit v4
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v0
.end method

.method private handleUserRemoved(I)V
    .registers 14
    .param p1, "userId"    # I

    .line 3773
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3774
    return-void

    .line 3777
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3781
    :try_start_20
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 3782
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1c0

    .line 3783
    if-nez v1, :cond_3e

    .line 3784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove user - Engine not found with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    return-void

    .line 3788
    :cond_3e
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3790
    .local v2, "ui":Landroid/content/pm/UserInfo;
    const/16 v0, -0x63

    .line 3791
    .local v0, "ret":I
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    .line 3792
    .local v3, "engineId":I
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    .line 3793
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3792
    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v4

    .line 3794
    .end local v0    # "ret":I
    .local v4, "ret":I
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    .line 3795
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 3794
    const-string v6, "Remove user - Policy removal with id %d successfully done? %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SdpManagerService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3798
    :try_start_77
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 3799
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    invoke-static {v6, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1400(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 3800
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v6}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 3802
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 3803
    monitor-exit v5
    :try_end_8e
    .catchall {:try_start_77 .. :try_end_8e} :catchall_1bd

    .line 3804
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v6

    .line 3805
    .end local v4    # "ret":I
    .local v6, "ret":I
    new-array v0, v0, [Ljava/lang/Object;

    .line 3806
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v8

    .line 3805
    const-string v4, "Remove user - Native removal with id %d successfully done? %s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SdpManagerService"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v4, "SdpEphemeralKey"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 3810
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v4, "SdpTokenHandle"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 3811
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v4, "SdpResetToken"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 3812
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v4, "SdpSessionKey"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 3814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove user - Engine remove! "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SdpManagerService"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3818
    .local v0, "removingEngine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;>;"
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3819
    :try_start_ed
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v8

    .local v4, "i":I
    :goto_f4
    if-ltz v4, :cond_12c

    .line 3820
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 3821
    .local v5, "sinfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-eqz v5, :cond_129

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v8

    if-ne v8, p1, :cond_129

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result v8

    if-eqz v8, :cond_129

    .line 3822
    const-string v8, "SdpManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remove user - Add Custom engine to Removing Engine "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3819
    .end local v5    # "sinfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :cond_129
    add-int/lit8 v4, v4, -0x1

    goto :goto_f4

    .line 3826
    .end local v4    # "i":I
    :cond_12c
    monitor-exit v9
    :try_end_12d
    .catchall {:try_start_ed .. :try_end_12d} :catchall_1ba

    .line 3827
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_131
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 3828
    .local v5, "sdpEngineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remove user - Removing Custom engine "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SdpManagerService"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 3830
    .end local v5    # "sdpEngineInfo":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    goto :goto_131

    .line 3833
    :cond_15b
    invoke-static {p1}, Lcom/android/server/SdpManagerService$FileUtil;->getEncUserDir(I)Ljava/io/File;

    move-result-object v4

    .line 3834
    .local v4, "encUserDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1b9

    .line 3835
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing Enc user "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " directory."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3836
    nop

    .line 3837
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getPackageManagerService()Ljava/util/Optional;

    move-result-object v5

    new-instance v8, Lcom/android/server/-$$Lambda$SdpManagerService$oZUP1QCoTs7qIvt1AM-xngV6eSo;

    invoke-direct {v8, p1}, Lcom/android/server/-$$Lambda$SdpManagerService$oZUP1QCoTs7qIvt1AM-xngV6eSo;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 3838
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3836
    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a0

    .line 3839
    const-string v5, "Failed to clean enc user directory"

    invoke-static {v5}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1b9

    .line 3841
    :cond_1a0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed Enc user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " directory."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3844
    :cond_1b9
    :goto_1b9
    return-void

    .line 3826
    .end local v4    # "encUserDir":Ljava/io/File;
    :catchall_1ba
    move-exception v4

    :try_start_1bb
    monitor-exit v9
    :try_end_1bc
    .catchall {:try_start_1bb .. :try_end_1bc} :catchall_1ba

    throw v4

    .line 3803
    .end local v0    # "removingEngine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;>;"
    .end local v6    # "ret":I
    .local v4, "ret":I
    :catchall_1bd
    move-exception v0

    :try_start_1be
    monitor-exit v5
    :try_end_1bf
    .catchall {:try_start_1be .. :try_end_1bf} :catchall_1bd

    throw v0

    .line 3782
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    .end local v3    # "engineId":I
    .end local v4    # "ret":I
    :catchall_1c0
    move-exception v1

    :try_start_1c1
    monitor-exit v0
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c0

    throw v1
.end method

.method private hasBiometricTypeTraced(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 3440
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    .line 3441
    .local v0, "biometricType":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v2

    .line 3443
    .local v3, "result":Z
    :goto_d
    if-eqz v3, :cond_28

    .line 3444
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 3445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 3444
    const-string v1, "Biometrics detected for user %d [ Type : %d ]"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_3c

    .line 3447
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Biometrics not detected for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3449
    :goto_3c
    return v3
.end method

.method private hasNoSecurity(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 3453
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 3454
    .local v0, "quality":I
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    .line 3455
    .local v1, "isDisabled":Z
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 3456
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 3455
    const-string v3, "Check security - [ User ID : %d, Quality : %d, None type? %s ]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    if-nez v1, :cond_33

    if-nez v0, :cond_34

    :cond_33
    move v4, v5

    :cond_34
    return v4
.end method

.method private initInternalEngineInfo(I)V
    .registers 4
    .param p1, "engineId"    # I

    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine info initialized for engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3003
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpDatabaseCache:Lcom/android/server/sdp/SdpDatabaseCache;

    invoke-virtual {v0, p1}, Lcom/android/server/sdp/SdpDatabaseCache;->destroy(I)V

    .line 3005
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->setMasterKeyVersion(II)V

    .line 3006
    return-void
.end method

.method private isDeviceProvisioned()Z
    .registers 2

    .line 3482
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_c

    .line 3483
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 3482
    :goto_d
    return v0
.end method

.method private isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 6
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1979
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    .line 1980
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1979
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private static isLDUModel()Z
    .registers 3

    .line 1917
    invoke-static {}, Lcom/android/server/SdpManagerService;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1918
    .local v0, "salesCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isLDUModel : sales code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const-string v1, "PAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "FOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "LDU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_36

    :cond_34
    const/4 v1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v1, 0x1

    :goto_37
    return v1
.end method

.method private isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 6
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1990
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    .line 1991
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1990
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isPrivileged(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isSupportedDevice()Z
    .registers 4

    .line 1995
    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    const/4 v1, 0x0

    const-string v2, "SdpManagerService"

    if-nez v0, :cond_d

    .line 1996
    const-string v0, "Knox not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    return v1

    .line 1999
    :cond_d
    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_SDP:Z

    if-nez v0, :cond_17

    .line 2000
    const-string v0, "SDP not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    return v1

    .line 2003
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z
    .registers 6
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1968
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    .line 1969
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1968
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isSystemComponent(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$changeToken$4([BJ[BJILcom/android/internal/widget/ILockSettings;)Ljava/lang/Boolean;
    .registers 16
    .param p0, "newToken"    # [B
    .param p1, "newHandle"    # J
    .param p3, "oldToken"    # [B
    .param p4, "oldHandle"    # J
    .param p6, "userId"    # I
    .param p7, "service"    # Lcom/android/internal/widget/ILockSettings;

    .line 4151
    move-object v0, p7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    :try_start_6
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/widget/ILockSettings;->changeToken([BJ[BJI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 4153
    :catch_f
    move-exception v0

    .line 4154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4155
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$checkCredential$5(ILjava/lang/String;ILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8
    .param p0, "type"    # I
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "service"    # Lcom/android/internal/widget/ILockSettings;

    .line 4193
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 4197
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    const/4 v1, 0x4

    if-eq p0, v1, :cond_e

    .line 4202
    const/4 v1, 0x0

    .line 4203
    .local v1, "credential":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_6
    const-string v2, "SdpManagerService"

    const-string v3, "Unknown credential type"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 4199
    .end local v1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_e
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 4200
    .restart local v1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    nop

    .line 4205
    :goto_13
    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    invoke-interface {p3, v1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1c

    move-object v0, v2

    .line 4208
    .end local v1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_1b
    goto :goto_20

    .line 4206
    :catch_1c
    move-exception v1

    .line 4207
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4209
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_20
    return-object v0
.end method

.method static synthetic lambda$clearLegacyResetStatus$7(ILandroid/os/UserManagerInternal;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "userId"    # I
    .param p1, "service"    # Landroid/os/UserManagerInternal;

    .line 4928
    nop

    .line 4929
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/UserManagerInternal;->clearVolatiles(II)Z

    move-result v0

    .line 4928
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleDeviceOwnerChanged$2(ILjava/io/File;Lcom/android/server/sdp/SdpManagerInternal;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "deviceOwenrUserId"    # I
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "service"    # Lcom/android/server/sdp/SdpManagerInternal;

    .line 3892
    nop

    .line 3893
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/android/server/sdp/SdpManagerInternal;->setSdpPolicyToPath(ILjava/lang/String;)Z

    move-result v0

    .line 3892
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$handleUserRemoved$1(ILcom/android/server/pm/PackageManagerService;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .line 3837
    nop

    .line 3838
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerService;->removeEncUserDir(I)Z

    move-result v0

    .line 3837
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onLegacyResetCredentialRequested$6(ILandroid/os/UserManagerInternal;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "userId"    # I
    .param p1, "service"    # Landroid/os/UserManagerInternal;

    .line 4900
    nop

    .line 4901
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/UserManagerInternal;->setVolatiles(II)Z

    move-result v0

    .line 4900
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onMasterKeyInitialized$0(ILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Integer;
    .registers 3
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/android/internal/widget/LockSettingsInternal;

    .line 3113
    nop

    .line 3114
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockSettingsInternal;->getCredentialType(I)I

    move-result v0

    .line 3113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$verifyToken$3([BJILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .param p0, "token"    # [B
    .param p1, "tokenHandle"    # J
    .param p3, "userId"    # I
    .param p4, "service"    # Lcom/android/internal/widget/ILockSettings;

    .line 4134
    :try_start_0
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 4135
    :catch_5
    move-exception v0

    .line 4136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4137
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method

.method private loadInternalEngineInfo(I)V
    .registers 4
    .param p1, "engineId"    # I

    .line 3009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine info loaded for engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3010
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpDatabaseCache:Lcom/android/server/sdp/SdpDatabaseCache;

    invoke-virtual {v0, p1}, Lcom/android/server/sdp/SdpDatabaseCache;->preload(I)V

    .line 3011
    return-void
.end method

.method private lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 4
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 3042
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3043
    const/4 v0, -0x3

    return v0

    .line 3045
    :cond_8
    nop

    .line 3046
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/SdpManagerService;->nativeOnDeviceLocked(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3045
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3047
    const/16 v0, -0xb

    return v0

    .line 3049
    :cond_22
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3050
    const/4 v1, 0x1

    :try_start_26
    invoke-direct {p0, p1, v1}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 3051
    monitor-exit v0

    .line 3054
    const/4 v0, 0x0

    return v0

    .line 3051
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private lockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 11
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1102
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1103
    .local v0, "engineId":I
    move v1, v0

    .line 1104
    .local v1, "virtualUserId":I
    move v2, v1

    .line 1105
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: Lock engine for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SdpManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v3

    .line 1108
    .local v3, "ret":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_3b

    .line 1109
    new-array v5, v5, [Ljava/lang/Object;

    .line 1110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1109
    const-string/jumbo v6, "lock :: Successfully done for user %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->clearManagedCredential(I)V

    goto :goto_54

    .line 1113
    :cond_3b
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 1114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    .line 1113
    const-string/jumbo v5, "lock :: Failed to lock for user %d... [ rc : %d ]"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :goto_54
    return v3
.end method

.method private lockKeystore(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 4217
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 4218
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->lock(I)Z

    move-result v1

    .line 4219
    .local v1, "isKsLocked":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keystore has been locked for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " [ res : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4221
    return-void
.end method

.method private lockNative(II)I
    .registers 5
    .param p1, "engineid"    # I
    .param p2, "userid"    # I

    .line 1125
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceLocked(II)I

    move-result v0

    if-eqz v0, :cond_28

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lockNative :: failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/16 v0, -0xb

    return v0

    .line 1130
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method static native nativeOnBoot(II)I
.end method

.method static native nativeOnChangePassword(I[B[B)I
.end method

.method static native nativeOnDeviceLocked(II)I
.end method

.method static native nativeOnDeviceUnlocked(I[B)I
.end method

.method static native nativeOnMigration(IIII[B)I
.end method

.method static native nativeOnUserAdded(II[B)I
.end method

.method static native nativeOnUserRemoved(II)I
.end method

.method private onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 9
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 2892
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->clearInternalEngineInfo(I)V

    .line 2894
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    .line 2895
    :try_start_a
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    .line 2896
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2898
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v1, :cond_1a

    monitor-exit v0

    return-void

    .line 2900
    :cond_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_20
    if-ltz v2, :cond_46

    .line 2901
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_48

    .line 2903
    .local v3, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_28
    iget-object v4, v3, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    invoke-interface {v4}, Landroid/os/ISdpListener;->onEngineRemoved()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_37
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_48

    .line 2909
    goto :goto_43

    .line 2907
    :catch_2e
    move-exception v4

    .line 2908
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2f
    const-string v5, "SdpManagerService"

    const-string v6, "Listener failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 2904
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_37
    move-exception v4

    .line 2905
    .local v4, "rex":Landroid/os/RemoteException;
    const-string v5, "SdpManagerService"

    const-string v6, "Listener dead"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2909
    nop

    .line 2900
    .end local v3    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v4    # "rex":Landroid/os/RemoteException;
    :goto_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 2911
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    .end local v2    # "i":I
    :cond_46
    monitor-exit v0

    .line 2912
    return-void

    .line 2911
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private onManagedProfileUnavailable(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 3412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Managed profile user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " got unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3415
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 3416
    .local v0, "am":Lcom/android/server/wm/ActivityTaskManagerInternal;
    if-eqz v0, :cond_33

    .line 3417
    const/4 v1, 0x0

    const-string v2, "com.android.settings/.password.ChooseLockGeneric$InternalActivity"

    const-string v3, "Managed profile unavaliable"

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeTaskByCmpName(Ljava/lang/String;ILjava/lang/String;)V

    .line 3421
    .end local v0    # "am":Lcom/android/server/wm/ActivityTaskManagerInternal;
    :cond_33
    return-void
.end method

.method private onMigrationInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;[B)I
    .registers 6
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "cmk"    # [B

    .line 2482
    if-nez p1, :cond_4

    const/4 v0, -0x3

    return v0

    .line 2484
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMigrationInternal :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v0

    .line 2487
    .local v0, "currentVersion":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 2488
    add-int/lit8 v0, v0, 0x1

    .line 2491
    :cond_28
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 2492
    add-int/lit8 v0, v0, 0x1

    .line 2495
    :cond_2d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_32

    .line 2496
    add-int/lit8 v0, v0, 0x1

    .line 2499
    :cond_32
    const/4 v1, 0x4

    if-ne v0, v1, :cond_37

    .line 2500
    add-int/lit8 v0, v0, 0x1

    .line 2503
    :cond_37
    const/4 v1, 0x5

    if-ne v0, v1, :cond_55

    .line 2504
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "onMigrationInternal :: version 5 -> 6)"

    invoke-static {v1, v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2506
    add-int/lit8 v2, v0, 0x1

    .line 2507
    .end local v0    # "currentVersion":I
    .local v2, "currentVersion":I
    :try_start_47
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setVersion(I)V

    .line 2508
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 2510
    monitor-exit v1

    move v0, v2

    goto :goto_55

    :catchall_52
    move-exception v0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_52

    throw v0

    .line 2512
    .end local v2    # "currentVersion":I
    .restart local v0    # "currentVersion":I
    :cond_55
    :goto_55
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "onMigrationInternal :: DONE"

    invoke-static {v1, v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    const/4 v1, 0x0

    return v1
.end method

.method private onStateChange(II)V
    .registers 14
    .param p1, "engineId"    # I
    .param p2, "state"    # I

    .line 2742
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 2743
    :try_start_3
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SdpManagerService$ListenerRoll;

    .line 2745
    .local v1, "roll":Lcom/android/server/SdpManagerService$ListenerRoll;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4f

    .line 2746
    invoke-virtual {v1}, Lcom/android/server/SdpManagerService$ListenerRoll;->get()Ljava/util/ArrayList;

    move-result-object v4

    .line 2747
    .local v4, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$StateListener;>;"
    const/4 v5, 0x0

    .line 2753
    .local v5, "noError":Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .line 2754
    .local v6, "idx":I
    :goto_1d
    if-ltz v6, :cond_4c

    .line 2755
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/SdpManagerService$StateListener;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_92

    .line 2757
    .local v7, "stateListener":Lcom/android/server/SdpManagerService$StateListener;
    :try_start_25
    invoke-virtual {v7}, Lcom/android/server/SdpManagerService$StateListener;->get()Landroid/os/ISdpListener;

    move-result-object v8

    .line 2758
    .local v8, "sdpListener":Landroid/os/ISdpListener;
    if-eqz v8, :cond_2d

    move v9, v3

    goto :goto_2e

    :cond_2d
    move v9, v2

    :goto_2e
    move v5, v9

    if-eqz v9, :cond_34

    .line 2759
    invoke-interface {v8, p2}, Landroid/os/ISdpListener;->onStateChange(I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_34} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_35
    .catchall {:try_start_25 .. :try_end_34} :catchall_92

    .line 2765
    .end local v8    # "sdpListener":Landroid/os/ISdpListener;
    :cond_34
    goto :goto_43

    .line 2763
    :catch_35
    move-exception v8

    .line 2764
    .local v8, "e":Ljava/lang/Exception;
    :try_start_36
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    .line 2761
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3a
    move-exception v8

    .line 2762
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "SdpManagerService"

    const-string v10, "Listener might be dead..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    nop

    .line 2767
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_43
    if-nez v5, :cond_48

    .line 2768
    invoke-virtual {v7}, Lcom/android/server/SdpManagerService$StateListener;->dispose()V

    .line 2754
    .end local v7    # "stateListener":Lcom/android/server/SdpManagerService$StateListener;
    :cond_48
    add-int/lit8 v6, v6, -0x1

    const/4 v5, 0x0

    goto :goto_1d

    .line 2771
    .end local v6    # "idx":I
    :cond_4c
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleEmptyListenerRoll(I)V

    .line 2774
    .end local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$StateListener;>;"
    .end local v5    # "noError":Z
    :cond_4f
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5d

    .line 2775
    move v4, v2

    goto :goto_6d

    :cond_5d
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SdpManagerService$ListenerRoll;

    invoke-virtual {v4}, Lcom/android/server/SdpManagerService$ListenerRoll;->size()I

    move-result v4

    .line 2776
    .local v4, "size":I
    :goto_6d
    const-string v5, "SdpManagerService"

    const-string/jumbo v6, "onStateChange :: Engine Id : %d, State : %d, Roll Size : %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 2778
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    .line 2777
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2776
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    nop

    .end local v1    # "roll":Lcom/android/server/SdpManagerService$ListenerRoll;
    .end local v4    # "size":I
    monitor-exit v0

    .line 2780
    return-void

    .line 2779
    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_36 .. :try_end_94} :catchall_92

    throw v1
.end method

.method private onStateChange(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V
    .registers 10
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "state"    # I

    .line 2870
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    .line 2871
    :try_start_3
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    .line 2872
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2874
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v1, :cond_13

    monitor-exit v0

    return-void

    .line 2876
    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_3f

    .line 2877
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_41

    .line 2879
    .local v3, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_21
    iget-object v4, v3, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    invoke-interface {v4, p2}, Landroid/os/ISdpListener;->onStateChange(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_30
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_27
    .catchall {:try_start_21 .. :try_end_26} :catchall_41

    .line 2885
    goto :goto_3c

    .line 2883
    :catch_27
    move-exception v4

    .line 2884
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_28
    const-string v5, "SdpManagerService"

    const-string v6, "Listener failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 2880
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_30
    move-exception v4

    .line 2881
    .local v4, "rex":Landroid/os/RemoteException;
    const-string v5, "SdpManagerService"

    const-string v6, "Listener dead"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2885
    nop

    .line 2876
    .end local v3    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v4    # "rex":Landroid/os/RemoteException;
    :goto_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 2887
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    .end local v2    # "i":I
    :cond_3f
    monitor-exit v0

    .line 2888
    return-void

    .line 2887
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private onSystemReady()V
    .registers 5

    .line 404
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->registerReceiver()V

    .line 406
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->updateDeviceOwnerStatus()V

    .line 408
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady()V
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$300(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)V

    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "nsize":I
    :goto_12
    if-ge v0, v1, :cond_26

    .line 411
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 412
    .local v2, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v3

    .line 414
    .local v3, "engineId":I
    invoke-virtual {p0, v3}, Lcom/android/server/SdpManagerService;->boot(I)I

    .line 410
    .end local v2    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .end local v3    # "engineId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 417
    .end local v0    # "i":I
    .end local v1    # "nsize":I
    :cond_26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/SdpManagerService;->mSystemReady:Z

    .line 418
    return-void
.end method

.method private quickMessage(I)V
    .registers 4
    .param p1, "what"    # I

    .line 3945
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_e

    .line 3946
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_24

    .line 3948
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send a message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    :goto_24
    return-void
.end method

.method private quickMessage(II)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg"    # I

    .line 3953
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_f

    .line 3954
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_25

    .line 3956
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send a message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    :goto_25
    return-void
.end method

.method private quickMessage(III)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 3961
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_e

    .line 3962
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_24

    .line 3964
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send a message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    :goto_24
    return-void
.end method

.method private quickMessage(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 3969
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    .line 3971
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3972
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3973
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3974
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_29

    .line 3975
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send a message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    :goto_29
    return-void
.end method

.method private quickMessageDelayed(ILjava/lang/Object;J)V
    .registers 9
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delay"    # J

    .line 3927
    const/4 v0, 0x0

    .line 3929
    .local v0, "res":Z
    iget-boolean v1, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v1, :cond_2b

    .line 3930
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/SdpManagerService$SdpHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3931
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/SdpManagerService$SdpHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3933
    :cond_12
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3934
    .local v1, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_25

    .line 3935
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/SdpManagerService$SdpHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_2b

    .line 3937
    :cond_25
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v2, v1, p3, p4}, Lcom/android/server/SdpManagerService$SdpHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    .line 3940
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2b
    :goto_2b
    if-nez v0, :cond_43

    .line 3941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send a message delayed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    :cond_43
    return-void
.end method

.method private readEngineList()V
    .registers 13

    .line 2007
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2008
    return-void

    .line 2011
    :cond_7
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2012
    :try_start_a
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 2013
    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1600(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v1

    .line 2015
    .local v1, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_84

    .line 2016
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_83

    .line 2017
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2018
    .local v3, "id":I
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2020
    .local v4, "alias":Ljava/lang/String;
    const-string v5, "SdpManagerService"

    const-string/jumbo v6, "read engine - [%s, %d] found in engine list"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    .line 2021
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v8, v11

    .line 2020
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-static {v5, v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    .line 2024
    .local v5, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-eqz v5, :cond_6a

    .line 2025
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read engine - Put "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2028
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    invoke-virtual {v6, v5}, Lcom/android/server/SdpServiceKeeper;->loadPolicy(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    goto :goto_80

    .line 2030
    :cond_6a
    const-string v6, "SdpManagerService"

    const-string/jumbo v8, "read engine - Can\'t find engine info with [%s, %d]"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v9

    .line 2031
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v11

    .line 2030
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    .end local v3    # "id":I
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .end local v2    # "i":I
    :cond_83
    goto :goto_8c

    .line 2035
    :cond_84
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "read engine - No any engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    .end local v1    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :goto_8c
    monitor-exit v0

    .line 2038
    return-void

    .line 2037
    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_a .. :try_end_90} :catchall_8e

    throw v1
.end method

.method private static readOMCSalesCode()Ljava/lang/String;
    .registers 4

    .line 1923
    const-string v0, ""

    .line 1925
    .local v0, "sales_code":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v1, "persist.omc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1926
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1927
    :cond_12
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1928
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1929
    :cond_22
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2b

    move-object v0, v1

    .line 1934
    :cond_2a
    goto :goto_34

    .line 1932
    :catch_2b
    move-exception v1

    .line 1933
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "readOMCSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_34
    if-nez v0, :cond_39

    .line 1936
    const-string v1, ""

    return-object v1

    .line 1938
    :cond_39
    return-object v0
.end method

.method private recordException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 2469
    if-eqz p1, :cond_29

    if-nez p2, :cond_5

    goto :goto_29

    .line 2471
    :cond_5
    const-string v0, "Leave a trace of the exception...!"

    invoke-static {p1, v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    :try_start_11
    invoke-virtual {p2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2475
    .local v0, "stacks":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 2476
    .local v3, "stack":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_26

    .line 2475
    .end local v3    # "stack":Ljava/lang/StackTraceElement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .end local v0    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_25
    goto :goto_27

    .line 2478
    :catch_26
    move-exception v0

    :goto_27
    nop

    .line 2479
    return-void

    .line 2470
    :cond_29
    :goto_29
    return-void
.end method

.method private recordException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "headline"    # Ljava/lang/String;

    .line 2464
    invoke-static {p1, p3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->recordException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2466
    return-void
.end method

.method private registerListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I
    .registers 10
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "listener"    # Landroid/os/ISdpListener;

    .line 2819
    if-nez p1, :cond_4

    const/4 v0, -0x5

    return v0

    .line 2821
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerListener from pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2821
    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    .line 2825
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2826
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v0, :cond_48

    .line 2827
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 2828
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2831
    :cond_48
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v1

    .line 2832
    :try_start_4b
    new-instance v2, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    .line 2833
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p2}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;-><init>(Lcom/android/server/SdpManagerService;Ljava/lang/String;Landroid/os/ISdpListener;)V
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_71

    .line 2835
    .local v2, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    const/4 v3, 0x0

    :try_start_55
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->setCaller(I)V

    .line 2836
    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2837
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_66} :catch_67
    .catchall {:try_start_55 .. :try_end_66} :catchall_71

    .line 2840
    goto :goto_6f

    .line 2838
    :catch_67
    move-exception v4

    .line 2839
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_68
    const-string v5, "SdpManagerService"

    const-string v6, "Failed to link to listener death"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    .end local v2    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v4    # "rex":Landroid/os/RemoteException;
    :goto_6f
    monitor-exit v1

    .line 2843
    return v3

    .line 2841
    :catchall_71
    move-exception v2

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_71

    throw v2
.end method

.method private registerReceiver()V
    .registers 5

    .line 3980
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3981
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3982
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3983
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3984
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3985
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3986
    const-string v1, "SdpManagerService.receiver"

    const-string v2, "Broadcast receiver has been registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v2

    .line 3989
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3990
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3992
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mPackageEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3993
    const-string v2, "Package event receiver has been registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v2, v3}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    .line 3996
    const-string v2, "Container state receiver has been registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    return-void
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .registers 7
    .param p1, "parent"    # Ljava/io/File;

    .line 4676
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4677
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 4678
    .local v0, "files":[Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 4679
    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 4680
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4681
    .local v4, "child":Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 4679
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 4685
    .end local v0    # "files":[Ljava/lang/String;
    :cond_1d
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 4686
    return-void
.end method

.method private removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 7
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 932
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 934
    .local v0, "virtualUserId":I
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v2, "SdpEphemeralKey"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 935
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    const-string v2, "SdpSessionKey"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    .line 936
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clearLock(I)V

    .line 937
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService$VirtualLockClient;->clean(I)V

    .line 939
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    .line 940
    .local v1, "ret":I
    if-nez v1, :cond_73

    .line 941
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 942
    :try_start_31
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 943
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    invoke-static {v3, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1400(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 944
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 946
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 947
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_70

    .line 948
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v1

    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove :: successfully engine removed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 947
    :catchall_70
    move-exception v3

    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v3

    .line 952
    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove :: failed ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_8f
    return v1
.end method

.method private removeEngineNative(II)I
    .registers 5
    .param p1, "engineid"    # I
    .param p2, "userid"    # I

    .line 2546
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnUserRemoved(II)I

    move-result v0

    if-eqz v0, :cond_28

    .line 2547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeEngineNative :: failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    const/16 v0, -0xb

    return v0

    .line 2551
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private removeEphemeralKeyViaProtector(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1630
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1631
    const-string v1, "SdpEphemeralKey"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v0

    .line 1630
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private removeResetTokenViaProtector(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1717
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1718
    const-string v1, "SdpResetToken"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v0

    .line 1717
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private removeSessionKeyViaProtector(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1653
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1654
    const-string v1, "SdpSessionKey"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v0

    .line 1653
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private removeSpecificKeyViaProtector(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1789
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1790
    invoke-virtual {v2, p1, p2}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v2

    .line 1789
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1792
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1789
    return v2

    .line 1792
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1793
    throw v2
.end method

.method private removeTokenHandleViaProtector(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1754
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1755
    const-string v1, "SdpTokenHandle"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v0

    .line 1754
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private resetPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 18
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "resetToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .line 1331
    move-object v0, p0

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    .line 1332
    .local v1, "engineId":I
    move v2, v1

    .line 1333
    .local v2, "virtualUserId":I
    move v9, v2

    .line 1335
    .local v9, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset password for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SdpManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1339
    invoke-direct {p0, v9}, Lcom/android/server/SdpManagerService;->getResetTokenViaProtector(I)[B

    move-result-object v3

    move-object v10, v3

    .local v3, "token":[B
    goto :goto_32

    .line 1341
    .end local v3    # "token":[B
    :cond_29
    if-eqz p2, :cond_30

    .line 1342
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    move-object v10, v3

    .line 1344
    .local v10, "token":[B
    :goto_32
    invoke-static {v10}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1345
    const/4 v3, -0x2

    return v3

    .line 1347
    :cond_3a
    invoke-static/range {p3 .. p3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1348
    const/4 v3, -0x1

    return v3

    .line 1351
    :cond_42
    const/16 v11, -0x63

    .line 1352
    .local v11, "ret":I
    invoke-direct {p0, v9}, Lcom/android/server/SdpManagerService;->getTokenHandleViaProtector(I)J

    move-result-wide v12

    .line 1353
    .local v12, "handle":J
    iget-object v3, v0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    move-object/from16 v4, p3

    move-wide v5, v12

    move-object v7, v10

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/SdpManagerService$VirtualLockClient;->setPasswordWithToken(Ljava/lang/String;J[BI)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1355
    const/4 v11, 0x0

    .line 1357
    :cond_56
    return v11
.end method

.method private restoreMasterKeyIfRequired([BI)V
    .registers 9
    .param p1, "masterKey"    # [B
    .param p2, "userId"    # I

    .line 3424
    const/4 v0, 0x0

    .line 3425
    .local v0, "ephemeralKey":[B
    invoke-virtual {p0, p2}, Lcom/android/server/SdpManagerService;->isSyntheticPasswordEnabledSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 3426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check if restoration is required for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3428
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->hasNoSecurity(I)Z

    move-result v1

    if-nez v1, :cond_57

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->doesEphemeralKeyExist(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 3429
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEphemeralKeyViaProtector(I)[B

    move-result-object v0

    .line 3430
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/SdpManagerService;->rewrapSdpKeys([B[BI)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3b

    .line 3431
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->removeEphemeralKeyViaProtector(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    move v1, v2

    goto :goto_3c

    :cond_3b
    move v1, v3

    .line 3432
    .local v1, "result":Z
    :goto_3c
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 3433
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v2

    .line 3432
    const-string v2, "Restore master key for user %d [ Res : %b ]"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3434
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 3437
    .end local v1    # "result":Z
    :cond_57
    return-void
.end method

.method private rewrapSdpKeys([B[BI)Z
    .registers 7
    .param p1, "newMasterKey"    # [B
    .param p2, "oldMasterKey"    # [B
    .param p3, "userId"    # I

    .line 3058
    const/4 v0, 0x0

    .line 3060
    .local v0, "result":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3062
    const-string/jumbo v1, "rewrap - Failed to rewrap sdp keys due to invalid input"

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3063
    goto :goto_2e

    .line 3065
    :cond_17
    nop

    .line 3066
    invoke-static {p3, p2, p1}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3065
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3067
    const-string/jumbo v1, "rewrap - Failed to change password"

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3068
    goto :goto_2e

    .line 3070
    :cond_2d
    const/4 v0, 0x1

    .line 3073
    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of rewrapping sdp keys : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3074
    return v0
.end method

.method private saveEphemeralKeyViaProtector([BI)Z
    .registers 5
    .param p1, "key"    # [B
    .param p2, "userId"    # I

    .line 1625
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1626
    const-string v1, "SdpEphemeralKey"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v0

    .line 1625
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private saveResetTokenViaProtector([BI)Z
    .registers 5
    .param p1, "key"    # [B
    .param p2, "userId"    # I

    .line 1712
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1713
    const-string v1, "SdpResetToken"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v0

    .line 1712
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private saveSessionKeyViaProtector([BI)Z
    .registers 5
    .param p1, "key"    # [B
    .param p2, "userId"    # I

    .line 1648
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1649
    const-string v1, "SdpSessionKey"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v0

    .line 1648
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v0

    return v0
.end method

.method private saveSpecificKeyViaProtector([BLjava/lang/String;I)Z
    .registers 9
    .param p1, "key"    # [B
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1777
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1779
    .local v0, "identity":J
    const/4 v2, 0x2

    :try_start_5
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1780
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v2
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_26

    if-eqz v2, :cond_21

    move v3, v4

    goto :goto_22

    :cond_21
    nop

    .line 1782
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1779
    return v3

    .line 1782
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1783
    throw v2
.end method

.method private saveTokenHandleViaProtector(JI)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1748
    invoke-static {p1, p2}, Lcom/android/server/sdp/security/BytesUtil;->longToBytes(J)[B

    move-result-object v0

    .line 1749
    .local v0, "handleBytes":[B
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    .line 1750
    const-string v2, "SdpTokenHandle"

    invoke-virtual {v1, v0, v2, p3}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v1

    .line 1749
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->record(Z)Z

    move-result v1

    return v1
.end method

.method private sendBroadcastForStateChange(III)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "engineId"    # I
    .param p3, "state"    # I

    .line 2915
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_33

    .line 2916
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2917
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2918
    const-string v1, "engineId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2919
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2921
    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lcom/android/server/SdpManagerService;->quickMessage(ILandroid/os/Bundle;)V

    .line 2922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change state for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2924
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_33
    return-void
.end method

.method private setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I
    .registers 8
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "state"    # I

    .line 1441
    if-nez p1, :cond_4

    const/4 v0, -0x5

    return v0

    .line 1443
    :cond_4
    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setState(I)V

    .line 1444
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->onStateChange(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)V

    .line 1450
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->onStateChange(II)V

    .line 1456
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v0

    .line 1457
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    .line 1459
    .local v1, "engineId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1460
    .local v2, "token":J
    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(III)V

    .line 1461
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1462
    const/4 v4, 0x0

    return v4
.end method

.method private setMasterKeyVersion(II)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "userId"    # I

    .line 4973
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpDatabaseCache:Lcom/android/server/sdp/SdpDatabaseCache;

    const-string/jumbo v1, "smk_ver"

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/sdp/SdpDatabaseCache;->putInt(ILjava/lang/String;I)V

    .line 4975
    return-void
.end method

.method private setPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I
    .registers 16
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;

    .line 1248
    if-nez p1, :cond_4

    const/4 v0, -0x5

    return v0

    .line 1249
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1250
    .local v0, "engineId":I
    move v1, v0

    .line 1251
    .local v1, "virtualUserId":I
    move v2, v1

    .line 1253
    .local v2, "userId":I
    invoke-static {p2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1254
    const/4 v3, -0x1

    return v3

    .line 1257
    :cond_12
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v3

    const/4 v4, -0x6

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1b

    .line 1258
    return v4

    .line 1261
    :cond_1b
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->getManagedCredential(I)[B

    move-result-object v3

    .line 1262
    .local v3, "managedCredential":[B
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "SdpManagerService"

    if-eqz v6, :cond_3d

    .line 1263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set password :: Unexpected condition while derive managed creential for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return v4

    .line 1268
    :cond_3d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 1269
    .local v4, "savedPassword":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    .line 1270
    invoke-virtual {v6, p2, v4, v2}, Lcom/android/server/SdpManagerService$VirtualLockClient;->changePassword(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .line 1272
    .local v6, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_51

    .line 1273
    move v8, v9

    goto :goto_53

    :cond_51
    const/16 v8, -0x63

    .line 1274
    .local v8, "ret":I
    :goto_53
    const/4 v10, 0x1

    if-nez v8, :cond_70

    .line 1275
    new-array v11, v10, [Ljava/lang/Object;

    .line 1276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    .line 1275
    const-string/jumbo v12, "set password :: Successfully done for user %d"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/android/server/SdpManagerService;->cacheManagedCredential([BI)V

    goto :goto_88

    .line 1279
    :cond_70
    new-array v11, v5, [Ljava/lang/Object;

    .line 1281
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    .line 1279
    const-string/jumbo v12, "set password :: Failed to set password for user %d... [ rc : %d ]"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :goto_88
    invoke-virtual {v6}, Lcom/android/internal/widget/VerifyCredentialResponse;->destroy()V

    .line 1284
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v9

    aput-object v4, v5, v10

    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->clearAll([Ljava/lang/Object;)V

    .line 1286
    return v8
.end method

.method private setResetToken([BI)Z
    .registers 12
    .param p1, "token"    # [B
    .param p2, "userId"    # I

    .line 4164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set reset token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 4165
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "token"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 4167
    const/4 v0, 0x0

    .line 4168
    .local v0, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4170
    .local v3, "identity":J
    :try_start_35
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, p2, v6}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v5

    .line 4171
    .local v5, "handle":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_4a

    .line 4173
    invoke-direct {p0, v5, v6, p2}, Lcom/android/server/SdpManagerService;->saveTokenHandleViaProtector(JI)Z

    move-result v7

    if-eqz v7, :cond_4a

    move v2, v1

    goto :goto_4b

    :cond_4a
    nop

    :goto_4b
    move v0, v2

    .line 4172
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 4171
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 4174
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v5, v6, p2}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5b} :catch_5e
    .catchall {:try_start_35 .. :try_end_5b} :catchall_5c

    goto :goto_67

    .line 4182
    .end local v5    # "handle":J
    :catchall_5c
    move-exception v1

    goto :goto_80

    .line 4176
    :catch_5e
    move-exception v1

    .line 4177
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4180
    const-string v2, "Unexpected exception while set reset token"

    invoke-static {v2, v1}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_5c

    .line 4182
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_67
    :goto_67
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4183
    nop

    .line 4185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of set reset token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4186
    return v0

    .line 4182
    :goto_80
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4183
    throw v1
.end method

.method private unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 5
    .param p1, "masterKey"    # [B
    .param p2, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 3021
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3022
    const/4 v0, -0x1

    return v0

    .line 3024
    :cond_8
    invoke-static {p2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3025
    const/4 v0, -0x3

    return v0

    .line 3027
    :cond_10
    nop

    .line 3028
    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService;->nativeOnDeviceUnlocked(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3027
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3029
    const/16 v0, -0xb

    return v0

    .line 3031
    :cond_26
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3032
    const/4 v1, 0x2

    :try_start_2a
    invoke-direct {p0, p2, v1}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 3033
    monitor-exit v0

    .line 3036
    const/4 v0, 0x0

    return v0

    .line 3033
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_30

    throw v1
.end method

.method private unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I
    .registers 14
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;

    .line 1165
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 1166
    .local v0, "engineId":I
    move v1, v0

    .line 1167
    .local v1, "virtualUserId":I
    move v2, v1

    .line 1169
    .local v2, "userId":I
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1170
    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    move-object v4, p2

    .line 1172
    .local v4, "credential":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_31

    .line 1174
    :try_start_10
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v5, v4, v2}, Lcom/android/server/SdpManagerService$VirtualLockClient;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_18

    move-object v3, v5

    .line 1178
    goto :goto_31

    .line 1175
    :catch_18
    move-exception v5

    .line 1176
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unlock :: Failed to check password user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SdpManagerService"

    invoke-static {v8, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    return v6

    .line 1180
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    .line 1182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    .line 1180
    const-string/jumbo v8, "unlock :: Result of virtual user %d verification : %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SdpManagerService"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/16 v7, -0x63

    .line 1185
    .local v7, "ret":I
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v8

    if-eq v8, v6, :cond_ac

    if-eqz v8, :cond_7a

    if-eq v8, v10, :cond_5b

    goto :goto_ae

    .line 1190
    :cond_5b
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v7

    .line 1191
    new-array v6, v5, [Ljava/lang/Object;

    .line 1192
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    .line 1191
    const-string/jumbo v8, "unlock :: User %d throttled! Please try %d ms later..."

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "SdpManagerService"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    goto :goto_ae

    .line 1195
    :cond_7a
    const/4 v6, 0x0

    .line 1197
    .end local v7    # "ret":I
    .local v6, "ret":I
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v7

    .line 1198
    .local v7, "masterKey":[B
    nop

    .line 1199
    invoke-direct {p0, v2, v7}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1198
    invoke-static {v8}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 1200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unlock :: Failed in native unlock with user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SdpManagerService"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/16 v6, -0x63

    .line 1203
    :cond_a7
    invoke-static {v7}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    move v7, v6

    goto :goto_ae

    .line 1187
    .end local v6    # "ret":I
    .local v7, "ret":I
    :cond_ac
    const/4 v7, -0x1

    .line 1188
    nop

    .line 1207
    :goto_ae
    if-nez v7, :cond_c2

    .line 1208
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1209
    :try_start_b3
    invoke-direct {p0, p1, v5}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 1210
    monitor-exit v6
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_bf

    .line 1211
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/server/SdpManagerService;->cacheManagedCredential([BI)V

    goto :goto_c2

    .line 1210
    :catchall_bf
    move-exception v5

    :try_start_c0
    monitor-exit v6
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v5

    .line 1213
    :cond_c2
    :goto_c2
    return v7
.end method

.method private unlockNative(I[B)I
    .registers 5
    .param p1, "id"    # I
    .param p2, "masterKey"    # [B

    .line 2526
    if-eqz p2, :cond_2a

    array-length v0, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    goto :goto_2a

    .line 2529
    :cond_8
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceUnlocked(I[B)I

    move-result v0

    if-eqz v0, :cond_28

    .line 2530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlockNative :: failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    const/16 v0, -0xb

    return v0

    .line 2534
    :cond_28
    const/4 v0, 0x0

    return v0

    .line 2527
    :cond_2a
    :goto_2a
    const/4 v0, -0x3

    return v0
.end method

.method private unlockViaTrustedInternal(Ljava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .registers 16
    .param p1, "tokenAlias"    # Ljava/lang/String;
    .param p2, "callerUserId"    # I
    .param p3, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4775
    if-nez p3, :cond_4

    const/4 v0, -0x5

    return v0

    .line 4777
    :cond_4
    invoke-virtual {p3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v0

    .line 4778
    .local v0, "engineId":I
    move v1, v0

    .line 4779
    .local v1, "virtualUserId":I
    move v2, v1

    .line 4781
    .local v2, "userId":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    move-result-object v3

    .line 4782
    .local v3, "token":[B
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 4783
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unlockViaTrusted :: Failed to get token for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SdpManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4784
    const/4 v4, -0x2

    return v4

    .line 4788
    :cond_2d
    const/16 v4, -0x63

    .line 4790
    .local v4, "ret":I
    nop

    .line 4791
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->getTokenHandleViaProtector(I)J

    move-result-wide v5

    .line 4792
    .local v5, "tokenHandle":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_54

    .line 4793
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unlockViaTrusted :: Failed to get token handle for user"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SdpManagerService"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    sget-object v7, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .local v7, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_5a

    .line 4797
    .end local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_54
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mVirtualLock:Lcom/android/server/SdpManagerService$VirtualLockClient;

    invoke-virtual {v7, v3, v5, v6, v2}, Lcom/android/server/SdpManagerService$VirtualLockClient;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    .line 4800
    .restart local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_5a
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_9b

    .line 4801
    const/4 v8, 0x0

    .line 4802
    .end local v4    # "ret":I
    .local v8, "ret":I
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v10

    .line 4803
    .local v10, "masterKey":[B
    nop

    .line 4804
    invoke-direct {p0, v2, v10}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4803
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 4805
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unlockViaTrusted :: Failed in native unlock with user "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "SdpManagerService"

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    :cond_8c
    iget-object v11, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v11

    .line 4809
    :try_start_8f
    invoke-direct {p0, p3, v9}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;I)I

    .line 4810
    monitor-exit v11
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_98

    .line 4811
    invoke-static {v10}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    move v4, v8

    goto :goto_9b

    .line 4810
    :catchall_98
    move-exception v4

    :try_start_99
    monitor-exit v11
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v4

    .line 4813
    .end local v8    # "ret":I
    .end local v10    # "masterKey":[B
    .restart local v4    # "ret":I
    :cond_9b
    :goto_9b
    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 4815
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 4813
    const-string/jumbo v9, "unlockViaTrusted :: Result of virtual user %d verification : %s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "SdpManagerService"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4816
    return v4
.end method

.method private unregisterListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I
    .registers 10
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "listener"    # Landroid/os/ISdpListener;

    .line 2847
    if-nez p1, :cond_4

    const/4 v0, -0x5

    return v0

    .line 2849
    :cond_4
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v0

    .line 2850
    :try_start_7
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    .line 2851
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2853
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_18

    monitor-exit v0

    return v2

    .line 2855
    :cond_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    .line 2856
    .local v4, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    iget-object v5, v4, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    invoke-interface {v5}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_42

    .line 2857
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2858
    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2860
    .end local v4    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :cond_42
    goto :goto_1c

    .line 2862
    :cond_43
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_52

    .line 2863
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2864
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :cond_52
    monitor-exit v0

    .line 2866
    return v2

    .line 2864
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw v1
.end method

.method private updateDeviceOwnerStatus()V
    .registers 5

    .line 3489
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwner(I)Z

    move-result v0

    .line 3490
    .local v0, "dbValue":Z
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->updateDeviceOwnerStatus(Z)V

    .line 3492
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 3493
    invoke-static {}, Lcom/android/server/SdpManagerService$KnoxUtil;->isDoEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3492
    const-string v3, "Device owner status updated! [ Enabled : %b ]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpDatabaseCache:Lcom/android/server/sdp/SdpDatabaseCache;

    const-string v3, "do_cleared"

    invoke-virtual {v2, v1, v3, v1}, Lcom/android/server/sdp/SdpDatabaseCache;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3497
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->quickMessage(I)V

    .line 3499
    :cond_31
    return-void
.end method

.method private verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 9
    .param p1, "token"    # [B
    .param p2, "tokenHandle"    # J
    .param p4, "userId"    # I

    .line 4129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4131
    .local v0, "identity":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettings()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/-$$Lambda$SdpManagerService$8d0-w7LpTaimYGEL7IeJW5FoZYc;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/-$$Lambda$SdpManagerService$8d0-w7LpTaimYGEL7IeJW5FoZYc;-><init>([BJI)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 4139
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1d

    .line 4141
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4131
    return-object v2

    .line 4141
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4142
    throw v2
.end method

.method private zeroOut(Ljava/lang/String;)V
    .registers 2
    .param p1, "buff"    # Ljava/lang/String;

    .line 689
    if-eqz p1, :cond_3

    .line 693
    const/4 p1, 0x0

    .line 695
    :cond_3
    return-void
.end method

.method private zeroOut([B)V
    .registers 4
    .param p1, "buff"    # [B

    .line 681
    if-nez p1, :cond_3

    return-void

    .line 682
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 684
    const/4 p1, 0x0

    .line 685
    return-void
.end method


# virtual methods
.method public IsInitialized()Z
    .registers 3

    .line 359
    const-class v0, Lcom/android/server/SdpManagerService;

    monitor-enter v0

    .line 360
    :try_start_3
    sget-boolean v1, Lcom/android/server/SdpManagerService;->mSystemReady:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v1, 0x1

    :goto_f
    monitor-exit v0

    return v1

    .line 361
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .registers 24
    .param p1, "param"    # Lcom/samsung/android/knox/sdp/core/SdpCreationParam;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "resetToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/16 v1, -0xa

    if-nez v0, :cond_b

    .line 745
    return v1

    .line 748
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 749
    .local v9, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 750
    .local v10, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 752
    .local v7, "userId":I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    .line 753
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 752
    const-string v3, "add engine :: calling by the process %d %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add engine :: not supported to dualdar user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return v1

    .line 760
    :cond_54
    const/4 v1, -0x3

    if-eqz p1, :cond_143

    .line 761
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_141

    .line 762
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13f

    .line 763
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_70

    move v15, v7

    goto/16 :goto_144

    .line 768
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add engine :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SdpManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v6

    .line 771
    .local v6, "alias":Ljava/lang/String;
    iget-object v2, v8, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2, v10}, Lcom/android/server/SdpManagerService;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 772
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {v8, v6}, Lcom/android/server/SdpManagerService;->assignEngineId(Ljava/lang/String;)I

    move-result v2

    .line 773
    .local v2, "assignedId":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;->getFlags()I

    move-result v19

    .line 775
    .local v19, "flags":I
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v4

    .line 776
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    .line 775
    const-string v4, "add engine :: alias : %s, id : %d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SdpManagerService"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const/4 v15, 0x1

    const/16 v17, 0x6

    const/16 v18, 0x0

    move-object v11, v0

    move-object v12, v6

    move v13, v2

    move v14, v7

    move/from16 v16, v19

    invoke-direct/range {v11 .. v18}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 788
    .local v11, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-virtual {v11, v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v11}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add engine :: not supported anymore to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SdpManagerService"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return v1

    .line 794
    :cond_e1
    invoke-static/range {p2 .. p2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 795
    const/4 v0, -0x1

    return v0

    .line 797
    :cond_e9
    invoke-virtual {v11}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 798
    invoke-static/range {p3 .. p3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_ff

    .line 799
    :cond_fd
    const/4 v0, -0x2

    return v0

    .line 801
    :cond_ff
    iget-object v4, v8, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 802
    :try_start_102
    invoke-direct {v8, v6}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_128

    .line 803
    invoke-direct {v8, v2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-eqz v0, :cond_113

    move v12, v2

    move-object v13, v3

    move-object v14, v6

    move v15, v7

    goto :goto_12c

    .line 807
    :cond_113
    monitor-exit v4
    :try_end_114
    .catchall {:try_start_102 .. :try_end_114} :catchall_136

    .line 809
    move-object/from16 v1, p0

    move v12, v2

    .end local v2    # "assignedId":I
    .local v12, "assignedId":I
    move-object/from16 v2, p1

    move-object v13, v3

    .end local v3    # "packageName":Ljava/lang/String;
    .local v13, "packageName":Ljava/lang/String;
    move-object v3, v11

    move v4, v9

    move v5, v10

    move-object v14, v6

    .end local v6    # "alias":Ljava/lang/String;
    .local v14, "alias":Ljava/lang/String;
    move-object/from16 v6, p2

    move v15, v7

    .end local v7    # "userId":I
    .local v15, "userId":I
    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 802
    .end local v12    # "assignedId":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "alias":Ljava/lang/String;
    .end local v15    # "userId":I
    .restart local v2    # "assignedId":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "alias":Ljava/lang/String;
    .restart local v7    # "userId":I
    :cond_128
    move v12, v2

    move-object v13, v3

    move-object v14, v6

    move v15, v7

    .line 804
    .end local v2    # "assignedId":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "userId":I
    .restart local v12    # "assignedId":I
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "alias":Ljava/lang/String;
    .restart local v15    # "userId":I
    :goto_12c
    :try_start_12c
    const-string v0, "SdpManagerService"

    const-string v1, "add engine :: failed to create engine due to pre-existing engine"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v0, -0x4

    monitor-exit v4

    return v0

    .line 807
    .end local v12    # "assignedId":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "alias":Ljava/lang/String;
    .end local v15    # "userId":I
    .restart local v2    # "assignedId":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "alias":Ljava/lang/String;
    .restart local v7    # "userId":I
    :catchall_136
    move-exception v0

    move v12, v2

    move-object v13, v3

    move-object v14, v6

    move v15, v7

    .end local v2    # "assignedId":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "userId":I
    .restart local v12    # "assignedId":I
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "alias":Ljava/lang/String;
    .restart local v15    # "userId":I
    :goto_13b
    monitor-exit v4
    :try_end_13c
    .catchall {:try_start_12c .. :try_end_13c} :catchall_13d

    throw v0

    :catchall_13d
    move-exception v0

    goto :goto_13b

    .line 762
    .end local v11    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .end local v12    # "assignedId":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "alias":Ljava/lang/String;
    .end local v15    # "userId":I
    .end local v19    # "flags":I
    .restart local v7    # "userId":I
    :cond_13f
    move v15, v7

    .end local v7    # "userId":I
    .restart local v15    # "userId":I
    goto :goto_144

    .line 761
    .end local v15    # "userId":I
    .restart local v7    # "userId":I
    :cond_141
    move v15, v7

    .end local v7    # "userId":I
    .restart local v15    # "userId":I
    goto :goto_144

    .line 760
    .end local v15    # "userId":I
    .restart local v7    # "userId":I
    :cond_143
    move v15, v7

    .line 764
    .end local v7    # "userId":I
    .restart local v15    # "userId":I
    :goto_144
    const-string v0, "SdpManagerService"

    const-string v2, "add engine :: failed to create engine due to invalid parameters"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return v1
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1585
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1586
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_23

    .line 1587
    if-nez v1, :cond_c

    .line 1588
    const/4 v0, -0x5

    .local v0, "ret":I
    goto :goto_22

    .line 1590
    .end local v0    # "ret":I
    :cond_c
    new-instance v7, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v7, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    .local v7, "privilegedApp":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    .line 1592
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1591
    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SdpServiceKeeper;->addPrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I

    move-result v0

    .line 1594
    .end local v7    # "privilegedApp":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .restart local v0    # "ret":I
    :goto_22
    return v0

    .line 1586
    .end local v0    # "ret":I
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public boot(I)I
    .registers 5
    .param p1, "id"    # I

    .line 989
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 990
    const/16 v0, -0xa

    return v0

    .line 993
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    .line 994
    .local v0, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-nez v0, :cond_45

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boot - Engine info not found in map with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 998
    :try_start_28
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    move-object v0, v2

    .line 999
    if-eqz v0, :cond_40

    .line 1000
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1001
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 1002
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 1004
    :cond_40
    monitor-exit v1

    goto :goto_45

    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_42

    throw v2

    .line 1007
    :cond_45
    :goto_45
    if-nez v0, :cond_5f

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boot - Failed to find engine info with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdpManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v1, -0x5

    return v1

    .line 1011
    :cond_5f
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->bootInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    return v1
.end method

.method public cancelLegacyResetTimeout(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 4937
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_2b

    .line 4938
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4939
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/android/server/SdpManagerService$SdpHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 4940
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/SdpManagerService$SdpHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy reset timout canceled for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4944
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_2b
    return-void
.end method

.method public clearEncPkgCache(ILjava/lang/String;)Z
    .registers 14
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3637
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    .line 3639
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3640
    return v1

    .line 3642
    :cond_b
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    .line 3643
    .local v8, "dataCacheArray":[Ljava/lang/String;
    const-string v2, "cache"

    aput-object v2, v8, v1

    .line 3644
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v9

    .line 3646
    .local v9, "epm":Lcom/android/server/EnterprisePartitionManager;
    sget v5, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    const/4 v7, 0x1

    move-object v2, v9

    move v3, p1

    move-object v4, p2

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v10

    .line 3647
    .local v10, "retDataPart":Z
    sget v5, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v2

    .line 3649
    .local v2, "retExtPart":Z
    const-string v3, "SdpManagerService"

    if-nez v10, :cond_33

    .line 3650
    const-string v0, "Failed to clear data part!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    return v1

    .line 3652
    :cond_33
    if-nez v2, :cond_3b

    .line 3653
    const-string v0, "Failed to clear ext part!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    return v1

    .line 3656
    :cond_3b
    return v0
.end method

.method public clearEncPkgData(ILjava/lang/String;)Z
    .registers 14
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3610
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    .line 3612
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 3613
    return v1

    .line 3615
    :cond_b
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    .line 3616
    .local v8, "dataCacheArray":[Ljava/lang/String;
    const-string v2, "/"

    aput-object v2, v8, v1

    .line 3617
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v9

    .line 3619
    .local v9, "epm":Lcom/android/server/EnterprisePartitionManager;
    sget v5, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    const/4 v7, 0x0

    move-object v2, v9

    move v3, p1

    move-object v4, p2

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v10

    .line 3623
    .local v10, "retDataPart":Z
    sget v5, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v2

    .line 3625
    .local v2, "retExtPart":Z
    const-string v3, "SdpManagerService"

    if-nez v10, :cond_33

    .line 3626
    const-string v0, "Failed to clear data part!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    return v1

    .line 3628
    :cond_33
    if-nez v2, :cond_3b

    .line 3629
    const-string v0, "Failed to clear ext part!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    return v1

    .line 3632
    :cond_3b
    return v0
.end method

.method public clearLegacyResetStatus(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 4927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear legacy reset status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4928
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getUserManagerInternal()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$SdpManagerService$rC4_K_CIPpkPhgQiPH_Cb2-fa2c;

    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$SdpManagerService$rC4_K_CIPpkPhgQiPH_Cb2-fa2c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 4930
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_37

    .line 4931
    const-string v0, "Unexpected failure while clear volatiles"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4933
    :cond_37
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->clearManagedToken(I)V

    .line 4934
    return-void
.end method

.method public createEncPkgDir(ILjava/lang/String;)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3661
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3662
    const/16 v0, -0xa

    return v0

    .line 3664
    :cond_9
    const/4 v0, 0x0

    .line 3665
    .local v0, "ret":Z
    nop

    .line 3666
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 3667
    .local v1, "mPms":Lcom/android/server/pm/PackageManagerService;
    if-eqz v1, :cond_1a

    .line 3668
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PackageManagerService;->createEncAppData(Ljava/lang/String;I)Z

    move-result v0

    .line 3670
    :cond_1a
    if-eqz v0, :cond_1e

    .line 3671
    const/4 v2, 0x0

    return v2

    .line 3673
    :cond_1e
    const/16 v2, -0xb

    return v2
.end method

.method public deleteToeknFromTrusted(Ljava/lang/String;)I
    .registers 6
    .param p1, "nameTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4716
    const-string v0, "deleteToeknFromTrusted"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4717
    const/16 v0, -0x63

    .line 4718
    .local v0, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4719
    const/4 v1, -0x3

    return v1

    .line 4721
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4722
    .local v1, "userId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4724
    .local v2, "alias":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/server/SdpManagerService;->deleteTokenInternal(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 4725
    const/4 v0, 0x0

    .line 4726
    :cond_2d
    return v0
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1602
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1603
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1604
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_23

    .line 1605
    if-nez v1, :cond_c

    .line 1606
    const/4 v0, -0x5

    .local v0, "ret":I
    goto :goto_22

    .line 1608
    .end local v0    # "ret":I
    :cond_c
    new-instance v7, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {v7, p1, p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    .local v7, "privilegedApp":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    .line 1610
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1609
    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SdpServiceKeeper;->removePrivilegedApp(Landroid/content/Context;IILcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;)I

    move-result v0

    .line 1612
    .end local v7    # "privilegedApp":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .restart local v0    # "ret":I
    :goto_22
    return v0

    .line 1604
    .end local v0    # "ret":I
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4821
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_39

    .line 4822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: Can\'t dump SDP from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4824
    return-void

    .line 4827
    :cond_39
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 4828
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4829
    :try_start_42
    const-string v1, "SDP Engine List :"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4831
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "nsize":I
    :goto_4e
    if-ge v1, v2, :cond_b9

    .line 4832
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 4833
    .local v3, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-nez v3, :cond_5b

    .line 4834
    goto :goto_b6

    .line 4836
    :cond_5b
    const-string v4, "Engine Id : %5d   User ID : %5d   Version : %d   State : %d   Flag : %10s ( %d )   Alias : %s"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 4837
    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getVersion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMinor()Z

    move-result v7

    if-eqz v7, :cond_96

    const-string v7, "SDP_MINOR"

    goto :goto_98

    :cond_96
    const-string v7, "SDP_MDFPP"

    :goto_98
    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4836
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4838
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4831
    .end local v3    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :goto_b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 4840
    .end local v1    # "i":I
    .end local v2    # "nsize":I
    :cond_b9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4841
    monitor-exit v0

    goto :goto_c6

    :catchall_be
    move-exception v1

    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_42 .. :try_end_c0} :catchall_be

    throw v1

    .line 4843
    :cond_c1
    const-string v0, "Not Supported..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4845
    :goto_c6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4846
    return-void
.end method

.method public exists(Ljava/lang/String;)I
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1560
    const/4 v0, -0x5

    .line 1562
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1563
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    .line 1564
    .local v2, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v1

    .line 1565
    if-eqz v2, :cond_c

    .line 1566
    const/4 v0, -0x4

    .line 1567
    :cond_c
    return v0

    .line 1564
    .end local v2    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_d
    move-exception v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v2
.end method

.method public getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;
    .registers 15
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3581
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3582
    return-object v1

    .line 3584
    :cond_8
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 3585
    .local v2, "dataCacheArray":[Ljava/lang/String;
    const-string v3, "/"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3586
    const-string v3, "cache"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 3587
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v3

    .line 3589
    .local v3, "epm":Lcom/android/server/EnterprisePartitionManager;
    sget v6, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    invoke-virtual {v3, p1, p2, v6, v2}, Lcom/android/server/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v6

    .line 3590
    .local v6, "retDataPartInfo":[J
    sget v7, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    invoke-virtual {v3, p1, p2, v7, v2}, Lcom/android/server/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v7

    .line 3592
    .local v7, "retExtPartInfo":[J
    if-eqz v6, :cond_4e

    if-eqz v7, :cond_4e

    array-length v8, v6

    if-ne v8, v0, :cond_4e

    array-length v8, v7

    if-eq v8, v0, :cond_32

    goto :goto_4e

    .line 3598
    :cond_32
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, p2, p1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 3600
    .local v0, "pStats":Landroid/content/pm/PackageStats;
    aget-wide v8, v6, v4

    aget-wide v10, v6, v5

    sub-long/2addr v8, v10

    iput-wide v8, v0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 3601
    aget-wide v8, v6, v5

    iput-wide v8, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 3602
    aget-wide v8, v7, v4

    aget-wide v10, v7, v5

    sub-long/2addr v8, v10

    iput-wide v8, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 3603
    aget-wide v4, v7, v5

    iput-wide v4, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 3605
    return-object v0

    .line 3594
    .end local v0    # "pStats":Landroid/content/pm/PackageStats;
    :cond_4e
    :goto_4e
    const-string v0, "SdpManagerService"

    const-string v4, "Failed to get size info!!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    return-object v1
.end method

.method public getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 959
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 960
    const/4 v0, 0x0

    return-object v0

    .line 965
    :cond_8
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 966
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 967
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v0

    .line 969
    return-object v1

    .line 967
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getResetToken(I)[B
    .registers 3
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1674
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    .line 1676
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getResetTokenViaProtector(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getResetTokenMDM(I)[B
    .registers 6
    .param p1, "userId"    # I

    .line 1696
    const/4 v0, 0x0

    .line 1698
    .local v0, "token":[B
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1699
    .local v1, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v1}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get reset token for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->getResetToken(I)[B

    move-result-object v0

    .line 1703
    :cond_23
    return-object v0
.end method

.method public getResetTokenSafe(I)[B
    .registers 3
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1681
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    .line 1683
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getManagedToken(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSDKVersion()D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1572
    const-wide/16 v0, 0x0

    .line 1573
    .local v0, "ret":D
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1574
    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    .line 1576
    :cond_d
    return-wide v0
.end method

.method public getTokenHandle(I)J
    .registers 4
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1728
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    .line 1730
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getTokenHandleViaProtector(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVirtualUsers()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1484
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1485
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_9
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "nsize":I
    :goto_f
    if-ge v2, v3, :cond_2d

    .line 1486
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 1488
    .local v4, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isCustomEngine()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1489
    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    .end local v4    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1492
    .end local v2    # "i":I
    .end local v3    # "nsize":I
    :cond_2d
    monitor-exit v1

    .line 1493
    return-object v0

    .line 1492
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public handleDeviceOwnerChanged()V
    .registers 9

    .line 3847
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->checkSystemPermission()Z

    .line 3849
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3850
    return-void

    .line 3853
    :cond_a
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    .line 3854
    .local v0, "deviceOwner":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v1

    .line 3856
    .local v1, "deviceOwenrUserId":I
    const-string v2, "Device Owner has been changed!"

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3857
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 3858
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 3857
    const-string v4, "Confirming Device Owner information [ Owner : %s, User : %d ]"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3860
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    if-eqz v1, :cond_3b

    goto/16 :goto_fb

    .line 3868
    :cond_3b
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpDatabaseCache:Lcom/android/server/sdp/SdpDatabaseCache;

    const-string v4, "do_cleared"

    invoke-virtual {v2, v3, v4, v3}, Lcom/android/server/sdp/SdpDatabaseCache;->putBoolean(ILjava/lang/String;Z)V

    .line 3871
    const/4 v2, 0x0

    .line 3872
    .local v2, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3873
    :try_start_46
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v6

    move-object v2, v6

    .line 3874
    if-eqz v2, :cond_54

    .line 3875
    const-string v3, "Unexpected condition as per DO\' already has engine"

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3876
    monitor-exit v4

    return-void

    .line 3878
    :cond_54
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_f8

    .line 3880
    invoke-static {v5}, Lcom/android/server/SdpManagerService$KnoxUtil;->setDoEnabled(Z)V

    .line 3882
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDeviceOwner(I)V

    .line 3884
    invoke-virtual {p0, v1}, Lcom/android/server/SdpManagerService;->welcomeNewUser(I)V

    .line 3886
    const/4 v4, 0x4

    invoke-virtual {p0, v1, v4}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    .line 3888
    invoke-static {}, Lcom/android/server/SdpManagerService$KnoxUtil;->isFileBasedEncryption()Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 3889
    new-instance v4, Ljava/io/File;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data/knox/secure_fs/enc_media"

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_81

    .line 3891
    const-string v3, "Failed to set sdp policy due to non-existent target"

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_f7

    .line 3892
    :cond_81
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getSdpManagerInternal()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/server/-$$Lambda$SdpManagerService$S3T8HqTfY7yiYAzbs_wp9v7QId8;

    invoke-direct {v6, v1, v4}, Lcom/android/server/-$$Lambda$SdpManagerService$S3T8HqTfY7yiYAzbs_wp9v7QId8;-><init>(ILjava/io/File;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 3893
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 3892
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 3894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully set sdp policy to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3896
    const/4 v3, 0x0

    .line 3897
    .local v3, "mntResult":Z
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 3898
    .local v5, "storage":Landroid/os/storage/StorageManager;
    if-eqz v5, :cond_ca

    .line 3899
    invoke-virtual {v5, v1}, Landroid/os/storage/StorageManager;->mountSdpMediaStorage(I)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 3900
    const/4 v3, 0x1

    .line 3903
    :cond_ca
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Result of mount sdp media storage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3904
    .end local v3    # "mntResult":Z
    .end local v5    # "storage":Landroid/os/storage/StorageManager;
    goto :goto_f7

    .line 3905
    :cond_df
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set sdp policy to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3908
    .end local v4    # "dir":Ljava/io/File;
    :cond_f7
    :goto_f7
    return-void

    .line 3878
    :catchall_f8
    move-exception v3

    :try_start_f9
    monitor-exit v4
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    throw v3

    .line 3862
    .end local v2    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :cond_fb
    :goto_fb
    const-string v2, "Device Owner turned out to be ejected..."

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3864
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpDatabaseCache:Lcom/android/server/sdp/SdpDatabaseCache;

    const-string v4, "do_cleared"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/sdp/SdpDatabaseCache;->putBoolean(ILjava/lang/String;Z)V

    .line 3865
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->updateDeviceOwnerStatus()V

    .line 3866
    return-void
.end method

.method public handleEnforcePwdChange(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 4959
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_23

    .line 4960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4961
    .local v0, "obj":Ljava/lang/Object;
    const/16 v1, 0xe

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/SdpManagerService;->quickMessageDelayed(ILjava/lang/Object;J)V

    .line 4962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enforce change password for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4964
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_23
    return-void
.end method

.method public handleLegacyResetPassword(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 4948
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    if-eqz v0, :cond_23

    .line 4949
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4950
    .local v0, "obj":Ljava/lang/Object;
    const/16 v1, 0xd

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/SdpManagerService;->quickMessageDelayed(ILjava/lang/Object;J)V

    .line 4951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy force Reset Password for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4953
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_23
    return-void
.end method

.method public isDefaultPathUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 3508
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLicensed()I
    .registers 7

    .line 1549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1550
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1551
    .local v1, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v1}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    .line 1553
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1552
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/SdpServiceKeeper;->isLicensed(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_28

    .line 1554
    :cond_25
    const/16 v2, -0x9

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v2, 0x0

    .line 1551
    :goto_29
    return v2
.end method

.method public isSDPEnabled(I)Z
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 699
    return v1

    .line 702
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 703
    const/4 v0, 0x1

    return v0

    .line 705
    :cond_10
    return v1
.end method

.method public isSdpMigrating(I)Z
    .registers 5
    .param p1, "id"    # I

    .line 727
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 728
    return v1

    .line 731
    :cond_8
    const-string/jumbo v0, "isSdpMigrating"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v2

    .line 735
    .local v2, "si":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-nez v2, :cond_19

    monitor-exit v0

    return v1

    .line 737
    :cond_19
    invoke-virtual {v2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMigrating()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 738
    .end local v2    # "si":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public isSdpPackage(ILjava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3694
    const/4 v0, 0x0

    .line 3696
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 3697
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->readEngineList()V

    .line 3699
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "nsize":I
    :goto_13
    if-ge v1, v2, :cond_33

    .line 3700
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 3701
    .local v3, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-eqz v3, :cond_30

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getUserId()I

    move-result v4

    if-ne v4, p1, :cond_30

    .line 3702
    const/4 v0, 0x1

    .line 3699
    .end local v3    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 3706
    .end local v1    # "i":I
    .end local v2    # "nsize":I
    :cond_33
    return v0
.end method

.method public isSdpSupported()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1947
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1948
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1949
    .local v1, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_33

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_33

    .line 1952
    :cond_20
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1953
    return v3

    .line 1955
    :cond_27
    invoke-static {}, Lcom/android/server/SdpManagerService;->isLDUModel()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1956
    return v3

    .line 1958
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    return v2

    .line 1950
    :cond_33
    :goto_33
    return v3
.end method

.method public isSensitive(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 982
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 983
    const/4 v0, 0x0

    return v0

    .line 985
    :cond_8
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getProxy()Lcom/android/server/SdpManagerService$SdpManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/SdpManagerService$SdpManagerProxy;->isSensitive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSyntheticPasswordEnabledSystemUser(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3503
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabledForSystem()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public lock(Ljava/lang/String;)I
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1070
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1071
    const/16 v0, -0xa

    return v0

    .line 1075
    :cond_9
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1077
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-nez v1, :cond_2c

    .line 1078
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: Can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/4 v2, -0x5

    monitor-exit v0

    return v2

    .line 1081
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_6e

    .line 1083
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lock :: Not supported anymore to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const/16 v0, -0x63

    return v0

    .line 1087
    :cond_4d
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1088
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1089
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1090
    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "lock :: Permission denied to invoke engine control API"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/4 v0, -0x7

    return v0

    .line 1095
    :cond_69
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->lockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    return v0

    .line 1081
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_6e
    move-exception v1

    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public migrate(Ljava/lang/String;)I
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 1413
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1414
    const/16 v0, -0xa

    return v0

    .line 1417
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public onBiometricsAuthenticated(I)V
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3548
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3549
    return-void

    .line 3551
    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3552
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3551
    const-string v1, "User %d has been authenticated with biometrics"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3555
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3556
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_37

    .line 3557
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasBiometricTypeTraced(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3558
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    .line 3560
    :cond_37
    return-void
.end method

.method public onCMFALocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3383
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3384
    return-void

    .line 3386
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMFA locked for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3388
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3389
    invoke-static {p1}, Lcom/android/server/SdpManagerService$KnoxUtil;->isCMFAEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3390
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    .line 3392
    :cond_30
    return-void
.end method

.method public onCMFAUnlocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3395
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3396
    return-void

    .line 3398
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMFA unlocked for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    const-string v0, "CMFAUnLock not support yet."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 4883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleaning up user - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4884
    const-string/jumbo v0, "onCleanupUser"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4886
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/android/server/SdpManagerService;->quickMessage(II)V

    .line 4887
    return-void
.end method

.method public onDeviceLocked(I)V
    .registers 4
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3348
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3349
    return-void

    .line 3351
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceLocked : User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3355
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3356
    invoke-static {p1}, Lcom/android/server/SdpManagerService$KnoxUtil;->isDeviceOwnerUser(I)Z

    move-result v1

    if-nez v1, :cond_37

    .line 3357
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_37

    .line 3358
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    .line 3360
    :cond_37
    return-void
.end method

.method public onDeviceOwnerLocked(I)V
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3565
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3566
    return-void

    .line 3568
    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3569
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3568
    const-string v1, "User %d has been locked"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    invoke-static {p1}, Lcom/android/server/SdpManagerService$KnoxUtil;->isDeviceOwnerUser(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3571
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasNoSecurity(I)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2d

    .line 3575
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    .line 3576
    return-void

    .line 3572
    :cond_2d
    :goto_2d
    return-void
.end method

.method public onDeviceUnlocked(I)V
    .registers 5
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3364
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3365
    return-void

    .line 3367
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceUnLocked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3371
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 3372
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 3373
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->hasBiometricTypeTraced(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3374
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    goto :goto_4b

    .line 3375
    :cond_3a
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 3376
    const-string v2, "User has no lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    .line 3380
    :cond_4b
    :goto_4b
    return-void
.end method

.method public onLegacyResetCredentialFinalized(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 4921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy reset credential policy finalized for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4923
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->clearLegacyResetStatus(I)V

    .line 4924
    return-void
.end method

.method public onLegacyResetCredentialRequested([BII)V
    .registers 8
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "timeoutMins"    # I

    .line 4891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy reset credential policy requested for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMins:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4894
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4895
    const-string v0, "Failed due to invalid token"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4896
    goto :goto_6a

    .line 4899
    :cond_28
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->cacheManagedToken([BI)V

    .line 4900
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getUserManagerInternal()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$SdpManagerService$BhgjAWZEN3jRxue76vJt6PJEQ1g;

    invoke-direct {v1, p2}, Lcom/android/server/-$$Lambda$SdpManagerService$BhgjAWZEN3jRxue76vJt6PJEQ1g;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 4902
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 4903
    const-string v0, "Unexpected failure while set volatiles"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4904
    goto :goto_6a

    .line 4906
    :cond_4f
    if-gtz p3, :cond_55

    .line 4907
    const-wide/32 v0, 0xdbba0

    goto :goto_5c

    :cond_55
    int-to-long v0, p3

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 4908
    .local v0, "timeoutMils":J
    :goto_5c
    const/16 v2, 0xc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/SdpManagerService;->quickMessageDelayed(ILjava/lang/Object;J)V

    .line 4910
    const-string v2, "Ready to reset credential!"

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4912
    .end local v0    # "timeoutMils":J
    :goto_6a
    return-void
.end method

.method public onLegacyResetCredentialStarted(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 4915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy reset credential policy started for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4917
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->cancelLegacyResetTimeout(I)V

    .line 4918
    return-void
.end method

.method public onMasterKeyAcquired([BI)V
    .registers 11
    .param p1, "masterKey"    # [B
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3130
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3131
    return-void

    .line 3135
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3136
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3137
    return-void

    .line 3140
    :cond_12
    invoke-static {p2}, Lcom/android/server/SdpManagerService$KnoxUtil;->isDeviceOwnerUser(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3141
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->restoreMasterKeyIfRequired([BI)V

    .line 3144
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdp essential key acquired for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 3145
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "masterKey"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string/jumbo v4, "userId"

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 3147
    const/16 v1, -0x63

    .line 3150
    .local v1, "ret":I
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3151
    :try_start_51
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v6

    .line 3152
    .local v6, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_c6

    .line 3153
    invoke-static {v6}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 3154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find engine info for user "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3155
    goto :goto_9b

    .line 3157
    :cond_71
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 3158
    const-string v4, "Failed to unlock due to invalid key"

    invoke-static {v4}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3159
    goto :goto_9b

    .line 3161
    :cond_7d
    invoke-virtual {v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v4

    if-ne v4, v5, :cond_97

    .line 3162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Engine already unlocked for user "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3166
    :cond_97
    invoke-direct {p0, p1, v6}, Lcom/android/server/SdpManagerService;->unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v1

    .line 3169
    .end local v6    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :goto_9b
    if-nez v1, :cond_a0

    .line 3170
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_a2

    :cond_a0
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3171
    .local v4, "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_a2
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 3172
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->cacheManagedCredential([BI)V

    .line 3174
    :cond_ab
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 3176
    new-array v5, v5, [Ljava/lang/Object;

    .line 3177
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    .line 3176
    const-string v2, "Result of sdp unlock : %s [ rc : %d ]"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3178
    return-void

    .line 3152
    .end local v4    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_c6
    move-exception v2

    :try_start_c7
    monitor-exit v4
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw v2
.end method

.method public onMasterKeyDerivationRequired(II)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "order"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3227
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3228
    return-void

    .line 3232
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3233
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3234
    return-void

    .line 3237
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdp essential key derivation required for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 3238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Issued order is identified as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3240
    const/4 v1, 0x0

    .line 3241
    .local v1, "masterKey":[B
    const/16 v2, -0x63

    .line 3244
    .local v2, "ret":I
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3245
    :try_start_41
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v4

    .line 3246
    .local v4, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_140

    .line 3247
    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v3, :cond_65

    .line 3248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find engine info for user "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3249
    goto/16 :goto_115

    .line 3252
    :cond_65
    const/4 v3, 0x4

    if-eq p2, v3, :cond_a6

    const/16 v8, 0x8

    if-eq p2, v8, :cond_85

    const/16 v8, 0x10

    if-eq p2, v8, :cond_85

    .line 3267
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected condition while check order "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_c6

    .line 3261
    :cond_85
    nop

    .line 3262
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getManagedCredential(I)[B

    move-result-object v8

    move-object v1, v8

    .line 3261
    invoke-static {v8}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c6

    .line 3263
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Managed credential not found for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_c6

    .line 3254
    :cond_a6
    nop

    .line 3255
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEphemeralKeyViaProtector(I)[B

    move-result-object v8

    move-object v1, v8

    .line 3254
    invoke-static {v8}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c6

    .line 3256
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ephemeral key not found for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3270
    :cond_c6
    :goto_c6
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "masterKey"

    aput-object v9, v8, v6

    aput-object v1, v8, v5

    const-string/jumbo v9, "userId"

    aput-object v9, v8, v7

    const/4 v9, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const-string/jumbo v9, "order"

    aput-object v9, v8, v3

    const/4 v3, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v8}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 3272
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 3273
    const-string v3, "Failed to unlock due to invalid key"

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3274
    goto :goto_115

    .line 3277
    :cond_f7
    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v3

    if-ne v3, v7, :cond_111

    .line 3278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Engine already unlocked for user "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3282
    :cond_111
    invoke-direct {p0, v1, v4}, Lcom/android/server/SdpManagerService;->unlockFinal([BLcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v2

    .line 3285
    .end local v4    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :goto_115
    if-nez v2, :cond_11a

    .line 3286
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_11c

    :cond_11a
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3287
    .local v3, "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_11c
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v4

    if-eqz v4, :cond_125

    .line 3288
    invoke-direct {p0, v1, p1}, Lcom/android/server/SdpManagerService;->cacheManagedCredential([BI)V

    .line 3290
    :cond_125
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 3292
    new-array v4, v7, [Ljava/lang/Object;

    .line 3293
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 3292
    const-string v5, "Result of sdp unlock : %s [ rc : %d ]"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3294
    return-void

    .line 3246
    .end local v3    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_140
    move-exception v4

    :try_start_141
    monitor-exit v3
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    throw v4
.end method

.method public onMasterKeyDeserted([BI)V
    .registers 9
    .param p1, "masterKey"    # [B
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3299
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3300
    return-void

    .line 3303
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3304
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3305
    return-void

    .line 3308
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdp essential key deserted with user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 3309
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "masterKey"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v4, 0x2

    const-string/jumbo v5, "userId"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 3311
    new-array v1, v2, [Ljava/lang/Object;

    .line 3312
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 3311
    const-string v2, "User %d has none type credential"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3313
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->saveEphemeralKeyViaProtector([BI)Z

    .line 3314
    return-void
.end method

.method public onMasterKeyEvictionRequired(I)V
    .registers 9
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3183
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3184
    return-void

    .line 3188
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3189
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3190
    return-void

    .line 3193
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdp essential key eviction required for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 3194
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 3196
    const/16 v2, -0x63

    .line 3199
    .local v2, "ret":I
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3200
    :try_start_47
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v5

    .line 3201
    .local v5, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_b0

    .line 3202
    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 3203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find engine info for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3204
    goto :goto_87

    .line 3206
    :cond_67
    invoke-virtual {v5}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v3

    if-ne v3, v1, :cond_83

    .line 3207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Engine already locked for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3208
    const/4 v2, 0x0

    .line 3209
    goto :goto_87

    .line 3211
    :cond_83
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->lockFinal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v2

    .line 3214
    .end local v5    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :goto_87
    if-nez v2, :cond_8c

    .line 3215
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_8e

    :cond_8c
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3216
    .local v3, "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_8e
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->isOK()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 3217
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->clearManageCredentialIfRequired(I)V

    .line 3220
    :cond_97
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 3221
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    .line 3220
    const-string v1, "Result of sdp lock : %s [ rc : %d ]"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3222
    return-void

    .line 3201
    .end local v3    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_b0
    move-exception v1

    :try_start_b1
    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v1
.end method

.method public onMasterKeyInitialized([BI)V
    .registers 11
    .param p1, "masterKey"    # [B
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3079
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3080
    return-void

    .line 3083
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3084
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3085
    return-void

    .line 3088
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdp essential key initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 3089
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "masterKey"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v4, 0x2

    const-string/jumbo v5, "userId"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 3091
    const/4 v1, 0x0

    .line 3092
    .local v1, "noError":Z
    const/4 v4, 0x0

    .line 3094
    .local v4, "ephemeralKey":[B
    nop

    .line 3095
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEphemeralKeyViaProtector(I)[B

    move-result-object v5

    move-object v4, v5

    .line 3094
    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 3096
    const-string v5, "Failed to get ephemeral key"

    invoke-static {v5}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3097
    goto :goto_82

    .line 3099
    :cond_57
    nop

    .line 3100
    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/SdpManagerService;->rewrapSdpKeys([B[BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3099
    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 3101
    const-string v5, "Failed to rewrap sdp essential key"

    invoke-static {v5}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3102
    goto :goto_82

    .line 3104
    :cond_6c
    nop

    .line 3105
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->removeEphemeralKeyViaProtector(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3104
    invoke-static {v5}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 3106
    const-string v5, "Failed to delete ephemeral key"

    invoke-static {v5}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3107
    goto :goto_82

    .line 3109
    :cond_81
    const/4 v1, 0x1

    .line 3112
    :goto_82
    if-eqz v1, :cond_b6

    .line 3113
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/server/-$$Lambda$SdpManagerService$JqDcXir7lvP5yYkobnTXelsKj5k;

    invoke-direct {v6, p2}, Lcom/android/server/-$$Lambda$SdpManagerService$JqDcXir7lvP5yYkobnTXelsKj5k;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 3115
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3116
    .local v5, "credentialType":I
    if-ne v5, v6, :cond_b6

    .line 3117
    new-array v2, v2, [Ljava/lang/Object;

    .line 3118
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 3117
    const-string v3, "User %d has none type credential"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3119
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->saveEphemeralKeyViaProtector([BI)Z

    .line 3122
    .end local v5    # "credentialType":I
    :cond_b6
    invoke-static {p1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 3124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of key adjustment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3125
    return-void
.end method

.method public onPasswordChanged(II)V
    .registers 7
    .param p1, "credentialType"    # I
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3318
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3319
    return-void

    .line 3322
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3323
    .local v0, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3324
    return-void

    .line 3327
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Password has been changed for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 3329
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_4b

    .line 3331
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3332
    :try_start_2d
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v3

    .line 3333
    .local v3, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_48

    .line 3335
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getState()I

    move-result v1

    if-ne v1, v2, :cond_67

    .line 3336
    const-string v1, "Engine is locked after changing to none type."

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3337
    const/4 v1, 0x4

    invoke-virtual {p0, p2, v1}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    goto :goto_67

    .line 3333
    .end local v3    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v2

    .line 3339
    :cond_4b
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->doesEphemeralKeyExist(I)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 3340
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3341
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3340
    const-string v2, "According as user %d password changed, remove ephemeral key"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3342
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->removeEphemeralKeyViaProtector(I)Z

    goto :goto_68

    .line 3339
    :cond_67
    :goto_67
    nop

    .line 3344
    :goto_68
    return-void
.end method

.method public onStartUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 4871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    const-string/jumbo v0, "onStartUser"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4874
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getDeviceVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Mark the beginning of sdp service! [Version : %s]"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4876
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 4878
    .local v0, "ui":Landroid/content/pm/UserInfo;
    const/4 v1, 0x7

    invoke-direct {p0, v1, p1}, Lcom/android/server/SdpManagerService;->quickMessage(II)V

    .line 4879
    return-void
.end method

.method public registerClient(ILandroid/os/ISdpListener;)V
    .registers 12
    .param p1, "engineId"    # I
    .param p2, "client"    # Landroid/os/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2679
    const/4 v0, 0x0

    .line 2680
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2681
    return-void

    .line 2684
    :cond_8
    if-eqz p2, :cond_70

    .line 2685
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_70

    .line 2689
    :cond_11
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 2690
    :try_start_14
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SdpManagerService$ListenerRoll;

    .line 2691
    .local v2, "roll":Lcom/android/server/SdpManagerService$ListenerRoll;
    if-nez v2, :cond_32

    .line 2692
    new-instance v3, Lcom/android/server/SdpManagerService$ListenerRoll;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/SdpManagerService$ListenerRoll;-><init>(Lcom/android/server/SdpManagerService$1;)V

    move-object v2, v3

    .line 2693
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2695
    :cond_32
    new-instance v3, Lcom/android/server/SdpManagerService$StateListener;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/SdpManagerService$StateListener;-><init>(Lcom/android/server/SdpManagerService;ILandroid/os/ISdpListener;)V

    .line 2696
    .local v3, "listener":Lcom/android/server/SdpManagerService$StateListener;
    invoke-virtual {v3}, Lcom/android/server/SdpManagerService$StateListener;->isValid()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 2697
    invoke-virtual {v2, v3}, Lcom/android/server/SdpManagerService$ListenerRoll;->enroll(Lcom/android/server/SdpManagerService$StateListener;)Z

    move-result v4

    move v0, v4

    .line 2700
    :cond_42
    const-string v4, "SdpManagerService"

    const-string/jumbo v5, "registerClient :: Engine Id = %d, Roll Size = %d, Result = %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 2702
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/android/server/SdpManagerService$ListenerRoll;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2701
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2700
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    nop

    .end local v2    # "roll":Lcom/android/server/SdpManagerService$ListenerRoll;
    .end local v3    # "listener":Lcom/android/server/SdpManagerService$StateListener;
    monitor-exit v1

    .line 2704
    return-void

    .line 2703
    :catchall_6d
    move-exception v2

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_14 .. :try_end_6f} :catchall_6d

    throw v2

    .line 2686
    :cond_70
    :goto_70
    return-void
.end method

.method public registerListener(Ljava/lang/String;Landroid/os/ISdpListener;)I
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1367
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1368
    const/16 v0, -0xa

    return v0

    .line 1371
    :cond_9
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1378
    :try_start_14
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1379
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-nez v1, :cond_1d

    .line 1380
    const/4 v2, -0x5

    monitor-exit v0

    return v2

    .line 1381
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_23

    .line 1383
    invoke-direct {p0, v1, p2}, Lcom/android/server/SdpManagerService;->registerListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I

    move-result v0

    return v0

    .line 1381
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public removeEngine(Ljava/lang/String;)I
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 905
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 906
    const/16 v0, -0xa

    return v0

    .line 910
    :cond_9
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 912
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_58

    .line 913
    if-nez v1, :cond_1d

    .line 914
    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "removeEngine :: no engine found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v0, -0x5

    return v0

    .line 918
    :cond_1d
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove :: Not supported anymore to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/16 v0, -0x63

    return v0

    .line 922
    :cond_3d
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 923
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 924
    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "remove :: Permission denied to invoke engine control API"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v0, -0x7

    return v0

    .line 928
    :cond_53
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->removeEngineInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    return v0

    .line 912
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "rstToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1292
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1293
    const/16 v0, -0xa

    return v0

    .line 1297
    :cond_9
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1298
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1299
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-nez v1, :cond_2c

    .line 1300
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset :: Can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/4 v2, -0x5

    monitor-exit v0

    return v2

    .line 1303
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_6e

    .line 1305
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset :: Not supported anymore to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/16 v0, -0x63

    return v0

    .line 1315
    :cond_4d
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1316
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1317
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1318
    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "reset :: Permission denied to invoke engine control API"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const/4 v0, -0x7

    return v0

    .line 1323
    :cond_69
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/SdpManagerService;->resetPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1303
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_6e
    move-exception v1

    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public saveResetTokenSafe([BI)V
    .registers 3
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1708
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->cacheManagedToken([BI)V

    .line 1709
    return-void
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "resetToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4699
    const-string/jumbo v0, "saveTokenIntoTrusted"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4701
    const/16 v0, -0x63

    .line 4702
    .local v0, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3f

    .line 4705
    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4706
    .local v1, "userId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4707
    .local v2, "alias":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 4708
    .local v3, "token":[B
    invoke-direct {p0, v3, v2, v1}, Lcom/android/server/SdpManagerService;->saveSpecificKeyViaProtector([BLjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 4709
    const/4 v4, 0x0

    goto :goto_3a

    :cond_38
    const/16 v4, -0x63

    :goto_3a
    move v0, v4

    .line 4710
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 4711
    return v0

    .line 4703
    .end local v1    # "userId":I
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "token":[B
    :cond_3f
    :goto_3f
    const/4 v1, -0x3

    return v1
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1219
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1220
    const/16 v0, -0xa

    return v0

    .line 1224
    :cond_9
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1225
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1226
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-nez v1, :cond_2c

    .line 1227
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set password :: Can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/4 v2, -0x5

    monitor-exit v0

    return v2

    .line 1230
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_6e

    .line 1232
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set password :: Not supported anymore to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/16 v0, -0x63

    return v0

    .line 1236
    :cond_4d
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1237
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1238
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1239
    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "set password :: Permission denied to invoke engine control API"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/4 v0, -0x7

    return v0

    .line 1244
    :cond_69
    invoke-direct {p0, v1, p2}, Lcom/android/server/SdpManagerService;->setPasswordInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1230
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_6e
    move-exception v1

    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public setSDPMigrating(IZ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "isSdpMigrating"    # Z

    .line 709
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 710
    return-void

    .line 713
    :cond_7
    const-string/jumbo v0, "setSDPMigrating"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 715
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 717
    .local v1, "si":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-nez v1, :cond_18

    monitor-exit v0

    return-void

    .line 719
    :cond_18
    invoke-virtual {v1, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setIsMigrating(Z)V

    .line 720
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    invoke-static {v2, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 721
    nop

    .end local v1    # "si":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_3a

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSDPMigrating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void

    .line 721
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public setSensitive(ILjava/lang/String;)Z
    .registers 4
    .param p1, "engineId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 974
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 975
    const/4 v0, 0x0

    return v0

    .line 977
    :cond_8
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getProxy()Lcom/android/server/SdpManagerService$SdpManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SdpManagerService$SdpManagerProxy;->setSensitive(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .registers 4

    .line 388
    const-string v0, "SdpManagerService"

    const-string v1, "SdpManagerService ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string/jumbo v1, "systemReady"

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 391
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 393
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 394
    new-instance v1, Lcom/android/server/SdpManagerService$SdpHandler;

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/SdpManagerService$SdpHandler;-><init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    .line 395
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/SdpManagerService;->mIsHandlerReady:Z

    .line 397
    const-string v2, "Sending message MSG_SYSTEM_READY to handler"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->quickMessage(I)V

    .line 399
    const-string/jumbo v1, "systemReady done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1135
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1136
    const/16 v0, -0xa

    return v0

    .line 1140
    :cond_9
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1141
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1142
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_6d

    .line 1143
    if-nez v1, :cond_2c

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlock :: Can\'t find engine info for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const/4 v0, -0x5

    return v0

    .line 1147
    :cond_2c
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlock :: Not supported anymore to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SdpManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/16 v0, -0x63

    return v0

    .line 1151
    :cond_4c
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 1152
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 1153
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 1154
    const-string v0, "SdpManagerService"

    const-string/jumbo v2, "unlock :: Permission denied to invoke engine control API"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/4 v0, -0x7

    return v0

    .line 1158
    :cond_68
    invoke-direct {p0, v1, p2}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1142
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "engineAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4742
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4743
    const/16 v0, -0xa

    return v0

    .line 4745
    :cond_9
    const-string/jumbo v0, "unlockViaTrusted"

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 4748
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4749
    :try_start_12
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 4750
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-nez v1, :cond_32

    .line 4751
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlockViaTrusted :: Can\'t find engine info with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    const/4 v2, -0x5

    monitor-exit v0

    return v2

    .line 4754
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_72

    .line 4756
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    const/4 v2, -0x7

    if-eqz v0, :cond_3b

    .line 4757
    return v2

    .line 4759
    :cond_3b
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 4760
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 4761
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 4762
    const-string v0, "SdpManagerService"

    const-string/jumbo v3, "unlockViaTrusted :: Permission denied to invoke engine control API"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    return v2

    .line 4767
    :cond_56
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4768
    .local v0, "callerUserId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4770
    .local v2, "tokenAlias":Ljava/lang/String;
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/SdpManagerService;->unlockViaTrustedInternal(Ljava/lang/String;ILcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v3

    return v3

    .line 4754
    .end local v0    # "callerUserId":I
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .end local v2    # "tokenAlias":Ljava/lang/String;
    :catchall_72
    move-exception v1

    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v1
.end method

.method public unregisterClient(ILandroid/os/ISdpListener;)V
    .registers 12
    .param p1, "engineId"    # I
    .param p2, "client"    # Landroid/os/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2709
    const/4 v0, 0x0

    .line 2710
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2711
    return-void

    .line 2714
    :cond_8
    if-eqz p2, :cond_9f

    .line 2715
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_12

    goto/16 :goto_9f

    .line 2719
    :cond_12
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 2720
    :try_start_15
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SdpManagerService$ListenerRoll;

    .line 2721
    .local v2, "roll":Lcom/android/server/SdpManagerService$ListenerRoll;
    if-nez v2, :cond_2c

    .line 2722
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "unregisterClient :: Already cleared..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 2724
    :cond_2c
    invoke-virtual {v2}, Lcom/android/server/SdpManagerService$ListenerRoll;->get()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SdpManagerService$StateListener;

    .line 2725
    .local v4, "listener":Lcom/android/server/SdpManagerService$StateListener;
    invoke-interface {p2}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/SdpManagerService$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 2726
    invoke-virtual {v4}, Lcom/android/server/SdpManagerService$StateListener;->dispose()V

    .line 2727
    add-int/lit8 v0, v0, 0x1

    .line 2729
    .end local v4    # "listener":Lcom/android/server/SdpManagerService$StateListener;
    :cond_53
    goto :goto_34

    .line 2730
    :cond_54
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleEmptyListenerRoll(I)V

    .line 2733
    :goto_57
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_66

    .line 2734
    move v3, v4

    goto :goto_76

    :cond_66
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SdpManagerService$ListenerRoll;

    invoke-virtual {v3}, Lcom/android/server/SdpManagerService$ListenerRoll;->size()I

    move-result v3

    .line 2735
    .local v3, "size":I
    :goto_76
    const-string v5, "SdpManagerService"

    const-string/jumbo v6, "unregisterClient :: Engine Id = %d, Roll Size = %d, Result = %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 2737
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 2736
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2735
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    nop

    .end local v2    # "roll":Lcom/android/server/SdpManagerService$ListenerRoll;
    .end local v3    # "size":I
    monitor-exit v1

    .line 2739
    return-void

    .line 2738
    :catchall_9c
    move-exception v2

    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_15 .. :try_end_9e} :catchall_9c

    throw v2

    .line 2716
    :cond_9f
    :goto_9f
    return-void
.end method

.method public unregisterListener(Ljava/lang/String;Landroid/os/ISdpListener;)I
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1393
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1394
    const/16 v0, -0xa

    return v0

    .line 1397
    :cond_9
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1404
    :try_start_14
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    .line 1405
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    if-nez v1, :cond_1d

    .line 1406
    const/4 v2, -0x5

    monitor-exit v0

    return v2

    .line 1407
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_23

    .line 1409
    invoke-direct {p0, v1, p2}, Lcom/android/server/SdpManagerService;->unregisterListenerInternal(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Landroid/os/ISdpListener;)I

    move-result v0

    return v0

    .line 1407
    .end local v1    # "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public welcomeNewUser(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3513
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3514
    return-void

    .line 3517
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Welcome new user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 3519
    const/4 v0, 0x0

    .line 3520
    .local v0, "result":Z
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v1

    .line 3522
    .local v1, "ephemeralKey":[B
    nop

    .line 3523
    invoke-direct {p0, v1, p1}, Lcom/android/server/SdpManagerService;->establish([BI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 3522
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3524
    const-string v2, "Welcome - Failed to create new engine"

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3525
    goto :goto_61

    .line 3527
    :cond_37
    nop

    .line 3528
    invoke-direct {p0, v1, p1}, Lcom/android/server/SdpManagerService;->saveEphemeralKeyViaProtector([BI)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 3527
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3529
    const-string v2, "Welcome - Failed to safekeep sdp ephemeral key"

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3530
    goto :goto_61

    .line 3532
    :cond_4c
    nop

    .line 3533
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->generateAndSaveSessionKey(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 3532
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 3534
    const-string v2, "Welcome - Failed to prepare session key"

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3536
    :cond_60
    const/4 v0, 0x1

    .line 3539
    :goto_61
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 3541
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3542
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3541
    const-string v3, "Result of welcoming new user %d : %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3543
    return-void
.end method
