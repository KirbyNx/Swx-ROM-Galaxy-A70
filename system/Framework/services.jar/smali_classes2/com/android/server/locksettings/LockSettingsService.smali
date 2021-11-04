.class public Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsService$VirtualLock;,
        Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;,
        Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;,
        Lcom/android/server/locksettings/LockSettingsService$LocalService;,
        Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;,
        Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/locksettings/LockSettingsService$Injector;,
        Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;,
        Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;,
        Lcom/android/server/locksettings/LockSettingsService$Lifecycle;,
        Lcom/android/server/locksettings/LockSettingsService$ChallengeType;
    }
.end annotation


# static fields
.field private static final ACTION_DUMP_DUALDAR_PASSWORD:Ljava/lang/String; = "android.intent.action.DUMP_DUALDAR_PASSWORD"

.field private static final ACTION_DUMP_SYNTHETIC_PASSWORD:Ljava/lang/String; = "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

.field private static final ALLOW_FAIL_COUNT:Ljava/lang/String; = "allowfailcount"

.field private static final BIOMETRIC_PERMISSION:Ljava/lang/String; = "android.permission.MANAGE_BIOMETRIC"

.field private static final CHALLENGE_FROM_CALLER:I = 0x1

.field private static final CHALLENGE_INTERNAL:I = 0x2

.field private static final CHALLENGE_NONE:I = 0x0

.field private static final CLIENT_NAME:Ljava/lang/String; = "clientname"

.field private static final DEBUG:Z = false

.field private static final DEBUGGING_INFO_CHILDPROFILE_FAIL_REASON:Ljava/lang/String; = "childprofile_key_fail_reason"

.field private static final DEVICE_SUPPORT_KNOX_SDP:Z = true

.field private static final DUMP:Z

.field private static final EMAIL_ADDRESS:Ljava/lang/String; = "emailaddress"

.field private static final ENABLE_EMERGENCY_CALL:Ljava/lang/String; = "enableemergencycall"

.field private static final ENCRYPTED_PASSWORD_ENABLED_BY_DEFAULT:I = 0x0

.field private static final EXTRA_CREDENTIAL:Ljava/lang/String; = "cred"

.field private static final EXTRA_FILEPATH:Ljava/lang/String; = "path"

.field private static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final EXTRA_USERID:Ljava/lang/String; = "urid"

.field private static final FAILED_UNLOCK_ATTEMPT_COUNT:Ljava/lang/String; = "remotelockscreen.failedunlockcount"

.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final LOCKED:Ljava/lang/String; = "locked"

.field private static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "remotelockscreen.lockoutdeadline"

.field private static final LOCK_TIME:Ljava/lang/String; = "locktime"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final PERMANENT_BLOCK_COUNT:Ljava/lang/String; = "permanentblockcount"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PHONE_NUMBER:Ljava/lang/String; = "phonenumber"

.field private static final PREV_SYNTHETIC_PASSWORD_HANDLE_KEY:Ljava/lang/String; = "prev-sp-handle"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final REMOTE_LOCK_INTENT:Ljava/lang/String; = "com.samsung.remotelock.CLIENT_WAKEUP"

.field private static final REMOTE_LOCK_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.REMOTELOCK"

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SKIP_PIN_CONTAINER:Ljava/lang/String; = "skippin"

.field private static final SYNTHETIC_PASSWORD_ENABLED_FOR_FBE_BY_DEFAULT:I = 0x0

.field private static final SYNTHETIC_PASSWORD_ENABLED_FOR_KEY_STORE_BY_DEFAULT:I = 0x0

.field private static final SYNTHETIC_PASSWORD_UPDATE_TIME_KEY:Ljava/lang/String; = "sp-handle-ts"

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final TAG_SDP:Ljava/lang/String; = "LockSettingsService.SDP"

.field private static final USER_SERIAL_NUMBER_KEY:Ljava/lang/String; = "serial-number"

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field protected mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/IRemoteLockMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field private mFirstCallToVold:Z

.field protected mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHasSecureLockScreen:Z

.field private final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLockPasswordData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeForPasswordCheck:I

.field private mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mPassword:[B

.field private mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field private final mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

.field private final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field private mRemoteCallback:Landroid/os/IRemoteCallback;

.field private mSdpManagerInternal:Lcom/android/server/sdp/SdpManagerInternal;

.field private mSdpManagerService:Lcom/android/server/SdpManagerService;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private mShellCommandCallback:Landroid/os/IRemoteCallback;

.field private mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

.field private final mSpDumpReceiver:Landroid/content/BroadcastReceiver;

.field private final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mStorageManager:Landroid/os/storage/IStorageManager;

.field private final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field private final mUserManager:Landroid/os/UserManager;

.field final mUserPasswordMetrics:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 289
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 290
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->DUMP:Z

    .line 306
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 3291
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    const-string/jumbo v2, "lockscreen.patterneverchosen"

    const-string/jumbo v3, "lockscreen.password_type"

    const-string/jumbo v4, "lockscreen.password_type_alternate"

    const-string/jumbo v5, "lockscreen.password_salt"

    const-string/jumbo v6, "lockscreen.disabled"

    const-string/jumbo v7, "lockscreen.options"

    const-string/jumbo v8, "lockscreen.biometric_weak_fallback"

    const-string/jumbo v9, "lockscreen.biometricweakeverchosen"

    const-string/jumbo v10, "lockscreen.power_button_instantly_locks"

    const-string/jumbo v11, "lockscreen.passwordhistory"

    const-string/jumbo v12, "lock_pattern_autolock"

    const-string/jumbo v13, "lock_biometric_weak_flags"

    const-string/jumbo v14, "lock_pattern_visible_pattern"

    const-string/jumbo v15, "lock_pattern_tactile_feedback_enabled"

    const-string/jumbo v16, "lockscreen.folder_instantly_locks"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 3313
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const-string/jumbo v1, "lock_screen_owner_info"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 3319
    const-string/jumbo v0, "lockscreen.password_salt"

    const-string/jumbo v1, "lockscreen.passwordhistory"

    const-string/jumbo v2, "lockscreen.password_type"

    const-string/jumbo v3, "lockscreen.profilechallenge"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    return-void

    nop

    :array_80
    .array-data 4
        0x3f2
        0x3f8
        0x0
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 660
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    .line 661
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .registers 9
    .param p1, "injector"    # Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 664
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 241
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 271
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 1072
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5063
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 5497
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPasswordData:Landroid/util/SparseArray;

    .line 5963
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$7;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$7;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDumpReceiver:Landroid/content/BroadcastReceiver;

    .line 6647
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$8;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$8;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    .line 665
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 666
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 667
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    .line 668
    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRecoverableKeyStoreManager(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 669
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler(Lcom/android/server/ServiceThread;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 670
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 671
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 672
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    .line 676
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 677
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v1, "android.intent.action.USER_STARTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 683
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 684
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 685
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 686
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 687
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 688
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    .line 690
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 691
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getManagedProfilePasswordCache()Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    .line 693
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v1, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRebootEscrowManager(Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 697
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsService;->DUMP:Z

    if-eqz v1, :cond_ec

    .line 698
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 699
    const-string v1, "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    const-string v1, "android.intent.action.DUMP_DUALDAR_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDumpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 704
    :cond_ec
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordDump;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/server/locksettings/SyntheticPasswordDump;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

    .line 705
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    invoke-direct {v1, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    .line 711
    :try_start_fe
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v1, v3}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_105} :catch_106

    .line 714
    goto :goto_107

    .line 712
    :catch_106
    move-exception v1

    .line 718
    :goto_107
    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    invoke-direct {v3, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    invoke-static {v1, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 719
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWeaverStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getPersonaService()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/locksettings/LockSettingsService;I[B)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/locksettings/LockSettingsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkSdpStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/locksettings/LockSettingsService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/locksettings/LockSettingsService;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->updateUnlockUserFinishTime(IJ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/locksettings/LockSettingsService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordTryHandleLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/locksettings/LockSettingsService;[BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 6
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordDataOnBootPhase()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "x2"    # J
    .param p4, "x3"    # [B
    .param p5, "x4"    # I

    .line 208
    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # I

    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserWithToken(J[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/locksettings/LockSettingsService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSecureMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->clearStorageForUser(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "x2"    # I

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/util/ArrayList;
    .param p6, "x5"    # Landroid/app/admin/PasswordMetrics;
    .param p7, "x6"    # I

    .line 208
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->refreshWeaverSlots()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordDump;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 9
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .param p7, "x6"    # Ljava/util/ArrayList;

    .line 208
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "x2"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J
    .registers 6
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "x2"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "x3"    # I

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4600(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 208
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigratePasswordHash()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->cleanupDataForReusedUserIdIfNecessary(I)V

    return-void
.end method

.method private activateEscrowTokenForDualDAR(JI[B[B)V
    .registers 6
    .param p1, "handle"    # J
    .param p3, "userId"    # I
    .param p4, "token"    # [B
    .param p5, "userCredential"    # [B

    .line 4499
    return-void
.end method

.method private activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 12
    .param p1, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 4255
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4256
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 4257
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4258
    .local v2, "handle":J
    const-string v4, "LockSettingsService"

    const-string v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 4260
    nop

    .end local v2    # "handle":J
    goto :goto_10

    .line 4261
    :cond_43
    monitor-exit v0

    .line 4262
    return-void

    .line 4261
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private activateEscrowTokensForDualDAR(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I[B)V
    .registers 15
    .param p1, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I
    .param p3, "userCredential"    # [B

    .line 4474
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4475
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 4476
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4477
    .local v2, "handle":J
    const-string v4, "LockSettingsService"

    const-string v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4478
    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getPendingTokenForDualDAR(IJ)[B

    move-result-object v8

    .line 4479
    .local v8, "pendingToken":[B
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v4

    move v10, v4

    .line 4480
    .local v10, "result":Z
    if-eqz v10, :cond_52

    .line 4481
    move-object v4, p0

    move-wide v5, v2

    move v7, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokenForDualDAR(JI[B[B)V

    .line 4482
    .end local v2    # "handle":J
    .end local v8    # "pendingToken":[B
    .end local v10    # "result":Z
    :cond_52
    goto :goto_10

    .line 4483
    :cond_53
    monitor-exit v0

    .line 4484
    return-void

    .line 4483
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 14
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 4204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add escrow token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 4205
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "token"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 4206
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4207
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->addEscrowToken([BI)J

    move-result-wide v0

    return-wide v0

    .line 4211
    :cond_3d
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4214
    const/4 v1, 0x0

    .line 4215
    .local v1, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_start_41
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-nez v2, :cond_72

    .line 4216
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 4217
    const/4 v2, 0x0

    .line 4218
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    .line 4217
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v2

    move-object v1, v2

    .line 4219
    invoke-direct {p0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordInitialized(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    goto :goto_72

    .line 4221
    :cond_5b
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 4222
    .local v4, "pwdHandle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    .line 4223
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    .line 4222
    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v1, v2

    .line 4226
    .end local v4    # "pwdHandle":J
    :cond_72
    :goto_72
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 4227
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 4228
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->restoreEscrowDataIfNeededLocked(I)V

    .line 4229
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_87

    goto :goto_8f

    .line 4230
    :cond_87
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Escrow token is disabled on the current user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "token":[B
    .end local p2    # "userId":I
    .end local p3    # "callback":Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    throw v2

    .line 4233
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "token":[B
    .restart local p2    # "userId":I
    .restart local p3    # "callback":Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    :cond_8f
    :goto_8f
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v2

    .line 4234
    .local v2, "handle":J
    if-eqz v1, :cond_b6

    .line 4239
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 4240
    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getPendingTokenForDualDAR(IJ)[B

    move-result-object v8

    .line 4241
    .local v8, "pendingToken":[B
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 4242
    const/4 v9, 0x0

    move-object v4, p0

    move-wide v5, v2

    move v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokenForDualDAR(JI[B[B)V

    .line 4244
    .end local v8    # "pendingToken":[B
    :cond_b0
    goto :goto_b6

    .line 4245
    :cond_b1
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 4249
    :cond_b6
    :goto_b6
    monitor-exit v0

    return-wide v2

    .line 4250
    .end local v1    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v2    # "handle":J
    :catchall_b8
    move-exception v1

    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_41 .. :try_end_ba} :catchall_b8

    throw v1
.end method

.method private addUserKeyAuth(I[B[B)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    .line 2634
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2635
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2636
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2639
    .local v1, "callingId":J
    :try_start_11
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->getChangedStorageSecretIfDualDAR(I[B)[B

    move-result-object v3

    move-object p3, v3

    .line 2641
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v3, p1, v4, p2, p3}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1d} :catch_24
    .catchall {:try_start_11 .. :try_end_1d} :catchall_22

    .line 2645
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2646
    nop

    .line 2647
    return-void

    .line 2645
    :catchall_22
    move-exception v3

    goto :goto_3c

    .line 2642
    :catch_24
    move-exception v3

    .line 2643
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_25
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add new key to vold "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "callingId":J
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "token":[B
    .end local p3    # "secret":[B
    throw v4
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_22

    .line 2645
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v1    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "token":[B
    .restart local p3    # "secret":[B
    :goto_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2646
    throw v3
.end method

.method private callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3377
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3379
    :try_start_10
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveVendorAuthSecret()[B

    move-result-object v0

    .line 3380
    .local v0, "rawSecret":[B
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3381
    .local v1, "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    array-length v3, v0

    if-ge v2, v3, :cond_2a

    .line 3382
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3384
    .end local v2    # "i":I
    :cond_2a
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    invoke-interface {v2, v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->primaryUserCredential(Ljava/util/ArrayList;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2f} :catch_30

    .line 3387
    .end local v0    # "rawSecret":[B
    .end local v1    # "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto :goto_38

    .line 3385
    :catch_30
    move-exception v0

    .line 3386
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to pass primary user secret to AuthSecret HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3389
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_38
    :goto_38
    return-void
.end method

.method private final checkBiometricPermission()V
    .registers 4

    .line 1372
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    const-string v2, "LockSettingsBiometric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    return-void
.end method

.method private checkLockMaterialsTraced(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 13
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I

    .line 6191
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6192
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 6196
    .local v1, "callingPid":I
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 6197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 6196
    const-string v4, "Check accessor - UID : %d, PID : %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6198
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 6200
    const-string v4, "Hidden"

    const-string v7, "Empty"

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v8

    if-eqz v8, :cond_32

    goto :goto_34

    :cond_32
    move-object v8, v4

    goto :goto_35

    :cond_34
    :goto_34
    move-object v8, v7

    :goto_35
    aput-object v8, v3, v5

    .line 6201
    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v5

    if-eqz v5, :cond_40

    :cond_3f
    move-object v4, v7

    :cond_40
    aput-object v4, v3, v6

    .line 6202
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    const-string v4, "Yes"

    goto :goto_4d

    :cond_4b
    const-string v4, "No"

    :goto_4d
    aput-object v4, v3, v2

    const/4 v2, 0x3

    .line 6203
    if-eqz p1, :cond_57

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    goto :goto_58

    :cond_57
    const/4 v4, -0x1

    :goto_58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 6198
    const-string v2, "Check requisites - Given : %s, Saved : %s, Unified : %s, Type : %d, User : %d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6204
    return-void
.end method

.method private final checkPasswordHavePermission(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1341
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_28

    .line 1342
    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "28251513"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1344
    :cond_28
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "LockSettingsHave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1337
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .registers 13
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1350
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    const-string v4, " for user "

    const-string v5, " to read "

    const-string v6, " needs permission "

    const-string/jumbo v7, "uid="

    if-ge v1, v3, :cond_50

    .line 1351
    aget-object v2, v2, v1

    .line 1352
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_26

    goto :goto_4d

    .line 1354
    :cond_26
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1350
    .end local v2    # "key":Ljava/lang/String;
    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1360
    .end local v1    # "i":I
    :cond_50
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_51
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_93

    .line 1361
    aget-object v2, v2, v1

    .line 1362
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_69

    goto :goto_90

    .line 1364
    :cond_69
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1360
    .end local v2    # "key":Ljava/lang/String;
    :cond_90
    :goto_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 1369
    .end local v1    # "i":I
    :cond_93
    return-void
.end method

.method private checkSdpEngineListStatus()Z
    .registers 23

    .line 6248
    const-string v1, "/data/system/users"

    .line 6249
    .local v1, "BASE_DIR":Ljava/lang/String;
    const-string/jumbo v2, "sdp_engine_list.xml"

    .line 6250
    .local v2, "ENGINE_LIST_XML":Ljava/lang/String;
    const-string v3, "engine"

    .line 6251
    .local v3, "TAG_ENGINE":Ljava/lang/String;
    const-string v4, "alias"

    .line 6252
    .local v4, "ATTR_ALIAS":Ljava/lang/String;
    const-string/jumbo v5, "id"

    .line 6254
    .local v5, "ATTR_ID":Ljava/lang/String;
    const/4 v6, 0x0

    .line 6255
    .local v6, "ATTR_ALIAS_IDX":I
    const/4 v7, 0x1

    .line 6257
    .local v7, "ATTR_ID_IDX":I
    const/4 v8, 0x0

    .line 6259
    .local v8, "engineExist":Z
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/system/users/sdp_engine_list.xml"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 6260
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_26

    .line 6261
    const-string v0, "LockSettingsService"

    const-string v11, "Failed to get engine list due to non-existence..."

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6262
    return v10

    .line 6264
    :cond_26
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v11, v0

    .line 6265
    .local v11, "engineListFile":Landroid/util/AtomicFile;
    const/4 v12, 0x1

    .line 6266
    .local v12, "noError":Z
    :try_start_2d
    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_f1

    move-object v13, v0

    .line 6268
    .local v13, "fis":Ljava/io/FileInputStream;
    :try_start_32
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 6269
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 6270
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v15, "UTF-8"

    invoke-interface {v14, v13, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6272
    const-string v15, ""

    .line 6273
    .local v15, "attrAlias":Ljava/lang/String;
    const/16 v16, -0x1

    .line 6274
    .local v16, "attrId":I
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v17

    move/from16 v10, v17

    .line 6276
    .local v10, "eventType":I
    :goto_49
    if-nez v8, :cond_d1

    move-object/from16 v18, v0

    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v18, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v0, 0x1

    if-eq v10, v0, :cond_cc

    .line 6277
    const/4 v0, 0x2

    if-eq v10, v0, :cond_59

    move-object/from16 v19, v1

    move-object/from16 v21, v2

    const/4 v0, 0x0

    goto :goto_b8

    .line 6279
    :cond_59
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_32 .. :try_end_5d} :catchall_dd

    .line 6280
    .local v0, "tag":Ljava/lang/String;
    move-object/from16 v19, v1

    .end local v1    # "BASE_DIR":Ljava/lang/String;
    .local v19, "BASE_DIR":Ljava/lang/String;
    :try_start_5f
    const-string v1, "engine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 6281
    const-string v1, "alias"
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_c7

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    const/4 v0, 0x0

    .end local v0    # "tag":Ljava/lang/String;
    .end local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    .local v20, "tag":Ljava/lang/String;
    .local v21, "ENGINE_LIST_XML":Ljava/lang/String;
    :try_start_6e
    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    const-string/jumbo v0, "id"

    .line 6282
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 6283
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .line 6284
    nop

    .line 6285
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 6284
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    .line 6287
    if-ltz v16, :cond_a1

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a1

    goto :goto_a2

    :cond_a1
    move v1, v0

    :goto_a2
    move v12, v1

    .end local v12    # "noError":Z
    .local v1, "noError":Z
    goto :goto_a7

    .line 6282
    .end local v1    # "noError":Z
    .restart local v12    # "noError":Z
    :cond_a4
    const/4 v0, 0x0

    goto :goto_a7

    .line 6281
    :cond_a6
    const/4 v0, 0x0

    .line 6289
    :goto_a7
    if-eqz v12, :cond_ab

    .line 6290
    const/4 v8, 0x1

    goto :goto_b8

    .line 6292
    :cond_ab
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Suspicious of damaged file..."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v3    # "TAG_ENGINE":Ljava/lang/String;
    .end local v4    # "ATTR_ALIAS":Ljava/lang/String;
    .end local v5    # "ATTR_ID":Ljava/lang/String;
    .end local v6    # "ATTR_ALIAS_IDX":I
    .end local v7    # "ATTR_ID_IDX":I
    .end local v8    # "engineExist":Z
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "engineListFile":Landroid/util/AtomicFile;
    .end local v12    # "noError":Z
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .end local v19    # "BASE_DIR":Ljava/lang/String;
    .end local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    throw v0

    .line 6280
    .end local v20    # "tag":Ljava/lang/String;
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    .restart local v3    # "TAG_ENGINE":Ljava/lang/String;
    .restart local v4    # "ATTR_ALIAS":Ljava/lang/String;
    .restart local v5    # "ATTR_ID":Ljava/lang/String;
    .restart local v6    # "ATTR_ALIAS_IDX":I
    .restart local v7    # "ATTR_ID_IDX":I
    .restart local v8    # "engineExist":Z
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "engineListFile":Landroid/util/AtomicFile;
    .restart local v12    # "noError":Z
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "BASE_DIR":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    :cond_b3
    move-object/from16 v20, v0

    move-object/from16 v21, v2

    const/4 v0, 0x0

    .line 6299
    .end local v0    # "tag":Ljava/lang/String;
    .end local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    .restart local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    :goto_b8
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_bc
    .catchall {:try_start_6e .. :try_end_bc} :catchall_c4

    move v10, v1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    goto :goto_49

    .line 6266
    .end local v10    # "eventType":I
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "attrAlias":Ljava/lang/String;
    .end local v16    # "attrId":I
    .end local v18    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catchall_c4
    move-exception v0

    move-object v1, v0

    goto :goto_e3

    .end local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    .restart local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    :catchall_c7
    move-exception v0

    move-object/from16 v21, v2

    move-object v1, v0

    .end local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    .restart local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    goto :goto_e3

    .line 6276
    .end local v19    # "BASE_DIR":Ljava/lang/String;
    .end local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    .local v1, "BASE_DIR":Ljava/lang/String;
    .restart local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    .restart local v10    # "eventType":I
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "attrAlias":Ljava/lang/String;
    .restart local v16    # "attrId":I
    .restart local v18    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_cc
    move-object/from16 v19, v1

    move-object/from16 v21, v2

    .end local v1    # "BASE_DIR":Ljava/lang/String;
    .end local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    .restart local v19    # "BASE_DIR":Ljava/lang/String;
    .restart local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    goto :goto_d7

    .end local v18    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v19    # "BASE_DIR":Ljava/lang/String;
    .end local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v1    # "BASE_DIR":Ljava/lang/String;
    .restart local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    :cond_d1
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v21, v2

    .line 6301
    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1    # "BASE_DIR":Ljava/lang/String;
    .end local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    .end local v10    # "eventType":I
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "attrAlias":Ljava/lang/String;
    .end local v16    # "attrId":I
    .restart local v19    # "BASE_DIR":Ljava/lang/String;
    .restart local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    :goto_d7
    if-eqz v13, :cond_dc

    :try_start_d9
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_ef

    .line 6303
    .end local v13    # "fis":Ljava/io/FileInputStream;
    :cond_dc
    goto :goto_fe

    .line 6266
    .end local v19    # "BASE_DIR":Ljava/lang/String;
    .end local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    .restart local v1    # "BASE_DIR":Ljava/lang/String;
    .restart local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    :catchall_dd
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v21, v2

    move-object v1, v0

    .end local v1    # "BASE_DIR":Ljava/lang/String;
    .end local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    .restart local v19    # "BASE_DIR":Ljava/lang/String;
    .restart local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    :goto_e3
    if-eqz v13, :cond_ee

    :try_start_e5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_e9

    goto :goto_ee

    :catchall_e9
    move-exception v0

    move-object v2, v0

    :try_start_eb
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "TAG_ENGINE":Ljava/lang/String;
    .end local v4    # "ATTR_ALIAS":Ljava/lang/String;
    .end local v5    # "ATTR_ID":Ljava/lang/String;
    .end local v6    # "ATTR_ALIAS_IDX":I
    .end local v7    # "ATTR_ID_IDX":I
    .end local v8    # "engineExist":Z
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "engineListFile":Landroid/util/AtomicFile;
    .end local v12    # "noError":Z
    .end local v19    # "BASE_DIR":Ljava/lang/String;
    .end local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    :cond_ee
    :goto_ee
    throw v1
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ef} :catch_ef

    .line 6301
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "TAG_ENGINE":Ljava/lang/String;
    .restart local v4    # "ATTR_ALIAS":Ljava/lang/String;
    .restart local v5    # "ATTR_ID":Ljava/lang/String;
    .restart local v6    # "ATTR_ALIAS_IDX":I
    .restart local v7    # "ATTR_ID_IDX":I
    .restart local v8    # "engineExist":Z
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "engineListFile":Landroid/util/AtomicFile;
    .restart local v12    # "noError":Z
    .restart local v19    # "BASE_DIR":Ljava/lang/String;
    .restart local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    :catch_ef
    move-exception v0

    goto :goto_f6

    .end local v19    # "BASE_DIR":Ljava/lang/String;
    .end local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    .restart local v1    # "BASE_DIR":Ljava/lang/String;
    .restart local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    :catch_f1
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v21, v2

    .line 6302
    .end local v1    # "BASE_DIR":Ljava/lang/String;
    .end local v2    # "ENGINE_LIST_XML":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "BASE_DIR":Ljava/lang/String;
    .restart local v21    # "ENGINE_LIST_XML":Ljava/lang/String;
    :goto_f6
    const-string v1, "LockSettingsService.SDP"

    const-string/jumbo v2, "read sdp engine failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6304
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_fe
    return v8
.end method

.method private checkSdpStatus()Z
    .registers 5

    .line 6230
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwner(I)Z

    move-result v0

    .line 6230
    invoke-static {v0}, Lcom/android/server/SdpManagerService$KnoxUtil;->updateDeviceOwnerStatus(Z)V

    .line 6233
    const/4 v0, 0x0

    .line 6234
    .local v0, "sdpStatus":Z
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkSdpEngineListStatus()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 6235
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/android/server/locksettings/-$$Lambda$yT1-aMIiWt_VZVW2t-68ANkFwpY;->INSTANCE:Lcom/android/server/locksettings/-$$Lambda$yT1-aMIiWt_VZVW2t-68ANkFwpY;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 6236
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 6238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdpEngineList Exists, Sdp service now ready [ res : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    goto :goto_48

    .line 6240
    :cond_43
    const-string v1, "SdpEngineList is Empty."

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 6242
    :goto_48
    return v0
.end method

.method private checkWeaverStatus()V
    .registers 3

    .line 6498
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 6499
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->checkWeaverStatus()V

    .line 6500
    monitor-exit v0

    .line 6502
    return-void

    .line 6500
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private final checkWritePermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1333
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    return-void
.end method

.method private cleanupAbnormalState()V
    .registers 22

    .line 5678
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 5680
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_b

    return-void

    .line 5683
    :cond_b
    const/4 v0, 0x0

    .line 5685
    .local v0, "isCleanup":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_179

    .line 5686
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 5687
    .local v4, "userId":I
    new-instance v6, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    .line 5688
    .local v6, "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    invoke-virtual {v6}, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->reset()V

    .line 5689
    iput v4, v6, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->userId:I

    .line 5690
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockPasswordData:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5691
    const/16 v7, 0x64

    if-ge v4, v7, :cond_173

    .line 5692
    invoke-virtual {v1, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v7

    .line 5693
    .local v7, "handle":J
    const-string/jumbo v9, "lockscreen.password_type"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v9, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v12

    .line 5694
    .local v12, "passwordQuality":J
    invoke-direct {v1, v4}, Lcom/android/server/locksettings/LockSettingsService;->getValidSyntheticPasswordHandleLocked(I)J

    move-result-wide v14

    .line 5695
    .local v14, "validHandle":J
    const/4 v9, 0x5

    new-array v10, v9, [Ljava/lang/Object;

    .line 5696
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v10, v16

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v9, 0x1

    aput-object v11, v10, v9

    long-to-int v11, v12

    move-object/from16 v18, v6

    .end local v6    # "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    .local v18, "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    int-to-long v5, v11

    invoke-direct {v1, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->passwordQualityToString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v10, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v11, 0x3

    aput-object v5, v10, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v11, 0x4

    aput-object v5, v10, v11

    .line 5695
    const-string v5, "cleanupAbnormalState() handle=%d(%x) passwordQuality=%s validHandle=%d(%x)"

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "LockSettingsService"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5697
    cmp-long v5, v7, v14

    if-eqz v5, :cond_b5

    .line 5698
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    .line 5700
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v10, v16

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v10, v9

    long-to-int v9, v12

    move-wide/from16 v19, v12

    .end local v12    # "passwordQuality":J
    .local v19, "passwordQuality":J
    int-to-long v11, v9

    invoke-direct {v1, v11, v12}, Lcom/android/server/locksettings/LockSettingsService;->passwordQualityToString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v10, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v11, 0x4

    aput-object v6, v10, v11

    .line 5699
    const-string v6, "cleanupAbnormalState() handle=%d(%x) passwordQuality=%s validHandle=%d(%x)"

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 5698
    invoke-virtual {v5, v9, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 5701
    const-string/jumbo v5, "sp-handle"

    invoke-virtual {v1, v5, v14, v15, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5702
    const/4 v0, 0x1

    move v5, v0

    goto :goto_b8

    .line 5697
    .end local v19    # "passwordQuality":J
    .restart local v12    # "passwordQuality":J
    :cond_b5
    move-wide/from16 v19, v12

    .end local v12    # "passwordQuality":J
    .restart local v19    # "passwordQuality":J
    move v5, v0

    .line 5705
    .end local v0    # "isCleanup":Z
    .local v5, "isCleanup":Z
    :goto_b8
    const/4 v6, -0x1

    .line 5706
    .local v6, "credentialType":I
    const/4 v9, 0x0

    .line 5707
    .local v9, "isSyntheticPassword":Z
    iget-object v10, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v10

    .line 5708
    :try_start_bd
    invoke-direct {v1, v4}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    move v9, v0

    .line 5709
    if-eqz v9, :cond_cb

    .line 5710
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v14, v15, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v0

    move v6, v0

    .line 5712
    :cond_cb
    monitor-exit v10
    :try_end_cc
    .catchall {:try_start_bd .. :try_end_cc} :catchall_170

    .line 5714
    if-nez v9, :cond_e1

    .line 5715
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 5716
    const/4 v6, 0x4

    goto :goto_e1

    .line 5717
    :cond_d8
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 5718
    const/4 v6, 0x1

    .line 5722
    :cond_e1
    :goto_e1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cleanupAbnormalState() : credentialType="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "LockSettingsService"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5723
    const/4 v0, -0x1

    if-eq v6, v0, :cond_152

    const/4 v0, 0x1

    if-eq v6, v0, :cond_13b

    const/4 v0, 0x4

    if-eq v6, v0, :cond_101

    goto :goto_167

    .line 5741
    :cond_101
    const-wide/32 v10, 0x20000

    cmp-long v0, v19, v10

    if-eqz v0, :cond_167

    const-wide/32 v10, 0x30000

    cmp-long v0, v19, v10

    if-eqz v0, :cond_167

    const-wide/32 v10, 0x40000

    cmp-long v0, v19, v10

    if-eqz v0, :cond_167

    const-wide/32 v10, 0x50000

    cmp-long v0, v19, v10

    if-eqz v0, :cond_167

    const-wide/32 v10, 0x60000

    cmp-long v0, v19, v10

    if-eqz v0, :cond_167

    const-wide/32 v12, 0x80000

    cmp-long v0, v19, v12

    if-eqz v0, :cond_167

    .line 5747
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string v12, "cleanupAbnormalState() : password quailty is mismatched 3"

    const/4 v13, 0x3

    invoke-virtual {v0, v13, v12}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 5749
    const-string/jumbo v0, "lockscreen.password_type"

    invoke-virtual {v1, v0, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5750
    const/4 v5, 0x1

    goto :goto_167

    .line 5733
    :cond_13b
    const-wide/32 v10, 0x10000

    cmp-long v0, v19, v10

    if-eqz v0, :cond_167

    .line 5734
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string v12, "cleanupAbnormalState() : password quailty is mismatched 2"

    const/4 v13, 0x3

    invoke-virtual {v0, v13, v12}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 5736
    const-string/jumbo v0, "lockscreen.password_type"

    invoke-virtual {v1, v0, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5737
    const/4 v5, 0x1

    goto :goto_167

    .line 5725
    :cond_152
    const-wide/16 v10, 0x0

    cmp-long v0, v19, v10

    if-eqz v0, :cond_167

    .line 5726
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string v12, "cleanupAbnormalState() : password quailty is mismatched 1"

    const/4 v13, 0x3

    invoke-virtual {v0, v13, v12}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 5728
    const-string/jumbo v0, "lockscreen.password_type"

    invoke-virtual {v1, v0, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5729
    const/4 v5, 0x1

    .line 5756
    :cond_167
    :goto_167
    if-eqz v5, :cond_16e

    .line 5757
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->getPWFilelistForLog(I)V

    .line 5685
    .end local v4    # "userId":I
    .end local v6    # "credentialType":I
    .end local v7    # "handle":J
    .end local v9    # "isSyntheticPassword":Z
    .end local v14    # "validHandle":J
    .end local v18    # "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    .end local v19    # "passwordQuality":J
    :cond_16e
    move v0, v5

    goto :goto_175

    .line 5712
    .restart local v4    # "userId":I
    .restart local v6    # "credentialType":I
    .restart local v7    # "handle":J
    .restart local v9    # "isSyntheticPassword":Z
    .restart local v14    # "validHandle":J
    .restart local v18    # "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    .restart local v19    # "passwordQuality":J
    :catchall_170
    move-exception v0

    :try_start_171
    monitor-exit v10
    :try_end_172
    .catchall {:try_start_171 .. :try_end_172} :catchall_170

    throw v0

    .line 5691
    .end local v5    # "isCleanup":Z
    .end local v7    # "handle":J
    .end local v9    # "isSyntheticPassword":Z
    .end local v14    # "validHandle":J
    .end local v18    # "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    .end local v19    # "passwordQuality":J
    .restart local v0    # "isCleanup":Z
    .local v6, "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    :cond_173
    move-object/from16 v18, v6

    .line 5685
    .end local v4    # "userId":I
    .end local v6    # "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    :goto_175
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 5761
    .end local v3    # "i":I
    :cond_179
    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "migrated : if no password saved, clear lock type."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5763
    if-eqz v0, :cond_189

    .line 5764
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 5766
    :cond_189
    return-void
.end method

.method private cleanupDataForReusedUserIdIfNecessary(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 948
    if-nez p1, :cond_3

    .line 950
    return-void

    .line 953
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 955
    .local v0, "serialNumber":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "serial-number"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v1

    .line 956
    .local v1, "storedSerialNumber":I
    if-eq v1, v0, :cond_20

    .line 961
    if-eq v1, v3, :cond_1b

    .line 962
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    .line 964
    :cond_1b
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, v2, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    .line 966
    :cond_20
    return-void
.end method

.method private clearStorageForUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 6184
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6185
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 6187
    :cond_b
    return-void
.end method

.method private clearUserKeyProtection(I[B)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "secret"    # [B

    .line 2582
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2584
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2585
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2588
    .local v1, "callingId":J
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getChangedStorageSecretIfDualDAR(I[B)[B

    move-result-object v3

    move-object p2, v3

    .line 2590
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/os/storage/IStorageManager;->clearUserKeyAuth(II[B[B)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_25
    .catchall {:try_start_11 .. :try_end_1e} :catchall_23

    .line 2594
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2595
    nop

    .line 2596
    return-void

    .line 2594
    :catchall_23
    move-exception v3

    goto :goto_3d

    .line 2591
    :catch_25
    move-exception v3

    .line 2592
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_26
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearUserKeyAuth failed user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "callingId":J
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "secret":[B
    throw v4
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_23

    .line 2594
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v1    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "secret":[B
    :goto_3d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2595
    throw v3
.end method

.method private clearUserKeyProtection(I[B[B)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    .line 2564
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2566
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2567
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2570
    .local v1, "callingId":J
    :try_start_11
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->getChangedStorageSecretIfDualDAR(I[B)[B

    move-result-object v3

    move-object p3, v3

    .line 2572
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v3, p1, v4, p2, p3}, Landroid/os/storage/IStorageManager;->clearUserKeyAuth(II[B[B)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1d} :catch_24
    .catchall {:try_start_11 .. :try_end_1d} :catchall_22

    .line 2576
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2577
    nop

    .line 2578
    return-void

    .line 2576
    :catchall_22
    move-exception v3

    goto :goto_3c

    .line 2573
    :catch_24
    move-exception v3

    .line 2574
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_25
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearUserKeyAuth failed user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "callingId":J
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "token":[B
    .end local p3    # "secret":[B
    throw v4
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_22

    .line 2576
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v1    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "token":[B
    .restart local p3    # "secret":[B
    :goto_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2577
    throw v3
.end method

.method private convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 3
    .param p1, "gateKeeperResponse"    # Landroid/service/gatekeeper/GateKeeperResponse;

    .line 2400
    invoke-static {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private createPattern(Ljava/lang/String;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 5
    .param p1, "patternString"    # Ljava/lang/String;

    .line 3017
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 3018
    .local v0, "patternBytes":[B
    nop

    .line 3019
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v1

    .line 3018
    invoke-static {v1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 3020
    .local v1, "pattern":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 3021
    return-object v1
.end method

.method private static credentialTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "credentialType"    # I

    .line 4635
    const/4 v0, -0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x1

    if-eq p0, v0, :cond_24

    const/4 v0, 0x3

    if-eq p0, v0, :cond_21

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    .line 4645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4643
    :cond_1e
    const-string v0, "Password"

    return-object v0

    .line 4641
    :cond_21
    const-string v0, "Pin"

    return-object v0

    .line 4639
    :cond_24
    const-string v0, "Pattern"

    return-object v0

    .line 4637
    :cond_27
    const-string v0, "None"

    return-object v0
.end method

.method private deriveTokenForDualDAR([B)[B
    .registers 3
    .param p1, "token"    # [B

    .line 4449
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deriveResetTokenForDualDAR([B)[B

    move-result-object v0

    return-object v0
.end method

.method private disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 4757
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4758
    const-string v0, "LockSettingsService.SDP"

    const-string v1, "Virtual user can have escrow token"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    return-void

    .line 4762
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    .line 4765
    .local v0, "userManagerInternal":Landroid/os/UserManagerInternal;
    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->isUserManaged(I)Z

    move-result v1

    const-string v2, "LockSettingsService"

    if-eqz v1, :cond_22

    .line 4777
    const-string v1, "Managed profile can have escrow token"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4778
    return-void

    .line 4783
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isKnoxAdminActivated(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4784
    const-string v1, "User with knox admin can have escrow token"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4785
    return-void

    .line 4790
    :cond_2e
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->isDeviceManaged()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 4791
    const-string v1, "Corp-owned device can have escrow token"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    return-void

    .line 4798
    :cond_3a
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDeviceStateCache()Landroid/app/admin/DeviceStateCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DeviceStateCache;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 4799
    const-string v1, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    return-void

    .line 4804
    :cond_4c
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 4805
    return-void

    .line 4809
    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling escrow token on user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4810
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 4811
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyEscrowData(I)V

    .line 4813
    :cond_7a
    return-void
.end method

.method private doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "challengeType"    # I
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 2776
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 21
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "challengeType"    # I
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "IJI",
            "Lcom/android/internal/widget/ICheckCredentialProgressCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)",
            "Lcom/android/internal/widget/VerifyCredentialResponse;"
        }
    .end annotation

    .line 2789
    .local p7, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify credential for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 2790
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-eqz v9, :cond_27

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    goto :goto_2a

    :cond_27
    const-string/jumbo v1, "null"

    :goto_2a
    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, "credentialType"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 2791
    if-eqz v9, :cond_3a

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v3

    goto :goto_3b

    :cond_3a
    const/4 v3, -0x1

    :goto_3b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v3, "userId"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 2790
    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 2792
    invoke-static/range {p5 .. p5}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2793
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    move-object v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0

    .line 2798
    :cond_68
    if-eqz v9, :cond_101

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_101

    .line 2801
    const/16 v0, -0x270f

    const-string v1, "LockSettingsService"

    if-ne v10, v0, :cond_8e

    iget-object v3, v8, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iget-object v4, v8, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsGlobalGetInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8e

    .line 2803
    const-string v0, "FRP credential can only be verified prior to provisioning."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2806
    :cond_8e
    const/4 v3, 0x0

    .line 2807
    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    .line 2810
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v11, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-eqz v11, :cond_a2

    .line 2811
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_a1

    .line 2812
    invoke-direct {p0, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    .line 2813
    invoke-direct {p0, p1, v10}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2815
    :cond_a1
    return-object v11

    .line 2818
    :cond_a2
    if-ne v10, v0, :cond_ac

    .line 2819
    const-string v0, "Unexpected FRP credential type, should be SP based."

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2823
    :cond_ac
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v12

    .line 2824
    .local v12, "storedHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    iget v0, v12, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockscreenCredential;->checkAgainstStoredType(I)Z

    move-result v0

    if-nez v0, :cond_e4

    .line 2825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " passed in: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2827
    .local v0, "s":Ljava/lang/String;
    iget-object v3, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 2828
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 2832
    .end local v0    # "s":Ljava/lang/String;
    :cond_e4
    move-object v0, p0

    move/from16 v1, p5

    move-object v2, v12

    move-object v3, p1

    move v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Lcom/android/internal/widget/LockscreenCredential;IJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2835
    .end local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_100

    .line 2836
    invoke-direct {p0, v0, v10}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    .line 2837
    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1, v10}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 2840
    :cond_100
    return-object v0

    .line 2799
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v12    # "storedHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    :cond_101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enableSyntheticPasswordLockedForFbe(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable sp for FBE: user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    const-string v0, "enable-sp-for-fbe"

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3509
    return-void
.end method

.method private enableSyntheticPasswordLockedForKeyStore(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable sp for KeyStore: user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3524
    const-string v0, "enable-sp-for-keystore"

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3525
    return-void
.end method

.method private enforceFrpResolved()V
    .registers 7

    .line 1321
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1322
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    .line 1324
    .local v1, "inSetupWizard":Z
    :goto_16
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    const-string/jumbo v5, "secure_frp_mode"

    invoke-virtual {v4, v0, v5, v3, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_22

    move v3, v2

    :cond_22
    move v2, v3

    .line 1326
    .local v2, "secureFrp":Z
    if-eqz v1, :cond_30

    if-nez v2, :cond_28

    goto :goto_30

    .line 1327
    :cond_28
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Cannot change credential in SUW while factory reset protection is not resolved yet"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1330
    :cond_30
    :goto_30
    return-void
.end method

.method private enforceShell()V
    .registers 3

    .line 3168
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3171
    return-void

    .line 3169
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enrollCredential([B[B[BI)[B
    .registers 9
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # [B
    .param p3, "toEnroll"    # [B
    .param p4, "userId"    # I

    .line 2480
    const-string v0, "LockSettingsService"

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2483
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p4, p1, p2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_22

    .line 2488
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 2490
    if-nez v2, :cond_12

    .line 2491
    return-object v1

    .line 2494
    :cond_12
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 2495
    .local v1, "hash":[B
    if-eqz v1, :cond_1c

    .line 2496
    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_21

    .line 2499
    :cond_1c
    const-string v3, "Throttled while enrolling a password"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :goto_21
    return-object v1

    .line 2485
    .end local v1    # "hash":[B
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_22
    move-exception v2

    .line 2486
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to enroll credential"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2487
    return-object v1
.end method

.method private ensureProfileKeystoreUnlocked(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 974
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 975
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_2f

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 976
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 977
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 978
    const-string v1, "LockSettingsService"

    const-string v2, "Managed profile got unlocked, will unlock its keystore"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZIJLjava/util/ArrayList;)V

    .line 985
    :cond_2f
    return-void
.end method

.method private faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;
    .registers 3
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 4044
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$5;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private fetchOuterLayerKey(I)[B
    .registers 5
    .param p1, "userId"    # I

    .line 5923
    const-string v0, "LockSettingsService"

    const-string v1, "fetchOuterLayerKey()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5924
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    move-result-object v1

    .line 5925
    .local v1, "outerLayerKey":[B
    const-string v2, "fetchOuterLayerKey Finished"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5926
    return-object v1
.end method

.method private finalizeLegacyResetRequest(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 6339
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$JZxHUmIODffKxDi9ikfq2ZKxw6I;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$JZxHUmIODffKxDi9ikfq2ZKxw6I;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6341
    return-void
.end method

.method private fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .registers 3
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 4025
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$4;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private fixateNewestUserKeyAuth(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 2650
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2652
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2654
    .local v0, "callingId":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_17
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    .line 2660
    nop

    :goto_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2661
    goto :goto_21

    .line 2660
    :catchall_15
    move-exception v2

    goto :goto_22

    .line 2655
    :catch_17
    move-exception v2

    .line 2658
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_18
    const-string v3, "LockSettingsService"

    const-string v4, "fixateNewestUserKeyAuth failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_15

    .line 2660
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_11

    .line 2662
    :goto_21
    return-void

    .line 2660
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2661
    throw v2
.end method

.method private gateKeeperClearSecureUserId(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 3356
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 3359
    goto :goto_10

    .line 3357
    :catch_8
    move-exception v0

    .line 3358
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to clear SID"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3360
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method private generateRandomProfilePassword(I)Lcom/android/internal/widget/LockscreenCredential;
    .registers 9
    .param p1, "managedUserId"    # I

    .line 398
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 400
    .local v1, "randomLockSeed":[B
    :try_start_3
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    move-object v1, v2

    .line 401
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .line 402
    .local v2, "newPasswordChars":[C
    array-length v3, v2

    new-array v3, v3, [B

    .line 403
    .local v3, "newPassword":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    array-length v5, v2

    if-ge v4, v5, :cond_23

    .line 404
    aget-char v5, v2, v4

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 403
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 406
    .end local v4    # "i":I
    :cond_23
    nop

    .line 407
    invoke-static {v3}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    .line 408
    .local v4, "credential":Lcom/android/internal/widget/LockscreenCredential;
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 409
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 410
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_31} :catch_32

    .line 411
    return-object v4

    .line 412
    .end local v2    # "newPasswordChars":[C
    .end local v3    # "newPassword":[B
    .end local v4    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :catch_32
    move-exception v0

    .line 414
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "childprofile_key_fail_reason"

    const-string v3, ""

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "ChildProfileKeyFailReason":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "Fail to generate profile password"

    if-eqz v4, :cond_59

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 419
    :cond_59
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getAuthSecretHal()V
    .registers 4

    .line 1125
    const-string v0, "LockSettingsService"

    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService(Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_9} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_17

    .line 1128
    :catch_a
    move-exception v1

    .line 1129
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to get AuthSecret HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 1126
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_11
    move-exception v1

    .line 1127
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "Device doesn\'t implement AuthSecret HAL"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_17
    nop

    .line 1131
    :goto_18
    return-void
.end method

.method private getChangedStorageSecretIfDualDAR(I[B)[B
    .registers 5
    .param p1, "userId"    # I
    .param p2, "profileStorageSecret"    # [B

    .line 5912
    const-string v0, "LockSettingsService"

    const-string v1, "getChangedStorageSecretIfDualDAR"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5914
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 5915
    return-object p2

    .line 5918
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->fetchOuterLayerKey(I)[B

    move-result-object p2

    .line 5919
    return-object p2
.end method

.method private getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;"
        }
    .end annotation

    .line 1958
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 1959
    :cond_8
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1960
    return-object v1

    .line 1962
    :cond_15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1963
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 1964
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1965
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    if-ge v3, v2, :cond_63

    .line 1966
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1967
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_34

    .line 1968
    goto :goto_60

    .line 1970
    :cond_34
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1971
    .local v5, "managedUserId":I
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1972
    goto :goto_60

    .line 1975
    :cond_3d
    :try_start_3d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/security/KeyStoreException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/security/InvalidKeyException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/security/cert/CertificateException; {:try_start_3d .. :try_end_48} :catch_49
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_48} :catch_49

    .line 1982
    goto :goto_60

    .line 1976
    :catch_49
    move-exception v6

    .line 1980
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LockSettingsService"

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1965
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    .end local v5    # "managedUserId":I
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1984
    .end local v3    # "i":I
    :cond_63
    return-object v0
.end method

.method private getFrpCredentialType()I
    .registers 5

    .line 1636
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    .line 1637
    .local v0, "data":Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_12

    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    if-eq v1, v2, :cond_12

    .line 1638
    const/4 v1, -0x1

    return v1

    .line 1640
    :cond_12
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getFrpCredentialType([B)I

    move-result v1

    .line 1641
    .local v1, "credentialType":I
    if-eq v1, v2, :cond_1b

    .line 1642
    return v1

    .line 1644
    :cond_1b
    iget v2, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v2

    return v2
.end method

.method private getKeyguardStoredQuality(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 1575
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getPendingTokenForDualDAR(IJ)[B
    .registers 8
    .param p1, "userId"    # I
    .param p2, "handle"    # J

    .line 4454
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4455
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingToken(IJ)[B

    move-result-object v1

    .line 4456
    .local v1, "pendingToken":[B
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_24

    .line 4460
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSecureMode(I)I

    move-result v0

    if-gtz v0, :cond_23

    .line 4461
    const/4 v0, 0x0

    if-eqz v1, :cond_17

    array-length v2, v1

    add-int/lit8 v2, v2, -0x40

    goto :goto_18

    :cond_17
    move v2, v0

    .line 4462
    .local v2, "len":I
    :goto_18
    if-lez v2, :cond_23

    .line 4463
    new-array v3, v2, [B

    .line 4464
    .local v3, "token":[B
    invoke-static {v1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4465
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->deriveTokenForDualDAR([B)[B

    move-result-object v1

    .line 4468
    .end local v2    # "len":I
    .end local v3    # "token":[B
    :cond_23
    return-object v1

    .line 4456
    .end local v1    # "pendingToken":[B
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private getPersonaService()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/pm/PersonaManagerService;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_14

    .line 739
    nop

    .line 740
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 742
    :cond_14
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getProcessName(I)Ljava/lang/String;
    .registers 8
    .param p1, "pid"    # I

    .line 6210
    const-string v0, "Unidentified"

    .line 6211
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6214
    .local v1, "identity":J
    :try_start_6
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->safe(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 6215
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v4, :cond_2a

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_2a

    .line 6217
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_28} :catch_2d
    .catchall {:try_start_6 .. :try_end_28} :catchall_2b

    move-object v0, v3

    .line 6218
    goto :goto_31

    .line 6220
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2a
    goto :goto_14

    .line 6224
    :catchall_2b
    move-exception v3

    goto :goto_36

    .line 6221
    :catch_2d
    move-exception v3

    .line 6222
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2b

    .line 6224
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6225
    nop

    .line 6226
    return-object v0

    .line 6224
    :goto_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6225
    throw v3
.end method

.method private getProfilesWithSameLockScreen(I)Ljava/util/Set;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2106
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2107
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2108
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, p1, :cond_2b

    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v3, p1, :cond_34

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 2110
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2111
    :cond_2b
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2113
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    :cond_34
    goto :goto_f

    .line 2114
    :cond_35
    return-object v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .registers 7
    .param p1, "userId"    # I

    .line 5337
    const-string/jumbo v0, "lockscreen.password_salt"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 5338
    .local v3, "salt":J
    cmp-long v1, v3, v1

    if-nez v1, :cond_3b

    .line 5340
    :try_start_d
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    move-wide v3, v1

    .line 5341
    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5342
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized lock password salt for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_31} :catch_32

    .line 5346
    goto :goto_3b

    .line 5343
    :catch_32
    move-exception v0

    .line 5345
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5348
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_3b
    :goto_3b
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 6534
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpManagerInternal:Lcom/android/server/sdp/SdpManagerInternal;

    if-nez v0, :cond_e

    .line 6535
    const-class v0, Lcom/android/server/sdp/SdpManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sdp/SdpManagerInternal;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpManagerInternal:Lcom/android/server/sdp/SdpManagerInternal;

    .line 6537
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpManagerInternal:Lcom/android/server/sdp/SdpManagerInternal;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getSdpManagerService()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/SdpManagerService;",
            ">;"
        }
    .end annotation

    .line 6530
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSdpManagerService()Lcom/android/server/SdpManagerService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getSecureMode(I)I
    .registers 7
    .param p1, "userId"    # I

    .line 6173
    const/4 v0, -0x1

    .line 6174
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 6175
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 6176
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    .line 6177
    .local v2, "handle":J
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSecureMode(JI)I

    move-result v4

    move v0, v4

    .line 6179
    .end local v2    # "handle":J
    :cond_15
    monitor-exit v1

    .line 6180
    return v0

    .line 6179
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v2
.end method

.method private getSecureState(Ljava/lang/String;)I
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .line 1518
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_82

    :cond_c
    goto :goto_4f

    :sswitch_d
    const-string/jumbo v0, "lockscreen.device_owner_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_50

    :sswitch_18
    const-string/jumbo v0, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_50

    :sswitch_23
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_50

    :sswitch_2e
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_50

    :sswitch_39
    const-string/jumbo v0, "lockscreen.lockout_biometric_attempt_deadline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v5

    goto :goto_50

    :sswitch_44
    const-string/jumbo v0, "lockscreen.samsung_biometric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_50

    :goto_4f
    const/4 v0, -0x1

    :goto_50
    if-eqz v0, :cond_7f

    if-eq v0, v5, :cond_7c

    if-eq v0, v4, :cond_79

    if-eq v0, v3, :cond_76

    if-eq v0, v2, :cond_76

    if-ne v0, v1, :cond_5f

    .line 1529
    const/16 v0, 0x100

    return v0

    .line 1531
    :cond_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1527
    :cond_76
    const/16 v0, 0x80

    return v0

    .line 1524
    :cond_79
    const/16 v0, 0x20

    return v0

    .line 1522
    :cond_7c
    const/16 v0, 0x40

    return v0

    .line 1520
    :cond_7f
    const/16 v0, 0x10

    return v0

    :sswitch_data_82
    .sparse-switch
        -0x621c9624 -> :sswitch_44
        -0x5391c05c -> :sswitch_39
        -0x235a20a5 -> :sswitch_2e
        0x14b21659 -> :sswitch_23
        0x5a7ac9f9 -> :sswitch_18
        0x7b733b6c -> :sswitch_d
    .end sparse-switch
.end method

.method private getSeparateProfileChallengeEnabledInternal(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1387
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1388
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "lockscreen.profilechallenge"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1389
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private getSyntheticPasswordTryHandleLocked(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 5670
    const-string/jumbo v0, "sp-handle-try"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValidSyntheticPasswordHandleLocked(I)J
    .registers 13
    .param p1, "userId"    # I

    .line 5610
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 5611
    const-wide/16 v1, 0x0

    if-nez p1, :cond_ac

    .line 5612
    :try_start_7
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v3
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_bb

    if-eqz v3, :cond_ac

    .line 5613
    const/4 v3, 0x1

    .line 5615
    .local v3, "isFbeSecure":Z
    :try_start_16
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v4}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v4

    .line 5616
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    if-eqz v4, :cond_39

    .line 5617
    invoke-interface {v4, p1}, Landroid/os/storage/IStorageManager;->isFbeSecure(I)Z

    move-result v5

    move v3, v5

    .line 5618
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@getValidSyntheticPasswordHandleLocked isFbeSecure="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_39} :catch_a2
    .catchall {:try_start_16 .. :try_end_39} :catchall_bb

    .line 5623
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    :cond_39
    nop

    .line 5624
    :try_start_3a
    const-string/jumbo v4, "sp-handle"

    invoke-virtual {p0, v4, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v7

    .line 5625
    .local v7, "spHandle":J
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordTryHandleLocked(I)Ljava/lang/String;

    move-result-object v1

    .line 5626
    .local v1, "tryHandles":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move v6, p1

    move-object v9, v1

    move v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getValidSyntheticPasswordHandleLocked(IJLjava/lang/String;Z)J

    move-result-wide v4

    .line 5627
    .local v4, "validHandle":J
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 5628
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 5629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_86

    .line 5631
    :cond_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 5633
    :goto_86
    const-string v2, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getValidSyntheticPasswordHandleLocked() : tryHandls="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5634
    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordTryHandleLocked(ILjava/lang/String;)V

    .line 5636
    :cond_a0
    monitor-exit v0

    return-wide v4

    .line 5620
    .end local v1    # "tryHandles":Ljava/lang/String;
    .end local v4    # "validHandle":J
    .end local v7    # "spHandle":J
    :catch_a2
    move-exception v4

    .line 5622
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "sp-handle"

    invoke-virtual {p0, v5, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 5638
    .end local v3    # "isFbeSecure":Z
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_ac
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const-string/jumbo v4, "sp-handle"

    .line 5639
    invoke-virtual {p0, v4, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v1

    .line 5638
    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getValidSyntheticPasswordHandleLocked(IJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 5641
    :catchall_bb
    move-exception v1

    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_3a .. :try_end_bd} :catchall_bb

    throw v1
.end method

.method private hasUnifiedChallenge(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1953
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1954
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1953
    :goto_11
    return v0
.end method

.method private hideEncryptionNotification(Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 914
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 916
    return-void
.end method

.method private isCachedKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1509
    const-string/jumbo v0, "lockscreen.samsung_biometric"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1510
    const-string/jumbo v0, "lockscreen.lockout_biometric_attempt_deadline"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1511
    const-string/jumbo v0, "lockscreen.lockoutattemptdeadline"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1512
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1513
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1514
    const-string/jumbo v0, "lockscreen.device_owner_info"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_39

    :cond_37
    const/4 v0, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v0, 0x1

    .line 1509
    :goto_3a
    return v0
.end method

.method private isCallerShell()Z
    .registers 3

    .line 3163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3164
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method private isCallingFromSettings()Z
    .registers 5

    .line 6657
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v1

    .line 6658
    .local v1, "launchedFromPackage":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "com.android.settings"

    .line 6659
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_19

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    nop

    .line 6658
    :goto_18
    return v0

    .line 6660
    .end local v1    # "launchedFromPackage":Ljava/lang/String;
    :catch_19
    move-exception v1

    .line 6661
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to get package from app process"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6662
    return v0
.end method

.method private isDualDARUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 5957
    const/4 v0, 0x0

    return v0
.end method

.method private isEncryptedPasswordLocked(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 3493
    const-string v0, "enable-ep"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 3495
    .local v3, "enabled":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ep for KeyStore: user="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " enabled="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "LockSettingsService"

    invoke-static {v5, v0}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3496
    cmp-long v0, v3, v1

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0
.end method

.method private isEnterpriseUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 6309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6311
    .local v0, "callingId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 6312
    .local v2, "ui":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_14

    invoke-static {v2}, Lcom/android/server/SdpManagerService$KnoxUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    .line 6314
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6312
    return v3

    .line 6314
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6315
    throw v2
.end method

.method private isEscrowTokenActive(JI)Z
    .registers 6
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 4265
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4266
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4267
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isFbeSecure(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 5645
    const/4 v0, 0x0

    .line 5646
    .local v0, "bFbeSecure":Z
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v1

    .line 5647
    .local v1, "bFbeSupport":Z
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v2

    .line 5649
    .local v2, "bCred":Z
    const-string v3, "LockSettingsService"

    if-eqz v1, :cond_41

    if-eqz v2, :cond_41

    .line 5651
    :try_start_11
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v4}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v4

    .line 5652
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    if-eqz v4, :cond_33

    .line 5653
    invoke-interface {v4, p1}, Landroid/os/storage/IStorageManager;->isFbeSecure(I)Z

    move-result v5

    move v0, v5

    .line 5654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@ isFbeSecure = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 5656
    :cond_33
    const-string v5, "!@ isFbeSecure() - storageManager is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_38} :catch_39

    .line 5662
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    :goto_38
    goto :goto_5d

    .line 5658
    :catch_39
    move-exception v4

    .line 5660
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "!@ isFbeSecure() - RemoteException!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5661
    const/4 v3, 0x0

    return v3

    .line 5664
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@ isFbeSecure() - bFbeSupport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", bCred = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5666
    :goto_5d
    return v0
.end method

.method private isKnoxAdminActivated(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 723
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getEdmService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    .line 724
    .local v0, "edmManager":Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    if-eqz v0, :cond_15

    .line 726
    :try_start_8
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isMdmAdminPresentAsUser(I)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 727
    :catch_d
    move-exception v1

    .line 728
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LockSettingsService"

    const-string v3, "Failed talking with enterprise policy service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    .end local v0    # "edmManager":Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private isLegacyResetRequested(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 6322
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6324
    .local v0, "callingId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 6325
    .local v2, "ui":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isLegacyResetCredentialRequested()Z

    move-result v3
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    .line 6327
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6325
    return v3

    .line 6327
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6328
    throw v2
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2049
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2050
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2049
    :goto_15
    return v0
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2044
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2045
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2044
    :goto_15
    return v0
.end method

.method private isPwdChangeRequested(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3794
    :try_start_0
    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    .line 3795
    .local v0, "pwdPolicy":Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    if-eqz v0, :cond_15

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_16

    if-lez v1, :cond_15

    .line 3797
    const/4 v1, 0x1

    return v1

    .line 3801
    .end local v0    # "pwdPolicy":Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    :cond_15
    goto :goto_1a

    .line 3799
    :catch_16
    move-exception v0

    .line 3800
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3802
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method static isSEPLiteSecureFolder(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 6541
    const/4 v0, 0x0

    return v0
.end method

.method private isSdpUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 6149
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 6150
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isDualDARUser(I)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 6149
    :goto_16
    return v0
.end method

.method private isSyntheticPasswordBasedCredentialLocked(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 3550
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, -0x270f

    if-ne p1, v2, :cond_15

    .line 3551
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v2

    iget v2, v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 3552
    .local v2, "type":I
    if-eq v2, v1, :cond_13

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    :cond_13
    move v0, v1

    :cond_14
    return v0

    .line 3554
    .end local v2    # "type":I
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    .line 3555
    .local v2, "handle":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_20

    move v0, v1

    :cond_20
    return v0
.end method

.method private isSyntheticPasswordLockedForFbe(I)Z
    .registers 8
    .param p1, "userId"    # I

    .line 3500
    const-string v0, "enable-sp-for-fbe"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 3502
    .local v3, "enabled":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sp for FBE: user="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " enabled="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "LockSettingsService"

    invoke-static {v5, v0}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    cmp-long v0, v3, v1

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0
.end method

.method private isSyntheticPasswordLockedForKeyStore(I)Z
    .registers 12
    .param p1, "userId"    # I

    .line 3512
    const-string v0, "enable-ep"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    .line 3514
    .local v3, "epEnabled":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ep for KeyStore: user="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " enabled="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "LockSettingsService"

    invoke-static {v6, v0}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    const-string v0, "enable-sp-for-keystore"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v7

    .line 3518
    .local v7, "enabled":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sp for KeyStore: user="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    cmp-long v0, v7, v1

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    return v0
.end method

.method private isUserKeyUnlocked(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 2615
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->isUserKeyUnlocked(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2616
    :catch_7
    move-exception v0

    .line 2617
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "failed to check user key locked state"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2618
    const/4 v1, 0x0

    return v1
.end method

.method private isUserSecure(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1663
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static synthetic lambda$finalizeLegacyResetRequest$14(ILcom/android/server/SdpManagerService;)V
    .registers 2
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/android/server/SdpManagerService;

    .line 6339
    nop

    .line 6340
    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->onLegacyResetCredentialFinalized(I)V

    .line 6339
    return-void
.end method

.method static synthetic lambda$migrateWithAuthToken$12(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Lcom/android/server/sdp/SdpManagerInternal;)V
    .registers 6
    .param p0, "userId"    # I
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "service"    # Lcom/android/server/sdp/SdpManagerInternal;

    .line 6159
    invoke-virtual {p2, p0}, Lcom/android/server/sdp/SdpManagerInternal;->getMasterKeyVersion(I)I

    move-result v0

    if-nez v0, :cond_33

    .line 6161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MK migration required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6162
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v0

    .line 6163
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKeyPersonalized()[B

    move-result-object v2

    .line 6162
    invoke-virtual {p2, v0, v2, p0}, Lcom/android/server/sdp/SdpManagerInternal;->updateMasterKey([B[BI)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6164
    const/4 v0, 0x1

    invoke-virtual {p2, v0, p0}, Lcom/android/server/sdp/SdpManagerInternal;->setMasterKeyVersion(II)V

    .line 6165
    const-string v0, "MK migration success!"

    invoke-static {v1, v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6168
    :cond_33
    return-void
.end method

.method static synthetic lambda$notifySeparateProfileChallengeChanged$0(I)V
    .registers 2
    .param p0, "userId"    # I

    .line 1454
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1456
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_d

    .line 1457
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->reportSeparateProfileChallengeChanged(I)V

    .line 1459
    :cond_d
    return-void
.end method

.method static synthetic lambda$onSyntheticPasswordDeserted$11(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/SdpManagerService;)V
    .registers 4
    .param p0, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "userId"    # I
    .param p2, "service"    # Lcom/android/server/SdpManagerService;

    .line 6143
    nop

    .line 6144
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyDeserted([BI)V

    .line 6143
    return-void
.end method

.method static synthetic lambda$onSyntheticPasswordInitialized$8(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/SdpManagerService;)V
    .registers 4
    .param p0, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "userId"    # I
    .param p2, "service"    # Lcom/android/server/SdpManagerService;

    .line 6104
    nop

    .line 6105
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyInitialized([BI)V

    .line 6104
    return-void
.end method

.method static synthetic lambda$onSyntheticPasswordInitialized$9(ILcom/android/server/pm/PersonaManagerService;)V
    .registers 2
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/android/server/pm/PersonaManagerService;

    .line 6110
    nop

    .line 6111
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->saveSecuredEscrowData(I)V

    .line 6110
    return-void
.end method

.method static synthetic lambda$onSyntheticPasswordRewrapped$7(IILcom/android/server/SdpManagerService;)V
    .registers 3
    .param p0, "credentialType"    # I
    .param p1, "userId"    # I
    .param p2, "service"    # Lcom/android/server/SdpManagerService;

    .line 6090
    nop

    .line 6091
    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->onPasswordChanged(II)V

    .line 6090
    return-void
.end method

.method static synthetic lambda$onSyntheticPasswordVerified$10([BILcom/android/server/SdpManagerService;)V
    .registers 3
    .param p0, "masterKey"    # [B
    .param p1, "userId"    # I
    .param p2, "service"    # Lcom/android/server/SdpManagerService;

    .line 6125
    nop

    .line 6126
    invoke-virtual {p2, p0, p1}, Lcom/android/server/SdpManagerService;->onMasterKeyAcquired([BI)V

    .line 6125
    return-void
.end method

.method static synthetic lambda$prepareLegacyResetRequest$13(ILcom/android/server/SdpManagerService;)V
    .registers 2
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/android/server/SdpManagerService;

    .line 6334
    nop

    .line 6335
    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->onLegacyResetCredentialStarted(I)V

    .line 6334
    return-void
.end method

.method static synthetic lambda$scheduleGc$6()V
    .registers 1

    .line 4826
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4827
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4828
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 4829
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4830
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4831
    return-void
.end method

.method static synthetic lambda$setLockCredentialWithLegacyToken$15(ILcom/android/server/SdpManagerService;)Ljava/lang/Long;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/android/server/SdpManagerService;

    .line 6449
    nop

    .line 6450
    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getTokenHandle(I)J

    move-result-wide v0

    .line 6449
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setLockCredentialWithLegacyToken$16(ILcom/android/server/SdpManagerService;)[B
    .registers 3
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/android/server/SdpManagerService;

    .line 6455
    nop

    .line 6456
    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->getResetTokenSafe(I)[B

    move-result-object v0

    .line 6455
    return-object v0
.end method

.method static synthetic lambda$setLong$1(ILcom/android/server/pm/PersonaManagerService;)V
    .registers 2
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/android/server/pm/PersonaManagerService;

    .line 1501
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->unsetTwoFactorValueIfNeeded(I)V

    return-void
.end method

.method static synthetic lambda$unlockUser$2(Landroid/content/pm/UserInfo;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 3
    .param p0, "profile"    # Landroid/content/pm/UserInfo;
    .param p1, "service"    # Lcom/android/server/pm/PersonaManagerService;

    .line 1908
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 1909
    invoke-virtual {p1, v0}, Lcom/android/server/pm/PersonaManagerService;->unlockSecureFolderWithToken(I)V

    .line 1908
    return-void
.end method

.method private loadPasswordDataOnBootPhase()V
    .registers 11

    .line 6476
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 6477
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 6478
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 6479
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 6485
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3

    .line 6486
    :try_start_1e
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 6487
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 6488
    .local v4, "handle":J
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v6, v4, v5, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v6

    .line 6489
    .local v6, "type":I
    const-string v7, "LockSettingsService.SDP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cached credential type("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") for enterprise user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6491
    .end local v4    # "handle":J
    .end local v6    # "type":I
    :cond_4c
    monitor-exit v3

    goto :goto_51

    :catchall_4e
    move-exception v4

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_1e .. :try_end_50} :catchall_4e

    throw v4

    .line 6477
    .end local v2    # "userId":I
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6494
    .end local v1    # "i":I
    :cond_54
    return-void
.end method

.method private loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;
    .registers 7
    .param p1, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userHandle"    # I

    .line 2998
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2999
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3001
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private maybeShowEncryptionNotificationForUser(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 751
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 752
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_d

    .line 756
    return-void

    .line 759
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserKeyUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 762
    return-void

    .line 765
    :cond_14
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 766
    .local v1, "userHandle":Landroid/os/UserHandle;
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    .line 767
    .local v2, "isSecure":Z
    if-eqz v2, :cond_45

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 768
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 769
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_45

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 770
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 771
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 774
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    .line 777
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    :cond_45
    return-void
.end method

.method private migrateFrpCredential()V
    .registers 8

    .line 1273
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v0, v1, :cond_b

    .line 1274
    return-void

    .line 1276
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1277
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1278
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    .line 1279
    :try_start_34
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1280
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    long-to-int v0, v3

    .line 1283
    .local v0, "actualQuality":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1284
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 1286
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->redactActualQualityToMostLenientEquivalentQuality(I)I

    move-result v6

    .line 1283
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    .line 1288
    .end local v0    # "actualQuality":I
    :cond_57
    monitor-exit v2

    .line 1289
    return-void

    .line 1288
    :catchall_59
    move-exception v0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_34 .. :try_end_5b} :catchall_59

    throw v0

    .line 1291
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5c
    goto :goto_15

    .line 1292
    :cond_5d
    return-void
.end method

.method private migrateOldData()V
    .registers 20

    .line 1136
    move-object/from16 v1, p0

    const-string/jumbo v2, "lock_screen_owner_info_enabled"

    const-string/jumbo v0, "migrated"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "LockSettingsService"

    const-string/jumbo v7, "true"

    if-nez v5, :cond_37

    .line 1137
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1138
    .local v5, "cr":Landroid/content/ContentResolver;
    sget-object v8, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    array-length v9, v8

    move v10, v4

    :goto_1f
    if-ge v10, v9, :cond_2f

    aget-object v11, v8, v10

    .line 1139
    .local v11, "validSetting":Ljava/lang/String;
    invoke-static {v5, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1140
    .local v12, "value":Ljava/lang/String;
    if-eqz v12, :cond_2c

    .line 1141
    invoke-virtual {v1, v11, v12, v4}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1138
    .end local v11    # "validSetting":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    .line 1145
    :cond_2f
    invoke-virtual {v1, v0, v7, v4}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1146
    const-string v0, "Migrated lock settings to new location"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    .end local v5    # "cr":Landroid/content/ContentResolver;
    :cond_37
    const-string/jumbo v5, "migrated_user_specific"

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ac

    .line 1151
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1152
    .local v11, "cr":Landroid/content/ContentResolver;
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 1153
    .local v12, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    move v13, v0

    .local v13, "user":I
    :goto_4e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_a2

    .line 1155
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1156
    .local v14, "userId":I
    const-string/jumbo v15, "lock_screen_owner_info"

    .line 1157
    .local v15, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-static {v11, v0, v14}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 1158
    .local v10, "ownerInfo":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_74

    .line 1159
    invoke-virtual {v1, v0, v10, v14}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1160
    const-string v8, ""

    invoke-static {v11, v0, v8, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1166
    :cond_74
    const-string/jumbo v8, "lock_screen_owner_info_enabled"

    .line 1169
    .local v8, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_77
    invoke-static {v11, v2, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1170
    .local v0, "ivalue":I
    if-eqz v0, :cond_80

    const/16 v18, 0x1

    goto :goto_82

    :cond_80
    const/16 v18, 0x0

    .line 1171
    .local v18, "enabled":Z
    :goto_82
    if-eqz v18, :cond_87

    const-wide/16 v3, 0x1

    goto :goto_89

    :cond_87
    const-wide/16 v3, 0x0

    :goto_89
    invoke-virtual {v1, v2, v3, v4, v14}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_8c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_77 .. :try_end_8c} :catch_8d

    .line 1177
    .end local v0    # "ivalue":I
    goto :goto_99

    .line 1172
    .end local v18    # "enabled":Z
    :catch_8d
    move-exception v0

    .line 1174
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 1175
    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4, v14}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1178
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_99
    :goto_99
    const/4 v3, 0x0

    invoke-static {v11, v2, v3, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1153
    .end local v8    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v10    # "ownerInfo":Ljava/lang/String;
    .end local v14    # "userId":I
    .end local v15    # "OWNER_INFO":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move v4, v3

    const/4 v3, 0x0

    goto :goto_4e

    :cond_a2
    move v3, v4

    .line 1181
    .end local v13    # "user":I
    invoke-virtual {v1, v5, v7, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1182
    const-string v0, "Migrated per-user lock settings to new location"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 1150
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_ac
    move v3, v4

    .line 1186
    :goto_ad
    const-string/jumbo v0, "migrated_biometric_weak"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f6

    .line 1187
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1188
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_be
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ec

    .line 1189
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1190
    .local v4, "userId":I
    const-string/jumbo v5, "lockscreen.password_type"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v5, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v12

    .line 1193
    .local v12, "type":J
    const-string/jumbo v8, "lockscreen.password_type_alternate"

    invoke-virtual {v1, v8, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v14

    .line 1196
    .local v14, "alternateType":J
    const-wide/32 v16, 0x8000

    cmp-long v16, v12, v16

    if-nez v16, :cond_e6

    .line 1197
    invoke-virtual {v1, v5, v14, v15, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1201
    :cond_e6
    invoke-virtual {v1, v8, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1188
    .end local v4    # "userId":I
    .end local v12    # "type":J
    .end local v14    # "alternateType":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_be

    .line 1205
    .end local v3    # "i":I
    :cond_ec
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v7, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1206
    const-string v0, "Migrated biometric weak to use the fallback instead"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 1186
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f6
    const/4 v3, 0x0

    .line 1212
    :goto_f7
    const-string/jumbo v0, "migrated_lockscreen_disabled"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "lockscreen.disabled"

    if-nez v4, :cond_147

    .line 1213
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 1214
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1215
    .local v4, "userCount":I
    const/4 v5, 0x0

    .line 1216
    .local v5, "switchableUsers":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_110
    if-ge v8, v4, :cond_123

    .line 1217
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v10

    if-eqz v10, :cond_120

    .line 1218
    add-int/lit8 v5, v5, 0x1

    .line 1216
    :cond_120
    add-int/lit8 v8, v8, 0x1

    goto :goto_110

    .line 1222
    .end local v8    # "i":I
    :cond_123
    const/4 v8, 0x1

    if-le v5, v8, :cond_13e

    .line 1223
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_127
    if-ge v8, v4, :cond_13e

    .line 1224
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1226
    .local v10, "id":I
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v12

    if-eqz v12, :cond_13b

    .line 1227
    invoke-virtual {v1, v2, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1223
    .end local v10    # "id":I
    :cond_13b
    add-int/lit8 v8, v8, 0x1

    goto :goto_127

    .line 1232
    .end local v8    # "i":I
    :cond_13e
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1233
    const-string v0, "Migrated lockscreen disabled flag"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userCount":I
    .end local v5    # "switchableUsers":I
    :cond_147
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->cleanupAbnormalState()V

    .line 1240
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1244
    .local v0, "isWatch":Z
    if-eqz v0, :cond_188

    const-string/jumbo v3, "migrated_wear_lockscreen_disabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_188

    .line 1245
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 1246
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1247
    .local v5, "userCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_16e
    if-ge v8, v5, :cond_17f

    .line 1248
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 1249
    .local v9, "id":I
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v9}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1247
    .end local v9    # "id":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_16e

    :cond_17f
    const/4 v10, 0x0

    .line 1251
    .end local v8    # "i":I
    invoke-virtual {v1, v3, v7, v10}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1252
    const-string v2, "Migrated lockscreen_disabled for Wear devices"

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "userCount":I
    :cond_188
    return-void
.end method

.method private migrateOldDataAfterSystemReady()V
    .registers 4

    .line 1258
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1259
    const-string/jumbo v0, "migrated_frp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1260
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateFrpCredential()V

    .line 1261
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1262
    const-string v0, "LockSettingsService"

    const-string v1, "Migrated migrated_frp."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_20
    return-void
.end method

.method private migrateWithAuthToken(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 5
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 6154
    if-nez p1, :cond_3

    return-void

    .line 6155
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSdpUser(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverSupported()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6156
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerInternal()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPlO7vKxq2740LHUhX_04vFQ3jk;

    invoke-direct {v1, p2, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPlO7vKxq2740LHUhX_04vFQ3jk;-><init>(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6170
    :cond_1d
    return-void
.end method

.method private notifyPasswordChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3009
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3010
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$8lW6CXanquuDJoPzEvRYCDaNza8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$8lW6CXanquuDJoPzEvRYCDaNza8;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3014
    return-void
.end method

.method private notifyPasswordPolicyOneLockChanged(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 1440
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v0

    .line 1441
    .local v0, "pwdPolicy":Landroid/sec/enterprise/PasswordPolicy;
    if-eqz v0, :cond_d

    .line 1442
    invoke-virtual {v0, p1, p2}, Landroid/sec/enterprise/PasswordPolicy;->notifyPasswordPolicyOneLockChanged(ZI)V

    .line 1445
    .end local v0    # "pwdPolicy":Landroid/sec/enterprise/PasswordPolicy;
    :cond_d
    return-void
.end method

.method private notifySeparateProfileChallengeChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1449
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1453
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$6ZJNEvi0AXsP3F_UD8F01RaIg3M;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$6ZJNEvi0AXsP3F_UD8F01RaIg3M;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1460
    return-void
.end method

.method private onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3363
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->isGsiRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3364
    const-string v0, "LockSettingsService"

    const-string v1, "Running in GSI; skipping calls to AuthSecret and RebootEscrow"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    return-void

    .line 3368
    :cond_10
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getVersion()B

    move-result v1

    .line 3369
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v2

    .line 3368
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->callToRebootEscrowIfNeeded(IB[B)V

    .line 3371
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3372
    return-void
.end method

.method private onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V
    .registers 17
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "challengeType"    # I
    .param p3, "challenge"    # J
    .param p6, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;",
            "IJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;",
            "Landroid/app/admin/PasswordMetrics;",
            "I)V"
        }
    .end annotation

    .line 3695
    .local p5, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;IZ)V

    .line 3696
    return-void
.end method

.method private onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;IZ)V
    .registers 23
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "challengeType"    # I
    .param p3, "challenge"    # J
    .param p6, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p7, "userId"    # I
    .param p8, "unlockSecureFolderWithToken"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;",
            "IJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;",
            "Landroid/app/admin/PasswordMetrics;",
            "IZ)V"
        }
    .end annotation

    .line 3703
    .local p5, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {p7 .. p7}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3704
    invoke-direct {p0, p1, v12}, Lcom/android/server/locksettings/LockSettingsService;->migrateWithAuthToken(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 3705
    return-void

    .line 3709
    :cond_10
    if-eqz v11, :cond_1d

    .line 3710
    monitor-enter p0

    .line 3711
    :try_start_13
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3712
    monitor-exit p0

    goto :goto_24

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v0

    .line 3714
    :cond_1d
    const-string v0, "LockSettingsService"

    const-string v1, "Null metrics after credential verification"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    :goto_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCredentialVerified - unlock keystore: user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3718
    nop

    .line 3719
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encryptPassword([B)Ljava/lang/String;

    move-result-object v0

    .line 3718
    invoke-direct {p0, v0, v12}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystoreWithEncryptedSyntheticPassword(Ljava/lang/String;I)V

    .line 3727
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v0

    .line 3728
    .local v0, "secret":[B
    invoke-direct {p0, v12, v0}, Lcom/android/server/locksettings/LockSettingsService;->getChangedStorageSecretIfDualDAR(I[B)[B

    move-result-object v0

    .line 3731
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v12}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 3733
    if-eqz v12, :cond_8b

    .line 3734
    invoke-direct {p0, v12}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 3735
    invoke-static/range {p7 .. p7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_66

    goto :goto_8b

    .line 3743
    :cond_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlocking user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    const/4 v3, 0x0

    move-object v1, p0

    move/from16 v2, p7

    move-object v4, v0

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[BIJLjava/util/ArrayList;)V

    goto :goto_ce

    .line 3736
    :cond_8b
    :goto_8b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlocking user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with encrypted sp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3738
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    .line 3737
    move-object v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v13

    .line 3739
    .local v13, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v3

    .line 3740
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptedBytes([B)[B

    move-result-object v4

    .line 3739
    move-object v1, p0

    move/from16 v2, p7

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[BIJLjava/util/ArrayList;)V

    .line 3742
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_ce

    .line 3748
    :cond_ca
    const/4 v1, 0x0

    invoke-direct {p0, v12, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 3751
    :goto_ce
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 3754
    .end local v0    # "secret":[B
    invoke-direct {p0, p1, v12}, Lcom/android/server/locksettings/LockSettingsService;->migrateWithAuthToken(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 3757
    invoke-direct {p0, v12}, Lcom/android/server/locksettings/LockSettingsService;->isDualDARUser(I)Z

    move-result v0

    if-nez v0, :cond_de

    .line 3759
    invoke-direct {p0, p1, v12}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 3763
    :cond_de
    if-eqz p8, :cond_e7

    .line 3765
    const-string/jumbo v0, "onCredentialVerified : unlockSecureFolderWithToken is true."

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_103

    .line 3768
    :cond_e7
    invoke-direct {p0, v12}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 3770
    invoke-direct {p0, v12}, Lcom/android/server/locksettings/LockSettingsService;->isPwdChangeRequested(I)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 3771
    const-string v0, "LockSettingsService"

    const-string v1, "Password change requested so avoid setDeviceLockedForUser false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    .line 3773
    :cond_fb
    invoke-direct {p0, v12}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 3780
    :cond_fe
    :goto_fe
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, v12}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 3784
    :goto_103
    invoke-direct {p0, v12, p1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3785
    return-void
.end method

.method private onPassword2Auth(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "credential"    # [B

    .line 5941
    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "onPassword2Auth()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5942
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 5943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User is not DualDAR eligible. so no need to verify DualDAR Passwords"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5944
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 5946
    :cond_25
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/knox/ddar/DualDARController;->onPassword2Auth(I[B)Z

    move-result v1

    .line 5947
    .local v1, "ret":Z
    if-nez v1, :cond_39

    .line 5948
    const-string v2, "Authentication Failure by dual dar client"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5949
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 5951
    :cond_39
    const-string/jumbo v2, "onPassword2Auth completed sucessfully"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5952
    sget-object v0, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    invoke-static {p1, v0}, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/ddar/fsm/Event;)Z

    .line 5953
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method

.method private onPassword2Change(I[B[B)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "savedCredential"    # [B
    .param p3, "credential"    # [B

    .line 5930
    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "onPassword2Change()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5931
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/knox/ddar/DualDARController;->onPassword2Change(I[B[B)Z

    move-result v1

    .line 5932
    .local v1, "ret":Z
    if-eqz v1, :cond_1a

    .line 5933
    const-string v2, "Authentication Change to DualDAR Client Successful"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 5935
    :cond_1a
    const-string v2, "Authentication Change Failure by dual dar client"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5937
    :goto_1f
    return v1
.end method

.method private onSyntheticPasswordDeserted(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 5
    .param p1, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 6135
    if-nez p1, :cond_19

    .line 6136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SP deserted - Unexpected condition while desert sp with user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService.SDP"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6138
    return-void

    .line 6141
    :cond_19
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6142
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 6143
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$YKGOWQ-Pnl3S_T7VfZDwJiv9yPY;

    invoke-direct {v1, p1, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$YKGOWQ-Pnl3S_T7VfZDwJiv9yPY;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6146
    :cond_31
    return-void
.end method

.method private onSyntheticPasswordInitialized(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 6
    .param p1, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 6096
    if-nez p1, :cond_19

    .line 6097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SP Initialized - Unexpected condition after sp initialization with user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService.SDP"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6099
    return-void

    .line 6102
    :cond_19
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 6103
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 6104
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$-b39mdqqFF66dN58qjJtkw90dJE;

    invoke-direct {v1, p1, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$-b39mdqqFF66dN58qjJtkw90dJE;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_4c

    .line 6107
    :cond_32
    if-nez p2, :cond_4c

    .line 6108
    const-string v0, "SP has been initialized for system"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6109
    const-wide/16 v0, 0x1

    const-string v2, "enable-sp-for-system"

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 6110
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getPersonaService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$2LX43W67_F5UcWZTzPNrnuN791k;

    invoke-direct {v1, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$2LX43W67_F5UcWZTzPNrnuN791k;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6114
    :cond_4c
    :goto_4c
    return-void
.end method

.method private onSyntheticPasswordRewrapped(II)V
    .registers 5
    .param p1, "credentialType"    # I
    .param p2, "userId"    # I

    .line 6088
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6089
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 6090
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$tnT-8xlcPwSMh5zp3WooJ5QLJXY;

    invoke-direct {v1, p1, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$tnT-8xlcPwSMh5zp3WooJ5QLJXY;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6093
    :cond_18
    return-void
.end method

.method private onSyntheticPasswordVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .registers 6
    .param p1, "response"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p2, "userId"    # I

    .line 6117
    if-nez p1, :cond_3

    return-void

    .line 6119
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3e

    .line 6120
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 6121
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 6122
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getSecret()[B

    move-result-object v0

    .line 6124
    .local v0, "masterKey":[B
    if-eqz v0, :cond_28

    .line 6125
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$dAezn53434iMJe9IfjTunf0CCms;

    invoke-direct {v2, v0, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$dAezn53434iMJe9IfjTunf0CCms;-><init>([BI)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3e

    .line 6128
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SP Verified - Unexpected condition after sp verification with user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService.SDP"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6132
    .end local v0    # "masterKey":[B
    :cond_3e
    :goto_3e
    return-void
.end method

.method private passwordQualityToString(J)Ljava/lang/String;
    .registers 8
    .param p1, "passwordQuality"    # J

    .line 5469
    const-wide/16 v0, 0x0

    and-long v2, p1, v0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_b

    .line 5470
    const-string v0, "UNSPECIFIED"

    return-object v0

    .line 5472
    :cond_b
    const-string/jumbo v2, "|"

    .line 5473
    .local v2, "passwordQualityString":Ljava/lang/String;
    const-wide/32 v3, 0x10000

    and-long/2addr v3, p1

    cmp-long v3, v3, v0

    if-eqz v3, :cond_27

    .line 5474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SOMETHING|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5476
    :cond_27
    const-wide/32 v3, 0x20000

    and-long/2addr v3, p1

    cmp-long v3, v3, v0

    if-eqz v3, :cond_40

    .line 5477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "NUMERIC|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5479
    :cond_40
    const-wide/32 v3, 0x30000

    and-long/2addr v3, p1

    cmp-long v3, v3, v0

    if-eqz v3, :cond_59

    .line 5480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "NUMERIC_COMPLEX|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5482
    :cond_59
    const-wide/32 v3, 0x40000

    and-long/2addr v3, p1

    cmp-long v3, v3, v0

    if-eqz v3, :cond_72

    .line 5483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ALPHABETIC|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5485
    :cond_72
    const-wide/32 v3, 0x50000

    and-long/2addr v3, p1

    cmp-long v3, v3, v0

    if-eqz v3, :cond_8b

    .line 5486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ALPHANUMERIC|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5488
    :cond_8b
    const-wide/32 v3, 0x60000

    and-long/2addr v3, p1

    cmp-long v0, v3, v0

    if-eqz v0, :cond_a4

    .line 5489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "COMPLEX|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5491
    :cond_a4
    return-object v2
.end method

.method private performDualDARPasswordChange(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)V
    .registers 11
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I
    .param p4, "isLockTiedToParent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4504
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "performDualDARPasswordChange "

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4505
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 4508
    nop

    .line 4509
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    move-object v1, v2

    goto :goto_1f

    :cond_1b
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    .line 4510
    :goto_1f
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    .line 4508
    :goto_2a
    invoke-direct {p0, p3, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->onPassword2Change(I[B[B)Z

    move-result v1

    .line 4511
    .local v1, "ret":Z
    if-eqz v1, :cond_31

    .end local v1    # "ret":Z
    goto :goto_98

    .line 4512
    .restart local v1    # "ret":Z
    :cond_31
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "LockSettingsService"

    const-string v4, "Change profile password failed by DualDAR Client"

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4516
    :try_start_3a
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v0
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_42} :catch_44

    .line 4520
    .local v0, "currentCredentialQuality":I
    move v2, v0

    goto :goto_63

    .line 4517
    .end local v0    # "currentCredentialQuality":I
    :catch_44
    move-exception v2

    .line 4518
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException : get credential quality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "LockSettingsService"

    invoke-static {v4, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4519
    const/4 v0, 0x0

    move v2, v0

    .line 4522
    .local v2, "currentCredentialQuality":I
    :goto_63
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3

    .line 4524
    :try_start_66
    const-string/jumbo v0, "lockscreen.password_type"

    int-to-long v4, v2

    invoke-virtual {p0, v0, v4, v5, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 4528
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 4531
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordRewrapped(II)V

    .line 4533
    monitor-exit v3
    :try_end_78
    .catchall {:try_start_66 .. :try_end_78} :catchall_80

    .line 4534
    new-instance v0, Landroid/os/RemoteException;

    const-string v3, "Change profile password failed by DualDAR Client"

    invoke-direct {v0, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4533
    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0

    .line 4536
    .end local v1    # "ret":Z
    .end local v2    # "currentCredentialQuality":I
    :cond_83
    if-nez p3, :cond_98

    .line 4537
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v1

    if-eqz p1, :cond_94

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    if-nez v2, :cond_94

    const/4 v0, 0x1

    :cond_94
    invoke-virtual {v1, p3, v0}, Lcom/samsung/android/knox/ddar/DualDARController;->onPassword1Change(IZ)Z

    goto :goto_99

    .line 4536
    :cond_98
    :goto_98
    nop

    .line 4539
    :goto_99
    return-void
.end method

.method private static pinOrPasswordQualityToCredentialType(I)I
    .registers 4
    .param p0, "quality"    # I

    .line 1649
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualitySmartCard(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1650
    const/4 v0, 0x6

    return v0

    .line 1653
    :cond_8
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1654
    const/4 v0, 0x4

    return v0

    .line 1656
    :cond_10
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityNumericPin(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1657
    const/4 v0, 0x3

    return v0

    .line 1659
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quality is neither Pin nor password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareLegacyResetRequest(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 6334
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$4rf0AGkoETTpN1i0gTUsW1K3PGI;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$4rf0AGkoETTpN1i0gTUsW1K3PGI;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6336
    return-void
.end method

.method private redactActualQualityToMostLenientEquivalentQuality(I)I
    .registers 4
    .param p1, "quality"    # I

    .line 1303
    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_16

    const/high16 v1, 0x30000

    if-eq p1, v1, :cond_16

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_15

    const/high16 v1, 0x50000

    if-eq p1, v1, :cond_15

    const/high16 v1, 0x60000

    if-eq p1, v1, :cond_15

    .line 1316
    return p1

    .line 1307
    :cond_15
    return v0

    .line 1310
    :cond_16
    return v0
.end method

.method private refreshWeaverSlots()V
    .registers 3

    .line 6506
    const-string v0, "Refresh weaver slots"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6507
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 6508
    :try_start_8
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->refreshActiveSlots()V

    .line 6509
    monitor-exit v0

    .line 6511
    return-void

    .line 6509
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private removeAllFaceForUser(I)V
    .registers 14
    .param p1, "userId"    # I

    .line 3987
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object v0

    .line 3988
    .local v0, "mFaceManager":Landroid/hardware/face/FaceManager;
    const-string v1, "Latch interrupted when removing face"

    const-string v2, "LockSettingsService"

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v10

    if-eqz v10, :cond_40

    .line 3989
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 3990
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->setActiveUser(I)V

    .line 3991
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v10, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v9, v10

    .line 3992
    .local v9, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v10, Landroid/hardware/face/Face;

    invoke-direct {v10, v8, v7, v5, v6}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    move-object v5, v10

    .line 3993
    .local v5, "face":Landroid/hardware/face/Face;
    invoke-direct {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;

    move-result-object v6

    invoke-virtual {v0, v5, p1, v6}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    .line 3995
    :try_start_35
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v3, v4, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 3998
    goto :goto_3f

    .line 3996
    :catch_3b
    move-exception v3

    .line 3997
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-static {v2, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3999
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "face":Landroid/hardware/face/Face;
    .end local v9    # "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_3f
    goto :goto_8d

    .line 4001
    :cond_40
    iget-object v10, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.samsung.android.bio.face"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 4002
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 4003
    iget-object v10, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v10

    .line 4004
    .local v10, "mSemFaceBioManager":Lcom/samsung/android/bio/face/SemBioFaceManager;
    if-eqz v10, :cond_8d

    invoke-virtual {v10}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v11

    if-eqz v11, :cond_8d

    .line 4005
    invoke-virtual {v10, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v11

    if-eqz v11, :cond_8d

    .line 4006
    invoke-virtual {v10, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->setActiveUser(I)V

    .line 4007
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v11, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v9, v11

    .line 4008
    .restart local v9    # "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v11, Landroid/hardware/face/Face;

    invoke-direct {v11, v8, v7, v5, v6}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    move-object v5, v11

    .line 4009
    .restart local v5    # "face":Landroid/hardware/face/Face;
    new-instance v6, Lcom/samsung/android/bio/face/SemBioFace;

    invoke-direct {v6, v5}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Landroid/hardware/face/Face;)V

    .line 4010
    .local v6, "semBioFaceface":Lcom/samsung/android/bio/face/SemBioFace;
    invoke-direct {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->semBioFaceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    move-result-object v7

    invoke-virtual {v10, v6, p1, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    .line 4012
    :try_start_83
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v3, v4, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_88} :catch_89

    .line 4015
    goto :goto_8d

    .line 4013
    :catch_89
    move-exception v3

    .line 4014
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    invoke-static {v2, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4021
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "face":Landroid/hardware/face/Face;
    .end local v6    # "semBioFaceface":Lcom/samsung/android/bio/face/SemBioFace;
    .end local v9    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v10    # "mSemFaceBioManager":Lcom/samsung/android/bio/face/SemBioFaceManager;
    :cond_8d
    :goto_8d
    return-void
.end method

.method private removeAllFingerprintForUser(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 3968
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 3969
    .local v0, "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3970
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3971
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 3972
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3974
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v8

    move v4, p1

    invoke-direct/range {v2 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 3975
    .local v2, "finger":Landroid/hardware/fingerprint/Fingerprint;
    nop

    .line 3976
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v3

    .line 3975
    invoke-virtual {v0, v2, p1, v3}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 3978
    const-wide/16 v3, 0x2710

    :try_start_32
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3981
    goto :goto_40

    .line 3979
    :catch_38
    move-exception v3

    .line 3980
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "LockSettingsService"

    const-string v5, "Latch interrupted when removing fingerprint"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3984
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "finger":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_40
    :goto_40
    return-void
.end method

.method private removeBiometricsForUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 3963
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFingerprintForUser(I)V

    .line 3964
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFaceForUser(I)V

    .line 3965
    return-void
.end method

.method private removeEscrowToken(JI)Z
    .registers 8
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 4279
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4280
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 4281
    const-string v1, "LockSettingsService"

    const-string v3, "Cannot remove password handle"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    monitor-exit v0

    return v2

    .line 4284
    :cond_15
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removePendingToken(JI)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    .line 4285
    monitor-exit v0

    return v3

    .line 4287
    :cond_20
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 4288
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V

    .line 4296
    monitor-exit v0

    return v3

    .line 4298
    :cond_2f
    monitor-exit v0

    return v2

    .line 4300
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private removeKeystoreProfileKey(I)V
    .registers 6
    .param p1, "targetUserId"    # I

    .line 3106
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3107
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove keystore profile key for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    :try_start_1d
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 3110
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 3111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_encrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 3112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_decrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/security/KeyStoreException; {:try_start_1d .. :try_end_51} :catch_52
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_51} :catch_52
    .catch Ljava/security/cert/CertificateException; {:try_start_1d .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_51} :catch_52

    .line 3117
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    goto :goto_67

    .line 3113
    :catch_52
    move-exception v0

    .line 3116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove keystore profile key for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3118
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method private removeUser(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "unknownUser"    # Z

    .line 3088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(I)V

    .line 3090
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->removeUser(I)V

    .line 3092
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 3093
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 3094
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    .line 3096
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 3097
    if-nez p2, :cond_3d

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3098
    :cond_3d
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 3102
    :cond_40
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 3103
    return-void
.end method

.method private restoreEscrowDataIfNeededLocked(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 6060
    if-eqz p1, :cond_3

    .line 6061
    return-void

    .line 6063
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6064
    return-void

    .line 6066
    :cond_c
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 6067
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isKnoxAdminActivated(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 6068
    return-void

    .line 6070
    :cond_19
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getPersonaService()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6071
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->getSecuredEscrowData(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2b

    .line 6072
    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    nop

    .line 6073
    .local v0, "escrowData":Landroid/os/Bundle;
    if-nez v0, :cond_2f

    .line 6074
    return-void

    .line 6076
    :cond_2f
    const-string v1, "e0"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 6077
    .local v1, "e0":[B
    const-string/jumbo v2, "p1"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 6078
    .local v2, "p1":[B
    if-eqz v1, :cond_45

    if-eqz v2, :cond_45

    .line 6079
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData([B[BI)V

    .line 6081
    :cond_45
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6083
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 6084
    invoke-virtual {v5, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 6081
    const-string v4, "Escrow data for user %d got restored [ Res : %b ]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6085
    return-void
.end method

.method private scheduleGc()V
    .registers 5

    .line 4825
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$0orcY_izOI0IfYjUjOYWvzfm3lU;->INSTANCE:Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$0orcY_izOI0IfYjUjOYWvzfm3lU;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4832
    return-void
.end method

.method private static secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B
    .registers 4
    .param p0, "credential"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 2600
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2602
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v1, "Android FBE credential hash"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2604
    .local v1, "personalization":[B
    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object v1, v2

    .line 2605
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 2606
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 2607
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_21} :catch_22

    return-object v2

    .line 2608
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "personalization":[B
    :catch_22
    move-exception v0

    .line 2609
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private semBioFaceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .registers 3
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 4063
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$6;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V
    .registers 9
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "isLockTiedToParent"    # Z

    .line 2088
    if-eqz p3, :cond_3

    .line 2089
    return-void

    .line 2093
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    .line 2095
    .local v0, "secret":[B
    :goto_f
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2096
    .local v2, "profileId":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2097
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    .line 2096
    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(I[BI)V

    .line 2098
    .end local v2    # "profileId":I
    goto :goto_17

    .line 2099
    :cond_31
    return-void
.end method

.method private sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 8
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 2059
    const/16 v0, -0x270f

    if-ne p2, v0, :cond_5

    .line 2060
    return-void

    .line 2066
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2067
    return-void

    .line 2071
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    .line 2073
    .local v0, "secret":[B
    :goto_18
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2074
    .local v2, "profileId":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 2075
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    .line 2074
    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(I[BI)V

    .line 2076
    .end local v2    # "profileId":I
    goto :goto_20

    .line 2077
    :cond_3a
    return-void
.end method

.method private setAuthlessUserKeyProtection(I[B)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "key"    # [B

    .line 2505
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2507
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 2508
    return-void
.end method

.method private setDeviceUnlockedForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3807
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 3808
    .local v0, "trustManager":Landroid/app/trust/TrustManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 3809
    return-void
.end method

.method private setEncryptedUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "key"    # [B
    .param p3, "vcr"    # Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2537
    if-eqz p3, :cond_74

    .line 2540
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_59

    .line 2545
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v0

    const-string v1, "LockSettingsService"

    const/4 v2, 0x0

    if-nez v0, :cond_2c

    .line 2546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEncryptedUserKeyProtection: without auth and key, user="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    invoke-direct {p0, p1, v2, v2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 2548
    return-void

    .line 2551
    :cond_2c
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    .line 2552
    .local v0, "token":[B
    if-eqz v0, :cond_51

    .line 2555
    if-nez p2, :cond_4d

    .line 2556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEncryptedUserKeyProtection: credential reset , user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    invoke-direct {p0, p1, v2, v2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 2558
    return-void

    .line 2560
    :cond_4d
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 2561
    return-void

    .line 2553
    :cond_51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2541
    .end local v0    # "token":[B
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-OK response verifying a credential we just set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2538
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null response verifying a credential we just set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setKeyguardStoredQuality(II)V
    .registers 7
    .param p1, "quality"    # I
    .param p2, "userId"    # I

    .line 1571
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    int-to-long v1, p1

    const-string/jumbo v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    .line 1572
    return-void
.end method

.method private setKeystorePassword([BI)V
    .registers 10
    .param p1, "password"    # [B
    .param p2, "userHandle"    # I

    .line 1667
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1668
    :cond_7
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1670
    .local v0, "ks":Landroid/security/KeyStore;
    if-nez p1, :cond_f

    const/4 v1, 0x0

    goto :goto_14

    :cond_f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 1671
    .local v1, "passwordString":Ljava/lang/String;
    :goto_14
    invoke-virtual {v0, p2, v1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v2

    .line 1673
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setKeystorePassword, userhandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1676
    return-void
.end method

.method private setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 25
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I
    .param p4, "isLockTiedToParent"    # Z

    .line 2235
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set credential for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " credentialType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 2240
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    const/4 v12, 0x1

    aput-object v1, v0, v12

    const/4 v1, 0x2

    const-string v3, "credentialType"

    aput-object v3, v0, v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string/jumbo v3, "savedCredential"

    aput-object v3, v0, v1

    .line 2241
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string/jumbo v3, "savedCredentialType"

    aput-object v3, v0, v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const/16 v1, 0x8

    const-string/jumbo v3, "userId"

    aput-object v3, v0, v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string/jumbo v3, "isLockTiedToParent"

    aput-object v3, v0, v1

    .line 2242
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    .line 2240
    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 2244
    invoke-static/range {p3 .. p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 2245
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v1, v10, v11}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v0

    return v0

    .line 2249
    :cond_9c
    move-object/from16 v1, p2

    invoke-direct {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 2250
    invoke-direct/range {p0 .. p3}, Lcom/android/server/locksettings/LockSettingsService;->checkLockMaterialsTraced(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2255
    :cond_a7
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->isDualDAREnabled()Z

    move-result v13

    .line 2258
    .local v13, "dualdarEnabled":Z
    iget-object v3, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3

    .line 2259
    :try_start_b0
    invoke-direct {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_24d

    if-eqz v0, :cond_e6

    .line 2266
    :try_start_b6
    invoke-direct/range {p0 .. p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v2
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_cf

    .line 2269
    :try_start_ba
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-direct {v8, v0, v10}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordRewrapped(II)V
    :try_end_c1
    .catchall {:try_start_ba .. :try_end_c1} :catchall_24d

    .line 2271
    if-eqz v13, :cond_cd

    .line 2273
    :try_start_c3
    invoke-direct/range {p0 .. p4}, Lcom/android/server/locksettings/LockSettingsService;->performDualDARPasswordChange(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_c6} :catch_c7
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_24d

    .line 2277
    goto :goto_cd

    .line 2275
    :catch_c7
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 2276
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_ca
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2277
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_cd
    :goto_cd
    monitor-exit v3

    .line 2266
    return v2

    .line 2269
    :catchall_cf
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-direct {v8, v0, v10}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordRewrapped(II)V
    :try_end_d8
    .catchall {:try_start_ca .. :try_end_d8} :catchall_24d

    .line 2271
    if-eqz v13, :cond_e4

    .line 2273
    :try_start_da
    invoke-direct/range {p0 .. p4}, Lcom/android/server/locksettings/LockSettingsService;->performDualDARPasswordChange(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_da .. :try_end_dd} :catch_de
    .catchall {:try_start_da .. :try_end_dd} :catchall_24d

    .line 2277
    goto :goto_e4

    .line 2275
    :catch_de
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 2276
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_e1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2280
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_e4
    :goto_e4
    nop

    .end local v13    # "dualdarEnabled":Z
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p3    # "userId":I
    .end local p4    # "isLockTiedToParent":Z
    throw v2

    .line 2283
    .restart local v13    # "dualdarEnabled":Z
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p3    # "userId":I
    .restart local p4    # "isLockTiedToParent":Z
    :cond_e6
    monitor-exit v3
    :try_end_e7
    .catchall {:try_start_e1 .. :try_end_e7} :catchall_24d

    .line 2285
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_114

    .line 2286
    invoke-direct {v8, v10, v14}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 2287
    invoke-direct {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 2288
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v3

    invoke-virtual {v0, v3, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 2292
    invoke-direct {v8, v2, v10}, Lcom/android/server/locksettings/LockSettingsService;->setKeyguardStoredQuality(II)V

    .line 2293
    invoke-direct {v8, v14, v10}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 2294
    invoke-direct {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2295
    invoke-direct {v8, v10, v14}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 2296
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-direct {v8, v0, v10}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2297
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    .line 2298
    return v12

    .line 2301
    :cond_114
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v15

    .line 2302
    .local v15, "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    invoke-direct {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 2304
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 2307
    :try_start_126
    invoke-virtual {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_12a
    .catch Ljava/io/FileNotFoundException; {:try_start_126 .. :try_end_12a} :catch_135
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_126 .. :try_end_12a} :catch_12c
    .catch Ljava/security/InvalidKeyException; {:try_start_126 .. :try_end_12a} :catch_12c
    .catch Ljava/security/KeyStoreException; {:try_start_126 .. :try_end_12a} :catch_12c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_126 .. :try_end_12a} :catch_12c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_126 .. :try_end_12a} :catch_12c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_126 .. :try_end_12a} :catch_12c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_126 .. :try_end_12a} :catch_12c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_126 .. :try_end_12a} :catch_12c
    .catch Ljava/security/cert/CertificateException; {:try_start_126 .. :try_end_12a} :catch_12c
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_12a} :catch_12c

    .line 2315
    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    move-object v7, v0

    goto :goto_15b

    .line 2310
    .end local v0    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :catch_12c
    move-exception v0

    .line 2314
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LockSettingsService"

    const-string v4, "Failed to decrypt child profile key"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_13f

    .line 2308
    :catch_135
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2309
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "LockSettingsService"

    const-string v4, "Child profile key not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_13f
    goto :goto_15a

    .line 2318
    :cond_140
    iget-object v0, v15, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v0, :cond_15a

    .line 2319
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_151

    .line 2320
    const-string v0, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    :cond_151
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 2323
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    move-object v7, v0

    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    goto :goto_15b

    .line 2327
    .end local v0    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_15a
    :goto_15a
    move-object v7, v1

    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v7, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :goto_15b
    iget-object v4, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v4

    .line 2328
    :try_start_15e
    invoke-virtual {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0
    :try_end_162
    .catchall {:try_start_15e .. :try_end_162} :catchall_246

    if-eqz v0, :cond_199

    .line 2335
    const/4 v1, 0x0

    .line 2337
    .local v1, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_start_165
    iget-object v0, v15, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {v8, v0, v7, v10}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    move-object v1, v0

    .line 2338
    invoke-direct {v8, v9, v7, v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v2
    :try_end_170
    .catchall {:try_start_165 .. :try_end_170} :catchall_181

    .line 2341
    :try_start_170
    invoke-direct {v8, v1, v10}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordInitialized(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    :try_end_173
    .catchall {:try_start_170 .. :try_end_173} :catchall_194

    .line 2343
    if-eqz v13, :cond_17f

    .line 2345
    :try_start_175
    invoke-direct {v8, v9, v7, v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->performDualDARPasswordChange(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)V
    :try_end_178
    .catch Landroid/os/RemoteException; {:try_start_175 .. :try_end_178} :catch_179
    .catchall {:try_start_175 .. :try_end_178} :catchall_194

    .line 2348
    goto :goto_17f

    .line 2346
    :catch_179
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2347
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_17c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2348
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17f
    :goto_17f
    monitor-exit v4

    .line 2338
    return v2

    .line 2341
    :catchall_181
    move-exception v0

    move-object v2, v0

    invoke-direct {v8, v1, v10}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordInitialized(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    :try_end_186
    .catchall {:try_start_17c .. :try_end_186} :catchall_194

    .line 2343
    if-eqz v13, :cond_192

    .line 2345
    :try_start_188
    invoke-direct {v8, v9, v7, v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->performDualDARPasswordChange(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)V
    :try_end_18b
    .catch Landroid/os/RemoteException; {:try_start_188 .. :try_end_18b} :catch_18c
    .catchall {:try_start_188 .. :try_end_18b} :catchall_194

    .line 2348
    goto :goto_192

    .line 2346
    :catch_18c
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2347
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_18f
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2351
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_192
    :goto_192
    nop

    .end local v7    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local v13    # "dualdarEnabled":Z
    .end local v15    # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p3    # "userId":I
    .end local p4    # "isLockTiedToParent":Z
    throw v2
    :try_end_194
    .catchall {:try_start_18f .. :try_end_194} :catchall_194

    .line 2354
    .end local v1    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v7    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local v13    # "dualdarEnabled":Z
    .restart local v15    # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p3    # "userId":I
    .restart local p4    # "isLockTiedToParent":Z
    :catchall_194
    move-exception v0

    move-object/from16 v19, v7

    goto/16 :goto_249

    :cond_199
    :try_start_199
    monitor-exit v4
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_246

    .line 2356
    iget-object v0, v15, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 2357
    invoke-virtual {v7}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    .line 2356
    invoke-direct {v8, v0, v1, v3, v10}, Lcom/android/server/locksettings/LockSettingsService;->enrollCredential([B[B[BI)[B

    move-result-object v6

    .line 2358
    .local v6, "enrolledHandle":[B
    if-nez v6, :cond_1d1

    .line 2359
    new-array v0, v12, [Ljava/lang/Object;

    .line 2360
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v1

    if-eqz v1, :cond_1b6

    const-string/jumbo v1, "pattern"

    goto :goto_1b9

    :cond_1b6
    const-string/jumbo v1, "password"

    :goto_1b9
    aput-object v1, v0, v2

    .line 2359
    const-string v1, "Failed to enroll %s: incorrect credential"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2362
    .local v0, "s":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 2363
    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 2365
    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    return v2

    .line 2368
    .end local v0    # "s":Ljava/lang/String;
    :cond_1d1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v6, v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v5

    .line 2369
    .local v5, "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v5, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 2373
    nop

    .line 2374
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v0

    .line 2373
    invoke-direct {v8, v0, v10}, Lcom/android/server/locksettings/LockSettingsService;->setKeyguardStoredQuality(II)V

    .line 2378
    :try_start_1ea
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const-wide/16 v3, 0x0

    iget-object v0, v5, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 2379
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v16
    :try_end_1f6
    .catch Landroid/os/RemoteException; {:try_start_1ea .. :try_end_1f6} :catch_237

    .line 2378
    move/from16 v2, p3

    move-object/from16 v17, v5

    .end local v5    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .local v17, "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    move-object v5, v0

    move-object/from16 v18, v6

    .end local v6    # "enrolledHandle":[B
    .local v18, "enrolledHandle":[B
    move-object/from16 v6, v16

    :try_start_1ff
    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_203
    .catch Landroid/os/RemoteException; {:try_start_1ff .. :try_end_203} :catch_233

    .line 2382
    .local v0, "gkResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 2384
    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v1

    if-eqz v1, :cond_214

    .line 2385
    invoke-direct {v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-direct {v8, v10, v9, v1}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(ILcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    goto :goto_217

    .line 2387
    :cond_214
    invoke-direct {v8, v10, v14}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 2390
    :goto_217
    invoke-direct {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2392
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    move-object/from16 v19, v7

    .end local v7    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v19, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2394
    invoke-direct {v8, v10, v14}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 2395
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    .line 2396
    return v12

    .line 2380
    .end local v0    # "gkResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v19    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local v7    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :catch_233
    move-exception v0

    move-object/from16 v19, v7

    .end local v7    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local v19    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    goto :goto_23e

    .end local v17    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v18    # "enrolledHandle":[B
    .end local v19    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local v5    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local v6    # "enrolledHandle":[B
    .restart local v7    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :catch_237
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 2381
    .end local v5    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v6    # "enrolledHandle":[B
    .end local v7    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local v18    # "enrolledHandle":[B
    .restart local v19    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :goto_23e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to verify current credential"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2354
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v17    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v18    # "enrolledHandle":[B
    .end local v19    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local v7    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :catchall_246
    move-exception v0

    move-object/from16 v19, v7

    .end local v7    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local v19    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :goto_249
    :try_start_249
    monitor-exit v4
    :try_end_24a
    .catchall {:try_start_249 .. :try_end_24a} :catchall_24b

    throw v0

    :catchall_24b
    move-exception v0

    goto :goto_249

    .line 2283
    .end local v15    # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v19    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :catchall_24d
    move-exception v0

    :try_start_24e
    monitor-exit v3
    :try_end_24f
    .catchall {:try_start_24e .. :try_end_24f} :catchall_24d

    throw v0
.end method

.method private setLockCredentialVariant(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I

    .line 6345
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 6346
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isLegacyResetRequested(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_37

    .line 6347
    new-array v1, v3, [Ljava/lang/Object;

    .line 6348
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 6347
    const-string v2, "User %d requested to reset password"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6349
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->prepareLegacyResetRequest(I)V

    .line 6350
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithLegacyToken(Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v1

    .line 6351
    .local v1, "res":Z
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->finalizeLegacyResetRequest(I)V

    .line 6352
    if-eqz v1, :cond_31

    .line 6353
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordRewrapped(II)V

    .line 6354
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_60

    .line 6356
    :cond_31
    const-string v2, "Continue to set credential..."

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_60

    .line 6358
    .end local v1    # "res":Z
    :cond_37
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 6359
    new-array v1, v3, [Ljava/lang/Object;

    .line 6360
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 6359
    const-string v2, "User %d identified as secure folder user"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6361
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSecureFolderLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 6363
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_61

    .line 6364
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordRewrapped(II)V

    goto :goto_61

    .line 6358
    :cond_60
    :goto_60
    nop

    .line 6367
    :cond_61
    :goto_61
    return-object v0
.end method

.method private setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J
    .registers 23
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "userId"    # I

    .line 3824
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v8, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v10

    .line 3827
    .local v10, "newHandle":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    const-string v13, "LockSettingsService"

    if-nez v2, :cond_166

    .line 3829
    const/4 v14, 0x0

    .line 3831
    .local v14, "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v2

    const-string v15, "Set key derived from sp for FBE: user="

    const-string v7, "Set token and key derived from sp for FBE: user="

    const-string v5, "Set key derived from sp for keystore: user="

    if-eqz v2, :cond_d9

    .line 3837
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const-wide/16 v16, 0x0

    move-object/from16 v4, p2

    move-object/from16 v18, v5

    move-wide/from16 v5, v16

    move-object v12, v7

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 3839
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v9}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 3840
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v9}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 3841
    if-eqz v9, :cond_7a

    .line 3842
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 3843
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_5d

    goto :goto_7a

    .line 3848
    :cond_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {v0, v9, v3}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 3850
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForFbe(I)V

    goto :goto_9b

    .line 3844
    :cond_7a
    :goto_7a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {v0, v9, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->setEncryptedUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 3846
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForFbe(I)V

    goto :goto_9b

    .line 3853
    :cond_97
    const/4 v3, 0x0

    invoke-direct {v0, v9, v3}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 3855
    :goto_9b
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    goto :goto_b9

    .line 3857
    :cond_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLockCredentialWithAuthTokenLocked: user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is locked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3861
    :goto_b9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v18

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v3

    invoke-direct {v0, v3, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 3863
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForKeyStore(I)V

    .line 3865
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_1fb

    .line 3868
    :cond_d9
    move-object v12, v7

    move-object v7, v5

    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 3869
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const-wide/16 v5, 0x0

    move-object/from16 v4, p2

    move-object v8, v7

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 3871
    .restart local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v9}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v3

    if-eqz v3, :cond_148

    .line 3873
    if-eqz v9, :cond_129

    .line 3874
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 3875
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_10c

    goto :goto_129

    .line 3881
    :cond_10c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3882
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {v0, v9, v3}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 3883
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForFbe(I)V

    goto :goto_145

    .line 3876
    :cond_129
    :goto_129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {v0, v9, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->setEncryptedUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 3878
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForFbe(I)V

    .line 3885
    :goto_145
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 3889
    :cond_148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v3

    invoke-direct {v0, v3, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 3891
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForKeyStore(I)V

    .line 3893
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_1fb

    .line 3897
    .end local v14    # "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    :cond_166
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;

    move-result-object v14

    .line 3898
    .restart local v14    # "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const-wide/16 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 3900
    .restart local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 3901
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 3906
    if-eqz v9, :cond_1a1

    .line 3907
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v3

    if-eqz v3, :cond_191

    .line 3908
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_191

    goto :goto_1a1

    .line 3924
    :cond_191
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v9, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserKey(I[B[B)V

    .line 3925
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {v0, v9, v3}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    goto :goto_1d0

    .line 3909
    :cond_1a1
    :goto_1a1
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordLockedForFbe(I)Z

    move-result v3

    if-eqz v3, :cond_1ca

    .line 3910
    if-eqz v2, :cond_1d0

    .line 3911
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    .line 3912
    .local v3, "secret":[B
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    .line 3913
    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptedBytes([B)[B

    move-result-object v5

    .line 3912
    invoke-direct {v0, v9, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserKey(I[B[B)V

    .line 3914
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    .line 3915
    .local v4, "token":[B
    if-eqz v4, :cond_1c2

    .line 3918
    invoke-direct {v0, v9, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B[B)V

    .line 3919
    .end local v3    # "secret":[B
    .end local v4    # "token":[B
    goto :goto_1d0

    .line 3916
    .restart local v3    # "secret":[B
    .restart local v4    # "token":[B
    :cond_1c2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Empty payload verifying a credential we just set"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3921
    .end local v3    # "secret":[B
    .end local v4    # "token":[B
    :cond_1ca
    const-string/jumbo v3, "unlockUserKey with token skipped!!"

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    :cond_1d0
    :goto_1d0
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 3940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLockCredentialWithAuthTokenLocked: unlock keystore with encrypted sp for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3941
    nop

    .line 3942
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encryptPassword([B)Ljava/lang/String;

    move-result-object v3

    .line 3941
    invoke-direct {v0, v3, v9}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystoreWithEncryptedSyntheticPassword(Ljava/lang/String;I)V

    .line 3944
    const/4 v3, 0x0

    invoke-direct {v0, v3, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 3945
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->removeBiometricsForUser(I)V

    .line 3947
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_1fb
    invoke-direct {v0, v10, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordHandleLocked(JI)V

    .line 3948
    invoke-direct {v0, v9, v14}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 3950
    invoke-direct {v0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 3951
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v2, v9}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    .line 3953
    if-eqz v14, :cond_229

    .line 3954
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_213
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_229

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3955
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 3956
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    goto :goto_213

    .line 3959
    :cond_229
    return-wide v10
.end method

.method private setLockCredentialWithLegacyToken(Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 16
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 6445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set lock credential with legacy token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 6446
    const/4 v0, 0x0

    .line 6447
    .local v0, "token":[B
    const/4 v1, 0x0

    .line 6449
    .local v1, "result":Z
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$fXj7pO2tEbgpYREt6pyg4k8xucI;

    invoke-direct {v3, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$fXj7pO2tEbgpYREt6pyg4k8xucI;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 6450
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 6451
    .local v11, "tokenHandle":J
    cmp-long v2, v11, v3

    if-nez v2, :cond_38

    .line 6452
    goto :goto_6a

    .line 6455
    :cond_38
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$fV3Ra9BwqIahiISE5toTc0rwyxE;

    invoke-direct {v3, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$fV3Ra9BwqIahiISE5toTc0rwyxE;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    .line 6456
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [B

    .line 6457
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 6458
    const-string v2, "Failed due to invalid token"

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6459
    goto :goto_6a

    .line 6463
    :cond_59
    move-object v5, p0

    move-object v6, p1

    move-wide v7, v11

    move-object v9, v0

    move v10, p2

    :try_start_5e
    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v2
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_62} :catch_64

    move v1, v2

    .line 6467
    goto :goto_6a

    .line 6465
    :catch_64
    move-exception v2

    .line 6466
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Unexpected failure while set credential with token"

    invoke-static {v3, v2}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6470
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v11    # "tokenHandle":J
    :goto_6a
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6471
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 6470
    const-string v3, "Result of string credential with legacy token for user %d : %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6472
    return v1
.end method

.method private setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 13
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 4306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set lock credential with token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 4307
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string/jumbo v1, "type"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v5, "tokenHandle"

    aput-object v5, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string/jumbo v5, "token"

    aput-object v5, v0, v1

    const/4 v1, 0x7

    aput-object p4, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v5, "userId"

    aput-object v5, v0, v1

    .line 4308
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0x9

    aput-object v1, v0, v5

    .line 4307
    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 4309
    invoke-static {p5}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 4310
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mVirtualLock:Lcom/android/server/locksettings/LockSettingsService$VirtualLock;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v0

    return v0

    .line 4315
    :cond_6e
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 4316
    :try_start_71
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->restoreEscrowDataIfNeededLocked(I)V

    .line 4317
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 4320
    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v0

    move v5, v0

    .line 4323
    .local v5, "result":Z
    if-eqz v5, :cond_8a

    .line 4324
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordRewrapped(II)V

    .line 4327
    :cond_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_71 .. :try_end_8b} :catchall_cf

    .line 4328
    if-eqz v5, :cond_af

    .line 4329
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4330
    const/4 v0, 0x0

    :try_start_91
    invoke-direct {p0, p5, v3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 4331
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_ac

    .line 4332
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 4336
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$thgYIzs0MWL2pwyVmD-koR80ihA;

    invoke-direct {v1, p0, p5}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$thgYIzs0MWL2pwyVmD-koR80ihA;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4338
    :cond_a5
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    .line 4339
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    goto :goto_af

    .line 4331
    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v0

    .line 4342
    :cond_af
    :goto_af
    new-array v0, v4, [Ljava/lang/Object;

    .line 4343
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    .line 4342
    const-string v1, "Result of setting credential with token for user %d : %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4345
    return v5

    .line 4318
    .end local v5    # "result":Z
    :cond_c7
    :try_start_c7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "tokenHandle":J
    .end local p4    # "token":[B
    .end local p5    # "userId":I
    throw v0

    .line 4327
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "tokenHandle":J
    .restart local p4    # "token":[B
    .restart local p5    # "userId":I
    :catchall_cf
    move-exception v0

    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_cf

    throw v0
.end method

.method private setLockCredentialWithTokenInternalForDualDAR(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 7
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4611
    const/4 v0, 0x1

    return v0
.end method

.method private setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .registers 18
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 4354
    move-object v1, p0

    move-object v2, p1

    move/from16 v9, p5

    const-string v10, "LockSettingsService"

    const/4 v11, 0x0

    :try_start_7
    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalForDualDAR(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v0

    .line 4355
    .local v0, "ret":Z
    if-nez v0, :cond_22

    .line 4356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dual DAR Client failed to reset password with token for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_21} :catch_23

    .line 4357
    return v11

    .line 4361
    .end local v0    # "ret":Z
    :cond_22
    goto :goto_3e

    .line 4359
    :catch_23
    move-exception v0

    .line 4360
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    invoke-static {v10, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4365
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3e
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 4366
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 4365
    move-wide v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    .line 4367
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v3, :cond_57

    .line 4368
    const-string v3, "Invalid escrow token supplied"

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    return v11

    .line 4371
    :cond_57
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_eb

    .line 4373
    invoke-direct {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 4374
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v3

    if-nez v3, :cond_e5

    .line 4375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Untrusted credential reset happened for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4377
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v3, v4, v5, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 4378
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v6, 0x0

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 4380
    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-eqz v2, :cond_d8

    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 4381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set key derived from sp for FBE: user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_cb

    .line 4383
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v4

    invoke-direct {p0, v9, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setEncryptedUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 4384
    invoke-direct {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForFbe(I)V

    goto :goto_e1

    .line 4387
    :cond_cb
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v4

    invoke-direct {p0, v9, v4}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 4388
    invoke-direct {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForFbe(I)V

    goto :goto_e1

    .line 4391
    :cond_d8
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v4

    invoke-direct {p0, v9, v4}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 4393
    :goto_e1
    invoke-direct {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 4394
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_eb

    .line 4399
    :cond_e5
    const-string v3, "Obsolete token: synthetic password derived but it fails GK verification."

    invoke-static {v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    return v11

    .line 4405
    :cond_eb
    :goto_eb
    if-eqz v2, :cond_f3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 4406
    :cond_f3
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, v3, v9}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordDeserted(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 4410
    :cond_f8
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, v9, v3}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 4411
    invoke-virtual {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v3

    .line 4412
    .local v3, "oldHandle":J
    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v5, v9}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    .line 4413
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v5, v3, v4, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 4414
    const/4 v5, 0x1

    return v5
.end method

.method private setSecureFolderLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 12
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I

    .line 6372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set credential for secure folder user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 6373
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "credentialType"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v5, "savedCredential"

    aput-object v5, v0, v1

    .line 6374
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string/jumbo v5, "userId"

    aput-object v5, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v0, v5

    .line 6373
    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 6376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6377
    .local v0, "identity":J
    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 6379
    .local v5, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-eqz p1, :cond_8c

    :try_start_59
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v6

    if-nez v6, :cond_8c

    if-eqz p2, :cond_68

    .line 6380
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v6

    if-nez v6, :cond_68

    goto :goto_8c

    .line 6383
    :cond_68
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 6384
    const-string v6, "Secure Folder already has sp based credential"

    invoke-static {v6}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6385
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSecureFolderLockViaProtector(Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 6386
    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object v5, v6

    goto :goto_9d

    .line 6388
    :cond_7d
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 6389
    const-string v6, "Secure Folder seems to need sp initialization first"

    invoke-static {v6}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6390
    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object v5, v6

    goto :goto_9d

    .line 6381
    :cond_8c
    :goto_8c
    const-string v6, "Seems normal case, skip handling"

    invoke-static {v6}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6382
    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_93} :catch_97
    .catchall {:try_start_59 .. :try_end_93} :catchall_95

    move-object v5, v6

    goto :goto_9d

    .line 6395
    :catchall_95
    move-exception v2

    goto :goto_b9

    .line 6392
    :catch_97
    move-exception v6

    .line 6393
    .local v6, "e":Ljava/lang/Exception;
    :try_start_98
    const-string v7, "Unexpected exception while set sf credential"

    invoke-static {v7, v6}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_95

    .line 6395
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_9d
    :goto_9d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6396
    nop

    .line 6398
    new-array v4, v4, [Ljava/lang/Object;

    .line 6400
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 6398
    const-string v2, "Result of setting credential for secure folder user %d : %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6401
    return-object v5

    .line 6395
    :goto_b9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6396
    throw v2
.end method

.method private setSecureFolderLockViaProtector(Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 18
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "secureFolderId"    # I

    .line 6411
    move-object v6, p0

    move/from16 v7, p2

    const/4 v8, 0x0

    .line 6413
    .local v8, "result":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set credential via trusted domain for SecureFolder user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 6414
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credential,"

    const/4 v9, 0x0

    aput-object v1, v0, v9

    invoke-static/range {p1 .. p1}, Lcom/android/server/SdpManagerService$KnoxUtil;->getSafe(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v0, v10

    const-string v1, "credentialType"

    const/4 v11, 0x2

    aput-object v1, v0, v11

    .line 6415
    invoke-static/range {p1 .. p1}, Lcom/android/server/SdpManagerService$KnoxUtil;->getSafe(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 6414
    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 6418
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getPersonaService()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_62

    .line 6419
    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderTokenHandleViaProtector(I)J

    move-result-wide v3

    goto :goto_63

    .line 6420
    :cond_62
    move-wide v3, v1

    :goto_63
    move-wide v12, v3

    .line 6421
    .local v12, "tokenHandle":J
    cmp-long v0, v12, v1

    if-nez v0, :cond_6e

    .line 6422
    const-string v0, "Failed to get SecureFolder token handle"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6423
    goto :goto_8e

    .line 6426
    :cond_6e
    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderResetTokenViaProtector(I)[B

    move-result-object v14

    .line 6427
    .local v14, "resetToken":[B
    invoke-static {v14}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 6428
    const-string v0, "Failed to get SecureFolder reset token"

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6429
    goto :goto_8e

    .line 6432
    :cond_80
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide v2, v12

    move-object v4, v14

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v8

    .line 6435
    invoke-static {v14}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    .line 6438
    .end local v12    # "tokenHandle":J
    .end local v14    # "resetToken":[B
    :goto_8e
    new-array v0, v11, [Ljava/lang/Object;

    .line 6440
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v10

    .line 6438
    const-string v1, "Result of setting credential via protector for SecureFolder user %d : [ res : %s ]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6441
    return v8
.end method

.method private setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 1416
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1417
    :cond_7
    const/4 v0, 0x0

    const-string/jumbo v1, "lockscreen.profilechallenge"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    .line 1418
    .local v0, "old":Z
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1421
    xor-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordPolicyOneLockChanged(ZI)V

    .line 1425
    if-eqz p2, :cond_22

    .line 1426
    :try_start_19
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1427
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_25

    .line 1429
    :cond_22
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_25} :catch_27

    .line 1434
    :goto_25
    nop

    .line 1435
    return-void

    .line 1431
    :catch_27
    move-exception v2

    .line 1432
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1433
    throw v2
.end method

.method private setSyntheticPasswordHandleLocked(JI)V
    .registers 9
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 3535
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    .line 3536
    .local v0, "oldHandle":J
    const-string/jumbo v2, "sp-handle"

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3537
    const-string/jumbo v2, "prev-sp-handle"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "sp-handle-ts"

    invoke-virtual {p0, v4, v2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 3540
    return-void
.end method

.method private setSyntheticPasswordTryHandleLocked(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "handles"    # Ljava/lang/String;

    .line 5674
    const-string/jumbo v0, "sp-handle-try"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5675
    return-void
.end method

.method private setUserKeyProtection(ILcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "vcr"    # Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2513
    if-eqz p3, :cond_5d

    .line 2516
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_42

    .line 2521
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUserKeyProtection: without auth and key, user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 2524
    return-void

    .line 2527
    :cond_2c
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    .line 2528
    .local v0, "token":[B
    if-eqz v0, :cond_3a

    .line 2531
    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 2532
    return-void

    .line 2529
    :cond_3a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2517
    .end local v0    # "token":[B
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-OK response verifying a credential we just set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2518
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2514
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null response verifying a credential we just set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V
    .registers 5
    .param p1, "password"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userHandle"    # I

    .line 2977
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2978
    :cond_7
    monitor-enter p0

    .line 2979
    :try_start_8
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2980
    monitor-exit p0

    .line 2981
    return-void

    .line 2980
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private shouldMigratePasswordHash()V
    .registers 8

    .line 6514
    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 6515
    .local v0, "firstApiLevel":I
    const/16 v2, 0x1d

    if-ge v0, v2, :cond_4c

    .line 6516
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 6517
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4c

    .line 6518
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 6519
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 6520
    const-string/jumbo v5, "migrated_password_hash"

    invoke-virtual {p0, v5, v1, v4}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v6

    if-nez v6, :cond_49

    .line 6521
    invoke-virtual {p0, v5, v1, v4}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 6522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need password hash migration for enterprise user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LockSettingsService.SDP"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6517
    .end local v4    # "userId":I
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 6527
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "i":I
    :cond_4c
    return-void
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 10
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "detail"    # Ljava/lang/CharSequence;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .line 869
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 873
    :cond_7
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080594

    .line 875
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 876
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 877
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 878
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 879
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 881
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 882
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 883
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 884
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 885
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 886
    invoke-virtual {v1, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 887
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 888
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 910
    .end local v0    # "notification":Landroid/app/Notification;
    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .registers 19
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 783
    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_134

    .line 784
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_134

    .line 788
    :cond_18
    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 791
    .local v7, "r":Landroid/content/res/Resources;
    const-string v0, ""

    .line 792
    .local v0, "detail":Ljava/lang/CharSequence;
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 793
    .local v8, "deviceType":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v8, :cond_36

    const-string/jumbo v3, "tablet"

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    move v3, v1

    goto :goto_37

    :cond_36
    move v3, v2

    :goto_37
    move v9, v3

    .line 794
    .local v9, "isTabletDevice":Z
    iget-object v3, v6, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/samsung/android/knox/SemPersonaManager;

    .line 795
    .local v10, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v3

    const v4, 0x1040cf0

    const v5, 0x1040cef

    if-eqz v3, :cond_c8

    .line 796
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v11, v6, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3, v11}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 797
    .local v3, "mContName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaUserState(I)I

    move-result v11

    if-gtz v11, :cond_9b

    .line 798
    if-eqz v9, :cond_6f

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_73

    .line 799
    :cond_6f
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_73
    nop

    .line 800
    .local v4, "title":Ljava/lang/CharSequence;
    const v5, 0x1040a02

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 801
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v3, v11, v2

    .line 800
    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 802
    .local v5, "message":Ljava/lang/CharSequence;
    const v11, 0x10409ff

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 803
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 802
    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c4

    .line 805
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_9b
    const v4, 0x1040a07

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 806
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 805
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 807
    .restart local v4    # "title":Ljava/lang/CharSequence;
    const v5, 0x1040a05

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 808
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v3, v11, v2

    aput-object v3, v11, v1

    .line 807
    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 810
    .end local v3    # "mContName":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/CharSequence;
    :goto_c4
    move-object v11, v0

    move-object v12, v4

    move-object v13, v5

    goto :goto_101

    .line 811
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_c8
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaUserState(I)I

    move-result v1

    if-gtz v1, :cond_f0

    .line 812
    if-eqz v9, :cond_d9

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_dd

    .line 813
    :cond_d9
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_dd
    move-object v4, v1

    .line 814
    .restart local v4    # "title":Ljava/lang/CharSequence;
    const v1, 0x1040a03

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 816
    .restart local v5    # "message":Ljava/lang/CharSequence;
    const v1, 0x1040a00

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v11, v0

    move-object v12, v4

    move-object v13, v5

    goto :goto_101

    .line 819
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_f0
    const v1, 0x1040a08

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 820
    .restart local v4    # "title":Ljava/lang/CharSequence;
    const v1, 0x1040a06

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v11, v0

    move-object v12, v4

    move-object v13, v5

    .line 825
    .end local v0    # "detail":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    .local v11, "detail":Ljava/lang/CharSequence;
    .local v12, "title":Ljava/lang/CharSequence;
    .local v13, "message":Ljava/lang/CharSequence;
    :goto_101
    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/KeyguardManager;

    .line 826
    .local v14, "km":Landroid/app/KeyguardManager;
    nop

    .line 827
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 826
    const/4 v1, 0x0

    invoke-virtual {v14, v1, v1, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v15

    .line 828
    .local v15, "unlockIntent":Landroid/content/Intent;
    if-nez v15, :cond_11a

    .line 829
    return-void

    .line 831
    :cond_11a
    const/high16 v0, 0x10800000

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 833
    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/high16 v1, 0x8000000

    invoke-static {v0, v2, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 836
    .local v16, "intent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v13

    move-object v4, v11

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 862
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "deviceType":Ljava/lang/String;
    .end local v9    # "isTabletDevice":Z
    .end local v10    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v11    # "detail":Ljava/lang/CharSequence;
    .end local v12    # "title":Ljava/lang/CharSequence;
    .end local v13    # "message":Ljava/lang/CharSequence;
    .end local v14    # "km":Landroid/app/KeyguardManager;
    .end local v15    # "unlockIntent":Landroid/content/Intent;
    .end local v16    # "intent":Landroid/app/PendingIntent;
    return-void

    .line 785
    :cond_134
    :goto_134
    return-void
.end method

.method private spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 32
    .param p1, "userCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "challengeType"    # I
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "IJI",
            "Lcom/android/internal/widget/ICheckCredentialProgressCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)",
            "Lcom/android/internal/widget/VerifyCredentialResponse;"
        }
    .end annotation

    .line 3569
    .local p7, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v0, p2

    move/from16 v8, p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify sp based credential for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 3570
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "userCredential"

    const/16 v17, 0x0

    aput-object v2, v1, v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    const/4 v14, 0x1

    aput-object v2, v1, v14

    const-string v2, "credentialType"

    const/4 v15, 0x2

    aput-object v2, v1, v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string/jumbo v3, "userId"

    aput-object v3, v1, v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 3573
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService$Injector;->hasEnrolledBiometrics(I)Z

    move-result v13

    .line 3575
    .local v13, "hasEnrolledBiometrics":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "spBasedDoVerifyCredential: user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " challengeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hasEnrolledBiometrics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 3582
    .local v12, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_b2

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    if-eqz v13, :cond_b2

    .line 3585
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/face/FaceManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceManager;

    .line 3586
    .local v1, "fm":Landroid/hardware/face/FaceManager;
    if-eqz v1, :cond_b2

    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->semIsFrameworkHandleLockout()Z

    move-result v2

    if-nez v2, :cond_b2

    .line 3589
    const/4 v0, 0x2

    .line 3590
    .end local p2    # "challengeType":I
    .local v0, "challengeType":I
    iget-object v2, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/face/FaceManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceManager;

    invoke-virtual {v2}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v2

    move/from16 v18, v0

    move-wide/from16 v19, v2

    .end local p3    # "challenge":J
    .local v2, "challenge":J
    goto :goto_b6

    .line 3596
    .end local v0    # "challengeType":I
    .end local v1    # "fm":Landroid/hardware/face/FaceManager;
    .end local v2    # "challenge":J
    .restart local p2    # "challengeType":I
    .restart local p3    # "challenge":J
    :cond_b2
    move-wide/from16 v19, p3

    move/from16 v18, v0

    .end local p2    # "challengeType":I
    .end local p3    # "challenge":J
    .local v18, "challengeType":I
    .local v19, "challenge":J
    :goto_b6
    const/4 v1, 0x0

    .line 3599
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_start_b7
    invoke-direct {v9, v10, v8}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredentialForDualDAR(Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_bb} :catch_be

    move-object v1, v0

    .line 3602
    move-object v11, v1

    goto :goto_dc

    .line 3600
    :catch_be
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 3601
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockSettingsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v1

    .line 3603
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v11, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_dc
    if-eqz v11, :cond_ed

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_ed

    .line 3604
    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "verifyChallenge for DualDAR failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    return-object v11

    .line 3608
    :cond_ed
    iget-object v7, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v7

    .line 3609
    :try_start_f0
    invoke-direct {v9, v8}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0
    :try_end_f4
    .catchall {:try_start_f0 .. :try_end_f4} :catchall_29b

    if-nez v0, :cond_103

    .line 3610
    const/4 v0, 0x0

    :try_start_f7
    monitor-exit v7
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f9

    return-object v0

    .line 3635
    :catchall_f9
    move-exception v0

    :goto_fa
    move-object/from16 v21, v7

    move v14, v8

    move-object/from16 v22, v12

    move/from16 v23, v13

    goto/16 :goto_2a3

    .line 3612
    :cond_103
    const/16 v0, -0x270f

    if-ne v8, v0, :cond_119

    .line 3613
    :try_start_107
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1
    :try_end_10d
    .catchall {:try_start_107 .. :try_end_10d} :catchall_115

    move-object/from16 v6, p6

    :try_start_10f
    invoke-virtual {v0, v1, v10, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    monitor-exit v7
    :try_end_114
    .catchall {:try_start_10f .. :try_end_114} :catchall_f9

    return-object v0

    .line 3635
    :catchall_115
    move-exception v0

    move-object/from16 v6, p6

    goto :goto_fa

    .line 3617
    :cond_119
    move-object/from16 v6, p6

    :try_start_11b
    invoke-virtual {v9, v8}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v3

    .line 3618
    .local v3, "handle":J
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3619
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2
    :try_end_125
    .catchall {:try_start_11b .. :try_end_125} :catchall_29b

    .line 3618
    move-object/from16 v5, p1

    move/from16 v6, p5

    move-object/from16 v21, v7

    move-object/from16 v7, p6

    :try_start_12d
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    .line 3621
    .local v0, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_133
    .catchall {:try_start_12d .. :try_end_133} :catchall_294

    .line 3623
    .end local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_start_133
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2
    :try_end_137
    .catchall {:try_start_133 .. :try_end_137} :catchall_28c

    if-nez v2, :cond_172

    .line 3626
    :try_start_139
    iget-object v11, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_end_141
    .catchall {:try_start_139 .. :try_end_141} :catchall_169

    move-object/from16 v22, v12

    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .local v22, "pm":Landroid/content/pm/PackageManager;
    move-object v12, v2

    move/from16 v23, v13

    .end local v13    # "hasEnrolledBiometrics":Z
    .local v23, "hasEnrolledBiometrics":Z
    move-object v13, v5

    move v6, v14

    move v7, v15

    move-wide/from16 v14, v19

    move/from16 v16, p5

    :try_start_14d
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2
    :try_end_151
    .catchall {:try_start_14d .. :try_end_151} :catchall_164

    move-object v11, v2

    .line 3628
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_start_152
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_179

    .line 3631
    const-string v1, "LockSettingsService"

    const-string/jumbo v2, "verifyChallenge with SP failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v21

    return-object v1

    .line 3635
    .end local v0    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v3    # "handle":J
    .end local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_164
    move-exception v0

    move-object v11, v1

    move v14, v8

    goto/16 :goto_2a3

    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "hasEnrolledBiometrics":Z
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "hasEnrolledBiometrics":Z
    :catchall_169
    move-exception v0

    move-object/from16 v22, v12

    move/from16 v23, v13

    move-object v11, v1

    move v14, v8

    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "hasEnrolledBiometrics":Z
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "hasEnrolledBiometrics":Z
    goto/16 :goto_2a3

    .line 3623
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "hasEnrolledBiometrics":Z
    .restart local v0    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .restart local v3    # "handle":J
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "hasEnrolledBiometrics":Z
    :cond_172
    move-object/from16 v22, v12

    move/from16 v23, v13

    move v6, v14

    move v7, v15

    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "hasEnrolledBiometrics":Z
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "hasEnrolledBiometrics":Z
    move-object v11, v1

    .line 3635
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v3    # "handle":J
    .restart local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_179
    monitor-exit v21
    :try_end_17a
    .catchall {:try_start_152 .. :try_end_17a} :catchall_289

    .line 3636
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_273

    .line 3638
    if-eqz v23, :cond_19a

    .line 3639
    if-nez p7, :cond_18a

    .line 3640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .end local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .local v1, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    goto :goto_18c

    .line 3639
    .end local v1    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .restart local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :cond_18a
    move-object/from16 v1, p7

    .line 3642
    .end local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .restart local v1    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :goto_18c
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v3

    invoke-direct {v2, v9, v8, v3}, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;-><init>(Lcom/android/server/locksettings/LockSettingsService;I[B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v1

    goto :goto_19c

    .line 3638
    .end local v1    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .restart local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :cond_19a
    move-object/from16 v12, p7

    .line 3645
    .end local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .local v12, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :goto_19c
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v13

    .line 3647
    .local v13, "secret":[B
    invoke-direct {v9, v8}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordLockedForKeyStore(I)Z

    move-result v1

    if-nez v1, :cond_1d5

    .line 3648
    invoke-direct {v9, v8}, Lcom/android/server/locksettings/LockSettingsService;->isEncryptedPasswordLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1d5

    .line 3649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlock keystore for migration: user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v1

    .line 3651
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encryptPassword([B)Ljava/lang/String;

    move-result-object v2

    .line 3650
    invoke-direct {v9, v1, v2, v8}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystoreForMigration([BLjava/lang/String;I)V

    .line 3653
    :cond_1d5
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v8}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v1

    if-eqz v1, :cond_22c

    .line 3654
    if-eqz v8, :cond_1f0

    .line 3655
    invoke-direct {v9, v8}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 3656
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_1ec

    goto :goto_1f0

    :cond_1ec
    move v15, v6

    goto :goto_22d

    .line 3655
    :cond_1ee
    move v15, v6

    goto :goto_22d

    .line 3657
    :cond_1f0
    :goto_1f0
    invoke-direct {v9, v8}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordLockedForFbe(I)Z

    move-result v1

    if-nez v1, :cond_22a

    .line 3658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlock user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with ep and migration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    .line 3660
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/server/locksettings/LockSettingsService;->getEncryptedBytes([B)[B

    move-result-object v14

    .line 3659
    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object v5, v13

    move v15, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserForMigration(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B[B[B)V

    goto :goto_22d

    .line 3657
    :cond_22a
    move v15, v6

    goto :goto_22d

    .line 3653
    :cond_22c
    move v15, v6

    .line 3665
    :goto_22d
    iget-object v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3666
    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v14

    .line 3665
    move-object/from16 v1, p0

    move/from16 v3, v18

    move-wide/from16 v4, v19

    move-object v6, v12

    move v15, v7

    move-object v7, v14

    move v14, v8

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V

    .line 3669
    invoke-direct {v9, v14}, Lcom/android/server/locksettings/LockSettingsService;->isDualDARUser(I)Z

    move-result v1

    if-eqz v1, :cond_251

    .line 3670
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    invoke-direct {v9, v1, v14, v2}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokensForDualDAR(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I[B)V

    .line 3675
    :cond_251
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3676
    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v1

    .line 3675
    invoke-virtual {v11, v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    .line 3678
    new-array v1, v15, [Ljava/lang/Object;

    .line 3679
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v17

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3678
    const-string v2, "Result of verification of user %d : %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 3681
    .end local v13    # "secret":[B
    goto :goto_288

    .end local v12    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .restart local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :cond_273
    move v3, v6

    move v14, v8

    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-ne v1, v3, :cond_286

    .line 3682
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v1

    if-lez v1, :cond_286

    .line 3683
    const/16 v1, 0x8

    invoke-virtual {v9, v1, v14}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 3687
    :cond_286
    move-object/from16 v12, p7

    .end local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .restart local v12    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :goto_288
    return-object v11

    .line 3635
    .end local v0    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v12    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .restart local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :catchall_289
    move-exception v0

    move v14, v8

    goto :goto_2a3

    .end local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "hasEnrolledBiometrics":Z
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v12, "pm":Landroid/content/pm/PackageManager;
    .local v13, "hasEnrolledBiometrics":Z
    :catchall_28c
    move-exception v0

    move v14, v8

    move-object/from16 v22, v12

    move/from16 v23, v13

    move-object v11, v1

    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "hasEnrolledBiometrics":Z
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "hasEnrolledBiometrics":Z
    goto :goto_2a3

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "hasEnrolledBiometrics":Z
    .restart local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "hasEnrolledBiometrics":Z
    :catchall_294
    move-exception v0

    move v14, v8

    move-object/from16 v22, v12

    move/from16 v23, v13

    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "hasEnrolledBiometrics":Z
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "hasEnrolledBiometrics":Z
    goto :goto_2a3

    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "hasEnrolledBiometrics":Z
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "hasEnrolledBiometrics":Z
    :catchall_29b
    move-exception v0

    move-object/from16 v21, v7

    move v14, v8

    move-object/from16 v22, v12

    move/from16 v23, v13

    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "hasEnrolledBiometrics":Z
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "hasEnrolledBiometrics":Z
    :goto_2a3
    :try_start_2a3
    monitor-exit v21
    :try_end_2a4
    .catchall {:try_start_2a3 .. :try_end_2a4} :catchall_2a5

    throw v0

    :catchall_2a5
    move-exception v0

    goto :goto_2a3
.end method

.method private spBasedDoVerifyCredentialForDualDAR(Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 4
    .param p1, "userCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4546
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method

.method private spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .registers 21
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I
    .param p4, "isLockTiedToParent"    # Z

    .line 4088
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set sp based credential for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 4089
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "credential"

    const/4 v11, 0x0

    aput-object v3, v0, v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    const/4 v12, 0x1

    aput-object v3, v0, v12

    const/4 v3, 0x2

    const-string v4, "credentialType"

    aput-object v4, v0, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const/4 v3, 0x4

    const-string/jumbo v4, "savedCredential"

    aput-object v4, v0, v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const/4 v3, 0x6

    const-string/jumbo v4, "savedCredentialType"

    aput-object v4, v0, v3

    .line 4090
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const/16 v3, 0x8

    const-string/jumbo v4, "userId"

    aput-object v4, v0, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const/16 v3, 0xa

    const-string/jumbo v4, "isLockTiedToParent"

    aput-object v4, v0, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v0, v4

    .line 4089
    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 4093
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const-string v13, "LockSettingsService"

    if-eqz v0, :cond_a1

    invoke-direct {v1, v10}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 4097
    :try_start_87
    invoke-virtual {v1, v10}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_8b} :catch_96
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_87 .. :try_end_8b} :catch_8c
    .catch Ljava/security/InvalidKeyException; {:try_start_87 .. :try_end_8b} :catch_8c
    .catch Ljava/security/KeyStoreException; {:try_start_87 .. :try_end_8b} :catch_8c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_87 .. :try_end_8b} :catch_8c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_87 .. :try_end_8b} :catch_8c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_87 .. :try_end_8b} :catch_8c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_87 .. :try_end_8b} :catch_8c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_87 .. :try_end_8b} :catch_8c
    .catch Ljava/security/cert/CertificateException; {:try_start_87 .. :try_end_8b} :catch_8c
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8b} :catch_8c

    .line 4107
    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    goto :goto_a3

    .line 4101
    .end local v0    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :catch_8c
    move-exception v0

    .line 4105
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Failed to decrypt child profile key"

    invoke-static {v13, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4106
    invoke-static {v3, v0}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a1

    .line 4098
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_96
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 4099
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Child profile key not found"

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    invoke-static {v3, v0}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4109
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_a1
    :goto_a1
    move-object/from16 v0, p2

    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :goto_a3
    invoke-virtual {v1, v10}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v14

    .line 4110
    .local v14, "handle":J
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 4111
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const/4 v9, 0x0

    .line 4110
    move-wide v5, v14

    move-object v7, v0

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v3

    .line 4112
    .local v3, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 4113
    .local v4, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v5, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 4115
    .local v5, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-nez v5, :cond_106

    .line 4116
    const-string v6, "Untrusted credential reset not acceptable"

    invoke-static {v6}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4118
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string v7, "Untrusted credential reset not acceptable."

    invoke-virtual {v6, v11, v7}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 4120
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v6, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 4122
    if-eqz v4, :cond_f6

    .line 4123
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_d7

    goto :goto_f6

    .line 4132
    :cond_d7
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-ne v6, v12, :cond_ed

    .line 4133
    const-string v6, "Failed to enroll: rate limit exceeded."

    .line 4135
    .local v6, "s":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v7, v11, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 4136
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v7, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 4138
    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4139
    return v11

    .line 4142
    .end local v6    # "s":Ljava/lang/String;
    :cond_ed
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "password change failed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4124
    :cond_f6
    :goto_f6
    const-string v6, "Failed to enroll: incorrect credential."

    .line 4126
    .restart local v6    # "s":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v7, v11, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 4127
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v7, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 4129
    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    return v11

    .line 4145
    .end local v6    # "s":Ljava/lang/String;
    :cond_106
    invoke-direct {v1, v10, v5}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 4146
    invoke-direct {v1, v2, v5, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    .line 4147
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v6, v14, v15, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 4150
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v6

    if-eqz v6, :cond_11a

    .line 4151
    invoke-direct {v1, v5, v10}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordDeserted(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 4155
    :cond_11a
    move/from16 v6, p4

    invoke-direct {v1, v2, v10, v6}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    .line 4156
    return v12
.end method

.method private synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;)V"
        }
    .end annotation

    .line 2001
    .local p2, "profilePasswordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2002
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2003
    return-void

    .line 2005
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    .line 2006
    .local v0, "isSecure":Z
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 2007
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2009
    .local v2, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Synchronize challenge along with user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 2010
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Feasible for profiles(%d) ? %b"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2012
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_51
    if-ge v3, v2, :cond_d4

    .line 2013
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2014
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 2015
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 2016
    .local v6, "managedUserId":I
    invoke-direct {p0, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 2017
    goto :goto_d0

    .line 2019
    :cond_68
    if-eqz v0, :cond_73

    .line 2020
    nop

    .line 2021
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v7

    .line 2020
    invoke-virtual {p0, v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V

    goto :goto_d0

    .line 2025
    :cond_73
    const-string v7, "Profile("

    if-eqz p2, :cond_b2

    .line 2026
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 2027
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") credential found! Clear profile credential."

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2028
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v7

    .line 2029
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockscreenCredential;

    .line 2028
    invoke-direct {p0, v7, v8, v6, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 2032
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 2033
    invoke-direct {p0, v6}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_d0

    .line 2035
    :cond_b2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") credential not found... Clear profile credential."

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2036
    const-string v7, "LockSettingsService"

    const-string v8, "Attempt to clear tied challenge, but no password supplied."

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    .end local v6    # "managedUserId":I
    :cond_d0
    :goto_d0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_51

    .line 2041
    .end local v3    # "i":I
    :cond_d4
    return-void
.end method

.method static timestampToString(J)Ljava/lang/String;
    .registers 4
    .param p0, "timestamp"    # J

    .line 4631
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "ary"    # [B

    .line 5432
    const-string v0, "0123456789ABCDEF"

    .line 5433
    .local v0, "hex":Ljava/lang/String;
    const-string v1, ""

    .line 5434
    .local v1, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_3d

    .line 5435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p0, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5434
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5438
    .end local v2    # "i":I
    :cond_3d
    return-object v1
.end method

.method private tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 1053
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1055
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1056
    monitor-exit v0

    return-void

    .line 1059
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 1060
    .local v4, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    .line 1062
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    .line 1061
    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    .line 1063
    .local v1, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v2, :cond_3f

    .line 1064
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieved auth token for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    goto :goto_55

    .line 1067
    :cond_3f
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auth token not available for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    .end local v1    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v4    # "handle":J
    :goto_55
    monitor-exit v0

    .line 1070
    return-void

    .line 1069
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v1
.end method

.method private unlockChildProfile(IZIJLjava/util/ArrayList;)V
    .registers 15
    .param p1, "profileHandle"    # I
    .param p2, "ignoreUserNotAuthenticated"    # Z
    .param p3, "challengeType"    # I
    .param p4, "challenge"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)V"
        }
    .end annotation

    .line 1756
    .local p6, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p3

    move-wide v3, p4

    move v5, p1

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1770
    goto :goto_2c

    .line 1759
    :catch_e
    move-exception v0

    .line 1763
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    const-string v2, "LockSettingsService"

    if-eqz v1, :cond_1b

    .line 1764
    const-string v1, "Child profile key not found"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1765
    :cond_1b
    if-eqz p2, :cond_27

    instance-of v1, v0, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz v1, :cond_27

    .line 1766
    const-string v1, "Parent keystore seems locked, ignoring"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1768
    :cond_27
    const-string v1, "Failed to decrypt child profile key"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1771
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method private unlockKeystore([BI)V
    .registers 9
    .param p1, "password"    # [B
    .param p2, "userHandle"    # I

    .line 1679
    invoke-static {p2}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1682
    :cond_7
    if-nez p1, :cond_b

    const/4 v0, 0x0

    goto :goto_10

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 1683
    .local v0, "passwordString":Ljava/lang/String;
    :goto_10
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1684
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-virtual {v1, p2, v0}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v2

    .line 1686
    .local v2, "ret":Z
    if-nez v2, :cond_3f

    .line 1687
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ks.unlock, userhandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1689
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 1692
    :cond_3f
    return-void
.end method

.method private unlockKeystoreForMigration([BLjava/lang/String;I)V
    .registers 8
    .param p1, "sp"    # [B
    .param p2, "ep"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlockKeystore - migration is needed: user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1711
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p3, p2}, Landroid/security/KeyStore;->unlock_sec(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockKeystore - failed to unlock for migration: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    return-void

    .line 1715
    :cond_37
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 1716
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForKeyStore(I)V

    .line 1717
    return-void
.end method

.method private unlockKeystoreWithEncryptedSyntheticPassword(Ljava/lang/String;I)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 1697
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1698
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->unlock_sec(ILjava/lang/String;)Z

    move-result v1

    .line 1700
    .local v1, "ret":Z
    if-nez v1, :cond_2f

    .line 1701
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ks.unlock_sec, userhandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1703
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 1706
    :cond_2f
    return-void
.end method

.method private unlockUser(I[B[B)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    .line 1808
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[BIJLjava/util/ArrayList;)V

    .line 1809
    return-void
.end method

.method private unlockUser(I[B[BIJLjava/util/ArrayList;)V
    .registers 25
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "challengeType"    # I
    .param p5, "challenge"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[BIJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)V"
        }
    .end annotation

    .line 1822
    .local p7, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p7

    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 1824
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with secret only, length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    if-eqz v10, :cond_25

    array-length v1, v10

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1824
    const-string v12, "LockSettingsService"

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v13

    .line 1828
    .local v13, "alreadyUnlocked":Z
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v14, v0

    .line 1829
    .local v14, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v0, v8, v9, v14}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;ILjava/util/concurrent/CountDownLatch;)V

    move-object v15, v0

    .line 1855
    .local v15, "listener":Landroid/os/IProgressListener;
    :try_start_45
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v7, p2

    invoke-interface {v0, v9, v7, v10, v15}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_176

    .line 1858
    nop

    .line 1861
    const-wide/16 v0, 0xf

    :try_start_4f
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_54} :catch_55

    .line 1864
    goto :goto_5d

    .line 1862
    :catch_55
    move-exception v0

    .line 1863
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1866
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_5d
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1867
    return-void

    .line 1870
    :cond_6a
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_74
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1871
    .local v6, "profile":Landroid/content/pm/UserInfo;
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v9, :cond_86

    goto :goto_74

    .line 1872
    :cond_86
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_8d

    goto :goto_74

    .line 1875
    :cond_8d
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v8, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->updateUnlockUserPrepareTime(IJ)V

    .line 1877
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1878
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 1883
    iget v2, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v9, v6

    .end local v6    # "profile":Landroid/content/pm/UserInfo;
    .local v9, "profile":Landroid/content/pm/UserInfo;
    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->updateUnlockUserRequestTime(IJILjava/lang/Exception;)V

    .line 1885
    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZIJLjava/util/ArrayList;)V

    goto :goto_d3

    .line 1891
    .end local v9    # "profile":Landroid/content/pm/UserInfo;
    .restart local v6    # "profile":Landroid/content/pm/UserInfo;
    :cond_c4
    move-object v9, v6

    .end local v6    # "profile":Landroid/content/pm/UserInfo;
    .restart local v9    # "profile":Landroid/content/pm/UserInfo;
    :try_start_c5
    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    :try_end_ca
    .catch Ljava/security/GeneralSecurityException; {:try_start_c5 .. :try_end_ca} :catch_cb
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_ca} :catch_cb

    .line 1894
    goto :goto_d3

    .line 1892
    :catch_cb
    move-exception v0

    .line 1893
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Cache work profile password failed"

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d3

    .line 1877
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "profile":Landroid/content/pm/UserInfo;
    .restart local v6    # "profile":Landroid/content/pm/UserInfo;
    :cond_d2
    move-object v9, v6

    .line 1899
    .end local v6    # "profile":Landroid/content/pm/UserInfo;
    .restart local v9    # "profile":Landroid/content/pm/UserInfo;
    :goto_d3
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 1900
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 1901
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_105

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Secure folder user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not running yet while unlock system user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_144

    .line 1904
    :cond_105
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_144

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlock secure folder user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1908
    .local v1, "identity":J
    :try_start_129
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getPersonaService()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$znh_ulcUoOf4wlU0tA8zGEUn3io;

    invoke-direct {v3, v9}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$znh_ulcUoOf4wlU0tA8zGEUn3io;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_135} :catch_138
    .catchall {:try_start_129 .. :try_end_135} :catchall_136

    goto :goto_13c

    .line 1913
    :catchall_136
    move-exception v0

    goto :goto_140

    .line 1910
    :catch_138
    move-exception v0

    .line 1911
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13c
    .catchall {:try_start_139 .. :try_end_13c} :catchall_136

    .line 1913
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1914
    goto :goto_144

    .line 1913
    :goto_140
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1914
    throw v0

    .line 1920
    .end local v1    # "identity":J
    :cond_144
    :goto_144
    if-nez v13, :cond_158

    .line 1921
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1923
    .local v1, "ident":J
    :try_start_14a
    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V
    :try_end_14f
    .catchall {:try_start_14a .. :try_end_14f} :catchall_153

    .line 1925
    invoke-static {v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    .line 1926
    goto :goto_158

    .line 1925
    :catchall_153
    move-exception v0

    invoke-static {v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    .line 1926
    throw v0

    .line 1929
    .end local v1    # "ident":J
    .end local v9    # "profile":Landroid/content/pm/UserInfo;
    :cond_158
    :goto_158
    move/from16 v9, p1

    move-object/from16 v7, p2

    goto/16 :goto_74

    .line 1931
    :cond_15e
    if-eqz v11, :cond_173

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_173

    .line 1932
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$XNngKd-4INmn9PuYzwRjUWOWgIY;

    move/from16 v2, p4

    invoke-direct {v1, v8, v11, v2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$XNngKd-4INmn9PuYzwRjUWOWgIY;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_175

    .line 1931
    :cond_173
    move/from16 v2, p4

    .line 1950
    :goto_175
    return-void

    .line 1856
    :catch_176
    move-exception v0

    move/from16 v2, p4

    .line 1857
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private unlockUserForMigration(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B[B[B)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "token"    # [B
    .param p4, "sp"    # [B
    .param p5, "ep"    # [B

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlockUser - migration is needed: user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    invoke-direct {p0, p1, p3, p5}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockUser - verify: user="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const-wide/16 v5, 0x0

    move-object v4, p2

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1779
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-eqz v0, :cond_f2

    .line 1783
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_c2

    .line 1789
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v2

    if-nez v2, :cond_67

    .line 1790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockUser - without auth and key, user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1792
    return-void

    .line 1795
    :cond_67
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    if-eqz v2, :cond_a5

    .line 1799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockUser - addUserKeyAuth: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    invoke-direct {p0, p1, v2, p4}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockUser - fixateNewestUserKeyAuth: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1803
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForFbe(I)V

    .line 1804
    return-void

    .line 1796
    :cond_a5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockUser - Empty payload: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1784
    :cond_c2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockUser - Non-OK response: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-OK response verifying a credential we just set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1780
    :cond_f2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockUser - Null response: user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/MDFLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null response verifying a credential we just set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private unlockUserKey(I[B[B)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    .line 2624
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2626
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    .line 2630
    nop

    .line 2631
    return-void

    .line 2627
    :catch_f
    move-exception v1

    .line 2628
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unlock user key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private unlockUserWithToken(J[BI)Z
    .registers 17
    .param p1, "tokenHandle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 4419
    move-object v10, p0

    move/from16 v11, p4

    iget-object v7, v10, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v7

    .line 4420
    :try_start_6
    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 4423
    iget-object v1, v10, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-wide v3, p1

    move-object v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    .line 4425
    .local v0, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v1, :cond_2a

    .line 4426
    const-string v1, "LockSettingsService"

    const-string v2, "Invalid escrow token supplied"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    const/4 v1, 0x0

    monitor-exit v7

    return v1

    .line 4429
    :cond_2a
    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_63

    .line 4435
    if-eqz v11, :cond_47

    .line 4436
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 4437
    iget-object v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 4438
    invoke-direct {p0, v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object v7

    const/4 v9, 0x1

    .line 4437
    move-object v1, p0

    move/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;IZ)V

    goto :goto_59

    .line 4441
    :cond_47
    iget-object v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 4442
    invoke-direct {p0, v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object v7

    .line 4441
    move-object v1, p0

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V

    .line 4445
    :goto_59
    const/4 v1, 0x1

    return v1

    .line 4421
    .end local v0    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    :cond_5b
    :try_start_5b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Escrow token is disabled on the current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "tokenHandle":J
    .end local p3    # "token":[B
    .end local p4    # "userId":I
    throw v0

    .line 4429
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "tokenHandle":J
    .restart local p3    # "token":[B
    .restart local p4    # "userId":I
    :catchall_63
    move-exception v0

    monitor-exit v7
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_63

    throw v0
.end method

.method private updateUnlockUserFinishTime(IJ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "time"    # J

    .line 5596
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPasswordData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;

    .line 5597
    .local v0, "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    if-eqz v0, :cond_c

    .line 5598
    iput-wide p2, v0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockFinishTime:J

    .line 5600
    :cond_c
    return-void
.end method

.method private updateUnlockUserPrepareTime(IJ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "time"    # J

    .line 5575
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPasswordData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;

    .line 5576
    .local v0, "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    if-eqz v0, :cond_c

    .line 5577
    iput-wide p2, v0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockPrepareTime:J

    .line 5579
    :cond_c
    return-void
.end method

.method private updateUnlockUserRequestTime(IJILjava/lang/Exception;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "time"    # J
    .param p4, "unlockType"    # I
    .param p5, "e"    # Ljava/lang/Exception;

    .line 5582
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPasswordData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;

    .line 5583
    .local v0, "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    if-eqz v0, :cond_17

    .line 5584
    if-nez p4, :cond_11

    .line 5585
    iput-wide p2, v0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockProfileUserRequestTime:J

    .line 5586
    iput-object p5, v0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->subException:Ljava/lang/Exception;

    goto :goto_17

    .line 5588
    :cond_11
    iput-wide p2, v0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockRequestTime:J

    .line 5589
    iput p4, v0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->unlockType:I

    .line 5590
    iput-object p5, v0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->exception:Ljava/lang/Exception;

    .line 5593
    :cond_17
    :goto_17
    return-void
.end method

.method private verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Lcom/android/internal/widget/LockscreenCredential;IJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p4, "challengeType"    # I
    .param p5, "challenge"    # J
    .param p7, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 2888
    if-eqz p2, :cond_7

    iget-object v0, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-nez v0, :cond_10

    :cond_7
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2890
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2893
    :cond_10
    if-eqz p2, :cond_e9

    iget-object v0, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-eqz v0, :cond_e9

    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_e9

    .line 2899
    :cond_1f
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 2903
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iget-object v5, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 2904
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v6

    .line 2903
    move v2, p1

    move-wide v3, p5

    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_32} :catch_33

    .line 2908
    .local v0, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_3e

    .line 2905
    .end local v0    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_33
    move-exception v0

    .line 2906
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "gatekeeper verify failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2907
    sget-object v1, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    move-object v0, v1

    .line 2909
    .local v0, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_3e
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2910
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v2

    .line 2912
    .local v2, "shouldReEnroll":Z
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_d6

    .line 2916
    if-eqz p7, :cond_5b

    .line 2918
    :try_start_4e
    invoke-interface {p7}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_52

    .line 2921
    goto :goto_5b

    .line 2919
    :catch_52
    move-exception v3

    .line 2920
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "progressCallback throws exception"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2923
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_5b
    :goto_5b
    invoke-direct {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2924
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 2926
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unlocking user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with token length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2926
    const-string v4, "LockSettingsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 2930
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v3

    invoke-static {p3}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    goto :goto_a0

    .line 2932
    :cond_9c
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 2936
    :goto_a0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 2937
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 2939
    :cond_a9
    if-eqz v2, :cond_b0

    .line 2940
    const/4 v3, 0x0

    invoke-direct {p0, p3, p3, p1, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    goto :goto_cf

    .line 2945
    :cond_b0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3

    .line 2946
    :try_start_b3
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 2947
    iget-object v4, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {p0, v4, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v4

    .line 2949
    .local v4, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-direct {p0, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2951
    if-eqz v4, :cond_cb

    .line 2952
    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    .line 2954
    :cond_cb
    invoke-direct {p0, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordInitialized(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2957
    .end local v4    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :cond_ce
    monitor-exit v3
    :try_end_cf
    .catchall {:try_start_b3 .. :try_end_cf} :catchall_d3

    .line 2960
    :goto_cf
    invoke-direct {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_e8

    .line 2957
    :catchall_d3
    move-exception v4

    :try_start_d4
    monitor-exit v3
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v4

    .line 2962
    :cond_d6
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e8

    .line 2963
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    if-lez v3, :cond_e8

    .line 2964
    const/16 v3, 0x8

    invoke-virtual {p0, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 2968
    :cond_e8
    :goto_e8
    return-object v1

    .line 2894
    .end local v0    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v2    # "shouldReEnroll":Z
    :cond_e9
    :goto_e9
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method


# virtual methods
.method public addLog(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "contents"    # Ljava/lang/String;

    .line 5463
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 5464
    return-void
.end method

.method public changeToken([BJ[BJI)Z
    .registers 22
    .param p1, "newToken"    # [B
    .param p2, "newHandle"    # J
    .param p4, "oldToken"    # [B
    .param p5, "oldHandle"    # J
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6024
    move-object v1, p0

    move-wide/from16 v8, p5

    move/from16 v10, p7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change token for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 6025
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "newToken"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "newHandle"

    aput-object v3, v0, v2

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", oldToken : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", oldHandle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 6028
    const/4 v12, 0x0

    .line 6030
    .local v12, "result":Z
    :try_start_54
    iget-object v13, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v13
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_b4

    .line 6031
    :try_start_57
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 6034
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 6035
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide/from16 v4, p5

    move-object/from16 v6, p4

    move/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    .line 6037
    .local v0, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    if-eqz v0, :cond_98

    iget-object v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_78

    move-wide/from16 v4, p2

    goto :goto_9a

    .line 6041
    :cond_78
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_end_7c
    .catchall {:try_start_57 .. :try_end_7c} :catchall_ab

    move-wide/from16 v4, p2

    :try_start_7e
    invoke-virtual {v2, v4, v5, v3, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    move v12, v2

    .line 6043
    if-nez v12, :cond_8a

    .line 6044
    const-string v2, "Failed in new token activation"

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6046
    :cond_8a
    if-eqz v12, :cond_92

    .line 6047
    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 6048
    :cond_92
    const-string v2, "Failed in old token elimination"

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_9f

    .line 6037
    :cond_98
    move-wide/from16 v4, p2

    .line 6039
    :goto_9a
    const-string v2, "Failed due to invalid token"

    invoke-static {v2}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6051
    .end local v0    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    :cond_9f
    :goto_9f
    monitor-exit v13

    .line 6054
    goto :goto_bc

    .line 6032
    :cond_a1
    move-wide/from16 v4, p2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Excrow token is disabled for current user"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v12    # "result":Z
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "newToken":[B
    .end local p2    # "newHandle":J
    .end local p4    # "oldToken":[B
    .end local p5    # "oldHandle":J
    .end local p7    # "userId":I
    throw v0

    .line 6051
    .restart local v12    # "result":Z
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "newToken":[B
    .restart local p2    # "newHandle":J
    .restart local p4    # "oldToken":[B
    .restart local p5    # "oldHandle":J
    .restart local p7    # "userId":I
    :catchall_ab
    move-exception v0

    move-wide/from16 v4, p2

    :goto_ae
    monitor-exit v13
    :try_end_af
    .catchall {:try_start_7e .. :try_end_af} :catchall_b2

    .end local v12    # "result":Z
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "newToken":[B
    .end local p2    # "newHandle":J
    .end local p4    # "oldToken":[B
    .end local p5    # "oldHandle":J
    .end local p7    # "userId":I
    :try_start_af
    throw v0
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b0} :catch_b0

    .line 6052
    .restart local v12    # "result":Z
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "newToken":[B
    .restart local p2    # "newHandle":J
    .restart local p4    # "oldToken":[B
    .restart local p5    # "oldHandle":J
    .restart local p7    # "userId":I
    :catch_b0
    move-exception v0

    goto :goto_b7

    .line 6051
    :catchall_b2
    move-exception v0

    goto :goto_ae

    .line 6052
    :catch_b4
    move-exception v0

    move-wide/from16 v4, p2

    .line 6053
    .local v0, "e":Ljava/lang/Exception;
    :goto_b7
    const-string v2, "Unexpected exception while change token"

    invoke-static {v2, v0}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6055
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final result of change token : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6056
    return v12
.end method

.method public checkAppLockBackupPin(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5852
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 5853
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5854
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockBackupkPinHash(I)[B

    move-result-object v1

    .line 5855
    .local v1, "storedHash":[B
    if-nez v1, :cond_17

    .line 5856
    const/4 v2, 0x1

    return v2

    .line 5858
    :cond_17
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5859
    .local v2, "matched":Z
    if-nez v2, :cond_30

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_30

    .line 5860
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5862
    :cond_30
    return v2
.end method

.method public checkAppLockFingerprintPassword(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5867
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 5868
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5869
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockFingerprintPasswordHash(I)[B

    move-result-object v1

    .line 5870
    .local v1, "storedHash":[B
    if-nez v1, :cond_17

    .line 5871
    const/4 v2, 0x1

    return v2

    .line 5873
    :cond_17
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5875
    .local v2, "matched":Z
    if-nez v2, :cond_30

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_30

    .line 5876
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5877
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object v3

    .line 5876
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5880
    :cond_30
    return v2
.end method

.method public checkAppLockPassword(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5825
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 5827
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5828
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockPasswordHash(I)[B

    move-result-object v1

    .line 5829
    .local v1, "storedHash":[B
    if-nez v1, :cond_17

    .line 5830
    const/4 v2, 0x1

    return v2

    .line 5832
    :cond_17
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5833
    .local v2, "matched":Z
    if-nez v2, :cond_30

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_30

    .line 5834
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5836
    :cond_30
    return v2
.end method

.method public checkAppLockPatternWithHash(Ljava/lang/String;I[B)Z
    .registers 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "hashQ"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5841
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 5842
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v0

    .line 5843
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockPatternHash(I)[B

    move-result-object v1

    .line 5844
    .local v1, "storedHash":[B
    const/4 v2, 0x1

    if-nez v1, :cond_1b

    .line 5845
    return v2

    .line 5847
    :cond_1b
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-static {p3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :cond_29
    :goto_29
    return v2
.end method

.method public checkAppLockPin(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5808
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 5809
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5810
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readAppLockPinHash(I)[B

    move-result-object v1

    .line 5812
    .local v1, "storedHash":[B
    if-nez v1, :cond_17

    .line 5813
    const/4 v2, 0x1

    return v2

    .line 5816
    :cond_17
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5817
    .local v2, "matched":Z
    if-nez v2, :cond_30

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_30

    .line 5818
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5820
    :cond_30
    return v2
.end method

.method public checkCarrierPassword([BI)Z
    .registers 8
    .param p1, "password"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5318
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 5320
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5321
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readCarrierPasswordHash(I)[B

    move-result-object v1

    .line 5323
    .local v1, "storedHash":[B
    if-nez v1, :cond_11

    .line 5324
    const/4 v2, 0x1

    return v2

    .line 5327
    :cond_11
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5329
    .local v2, "matched":Z
    if-nez v2, :cond_24

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_24

    .line 5330
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5333
    :cond_24
    return v2
.end method

.method public checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 12
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 2715
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2726
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2727
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    move-object p1, v0

    .line 2729
    :cond_e
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_28

    .line 2731
    if-eqz p2, :cond_24

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2732
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2734
    :cond_24
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2729
    return-object v0

    .line 2731
    :catchall_28
    move-exception v0

    if-eqz p2, :cond_34

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2732
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2734
    :cond_34
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2735
    throw v0
.end method

.method public checkFMMPassword([BI)Z
    .registers 8
    .param p1, "password"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5271
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 5272
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v0

    .line 5273
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFMMPasswordHash(I)[B

    move-result-object v1

    .line 5275
    .local v1, "storedHash":[B
    if-nez v1, :cond_11

    .line 5276
    const/4 v2, 0x1

    return v2

    .line 5279
    :cond_11
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5281
    .local v2, "matched":Z
    if-nez v2, :cond_24

    array-length v3, v1

    const/16 v4, 0x28

    if-ne v3, v4, :cond_24

    .line 5282
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHashSec([BI)[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 5285
    :cond_24
    return v2
.end method

.method public checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "password"    # [B
    .param p3, "userId"    # I
    .param p4, "remoteCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5169
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 5170
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 5171
    .local v0, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    const/4 v1, -0x1

    .line 5172
    .local v1, "failcount":I
    const-string v2, "LockSettingsService"

    if-eqz v0, :cond_38

    .line 5174
    :try_start_14
    invoke-interface {v0, p2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword([B)I

    move-result v3
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_18} :catch_1a

    move v1, v3

    .line 5185
    goto :goto_38

    .line 5175
    :catch_1a
    move-exception v3

    .line 5176
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.remotelock.CLIENT_WAKEUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5177
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.permission.REMOTELOCK"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5179
    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 5180
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    .line 5181
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    .line 5182
    const-string v5, "failed checkRemoteLockPassword callback!"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5183
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5184
    return-void

    .line 5187
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_38
    :goto_38
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5188
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5189
    if-lez v1, :cond_63

    .line 5190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "locktime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v4, v5, v6, p3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    const-string/jumbo v6, "timeout"

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5193
    :cond_63
    :try_start_63
    invoke-interface {p4, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_66} :catch_67

    .line 5197
    goto :goto_70

    .line 5194
    :catch_67
    move-exception v4

    .line 5195
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "failed sendResult callback!"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5196
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5198
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_70
    return-void
.end method

.method public checkVoldPassword(I)Z
    .registers 11
    .param p1, "userId"    # I

    .line 3026
    const-string v0, "LockSettingsService"

    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 3027
    return v2

    .line 3029
    :cond_8
    iput-boolean v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    .line 3031
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3041
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 3044
    .local v1, "service":Landroid/os/storage/IStorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3046
    .local v3, "identity":J
    :try_start_17
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 3047
    .local v5, "password":Ljava/lang/String;
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->clearPassword()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_64
    .catchall {:try_start_17 .. :try_end_1e} :catchall_62

    .line 3052
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3053
    nop

    .line 3054
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 3055
    return v2

    .line 3060
    :cond_29
    :try_start_29
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_47

    const/4 v8, 0x3

    if-eq v6, v8, :cond_42

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3d

    .line 3071
    const/4 v6, 0x0

    .line 3072
    .local v6, "credential":Lcom/android/internal/widget/LockscreenCredential;
    const-string v8, "Unknown credential type"

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 3068
    .end local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_3d
    invoke-static {v5}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 3069
    .restart local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    goto :goto_4c

    .line 3065
    .end local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_42
    invoke-static {v5}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 3066
    .restart local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    goto :goto_4c

    .line 3062
    .end local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_47
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->createPattern(Ljava/lang/String;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 3063
    .restart local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    nop

    .line 3075
    :goto_4c
    if-eqz v6, :cond_5a

    const/4 v8, 0x0

    .line 3076
    invoke-virtual {p0, v6, p1, v8}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v8

    .line 3077
    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_57} :catch_5b

    if-nez v0, :cond_5a

    .line 3078
    return v7

    .line 3082
    .end local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_5a
    goto :goto_61

    .line 3080
    :catch_5b
    move-exception v6

    .line 3081
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "checkVoldPassword failed: "

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3084
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_61
    return v2

    .line 3052
    .end local v5    # "password":Ljava/lang/String;
    :catchall_62
    move-exception v0

    goto :goto_70

    .line 3048
    :catch_64
    move-exception v5

    .line 3049
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_65
    const-string/jumbo v6, "vold getPassword() failed"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_62

    .line 3050
    nop

    .line 3052
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3050
    return v2

    .line 3052
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_70
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3053
    throw v0
.end method

.method public closeSession(Ljava/lang/String;)V
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3255
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->closeSession(Ljava/lang/String;)V

    .line 3256
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4651
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v3, "LockSettingsService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 4652
    :cond_f
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v3, v0

    .line 4654
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v0, "Current lock settings service state:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4655
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4658
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4659
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabledForSystem()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 4658
    const-string v5, "SP Applied: %b"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4660
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4661
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwner(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v6

    .line 4660
    const-string v5, "DO Enabled: %b"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4662
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFbeSecure = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->isFbeSecure(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4669
    const-string v0, "User State:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4670
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4671
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 4672
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    move v7, v0

    .local v7, "user":I
    :goto_7b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1e6

    .line 4673
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    .line 4674
    .local v8, "userId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4675
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4676
    iget-object v9, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v9

    .line 4678
    :try_start_a3
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v10

    .line 4679
    .local v10, "handle":J
    const-string v0, "SP Handle: %x (%d)"

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4680
    const-string v0, "Last changed: %s (%x)"

    new-array v13, v12, [Ljava/lang/Object;

    const-string/jumbo v14, "sp-handle-ts"
    :try_end_c6
    .catchall {:try_start_a3 .. :try_end_c6} :catchall_1e0

    .line 4681
    move-object v15, v5

    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v15, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const-wide/16 v4, 0x0

    :try_start_c9
    invoke-virtual {v1, v14, v4, v5, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    const-string/jumbo v14, "prev-sp-handle"

    .line 4682
    invoke-virtual {v1, v14, v4, v5, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v13, v5

    .line 4680
    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4683
    .end local v10    # "handle":J
    monitor-exit v9
    :try_end_e9
    .catchall {:try_start_c9 .. :try_end_e9} :catchall_1e4

    .line 4685
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 4686
    invoke-direct {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getSecureMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v6

    .line 4685
    const-string v4, "Secure Mode: %d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4690
    :try_start_ff
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v4

    .line 4691
    .local v4, "secureUserId":J
    const-string v0, "SID: %x (%d)"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_11f} :catch_120

    .line 4694
    .end local v4    # "secureUserId":J
    goto :goto_121

    .line 4692
    :catch_120
    move-exception v0

    .line 4696
    :goto_121
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 4697
    invoke-direct {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordLockedForKeyStore(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v6

    .line 4696
    const-string v5, "SP KeyStore Enabled = %b"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4698
    new-array v0, v4, [Ljava/lang/Object;

    .line 4699
    invoke-direct {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordLockedForFbe(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v6

    .line 4698
    const-string v4, "SP FBE Enabled = %b"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sp-handle-try = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordTryHandleLocked(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4704
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockPasswordData:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;

    .line 4705
    .local v0, "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    if-eqz v0, :cond_171

    .line 4706
    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;->dump(Ljava/io/PrintWriter;)V

    .line 4712
    :cond_171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CredentialType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4714
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v5

    .line 4713
    invoke-static {v5}, Lcom/android/server/locksettings/LockSettingsService;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeparateChallenge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4716
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 4717
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v9

    if-eqz v9, :cond_1ca

    const-string/jumbo v9, "known"

    goto :goto_1cd

    :cond_1ca
    const-string/jumbo v9, "unknown"

    :goto_1cd
    aput-object v9, v5, v6

    .line 4716
    const-string v9, "Metrics: %s"

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4718
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4672
    .end local v0    # "lockPasswordData":Lcom/android/server/locksettings/LockSettingsService$LockPasswordData;
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    move-object v5, v15

    goto/16 :goto_7b

    .line 4683
    .end local v15    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v8    # "userId":I
    :catchall_1e0
    move-exception v0

    move-object v15, v5

    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v15    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1e2
    :try_start_1e2
    monitor-exit v9
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_1e4

    throw v0

    :catchall_1e4
    move-exception v0

    goto :goto_1e2

    .line 4720
    .end local v7    # "user":I
    .end local v8    # "userId":I
    .end local v15    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1e6
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4721
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4723
    const-string v0, "Storage:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4724
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4725
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4726
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4727
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4729
    const-string v0, "StrongAuth:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4730
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4731
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4732
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4733
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4735
    const-string v0, "RebootEscrow:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4736
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4737
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/RebootEscrowManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4738
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4739
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4742
    const-string v0, "LSSLog:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4743
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4744
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLssLog()Lcom/android/server/locksettings/LockSettingsServiceLog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsServiceLog;->dump(Ljava/io/PrintWriter;)V

    .line 4745
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4746
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4748
    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3265
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3271
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .line 1550
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1551
    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1552
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1

    .line 1554
    :cond_16
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getCarrierLock(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5290
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5291
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLock()Z

    move-result v0

    return v0
.end method

.method public getCredentialType(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 1581
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    .line 1582
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    return v0
.end method

.method public getCredentialTypeInternal(I)I
    .registers 7
    .param p1, "userId"    # I

    .line 1592
    const/16 v0, -0x270f

    if-ne p1, v0, :cond_9

    .line 1593
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getFrpCredentialType()I

    move-result v0

    return v0

    .line 1597
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1598
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isQualitySmartCard(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1599
    const/4 v0, 0x6

    return v0

    .line 1602
    :cond_1b
    :try_start_1b
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->getCredentialType(I)I

    move-result v0
    :try_end_1f
    .catch Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException; {:try_start_1b .. :try_end_1f} :catch_20

    return v0

    .line 1603
    :catch_20
    move-exception v0

    .line 1604
    .local v0, "e":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;
    sget-boolean v1, Lcom/android/server/locksettings/LockSettingsService;->DUMP:Z

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;->printStackTrace()V

    goto :goto_43

    .line 1605
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService.SDP"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    .end local v0    # "e":Lcom/android/server/locksettings/SyntheticPasswordMdfpp$EmptySlotException;
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1611
    :try_start_46
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1612
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1613
    .local v1, "handle":J
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v3

    .line 1614
    .local v3, "rawType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_5b

    .line 1615
    monitor-exit v0

    return v3

    .line 1617
    :cond_5b
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v4

    monitor-exit v0

    return v4

    .line 1619
    .end local v1    # "handle":J
    .end local v3    # "rawType":I
    :cond_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_46 .. :try_end_66} :catchall_8b

    .line 1623
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v0

    .line 1624
    .local v0, "savedQuality":I
    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_78

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1625
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1626
    const/4 v1, 0x1

    return v1

    .line 1628
    :cond_78
    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_89

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1629
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1630
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v1

    return v1

    .line 1632
    :cond_89
    const/4 v1, -0x1

    return v1

    .line 1619
    .end local v0    # "savedQuality":I
    :catchall_8b
    move-exception v1

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method protected getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1727
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v0

    .line 1728
    .local v0, "storedData":[B
    if-eqz v0, :cond_58

    .line 1731
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 1732
    .local v3, "iv":[B
    array-length v4, v0

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1735
    .local v2, "encryptedPassword":[B
    const-string v4, "AndroidKeyStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 1736
    .local v4, "keyStore":Ljava/security/KeyStore;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1737
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "profile_key_name_decrypt_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5

    check-cast v5, Ljavax/crypto/SecretKey;

    .line 1740
    .local v5, "decryptionKey":Ljavax/crypto/SecretKey;
    const-string v6, "AES/GCM/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 1743
    .local v6, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x2

    new-instance v8, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v9, 0x80

    invoke-direct {v8, v9, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v6, v7, v5, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1744
    invoke-virtual {v6, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 1745
    .local v7, "decryptionResult":[B
    invoke-static {v7}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v8

    .line 1747
    .local v8, "credential":Lcom/android/internal/widget/LockscreenCredential;
    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 1748
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v1, p1, v8}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 1749
    return-object v8

    .line 1729
    .end local v2    # "encryptedPassword":[B
    .end local v3    # "iv":[B
    .end local v4    # "keyStore":Ljava/security/KeyStore;
    .end local v5    # "decryptionKey":Ljavax/crypto/SecretKey;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "decryptionResult":[B
    .end local v8    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_58
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Child profile lock file not found"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getEncryptedBytes([B)[B
    .registers 4
    .param p1, "secret"    # [B

    .line 3788
    invoke-static {p1}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encryptPassword([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 5

    monitor-enter p0

    .line 3335
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v0, :cond_9

    .line 3336
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_35

    monitor-exit p0

    return-object v0

    .line 3339
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    :cond_9
    :try_start_9
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_35

    .line 3340
    .local v0, "service":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 3342
    :try_start_12
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1c
    .catchall {:try_start_12 .. :try_end_1b} :catchall_35

    .line 3345
    goto :goto_24

    .line 3343
    :catch_1c
    move-exception v1

    .line 3344
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v2, "LockSettingsService"

    const-string v3, " Unable to register death recipient"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3346
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_35

    .line 3347
    monitor-exit p0

    return-object v1

    .line 3350
    :cond_2c
    :try_start_2c
    const-string v2, "LockSettingsService"

    const-string v3, "Unable to acquire GateKeeperService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_35

    .line 3351
    monitor-exit p0

    return-object v1

    .line 3334
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .registers 12
    .param p1, "currentCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 4167
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 4170
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4171
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    move-object p1, v0

    .line 4175
    :cond_e
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_6c

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 4177
    :try_start_15
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1b
    .catchall {:try_start_15 .. :try_end_19} :catchall_6c

    move-object p1, v0

    .line 4181
    goto :goto_28

    .line 4178
    :catch_1b
    move-exception v0

    .line 4179
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to get work profile credential"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_6c

    .line 4180
    nop

    .line 4198
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 4180
    return-object v1

    .line 4183
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28
    :goto_28
    :try_start_28
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_6c

    .line 4184
    :try_start_2b
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 4185
    const-string v2, "LockSettingsService"

    const-string v3, "Synthetic password not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4186
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_69

    .line 4198
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 4186
    return-object v1

    .line 4188
    :cond_3d
    :try_start_3d
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 4189
    .local v4, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 4190
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    .line 4189
    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    .line 4191
    .local v2, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v3, :cond_5e

    .line 4192
    const-string v3, "LockSettingsService"

    const-string v6, "Current credential is incorrect"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_69

    .line 4198
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 4193
    return-object v1

    .line 4195
    :cond_5e
    :try_start_5e
    iget-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePasswordHashFactor()[B

    move-result-object v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_69

    .line 4198
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 4195
    return-object v1

    .line 4196
    .end local v2    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v4    # "handle":J
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    :try_start_6b
    throw v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    .line 4198
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    :catchall_6c
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 4199
    throw v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3288
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3197
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I

    .line 1559
    invoke-direct {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1560
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecoverySecretTypes()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3229
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoverySecretTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3218
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1382
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1383
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1565
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1566
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrongAuthForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 3158
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3159
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method getSyntheticPasswordHandleLocked(I)J
    .registers 5
    .param p1, "userId"    # I

    .line 3530
    const-string/jumbo v0, "sp-handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 4
    .param p1, "userHandle"    # I

    .line 2985
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2990
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    .line 2992
    :cond_d
    monitor-enter p0

    .line 2993
    :try_start_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PasswordMetrics;

    monitor-exit p0

    return-object v0

    .line 2994
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public hasPendingEscrowToken(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 4272
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 4273
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 4274
    :try_start_6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    monitor-exit v0

    return v1

    .line 4275
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public hasSecureLockScreen()Z
    .registers 2

    .line 1377
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    return v0
.end method

.method public haveAppLockBackupPin(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5900
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5905
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockFingerprintPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5890
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPattern(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5895
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPin(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5885
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->haveAppLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveCarrierPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5313
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasCarrierPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveFMMPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5266
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFMMPassword(I)Z

    move-result v0

    return v0
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3277
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .param p3, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3283
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .registers 5
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "recoveryServiceCertFile"    # [B
    .param p3, "recoveryServiceSigFile"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3191
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    .line 3193
    return-void
.end method

.method protected initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 16
    .param p1, "credentialHash"    # [B
    .param p2, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I

    .line 3432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialize sp for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 3433
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "credentialHash"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    const-string v4, "credential"

    aput-object v4, v0, v3

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const/4 v3, 0x4

    const-string v4, "credentialType"

    aput-object v4, v0, v3

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const/4 v3, 0x6

    const-string/jumbo v4, "userId"

    aput-object v4, v0, v3

    .line 3434
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    .line 3433
    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 3436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialize SyntheticPassword for user: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LockSettingsService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    nop

    .line 3438
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_6e

    move v2, v1

    .line 3437
    :cond_6e
    const-string v0, "Cannot reinitialize SP"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3441
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3442
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 3441
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 3443
    .local v0, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-direct {p0, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3444
    const/4 v1, 0x0

    if-nez v0, :cond_8a

    .line 3445
    const-string/jumbo v2, "initializeSyntheticPasswordLocked returns null auth token"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    return-object v1

    .line 3448
    :cond_8a
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-virtual {v2, v4, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v10

    .line 3450
    .local v10, "handle":J
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    if-nez v2, :cond_12a

    .line 3451
    if-nez p1, :cond_a5

    .line 3454
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-virtual {v2, v4, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 3456
    :cond_a5
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    const-wide/16 v7, 0x0

    move-object v6, v0

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 3458
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p3}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToUnlockUser(I)Z

    move-result v4

    if-eqz v4, :cond_108

    .line 3460
    if-eqz p3, :cond_e9

    .line 3461
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 3462
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_ca

    goto :goto_e9

    .line 3468
    :cond_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set key derived from sp for FBE: user="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 3470
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForFbe(I)V

    goto :goto_10b

    .line 3463
    :cond_e9
    :goto_e9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set token and key derived from sp for FBE: user="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v1

    invoke-direct {p0, p3, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setEncryptedUserKeyProtection(I[BLcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 3465
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForFbe(I)V

    goto :goto_10b

    .line 3473
    :cond_108
    invoke-direct {p0, p3, v1}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 3477
    :goto_10b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set key derived from sp for keystore: user="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 3479
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLockedForKeyStore(I)V

    .line 3481
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_133

    .line 3482
    :cond_12a
    invoke-direct {p0, p3, v1}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 3483
    invoke-direct {p0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 3484
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 3486
    :goto_133
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 3487
    invoke-direct {p0, v10, v11, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordHandleLocked(JI)V

    .line 3488
    return-object v0
.end method

.method public isLockPasswordValid(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 5604
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 5605
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isLockPasswordValid(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5606
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isSyntheticPasswordBasedCredential(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 3544
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3545
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3546
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public synthetic lambda$notifyPasswordChanged$4$LockSettingsService(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3011
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(I)V

    .line 3012
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->reportPasswordChanged(I)V

    .line 3013
    return-void
.end method

.method public synthetic lambda$setLockCredentialWithToken$5$LockSettingsService(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 4336
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    return-void
.end method

.method public synthetic lambda$unlockUser$3$LockSettingsService(Ljava/util/ArrayList;I)V
    .registers 8
    .param p1, "resetLockouts"    # Ljava/util/ArrayList;
    .param p2, "challengeType"    # I

    .line 1933
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    .line 1934
    .local v0, "bm":Landroid/hardware/biometrics/BiometricManager;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1935
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 1936
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;

    iget v3, v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/biometrics/BiometricManager;->setActiveUser(I)V

    .line 1937
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;

    iget-object v3, v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;->mHAT:[B

    invoke-virtual {v0, v3}, Landroid/hardware/biometrics/BiometricManager;->resetLockout([B)V

    .line 1935
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1939
    .end local v2    # "i":I
    :cond_30
    const/4 v2, 0x2

    if-ne p2, v2, :cond_5a

    .line 1940
    const-string v2, "android.hardware.biometrics.face"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1942
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/face/FaceManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceManager;

    .line 1943
    .local v2, "fm":Landroid/hardware/face/FaceManager;
    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Landroid/hardware/face/FaceManager;->semIsFrameworkHandleLockout()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1944
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/face/FaceManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceManager;

    invoke-virtual {v3}, Landroid/hardware/face/FaceManager;->revokeChallenge()I

    .line 1948
    .end local v2    # "fm":Landroid/hardware/face/FaceManager;
    :cond_5a
    return-void
.end method

.method public legacyPasswordToHash([BI)Ljava/lang/String;
    .registers 11
    .param p1, "password"    # [B
    .param p2, "userId"    # I

    .line 5361
    if-eqz p1, :cond_53

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_53

    .line 5369
    :cond_6
    :try_start_6
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSalt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 5370
    .local v0, "salt":[B
    array-length v1, p1

    array-length v2, v0

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 5371
    .local v1, "saltedPassword":[B
    array-length v2, p1

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5372
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 5373
    .local v2, "sha1":[B
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 5375
    .local v3, "md5":[B
    array-length v5, v2

    array-length v6, v3

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 5376
    .local v5, "combined":[B
    array-length v6, v2

    invoke-static {v2, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5377
    array-length v6, v2

    array-length v7, v3

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5379
    invoke-static {v5}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v6

    .line 5380
    .local v6, "hexEncoded":[C
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 5381
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([C)V
    :try_end_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_49} :catch_4a

    return-object v4

    .line 5382
    .end local v0    # "salt":[B
    .end local v1    # "saltedPassword":[B
    .end local v2    # "sha1":[B
    .end local v3    # "md5":[B
    .end local v5    # "combined":[B
    .end local v6    # "hexEncoded":[C
    :catch_4a
    move-exception v0

    .line 5383
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5362
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_53
    :goto_53
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCleanupUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 919
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 923
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    .line 924
    .local v0, "strongAuthRequired":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 925
    monitor-enter p0

    .line 926
    :try_start_12
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 927
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_22

    .line 930
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 931
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->removeUser(I)V

    .line 934
    :cond_21
    return-void

    .line 927
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3176
    move-object v9, p0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceShell()V

    .line 3177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3179
    .local v10, "origId":J
    :try_start_8
    new-instance v0, Lcom/android/server/locksettings/LockSettingsShellCommand;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    .line 3180
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsShellCommand;->setCallback(Landroid/os/IRemoteCallback;)Lcom/android/server/locksettings/LockSettingsShellCommand;

    move-result-object v1

    .line 3181
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2c

    .line 3183
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3184
    nop

    .line 3185
    return-void

    .line 3183
    :catchall_2c
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3184
    throw v0
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 937
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V

    .line 938
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 990
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1050
    return-void
.end method

.method public passwordToHash([BI)[B
    .registers 5
    .param p1, "password"    # [B
    .param p2, "userId"    # I

    .line 5388
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->legacyPasswordToHash([BI)Ljava/lang/String;

    move-result-object v0

    .line 5389
    .local v0, "passwordStr":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 5390
    const/4 v1, 0x0

    return-object v1

    .line 5392
    :cond_8
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public passwordToHashSec([BI)[B
    .registers 15
    .param p1, "password"    # [B
    .param p2, "userId"    # I

    .line 5397
    if-nez p1, :cond_4

    .line 5398
    const/4 v0, 0x0

    return-object v0

    .line 5407
    :cond_4
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSalt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 5408
    .local v0, "salt":[B
    array-length v1, p1

    array-length v2, v0

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 5409
    .local v1, "saltedPassword":[B
    array-length v2, p1

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5411
    const/4 v2, 0x0

    .line 5412
    .local v2, "sha":[B
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 5413
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 5414
    .local v5, "s":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_25
    const/16 v8, 0x400

    if-ge v7, v8, :cond_51

    .line 5415
    if-eqz v2, :cond_2e

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 5416
    :cond_2e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 5417
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 5418
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    move-object v2, v8

    .line 5414
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 5420
    .end local v7    # "i":I
    :cond_51
    const/4 v7, 0x0

    .restart local v7    # "i":I
    array-length v8, v1

    .local v8, "l":I
    :goto_53
    if-ge v7, v8, :cond_5a

    .line 5421
    aput-byte v4, v1, v7

    .line 5420
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 5423
    .end local v7    # "i":I
    .end local v8    # "l":I
    :cond_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 5424
    .local v7, "e":J
    const-string v4, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "passwordToHash time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v7, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5425
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4
    :try_end_85
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_85} :catch_86

    return-object v4

    .line 5426
    .end local v0    # "salt":[B
    .end local v1    # "saltedPassword":[B
    .end local v2    # "sha":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v5    # "s":J
    .end local v7    # "e":J
    :catch_86
    move-exception v0

    .line 5427
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .registers 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "recoveryKeyBlob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3249
    .local p3, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "callback"    # Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5069
    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "registerRemoteLockCallback!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5070
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5072
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    if-eqz v1, :cond_4f

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    if-ne v2, p1, :cond_4f

    .line 5073
    const/4 v2, -0x1

    .line 5074
    .local v2, "failcount":I
    if-eqz p2, :cond_30

    .line 5076
    :try_start_20
    invoke-interface {p2, v1}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword([B)I

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_26

    move v2, v1

    .line 5081
    goto :goto_30

    .line 5077
    :catch_26
    move-exception v1

    .line 5078
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "failed checkRemoteLockPassword callback!! after register"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5080
    return-void

    .line 5083
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_30
    :goto_30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5084
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5086
    :try_start_3b
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v3, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41

    .line 5090
    goto :goto_4a

    .line 5087
    :catch_41
    move-exception v3

    .line 5088
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "failed sendResult callback!! after register"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5089
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5091
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 5092
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    .line 5094
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "failcount":I
    :cond_4f
    return-void
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 3122
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3123
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 3124
    return-void
.end method

.method public removeCachedUnifiedChallenge(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 4627
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    .line 4628
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3260
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->removeKey(Ljava/lang/String;)V

    .line 3261
    return-void
.end method

.method public reportSuccessfulBiometricUnlock(ZI)V
    .registers 4
    .param p1, "isStrongBiometric"    # Z
    .param p2, "userId"    # I

    .line 3140
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    .line 3141
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulBiometricUnlock(ZI)V

    .line 3142
    return-void
.end method

.method public requestRemoteLockInfo(I)V
    .registers 31
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5201
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 5202
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_9
    const/4 v0, 0x4

    if-ge v3, v0, :cond_1a5

    .line 5203
    move v4, v3

    .line 5204
    .local v4, "lockType":I
    const/4 v5, 0x0

    .line 5205
    .local v5, "lockState":Z
    const/4 v6, 0x0

    .line 5206
    .local v6, "message":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 5207
    .local v7, "phoneNumber":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 5208
    .local v8, "enableEmergencyCall":Z
    const/4 v9, 0x0

    .line 5209
    .local v9, "clientName":Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 5210
    .local v10, "emailAddress":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 5211
    .local v11, "allowfailcount":I
    const-wide/16 v12, 0x0

    .line 5212
    .local v12, "locktime":J
    const/4 v14, 0x0

    .line 5213
    .local v14, "blockCount":I
    const/4 v15, 0x0

    .line 5215
    .local v15, "skipPin":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v17, v5

    .end local v5    # "lockState":Z
    .local v17, "lockState":Z
    const-string/jumbo v5, "locked"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    move-object/from16 v18, v6

    .end local v6    # "message":Ljava/lang/CharSequence;
    .local v18, "message":Ljava/lang/CharSequence;
    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v6

    .line 5216
    .end local v17    # "lockState":Z
    .local v6, "lockState":Z
    if-eqz v6, :cond_189

    .line 5217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "message"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    move-object/from16 v19, v7

    .end local v7    # "phoneNumber":Ljava/lang/CharSequence;
    .local v19, "phoneNumber":Ljava/lang/CharSequence;
    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 5218
    .end local v18    # "message":Ljava/lang/CharSequence;
    .local v7, "message":Ljava/lang/CharSequence;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "phonenumber"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v8

    const/4 v5, 0x0

    .end local v8    # "enableEmergencyCall":Z
    .local v21, "enableEmergencyCall":Z
    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 5219
    .end local v19    # "phoneNumber":Ljava/lang/CharSequence;
    .local v8, "phoneNumber":Ljava/lang/CharSequence;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "enableemergencycall"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v9

    const/4 v5, 0x0

    .end local v9    # "clientName":Ljava/lang/CharSequence;
    .local v22, "clientName":Ljava/lang/CharSequence;
    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v9

    .line 5220
    .end local v21    # "enableEmergencyCall":Z
    .local v9, "enableEmergencyCall":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "clientname"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v10

    const/4 v5, 0x0

    .end local v10    # "emailAddress":Ljava/lang/CharSequence;
    .local v20, "emailAddress":Ljava/lang/CharSequence;
    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 5221
    .end local v22    # "clientName":Ljava/lang/CharSequence;
    .local v10, "clientName":Ljava/lang/CharSequence;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "emailaddress"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 5222
    .end local v20    # "emailAddress":Ljava/lang/CharSequence;
    .local v5, "emailAddress":Ljava/lang/CharSequence;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v23, v11

    .end local v11    # "allowfailcount":I
    .local v23, "allowfailcount":I
    const-string v11, "allowfailcount"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v24, v12

    .end local v12    # "locktime":J
    .local v24, "locktime":J
    const-wide/16 v11, 0x0

    move/from16 v26, v14

    .end local v14    # "blockCount":I
    .local v26, "blockCount":I
    invoke-virtual {v1, v0, v11, v12, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v13

    long-to-int v13, v13

    .line 5223
    .end local v23    # "allowfailcount":I
    .local v13, "allowfailcount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "locktime"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v27, v15

    .end local v15    # "skipPin":Z
    .local v27, "skipPin":Z
    invoke-virtual {v1, v0, v11, v12, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v14

    .line 5224
    .end local v24    # "locktime":J
    .local v14, "locktime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "permanentblockcount"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v11, 0x0

    invoke-virtual {v1, v0, v11, v12, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v11

    long-to-int v11, v11

    .line 5225
    .end local v26    # "blockCount":I
    .local v11, "blockCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "skippin"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v1, v0, v12, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v12

    .line 5227
    .end local v27    # "skipPin":Z
    .local v12, "skipPin":Z
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    invoke-direct {v0, v4, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 5228
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 5229
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    .line 5230
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v2

    .line 5233
    .local v2, "data":Lcom/android/internal/widget/RemoteLockInfo;
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    move/from16 v17, v4

    const/16 v16, 0x4

    .end local v4    # "lockType":I
    .local v17, "lockType":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 5234
    .local v4, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    move-object/from16 v16, v5

    .end local v5    # "emailAddress":Ljava/lang/CharSequence;
    .local v16, "emailAddress":Ljava/lang/CharSequence;
    const-string v5, "failed changeRemoteLockState callback!"

    move/from16 v28, v6

    .end local v6    # "lockState":Z
    .local v28, "lockState":Z
    const-string v6, "LockSettingsService"

    if-eqz v4, :cond_16a

    .line 5236
    :try_start_15b
    invoke-interface {v4, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_15b .. :try_end_15e} :catch_15f

    .line 5240
    goto :goto_16a

    .line 5237
    :catch_15f
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 5238
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5239
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5244
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16a
    :goto_16a
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/16 v18, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 5245
    .end local v4    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .local v1, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    if-eqz v1, :cond_19d

    .line 5247
    :try_start_17b
    invoke-interface {v1, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_17e
    .catch Landroid/os/RemoteException; {:try_start_17b .. :try_end_17e} :catch_17f

    .line 5251
    goto :goto_19d

    .line 5248
    :catch_17f
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 5249
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5250
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19d

    .line 5216
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .end local v2    # "data":Lcom/android/internal/widget/RemoteLockInfo;
    .end local v13    # "allowfailcount":I
    .end local v16    # "emailAddress":Ljava/lang/CharSequence;
    .end local v17    # "lockType":I
    .end local v28    # "lockState":Z
    .local v4, "lockType":I
    .restart local v6    # "lockState":Z
    .local v7, "phoneNumber":Ljava/lang/CharSequence;
    .local v8, "enableEmergencyCall":Z
    .local v9, "clientName":Ljava/lang/CharSequence;
    .local v10, "emailAddress":Ljava/lang/CharSequence;
    .local v11, "allowfailcount":I
    .local v12, "locktime":J
    .local v14, "blockCount":I
    .restart local v15    # "skipPin":Z
    .restart local v18    # "message":Ljava/lang/CharSequence;
    :cond_189
    move/from16 v17, v4

    move/from16 v28, v6

    move-object/from16 v19, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v20, v10

    move/from16 v23, v11

    move-wide/from16 v24, v12

    move/from16 v26, v14

    move/from16 v27, v15

    .line 5202
    .end local v4    # "lockType":I
    .end local v6    # "lockState":Z
    .end local v7    # "phoneNumber":Ljava/lang/CharSequence;
    .end local v8    # "enableEmergencyCall":Z
    .end local v9    # "clientName":Ljava/lang/CharSequence;
    .end local v10    # "emailAddress":Ljava/lang/CharSequence;
    .end local v11    # "allowfailcount":I
    .end local v12    # "locktime":J
    .end local v14    # "blockCount":I
    .end local v15    # "skipPin":Z
    .end local v18    # "message":Ljava/lang/CharSequence;
    :cond_19d
    :goto_19d
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    goto/16 :goto_9

    .line 5255
    .end local v3    # "i":I
    :cond_1a5
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 3134
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 3135
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 3136
    return-void
.end method

.method public resetKeyStore(I)V
    .registers 18
    .param p1, "userId"    # I

    .line 2666
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2667
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2669
    const/4 v0, -0x1

    .line 2670
    .local v0, "managedUserId":I
    const/4 v3, 0x0

    .line 2671
    .local v3, "managedUserDecryptedPassword":Lcom/android/internal/widget/LockscreenCredential;
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 2672
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v3

    move v3, v0

    .end local v0    # "managedUserId":I
    .local v3, "managedUserId":I
    .local v6, "managedUserDecryptedPassword":Lcom/android/internal/widget/LockscreenCredential;
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_78

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 2674
    .local v8, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_77

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    .line 2675
    invoke-direct {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 2676
    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 2678
    const-string v9, "LockSettingsService"

    if-ne v3, v7, :cond_53

    .line 2679
    :try_start_46
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    move-object v6, v0

    .line 2680
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    move v3, v0

    goto :goto_71

    .line 2686
    :catch_51
    move-exception v0

    goto :goto_72

    .line 2683
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "More than one managed profile, uid1:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid2:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_46 .. :try_end_71} :catch_51
    .catch Ljava/security/InvalidKeyException; {:try_start_46 .. :try_end_71} :catch_51
    .catch Ljava/security/KeyStoreException; {:try_start_46 .. :try_end_71} :catch_51
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_46 .. :try_end_71} :catch_51
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_46 .. :try_end_71} :catch_51
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_46 .. :try_end_71} :catch_51
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_46 .. :try_end_71} :catch_51
    .catch Ljavax/crypto/BadPaddingException; {:try_start_46 .. :try_end_71} :catch_51
    .catch Ljava/security/cert/CertificateException; {:try_start_46 .. :try_end_71} :catch_51
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_71} :catch_51

    .line 2691
    :goto_71
    goto :goto_77

    .line 2690
    .local v0, "e":Ljava/lang/Exception;
    :goto_72
    const-string v7, "Failed to decrypt child profile key"

    invoke-static {v9, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2693
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "pi":Landroid/content/pm/UserInfo;
    :cond_77
    :goto_77
    goto :goto_1c

    .line 2696
    :cond_78
    :try_start_78
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v5, v0

    const/4 v9, 0x0

    :goto_80
    if-ge v9, v5, :cond_9c

    aget v10, v0, v9

    .line 2697
    .local v10, "profileId":I
    sget-object v11, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v12, v11

    const/4 v13, 0x0

    :goto_88
    if-ge v13, v12, :cond_99

    aget v14, v11, v13

    .line 2698
    .local v14, "uid":I
    iget-object v15, v1, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    invoke-virtual {v15, v8}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_95
    .catchall {:try_start_78 .. :try_end_95} :catchall_a9

    .line 2697
    nop

    .end local v14    # "uid":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_88

    .line 2696
    .end local v10    # "profileId":I
    :cond_99
    add-int/lit8 v9, v9, 0x1

    goto :goto_80

    .line 2702
    :cond_9c
    if-eq v3, v7, :cond_a3

    if-eqz v6, :cond_a3

    .line 2704
    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 2707
    :cond_a3
    if-eqz v6, :cond_a8

    .line 2708
    invoke-virtual {v6}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2710
    :cond_a8
    return-void

    .line 2702
    :catchall_a9
    move-exception v0

    if-eq v3, v7, :cond_b1

    if-eqz v6, :cond_b1

    .line 2704
    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 2706
    :cond_b1
    throw v0
.end method

.method public scheduleNonStrongBiometricIdleTimeout(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3146
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    .line 3147
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->scheduleNonStrongBiometricIdleTimeout(I)V

    .line 3148
    return-void
.end method

.method public sendLockTypeChangedInfo(I)V
    .registers 3
    .param p1, "secureState"    # I

    .line 5457
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    .line 5458
    return-void
.end method

.method public setAppLockBackupPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5793
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5794
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5795
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v1

    .line 5794
    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockBackupPinHash([BI)V

    .line 5796
    return-void
.end method

.method public setAppLockFingerprintPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5800
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5801
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5802
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v1

    .line 5801
    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockFingerprintPasswordHash([BI)V

    .line 5804
    return-void
.end method

.method public setAppLockPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5779
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5780
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5781
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v1

    .line 5780
    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockPasswordHash([BI)V

    .line 5782
    return-void
.end method

.method public setAppLockPattern(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5786
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5787
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5788
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v1

    .line 5787
    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockPatternHash([BI)V

    .line 5789
    return-void
.end method

.method public setAppLockPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5772
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5773
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeAppLockPinHash([BI)V

    .line 5775
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .line 1464
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1465
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setBoolean(Ljava/lang/String;ZI)V

    .line 1467
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCachedKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@setBoolean : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sendLockTypeChangedInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSecureState(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->sendLockTypeChangedInfo(I)V

    .line 1472
    :cond_38
    return-void
.end method

.method public setCarrierLockEnabled(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5302
    return-void
.end method

.method public setLockCarrierPassword([BI)V
    .registers 5
    .param p1, "password"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5306
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5307
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCarrierPasswordHash([BI)V

    .line 5308
    return-void
.end method

.method public setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .registers 12
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I

    .line 2123
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-eqz v0, :cond_e0

    .line 2127
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2128
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceFrpResolved()V

    .line 2131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2133
    .local v0, "origId":J
    const/4 v2, 0x0

    :try_start_f
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "n_digits_pin_enabled"

    invoke-static {v3, v4, v2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_21
    .catchall {:try_start_f .. :try_end_1b} :catchall_1c

    goto :goto_22

    .line 2136
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2137
    throw v2

    .line 2134
    :catch_21
    move-exception v3

    .line 2136
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2137
    nop

    .line 2148
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v3

    if-nez v3, :cond_46

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 2152
    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 2153
    invoke-virtual {v5, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 2152
    invoke-virtual {p0, p2, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2154
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2155
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    .line 2159
    :cond_46
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_69

    .line 2160
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    .line 2161
    invoke-static {p2}, Lcom/samsung/android/knox/sdp/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    .line 2163
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialVariant(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 2165
    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    if-eq v5, v4, :cond_66

    .line 2166
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2167
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2168
    return v4

    .line 2170
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_66
    move-object v3, p1

    move-object v5, p2

    goto :goto_8d

    :cond_69
    invoke-static {p3}, Lcom/android/server/locksettings/LockSettingsService;->isSEPLiteSecureFolder(I)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 2171
    new-array v3, v4, [Ljava/lang/Object;

    .line 2172
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 2171
    const-string v5, "SEP-Lite User %d identified as SecureFolder user"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 2173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSecureFolderLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 2175
    .restart local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    if-eq v5, v4, :cond_8b

    .line 2176
    return v4

    .line 2182
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_8b
    move-object v3, p1

    move-object v5, p2

    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v3, "credential":Lcom/android/internal/widget/LockscreenCredential;
    .local v5, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :goto_8d
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallingFromSettings()Z

    move-result v6

    .line 2185
    .local v6, "callingFromSettingsPackage":Z
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2186
    :try_start_94
    invoke-direct {p0, v3, v5, p3, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result p1

    if-nez p1, :cond_9f

    .line 2188
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2189
    monitor-exit v7

    return v2

    .line 2191
    :cond_9f
    const/4 p1, 0x0

    invoke-direct {p0, p3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 2195
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-nez p1, :cond_af

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_b2

    :cond_af
    if-eqz v6, :cond_b2

    goto :goto_b5

    .line 2201
    :cond_b2
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    .line 2208
    :goto_b5
    monitor-exit v7
    :try_end_b6
    .catchall {:try_start_94 .. :try_end_b6} :catchall_dd

    .line 2209
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 2211
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 2213
    :cond_c5
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 2214
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 2217
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result p1

    if-eqz p1, :cond_d9

    .line 2218
    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2219
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2222
    :cond_d9
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2223
    return v4

    .line 2208
    :catchall_dd
    move-exception p1

    :try_start_de
    monitor-exit v7
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    throw p1

    .line 2124
    .end local v0    # "origId":J
    .end local v3    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local v5    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local v6    # "callingFromSettingsPackage":Z
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_e0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLockFMMPassword([BI)V
    .registers 5
    .param p1, "password"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5259
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5260
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFMMPasswordHash([BI)V

    .line 5261
    return-void
.end method

.method public setLockModeChangedCallback(Landroid/os/IRemoteCallback;Z)V
    .registers 4
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "isDexMode"    # Z

    .line 5453
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->setSecureLockModeChangedCallback(Landroid/os/IRemoteCallback;Z)V

    .line 5454
    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I

    .line 1476
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1477
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    .line 1479
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCachedKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@setLong : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sendLockTypeChangedInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSecureState(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->sendLockTypeChangedInfo(I)V

    .line 1486
    :cond_38
    const-string/jumbo v0, "lockscreen.failed_attempts"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1487
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6b

    const-wide/16 v2, 0xa

    rem-long v2, p2, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_6b

    .line 1488
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many failed, fail count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->uploadLogFile(I)V

    .line 1497
    :cond_6b
    if-eqz p4, :cond_8e

    .line 1498
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1499
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 1500
    const-string/jumbo v0, "lockscreen.samsung_biometric"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1501
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getPersonaService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$hqJeNrdnimUwzAZ_aQAPOvILGTM;

    invoke-direct {v1, p4}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$hqJeNrdnimUwzAZ_aQAPOvILGTM;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1505
    :cond_8e
    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .registers 3
    .param p1, "secretTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3224
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoverySecretTypes([I)V

    .line 3225
    return-void
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3213
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoveryStatus(Ljava/lang/String;I)V

    .line 3214
    return-void
.end method

.method public setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    .registers 27
    .param p1, "userId"    # I
    .param p2, "data"    # Lcom/android/internal/widget/RemoteLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5105
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5107
    iget v4, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 5108
    .local v4, "type":I
    iget-boolean v5, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 5109
    .local v5, "set":Z
    iget-object v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 5110
    .local v6, "message":Ljava/lang/String;
    iget-object v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 5111
    .local v7, "phoneNumber":Ljava/lang/String;
    iget-boolean v8, v3, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    .line 5112
    .local v8, "enableEmergencyCall":Z
    iget-object v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 5113
    .local v9, "clientName":Ljava/lang/String;
    iget-object v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 5114
    .local v10, "emailAddress":Ljava/lang/String;
    iget v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    int-to-long v11, v0

    .line 5115
    .local v11, "allowfailcount":J
    iget-wide v13, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 5116
    .local v13, "locktime":J
    iget v0, v3, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    move-wide v15, v13

    .end local v13    # "locktime":J
    .local v15, "locktime":J
    int-to-long v13, v0

    .line 5117
    .local v13, "blockcount":J
    move-wide/from16 v17, v15

    .end local v15    # "locktime":J
    .local v17, "locktime":J
    iget-boolean v15, v3, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    .line 5120
    .local v15, "skipPin":Z
    const-string/jumbo v0, "locked"

    if-eqz v5, :cond_10a

    .line 5121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 5122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "phonenumber"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "enableemergencycall"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 5125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "clientname"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "emailaddress"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v10, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "allowfailcount"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v11, v12, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "locktime"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v3, v5

    move-object/from16 v16, v6

    move-wide/from16 v5, v17

    .end local v6    # "message":Ljava/lang/String;
    .end local v17    # "locktime":J
    .local v3, "set":Z
    .local v5, "locktime":J
    .local v16, "message":Ljava/lang/String;
    invoke-virtual {v1, v0, v5, v6, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v17, v3

    .end local v3    # "set":Z
    .local v17, "set":Z
    const-string/jumbo v3, "permanentblockcount"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v13, v14, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "skippin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    move-wide/from16 v18, v5

    goto :goto_153

    .line 5132
    .end local v16    # "message":Ljava/lang/String;
    .local v5, "set":Z
    .restart local v6    # "message":Ljava/lang/String;
    .local v17, "locktime":J
    :cond_10a
    move-object/from16 v16, v6

    move-wide/from16 v22, v17

    move/from16 v17, v5

    move-wide/from16 v5, v22

    .end local v6    # "message":Ljava/lang/String;
    .local v5, "locktime":J
    .restart local v16    # "message":Ljava/lang/String;
    .local v17, "set":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 5133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remotelockscreen.lockoutdeadline"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v18, v5

    .end local v5    # "locktime":J
    .local v18, "locktime":J
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v0, v5, v6, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remotelockscreen.failedunlockcount"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5, v6, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 5137
    :goto_153
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 5138
    .local v3, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    const-string v5, "failed changeRemoteLockState callback!"

    const-string v6, "LockSettingsService"

    if-eqz v3, :cond_178

    .line 5140
    move-object/from16 v2, p2

    :try_start_168
    invoke-interface {v3, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_16b
    .catch Landroid/os/RemoteException; {:try_start_168 .. :try_end_16b} :catch_16c

    .line 5144
    goto :goto_17a

    .line 5141
    :catch_16c
    move-exception v0

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    .line 5142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5143
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_17a

    .line 5138
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_178
    move-object/from16 v2, p2

    .line 5147
    :goto_17a
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/16 v20, 0x4

    move-object/from16 v21, v3

    .end local v3    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .local v21, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 5148
    .end local v21    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .restart local v3    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    if-eqz v3, :cond_19c

    .line 5150
    :try_start_18d
    invoke-interface {v3, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_18d .. :try_end_190} :catch_191

    .line 5154
    goto :goto_19c

    .line 5151
    :catch_191
    move-exception v0

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    .line 5152
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5153
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5157
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19c
    :goto_19c
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 5158
    .end local v3    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .local v1, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    if-eqz v1, :cond_1ba

    .line 5160
    :try_start_1ad
    invoke-interface {v1, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_1b0
    .catch Landroid/os/RemoteException; {:try_start_1ad .. :try_end_1b0} :catch_1b1

    .line 5164
    goto :goto_1ba

    .line 5161
    :catch_1b1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 5162
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5163
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5166
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1ba
    :goto_1ba
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 1396
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1397
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_11

    const-string v1, "Enable"

    goto :goto_13

    :cond_11
    const-string v1, "Disable"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " separate challenge for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 1398
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "managedUserPassword"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 1401
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1402
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-eqz v0, :cond_6a

    .line 1406
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1407
    if-eqz p3, :cond_5b

    .line 1408
    move-object v1, p3

    goto :goto_5f

    :cond_5b
    :try_start_5b
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 1407
    :goto_5f
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 1409
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_67

    .line 1410
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 1411
    return-void

    .line 1409
    :catchall_67
    move-exception v1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v1

    .line 1403
    :cond_6a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServerParams([B)V
    .registers 3
    .param p1, "serverParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3208
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setServerParams([B)V

    .line 3209
    return-void
.end method

.method public setShellCommandCallback(Landroid/os/IRemoteCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/IRemoteCallback;

    .line 5446
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 5447
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    .line 5448
    return-void
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3203
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    .line 3204
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1538
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1539
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1541
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCachedKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@setString : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEmpty? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sendLockTypeChangedInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSecureState(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->sendLockTypeChangedInfo(I)V

    .line 1546
    :cond_3c
    return-void
.end method

.method protected shouldMigrateToSyntheticPasswordLocked(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 3560
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .registers 14
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "rootCertificateAlias"    # Ljava/lang/String;
    .param p3, "verifierCertPath"    # Landroid/security/keystore/recovery/RecoveryCertPath;
    .param p4, "vaultParams"    # [B
    .param p5, "vaultChallenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3239
    .local p6, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public systemReady()V
    .registers 6

    .line 1106
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1107
    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "28251513"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1109
    :cond_28
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1111
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1112
    const-string v2, "android.software.secure_lock_screen"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 1113
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldData()V

    .line 1114
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 1115
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    .line 1116
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getAuthSecretHal()V

    .line 1117
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->onSystemReady()V

    .line 1118
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataIfAvailable()V

    .line 1120
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 1121
    return-void
.end method

.method public tieManagedProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V
    .registers 13
    .param p1, "managedUserId"    # I
    .param p2, "managedUserPassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 432
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 434
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tie lock if necessary for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "managedUserId"

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v3, "managedUserPassword"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_44

    .line 441
    return-void

    .line 444
    :cond_44
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 445
    return-void

    .line 448
    :cond_4b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 449
    return-void

    .line 454
    :cond_54
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 455
    .local v0, "parentId":I
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    if-nez v1, :cond_70

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_70

    .line 458
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    invoke-direct {p0, v1, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 460
    return-void

    .line 466
    :cond_70
    :try_start_70
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v3
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_78} :catch_b4

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_7f

    .line 467
    return-void

    .line 472
    :cond_7f
    nop

    .line 474
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->generateRandomProfilePassword(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 475
    .local v1, "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_84
    invoke-direct {p0, v1, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 477
    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 478
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 480
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 481
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v1

    move v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_a8

    .line 484
    :cond_a2
    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 485
    .end local v1    # "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :cond_a7
    return-void

    .line 474
    .restart local v1    # "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :catchall_a8
    move-exception v2

    if-eqz v1, :cond_b3

    :try_start_ab
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_b3

    :catchall_af
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b3
    :goto_b3
    throw v2

    .line 469
    .end local v1    # "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :catch_b4
    move-exception v1

    .line 470
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to talk to GateKeeper service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    return-void
.end method

.method protected tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "password"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 2409
    const-string v0, "NoPadding"

    const-string v1, "GCM"

    const-string/jumbo v2, "profile_key_name_encrypt_"

    const-string v3, "childprofile_key_fail_reason"

    :try_start_9
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    .line 2410
    .local v4, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v5}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 2411
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 2412
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    const-string v6, "AndroidKeyStore"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 2413
    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_25
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_25} :catch_13d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_9 .. :try_end_25} :catch_13d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_25} :catch_13d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9 .. :try_end_25} :catch_13d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9 .. :try_end_25} :catch_13d
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_25} :catch_13d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_9 .. :try_end_25} :catch_13d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_25} :catch_13d
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_25} :catch_13d

    .line 2415
    :try_start_25
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v9, v5}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v10, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v12

    .line 2419
    invoke-virtual {v10, v12}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v10

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v12

    .line 2420
    invoke-virtual {v10, v12}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v10

    .line 2421
    invoke-virtual {v10}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v10

    .line 2415
    invoke-virtual {v6, v8, v9, v10}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 2422
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "profile_key_name_decrypt_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v9, v5}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v10, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v12, 0x2

    invoke-direct {v10, v12}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 2426
    invoke-virtual {v10, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2427
    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 2433
    invoke-virtual {v0, v11}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 2434
    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    .line 2422
    invoke-virtual {v6, v8, v9, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 2436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 2438
    .local v0, "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2441
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, v11, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2442
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 2443
    .local v7, "encryptionResult":[B
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v8
    :try_end_b8
    .catchall {:try_start_25 .. :try_end_b8} :catchall_128

    .line 2446
    .end local v0    # "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .local v8, "iv":[B
    :try_start_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/security/cert/CertificateException; {:try_start_b8 .. :try_end_ca} :catch_13d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_b8 .. :try_end_ca} :catch_13d
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_ca} :catch_13d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b8 .. :try_end_ca} :catch_13d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b8 .. :try_end_ca} :catch_13d
    .catch Ljava/security/KeyStoreException; {:try_start_b8 .. :try_end_ca} :catch_13d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b8 .. :try_end_ca} :catch_13d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b8 .. :try_end_ca} :catch_13d
    .catch Ljava/security/InvalidKeyException; {:try_start_b8 .. :try_end_ca} :catch_13d

    .line 2447
    nop

    .line 2455
    .end local v4    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    nop

    .line 2456
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2458
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_d1
    array-length v1, v8

    const/16 v2, 0xc

    if-ne v1, v2, :cond_ec

    .line 2464
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2465
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_dc} :catch_109

    .line 2471
    nop

    .line 2473
    const-string v1, ""

    invoke-virtual {p0, v3, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2475
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeChildProfileLock(I[B)V

    .line 2476
    return-void

    .line 2460
    :cond_ec
    :try_start_ec
    const-string v1, "Invalid iv length"

    invoke-virtual {p0, v3, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2462
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid iv length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "encryptionResult":[B
    .end local v8    # "iv":[B
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    throw v1
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_109} :catch_109

    .line 2466
    .restart local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "encryptionResult":[B
    .restart local v8    # "iv":[B
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    :catch_109
    move-exception v1

    .line 2468
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to concatenate byte arrays"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2470
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2446
    .end local v0    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "encryptionResult":[B
    .end local v8    # "iv":[B
    .restart local v4    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .restart local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .restart local v6    # "keyStore":Ljava/security/KeyStore;
    :catchall_128
    move-exception v0

    :try_start_129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 2447
    nop

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    throw v0
    :try_end_13d
    .catch Ljava/security/cert/CertificateException; {:try_start_129 .. :try_end_13d} :catch_13d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_129 .. :try_end_13d} :catch_13d
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_13d} :catch_13d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_129 .. :try_end_13d} :catch_13d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_129 .. :try_end_13d} :catch_13d
    .catch Ljava/security/KeyStoreException; {:try_start_129 .. :try_end_13d} :catch_13d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_129 .. :try_end_13d} :catch_13d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_129 .. :try_end_13d} :catch_13d
    .catch Ljava/security/InvalidKeyException; {:try_start_129 .. :try_end_13d} :catch_13d

    .line 2448
    .end local v4    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    :catch_13d
    move-exception v0

    .line 2452
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to encrypt key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2454
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to encrypt key"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tryUnlockWithCachedUnifiedChallenge(I)Z
    .registers 11
    .param p1, "userId"    # I

    .line 4616
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->retrievePassword(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 4617
    .local v0, "cred":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v8, 0x0

    if-nez v0, :cond_10

    .line 4618
    nop

    .line 4622
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 4618
    :cond_f
    return v8

    .line 4620
    :cond_10
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move v6, p1

    :try_start_17
    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 4621
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_28

    if-nez v1, :cond_22

    const/4 v8, 0x1

    .line 4622
    :cond_22
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 4620
    :cond_27
    return v8

    .line 4616
    :catchall_28
    move-exception v1

    if-eqz v0, :cond_33

    :try_start_2b
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    throw v1
.end method

.method public unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "callback"    # Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5097
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5098
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 5100
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hasn\'t been registered!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5102
    :goto_2c
    return-void
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 3128
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3129
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 3130
    return-void
.end method

.method public updateCarrierLock(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5295
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 5296
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->updateCarrierLock()Z

    move-result v0

    return v0
.end method

.method public userPresent(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 3152
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 3153
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    .line 3154
    return-void
.end method

.method public verifyCredential(Lcom/android/internal/widget/LockscreenCredential;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I

    .line 2742
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2743
    const/4 v0, 0x1

    .line 2744
    .local v0, "challengeType":I
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_12

    .line 2745
    const-string v1, "LockSettingsService"

    const-string v2, "VerifyCredential called with challenge=0"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    const/4 v0, 0x0

    .line 2759
    :cond_12
    :try_start_12
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2760
    invoke-static {p1}, Lcom/samsung/android/knox/sdp/StreamCipher;->decryptStream(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    move-object p1, v1

    .line 2762
    :cond_1d
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_36

    .line 2765
    if-eqz p4, :cond_32

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2766
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2768
    :cond_32
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2762
    return-object v1

    .line 2765
    :catchall_36
    move-exception v1

    if-eqz p4, :cond_42

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2766
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2768
    :cond_42
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2769
    throw v1
.end method

.method public verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I

    .line 2846
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2847
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2850
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 2852
    .local v0, "parentProfileId":I
    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2858
    .local v1, "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_22

    .line 2860
    return-object v1

    .line 2865
    :cond_22
    :try_start_22
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2
    :try_end_2f
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_22 .. :try_end_2f} :catch_35
    .catch Ljava/security/InvalidKeyException; {:try_start_22 .. :try_end_2f} :catch_35
    .catch Ljava/security/KeyStoreException; {:try_start_22 .. :try_end_2f} :catch_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_2f} :catch_35
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_22 .. :try_end_2f} :catch_35
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_2f} :catch_35
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_22 .. :try_end_2f} :catch_35
    .catch Ljavax/crypto/BadPaddingException; {:try_start_22 .. :try_end_2f} :catch_35
    .catch Ljava/security/cert/CertificateException; {:try_start_22 .. :try_end_2f} :catch_35
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2f} :catch_35
    .catchall {:try_start_22 .. :try_end_2f} :catchall_33

    .line 2876
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2865
    return-object v2

    .line 2876
    :catchall_33
    move-exception v2

    goto :goto_45

    .line 2869
    :catch_35
    move-exception v2

    .line 2873
    .local v2, "e":Ljava/lang/Exception;
    :try_start_36
    const-string v3, "LockSettingsService"

    const-string v4, "Failed to decrypt child profile key"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2874
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to get tied profile token"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parentProfileId":I
    .end local v1    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "challenge":J
    .end local p4    # "userId":I
    throw v3
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_33

    .line 2876
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "parentProfileId":I
    .restart local v1    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "challenge":J
    .restart local p4    # "userId":I
    :goto_45
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2877
    throw v2

    .line 2848
    .end local v0    # "parentProfileId":I
    .end local v1    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User id must be managed profile with unified lock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14
    .param p1, "token"    # [B
    .param p2, "tokenHandle"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verify token for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 5992
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "token"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "tokenHandle"

    aput-object v2, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 5994
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 5996
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_85

    .line 5997
    :try_start_42
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 6000
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 6001
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-wide v5, p2

    move-object v7, p1

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    .line 6003
    .local v2, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    if-eqz v2, :cond_73

    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v3, :cond_5e

    goto :goto_73

    .line 6007
    :cond_5e
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, v3, p4}, Lcom/android/server/locksettings/LockSettingsService;->migrateWithAuthToken(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 6009
    new-instance v3, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>()V

    move-object v0, v3

    .line 6010
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 6011
    invoke-virtual {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveSdpMasterKey()[B

    move-result-object v3

    .line 6010
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    goto :goto_78

    .line 6005
    :cond_73
    :goto_73
    const-string v3, "Failed due to invalid escrow token supplied"

    invoke-static {v3}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6013
    .end local v2    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    :goto_78
    monitor-exit v1

    .line 6016
    goto :goto_8b

    .line 5998
    :cond_7a
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Escrow token is disabled on the current user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "token":[B
    .end local p2    # "tokenHandle":J
    .end local p4    # "userId":I
    throw v2

    .line 6013
    .restart local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "token":[B
    .restart local p2    # "tokenHandle":J
    .restart local p4    # "userId":I
    :catchall_82
    move-exception v2

    monitor-exit v1
    :try_end_84
    .catchall {:try_start_42 .. :try_end_84} :catchall_82

    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "token":[B
    .end local p2    # "tokenHandle":J
    .end local p4    # "userId":I
    :try_start_84
    throw v2
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_85} :catch_85

    .line 6014
    .restart local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "token":[B
    .restart local p2    # "tokenHandle":J
    .restart local p4    # "userId":I
    :catch_85
    move-exception v1

    .line 6015
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unexpected exception while verify token"

    invoke-static {v2, v1}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 6017
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of token verification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 6018
    return-object v0
.end method
