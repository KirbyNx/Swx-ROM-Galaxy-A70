.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.super Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;,
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;,
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;,
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    }
.end annotation


# static fields
.field private static final ACTION_ENFORCE_LOCKTYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

.field private static final ALIASACCESSIBLE:I = 0x1

.field private static final ALIASINACCESSIBLE:I = 0x0

.field private static final ALIASUNKNOWN:I = 0x2

.field private static final CMC_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmc"

.field private static final CMP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmp"

.field private static DBG:Z = false

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final KEYGUARD_ATTRIBUTE_CONTAINER_OWNER:Ljava/lang/String; = "container_owner"

.field private static final KEYGUARD_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final KEYGUARD_ATTRIBUTE_OWNER:Ljava/lang/String; = "owner"

.field private static final MIN_PERSONA_ID:I = 0xa

.field private static final MSG_CREDENTIAL_STORAGE_AVAILABLE:I = 0x3

.field private static final MSG_CREDENTIAL_STORAGE_CHANGED:I = 0x2

.field private static final MSG_PACKAGE_LICENSE_UPDATE:I = 0x4

.field private static final MSG_REFRESH_ACTIVE_AGENTS:I = 0x1

.field private static final MSG_REFRESH_APPLET_INFO:I = 0x5

.field private static final MSG_SHOW_ODE_NOTIFICATION:I = 0x6

.field private static final ODE_CONFIG_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final SCEP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.scep"

.field private static final TAG:Ljava/lang/String; = "UcmService"

.field private static final TEMP_DEK_FILE_1:Ljava/lang/String; = "ucm_ode_key"

.field private static final TEMP_DEK_FILE_2:Ljava/lang/String; = "ucm_ode_key2"

.field private static final TEMP_DEK_PATH:Ljava/lang/String; = "/efs/sec_efs/tz_esecomm"

.field private static final UCM_CREDENTIAL_STORAGE_NAME:Ljava/lang/String; = "lockscreen.ucscredentialstoragename"

.field private static final UCM_ENFORCE_LOCKTYPE_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "UCM_KEYGUARD_NOTIFICATION"

.field private static final UCM_ENFORCE_LOCKTYPE_NOTIFICATION_ID:I = 0x1f40

.field private static final UCM_ODE_PROGRESS_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "UCM_ODE_NOTIFICATION"

.field private static final UCM_ODE_PROGRESS_NOTIFICATION_ID:I = 0x2328

.field private static final UCM_PROPERTY_APPLET_INSTALLED:Ljava/lang/String; = "security.ucm_ese_applet_installed"

.field private static final UCM_PROPERTY_UCM_VERSION:Ljava/lang/String; = "security.ucm_version"

.field private static final UCM_VERSION:Ljava/lang/String; = "1.11"

.field private static final UCS_ODE_CHECK_PROPERTY:Ljava/lang/String; = "persist.security.ucs"

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static final certEnrollSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private final mAppletsInfoLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEmergencyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerthread:Landroid/os/HandlerThread;

.field private mIsFbeEnabled:Z

.field private mIsVoldCompleteNotified:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersistentAppletInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentAppletInfoFile:Landroid/util/AtomicFile;

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field protected mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

.field private mRefreshReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

.field private mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

.field private mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mUcmErcomSpecific:Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

.field private mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

.field private test_status_for_ode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 111
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    .line 159
    const-string v0, "com.samsung.android.certenrollservice.scep"

    const-string v1, "com.samsung.android.certenrollservice.cmp"

    const-string v2, "com.samsung.android.certenrollservice.cmc"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    .line 151
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "appletsConfig.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    .line 152
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 153
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 154
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 155
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 156
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 163
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    .line 164
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    .line 165
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    .line 177
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    .line 178
    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsVoldCompleteNotified:Z

    .line 180
    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    .line 385
    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;

    invoke-direct {v2, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 479
    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;

    invoke-direct {v2, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    .line 3426
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 5246
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmErcomSpecific:Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    .line 195
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->updateOdeStatus()V

    .line 196
    new-instance v2, Lcom/samsung/ucm/ucmservice/PolicyManager;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    .line 197
    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/TADriver;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 198
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 199
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 200
    new-instance v2, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;-><init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    .line 202
    const-string v2, "ro.crypto.type"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    .line 204
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "CredentialManagerServiceThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    .line 205
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 206
    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    .line 268
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 269
    .local v2, "locktypeFilter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;

    invoke-direct {v4, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v3, v4, v2, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 280
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v3, "bootCompleteFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mRefreshReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 286
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;

    invoke-direct {v4, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    .line 314
    .local v1, "emergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-eqz v1, :cond_10b

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 315
    const-string v4, "UcmService"

    const-string v5, "Already Emergency Status"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    .line 319
    :cond_10b
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_10e
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    .line 321
    monitor-exit v0
    :try_end_112
    .catchall {:try_start_10e .. :try_end_112} :catchall_1b2

    .line 323
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    if-eqz v0, :cond_14c

    .line 324
    const-string v0, "UcmService"

    const-string v4, "fbe is enabled"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v0, "persist.security.ucs"

    const-string v4, "none"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 326
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    move-result v0

    if-nez v0, :cond_137

    .line 327
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteODEConfigInFileIfExist()V

    goto :goto_140

    .line 328
    :cond_137
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUCMODEEnabledWithPropFile()Z

    move-result v0

    if-eqz v0, :cond_140

    .line 329
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setAppletInstalled()V

    .line 332
    :cond_140
    :goto_140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateKeyguardConfig(I)V

    goto :goto_1a7

    .line 334
    :cond_14c
    const-string v0, "UcmService"

    const-string v4, "fbe is not enabled"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v0, "ro.crypto.state"

    const-string v4, "none"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "unencrypted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_183

    .line 336
    const-string v0, "vold.decrypt"

    const-string v4, "none"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "trigger_restart_framework"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_183

    .line 337
    const-string v0, "vold.decrypt"

    const-string v4, "none"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "trigger_reset_main"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 338
    :cond_183
    const-string v0, "persist.security.ucs"

    const-string v4, "none"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 339
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    move-result v0

    if-nez v0, :cond_19c

    .line 340
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteODEConfigInFileIfExist()V

    .line 343
    :cond_19c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateKeyguardConfig(I)V

    .line 347
    :cond_1a7
    :goto_1a7
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerPersonaObserver()V

    .line 349
    const-string v0, "security.ucm_version"

    const-string v4, "1.11"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 321
    :catchall_1b2
    move-exception v4

    :try_start_1b3
    monitor-exit v0
    :try_end_1b4
    .catchall {:try_start_1b3 .. :try_end_1b4} :catchall_1b2

    throw v4
.end method

.method static synthetic access$000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsVoldCompleteNotified:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isActivePlugin(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->runSefTestForEseCommTA()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateMDMPolicies(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 4
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateWrappedDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 5
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->unwrapDek(Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 4
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I

    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendRefreshFinishIntent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceLockType(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 108
    sget-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 108
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    return v0
.end method

.method private applyMDMPolicies(ZIILjava/lang/String;I)Z
    .registers 35
    .param p1, "apply"    # Z
    .param p2, "adminUid"    # I
    .param p3, "userId"    # I
    .param p4, "pluginName"    # Ljava/lang/String;
    .param p5, "configuratorId"    # I

    .line 3853
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    const-string v7, "]"

    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3854
    .local v8, "pluginPkg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyMDMPolicies adminUid-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", userId-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pluginPkg-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", apply-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UcmService"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    const/4 v9, 0x0

    .line 3856
    .local v9, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3858
    .local v11, "id":J
    :try_start_45
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3859
    .local v13, "pluginPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3861
    const/16 v14, 0xa

    if-eqz v4, :cond_5c

    if-lt v4, v14, :cond_54

    goto :goto_5c

    :cond_54
    move-object/from16 v22, v8

    move/from16 v17, v9

    move-wide/from16 v18, v11

    goto/16 :goto_617

    .line 3862
    :cond_5c
    :goto_5c
    new-instance v15, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v14, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_60} :catch_63e
    .catchall {:try_start_45 .. :try_end_60} :catchall_635

    move/from16 v17, v9

    .end local v9    # "result":Z
    .local v17, "result":Z
    :try_start_62
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_62e
    .catchall {:try_start_62 .. :try_end_67} :catchall_627

    move-wide/from16 v18, v11

    .end local v11    # "id":J
    .local v18, "id":J
    const/4 v11, 0x0

    :try_start_6a
    invoke-direct {v15, v14, v9, v11}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    move-object v9, v15

    .line 3863
    .local v9, "edmforctx":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    if-eqz v3, :cond_615

    if-eqz v8, :cond_615

    .line 3864
    const/4 v12, 0x0

    .line 3865
    .local v12, "isBYODContainer":Z
    const/4 v14, 0x0

    .line 3866
    .local v14, "isContainer":Z
    const/16 v11, 0xa

    if-lt v4, v11, :cond_9a

    .line 3867
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 3868
    .local v11, "adminUserId":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_81} :catch_622
    .catchall {:try_start_6a .. :try_end_81} :catchall_61d

    move-object/from16 v22, v8

    .end local v8    # "pluginPkg":Ljava/lang/String;
    .local v22, "pluginPkg":Ljava/lang/String;
    :try_start_83
    const-string v8, "applyMDMPolicies adminUserId -"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    if-ne v11, v4, :cond_96

    const/4 v8, 0x1

    goto :goto_97

    :cond_96
    const/4 v8, 0x0

    :goto_97
    move v12, v8

    .line 3870
    const/4 v14, 0x1

    goto :goto_9c

    .line 3866
    .end local v11    # "adminUserId":I
    .end local v22    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    :cond_9a
    move-object/from16 v22, v8

    .line 3873
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v22    # "pluginPkg":Ljava/lang/String;
    :goto_9c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applyMDMPolicies isContainer ["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "] isBYODContainer ["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_bb} :catch_612
    .catchall {:try_start_83 .. :try_end_bb} :catchall_665

    .line 3875
    const-string v8, "applyMDMPolicies setAdminRemovable status-"

    const-string v11, "applyMDMPolicies admin pkg -"

    const-string v15, "applyMDMPolicies inside container logic"

    move-object/from16 v23, v7

    if-eqz v2, :cond_360

    .line 3876
    const/16 v20, 0x0

    .line 3877
    .local v20, "status":Z
    if-nez v12, :cond_1e8

    .line 3878
    :try_start_c9
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v23

    .line 3879
    .local v24, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 3881
    .local v7, "adminPkg":[Ljava/lang/String;
    if-nez v14, :cond_113

    .line 3882
    if-eqz v7, :cond_10e

    .line 3883
    array-length v2, v7

    move/from16 v26, v12

    const/4 v12, 0x0

    .end local v12    # "isBYODContainer":Z
    .local v26, "isBYODContainer":Z
    :goto_de
    if-ge v12, v2, :cond_10b

    aget-object v23, v7, v12

    move-object/from16 v27, v23

    .line 3884
    .local v27, "pkg":Ljava/lang/String;
    move/from16 v23, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v11

    move-object/from16 v11, v27

    .end local v27    # "pkg":Ljava/lang/String;
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    move-object/from16 v2, v24

    .end local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3883
    nop

    .end local v11    # "pkg":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v24, v2

    move/from16 v2, v23

    move-object/from16 v11, v28

    goto :goto_de

    .end local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10b
    move-object/from16 v2, v24

    .end local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_117

    .line 3882
    .end local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "isBYODContainer":Z
    .restart local v12    # "isBYODContainer":Z
    .restart local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10e
    move/from16 v26, v12

    move-object/from16 v2, v24

    .end local v12    # "isBYODContainer":Z
    .end local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "isBYODContainer":Z
    goto :goto_117

    .line 3881
    .end local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "isBYODContainer":Z
    .restart local v12    # "isBYODContainer":Z
    .restart local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_113
    move/from16 v26, v12

    move-object/from16 v2, v24

    .line 3889
    .end local v12    # "isBYODContainer":Z
    .end local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "isBYODContainer":Z
    :goto_117
    invoke-interface {v2, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3890
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 3892
    .local v11, "packages":[Ljava/lang/String;
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v12

    .line 3893
    .end local v20    # "status":Z
    .local v12, "status":Z
    move-object/from16 v23, v11

    .end local v11    # "packages":[Ljava/lang/String;
    .local v23, "packages":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMDMPolicies addPackagesToForceStopBlackList status-"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    const/4 v5, 0x0

    .line 3896
    .end local v12    # "status":Z
    .local v5, "status":Z
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v11

    move v5, v11

    .line 3897
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyMDMPolicies addPackagesToClearCacheBlackList status-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3898
    const/4 v5, 0x0

    .line 3900
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v11

    move v5, v11

    .line 3901
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyMDMPolicies addPackagesToClearDataBlackList status-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    if-nez v14, :cond_1ca

    .line 3904
    if-eqz v7, :cond_1c2

    .line 3905
    array-length v11, v7

    const/4 v12, 0x0

    :goto_186
    if-ge v12, v11, :cond_1bb

    aget-object v20, v7, v12

    move-object/from16 v24, v20

    .line 3906
    .local v24, "pkg":Ljava/lang/String;
    move-object/from16 v27, v2

    move/from16 v20, v5

    move-object/from16 v2, v24

    const/4 v5, 0x0

    .end local v5    # "status":Z
    .end local v24    # "pkg":Ljava/lang/String;
    .local v2, "pkg":Ljava/lang/String;
    .restart local v20    # "status":Z
    .local v27, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9, v5, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    move-result v24

    move/from16 v5, v24

    .line 3907
    .end local v20    # "status":Z
    .restart local v5    # "status":Z
    move-object/from16 v24, v7

    .end local v7    # "adminPkg":[Ljava/lang/String;
    .local v24, "adminPkg":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 3905
    .end local v2    # "pkg":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v24

    move-object/from16 v2, v27

    goto :goto_186

    .end local v24    # "adminPkg":[Ljava/lang/String;
    .end local v27    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "adminPkg":[Ljava/lang/String;
    :cond_1bb
    move-object/from16 v27, v2

    move/from16 v20, v5

    move-object/from16 v24, v7

    .end local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "status":Z
    .end local v7    # "adminPkg":[Ljava/lang/String;
    .restart local v20    # "status":Z
    .restart local v24    # "adminPkg":[Ljava/lang/String;
    .restart local v27    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1c6

    .line 3904
    .end local v20    # "status":Z
    .end local v24    # "adminPkg":[Ljava/lang/String;
    .end local v27    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "status":Z
    .restart local v7    # "adminPkg":[Ljava/lang/String;
    :cond_1c2
    move-object/from16 v27, v2

    move-object/from16 v24, v7

    .line 3912
    .end local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "adminPkg":[Ljava/lang/String;
    .restart local v24    # "adminPkg":[Ljava/lang/String;
    .restart local v27    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1c6
    const/4 v2, 0x0

    move/from16 v20, v2

    .end local v5    # "status":Z
    .local v2, "status":Z
    goto :goto_1d0

    .line 3903
    .end local v24    # "adminPkg":[Ljava/lang/String;
    .end local v27    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "status":Z
    .restart local v7    # "adminPkg":[Ljava/lang/String;
    :cond_1ca
    move-object/from16 v27, v2

    move-object/from16 v24, v7

    .end local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "adminPkg":[Ljava/lang/String;
    .restart local v24    # "adminPkg":[Ljava/lang/String;
    .restart local v27    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v20, v5

    .line 3915
    .end local v5    # "status":Z
    .restart local v20    # "status":Z
    :goto_1d0
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ea

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3916
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 3917
    .end local v5    # "pkg":Ljava/lang/String;
    goto :goto_1d4

    .line 3877
    .end local v23    # "packages":[Ljava/lang/String;
    .end local v24    # "adminPkg":[Ljava/lang/String;
    .end local v26    # "isBYODContainer":Z
    .end local v27    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "isBYODContainer":Z
    :cond_1e8
    move/from16 v26, v12

    .line 3919
    .end local v12    # "isBYODContainer":Z
    .restart local v26    # "isBYODContainer":Z
    :cond_1ea
    if-eqz v14, :cond_35c

    const/4 v2, -0x1

    if-eq v6, v2, :cond_35c

    .line 3920
    invoke-static {v10, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3922
    .restart local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1, v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUid0FromUid(II)I

    move-result v5

    .line 3923
    .local v5, "user0Uid":I
    new-instance v7, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v8, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v12, 0x0

    invoke-direct {v7, v8, v11, v12}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    .line 3924
    .local v7, "user0Edmforctx":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v8

    .line 3925
    .local v8, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    iget-object v11, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v12, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v8, v11, v12}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v11

    .line 3926
    .local v11, "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    if-eqz v11, :cond_356

    .line 3927
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v12, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_21f} :catch_612
    .catchall {:try_start_c9 .. :try_end_21f} :catchall_665

    .line 3928
    .local v12, "configuratorPkg":[Ljava/lang/String;
    const-string v15, "applyMDMPolicies disable uninstall pkg -"

    if-eqz v12, :cond_25c

    .line 3929
    move/from16 v21, v5

    .end local v5    # "user0Uid":I
    .local v21, "user0Uid":I
    :try_start_225
    array-length v5, v12

    move-object/from16 v23, v8

    const/4 v8, 0x0

    .end local v8    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .local v23, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :goto_229
    if-ge v8, v5, :cond_259

    aget-object v16, v12, v8

    move-object/from16 v24, v16

    .line 3930
    .local v24, "pkg":Ljava/lang/String;
    move/from16 v25, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v12

    move-object/from16 v12, v24

    .end local v24    # "pkg":Ljava/lang/String;
    .local v12, "pkg":Ljava/lang/String;
    .local v27, "configuratorPkg":[Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 3933
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3929
    nop

    .end local v12    # "pkg":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v25

    move-object/from16 v12, v27

    goto :goto_229

    .end local v27    # "configuratorPkg":[Ljava/lang/String;
    .local v12, "configuratorPkg":[Ljava/lang/String;
    :cond_259
    move-object/from16 v27, v12

    .end local v12    # "configuratorPkg":[Ljava/lang/String;
    .restart local v27    # "configuratorPkg":[Ljava/lang/String;
    goto :goto_262

    .line 3928
    .end local v21    # "user0Uid":I
    .end local v23    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v27    # "configuratorPkg":[Ljava/lang/String;
    .restart local v5    # "user0Uid":I
    .restart local v8    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .restart local v12    # "configuratorPkg":[Ljava/lang/String;
    :cond_25c
    move/from16 v21, v5

    move-object/from16 v23, v8

    move-object/from16 v27, v12

    .line 3937
    .end local v5    # "user0Uid":I
    .end local v8    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v12    # "configuratorPkg":[Ljava/lang/String;
    .restart local v21    # "user0Uid":I
    .restart local v23    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .restart local v27    # "configuratorPkg":[Ljava/lang/String;
    :goto_262
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2c2

    .line 3939
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v5

    .line 3940
    .end local v20    # "status":Z
    .local v5, "status":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyMDMPolicies inside container addPackagesToForceStopBlackList status-"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    const/4 v5, 0x0

    .line 3943
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v8

    move v5, v8

    .line 3944
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyMDMPolicies inside container addPackagesToClearCacheBlackList status-"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    const/4 v5, 0x0

    .line 3947
    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v8

    move v5, v8

    .line 3948
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyMDMPolicies inside container addPackagesToClearDataBlackList status-"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v5

    .line 3952
    .end local v5    # "status":Z
    .restart local v20    # "status":Z
    :cond_2c2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_353

    .line 3954
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v5

    .line 3955
    .end local v20    # "status":Z
    .restart local v5    # "status":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyMDMPolicies addPackagesToForceStopBlackList for plugin. status-"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    const/4 v5, 0x0

    .line 3958
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    move-result v8

    move v5, v8

    .line 3959
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyMDMPolicies addPackagesToClearCacheBlackList for plugin. status-"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    const/4 v5, 0x0

    .line 3962
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    move-result v8

    move v5, v8

    .line 3963
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyMDMPolicies addPackagesToClearDataBlackList for plugin. status-"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_324
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_34e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3965
    .local v12, "pkg":Ljava/lang/String;
    move-object/from16 v24, v2

    .end local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    .line 3968
    .end local v12    # "pkg":Ljava/lang/String;
    move-object/from16 v2, v24

    goto :goto_324

    .line 3964
    .end local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_34e
    move-object/from16 v24, v2

    .end local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v20, v5

    goto :goto_35c

    .line 3952
    .end local v5    # "status":Z
    .end local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "status":Z
    :cond_353
    move-object/from16 v24, v2

    .end local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_35c

    .line 3926
    .end local v21    # "user0Uid":I
    .end local v23    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v24    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "configuratorPkg":[Ljava/lang/String;
    .restart local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "user0Uid":I
    .restart local v8    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :cond_356
    move-object/from16 v24, v2

    move/from16 v21, v5

    move-object/from16 v23, v8

    .line 3972
    .end local v2    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "user0Uid":I
    .end local v7    # "user0Edmforctx":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .end local v8    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v11    # "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    :cond_35c
    :goto_35c
    const/4 v2, 0x1

    .line 3973
    .end local v17    # "result":Z
    .end local v20    # "status":Z
    .local v2, "result":Z
    move v9, v2

    goto/16 :goto_619

    .line 3974
    .end local v2    # "result":Z
    .end local v26    # "isBYODContainer":Z
    .local v12, "isBYODContainer":Z
    .restart local v17    # "result":Z
    :cond_360
    move-object/from16 v28, v11

    move/from16 v26, v12

    .end local v12    # "isBYODContainer":Z
    .restart local v26    # "isBYODContainer":Z
    const/4 v2, 0x0

    .line 3975
    .local v2, "status":Z
    move-object/from16 v7, p4

    const/4 v5, 0x0

    invoke-direct {v1, v7, v4, v3, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginUsedInOtherUser(Ljava/lang/String;IIZ)Z

    move-result v11

    .line 3976
    .local v11, "isPluginUsed":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyMDMPolicies ["

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] isPluginUsedInOtherUser ["

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v5, v23

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    if-nez v26, :cond_4a3

    .line 3979
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3980
    .local v5, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v12, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 3981
    .local v12, "adminPkg":[Ljava/lang/String;
    if-nez v14, :cond_3d0

    .line 3982
    if-eqz v12, :cond_3cd

    .line 3983
    move/from16 v23, v2

    .end local v2    # "status":Z
    .local v23, "status":Z
    array-length v2, v12

    const/4 v7, 0x0

    :goto_3a2
    if-ge v7, v2, :cond_3d2

    aget-object v24, v12, v7

    move-object/from16 v27, v24

    .line 3984
    .local v27, "pkg":Ljava/lang/String;
    move/from16 v24, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v28

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v1

    move-object/from16 v1, v27

    .end local v27    # "pkg":Ljava/lang/String;
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3983
    nop

    .end local v1    # "pkg":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v24

    goto :goto_3a2

    .line 3982
    .end local v23    # "status":Z
    .restart local v2    # "status":Z
    :cond_3cd
    move/from16 v23, v2

    .end local v2    # "status":Z
    .restart local v23    # "status":Z
    goto :goto_3d2

    .line 3981
    .end local v23    # "status":Z
    .restart local v2    # "status":Z
    :cond_3d0
    move/from16 v23, v2

    .line 3989
    .end local v2    # "status":Z
    .restart local v23    # "status":Z
    :cond_3d2
    :goto_3d2
    if-nez v11, :cond_3d7

    .line 3990
    invoke-interface {v5, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3992
    :cond_3d7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3994
    .local v1, "packages":[Ljava/lang/String;
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v2

    .line 3995
    .end local v23    # "status":Z
    .restart local v2    # "status":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v1

    .end local v1    # "packages":[Ljava/lang/String;
    .local v24, "packages":[Ljava/lang/String;
    const-string v1, "applyMDMPolicies removePackagesFromForceStopBlackList status-"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    const/4 v1, 0x0

    .line 3998
    .end local v2    # "status":Z
    .local v1, "status":Z
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v2

    move v1, v2

    .line 3999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyMDMPolicies removePackagesFromClearCacheBlackList status-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    const/4 v1, 0x0

    .line 4002
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v2

    move v1, v2

    .line 4003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyMDMPolicies removePackagesFromClearDataBlackList status-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    const/4 v1, 0x0

    .line 4005
    if-nez v14, :cond_486

    .line 4006
    if-eqz v12, :cond_481

    .line 4007
    array-length v2, v12

    const/4 v7, 0x0

    :goto_444
    if-ge v7, v2, :cond_47c

    aget-object v23, v12, v7

    move-object/from16 v27, v23

    .line 4009
    .restart local v27    # "pkg":Ljava/lang/String;
    move/from16 v23, v1

    move/from16 v20, v2

    move-object/from16 v1, v27

    const/4 v2, 0x1

    .end local v27    # "pkg":Ljava/lang/String;
    .local v1, "pkg":Ljava/lang/String;
    .restart local v23    # "status":Z
    invoke-virtual {v9, v2, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    move-result v27

    move/from16 v23, v27

    .line 4010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v5

    move/from16 v5, v23

    .end local v23    # "status":Z
    .local v5, "status":Z
    .local v28, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 4007
    .end local v1    # "pkg":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    move v1, v5

    move/from16 v2, v20

    move-object/from16 v5, v28

    goto :goto_444

    .end local v28    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "status":Z
    .local v5, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_47c
    move/from16 v23, v1

    move-object/from16 v28, v5

    .end local v1    # "status":Z
    .end local v5    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "status":Z
    .restart local v28    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_483

    .line 4006
    .end local v23    # "status":Z
    .end local v28    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "status":Z
    .restart local v5    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_481
    move-object/from16 v28, v5

    .line 4015
    .end local v5    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_483
    const/4 v1, 0x0

    move v2, v1

    goto :goto_489

    .line 4005
    .end local v28    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_486
    move-object/from16 v28, v5

    .end local v5    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v2, v1

    .line 4018
    .end local v1    # "status":Z
    .restart local v2    # "status":Z
    :goto_489
    if-nez v11, :cond_4a5

    .line 4019
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4020
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 4021
    .end local v5    # "pkg":Ljava/lang/String;
    goto :goto_48f

    .line 3978
    .end local v12    # "adminPkg":[Ljava/lang/String;
    .end local v24    # "packages":[Ljava/lang/String;
    .end local v28    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4a3
    move/from16 v23, v2

    .line 4024
    :cond_4a5
    if-eqz v14, :cond_60b

    const/4 v1, -0x1

    if-eq v6, v1, :cond_60b

    .line 4025
    invoke-static {v10, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4027
    .local v1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v5, p0

    invoke-direct {v5, v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUid0FromUid(II)I

    move-result v7

    .line 4028
    .local v7, "user0Uid":I
    new-instance v8, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v12, v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v15, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "status":Z
    .restart local v20    # "status":Z
    invoke-direct {v8, v12, v15, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    move-object v2, v8

    .line 4029
    .local v2, "user0Edmforctx":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v8

    .line 4030
    .restart local v8    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    iget-object v12, v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v15, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v8, v12, v15}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v12

    .line 4031
    .local v12, "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    iget-object v15, v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v15, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15
    :try_end_4dd
    .catch Ljava/lang/Exception; {:try_start_225 .. :try_end_4dd} :catch_612
    .catchall {:try_start_225 .. :try_end_4dd} :catchall_665

    .line 4032
    .local v15, "configuratorPkg":[Ljava/lang/String;
    if-eqz v12, :cond_608

    .line 4033
    const-string v3, "applyMDMPolicies enable uninstall pkg -"

    if-eqz v15, :cond_513

    .line 4034
    :try_start_4e3
    array-length v4, v15

    const/4 v5, 0x0

    :goto_4e5
    if-ge v5, v4, :cond_513

    aget-object v16, v15, v5

    move-object/from16 v21, v16

    .line 4035
    .local v21, "pkg":Ljava/lang/String;
    move/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v21

    .end local v21    # "pkg":Ljava/lang/String;
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4037
    invoke-virtual {v12}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 4038
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4034
    nop

    .end local v6    # "pkg":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, p5

    move/from16 v4, v16

    goto :goto_4e5

    .line 4042
    :cond_513
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_573

    .line 4043
    invoke-virtual {v12}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v4

    .line 4044
    .end local v20    # "status":Z
    .local v4, "status":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMDMPolicies inside container removePackagesFromForceStopBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    const/4 v4, 0x0

    .line 4047
    invoke-virtual {v12}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v5

    move v4, v5

    .line 4048
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMDMPolicies inside container removePackagesFromClearCacheBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    const/4 v4, 0x0

    .line 4051
    invoke-virtual {v12}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v5

    move v4, v5

    .line 4052
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMDMPolicies inside container removePackagesFromClearDataBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v4

    .line 4056
    .end local v4    # "status":Z
    .restart local v20    # "status":Z
    :cond_573
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_605

    if-nez v11, :cond_605

    .line 4057
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v4

    .line 4058
    .end local v20    # "status":Z
    .restart local v4    # "status":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMDMPolicies removePackagesFromForceStopBlackList for plugin status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    const/4 v4, 0x0

    .line 4061
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v5

    move v4, v5

    .line 4062
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMDMPolicies removePackagesFromClearCacheBlackList for plugin status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    const/4 v4, 0x0

    .line 4065
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v5

    move v4, v5

    .line 4066
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyMDMPolicies removePackagesFromClearDataBlackList for plugin status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5d7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_601

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4068
    .restart local v6    # "pkg":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V
    :try_end_5fe
    .catch Ljava/lang/Exception; {:try_start_4e3 .. :try_end_5fe} :catch_612
    .catchall {:try_start_4e3 .. :try_end_5fe} :catchall_665

    .line 4071
    .end local v6    # "pkg":Ljava/lang/String;
    move-object/from16 v1, v16

    goto :goto_5d7

    .line 4067
    .end local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_601
    move-object/from16 v16, v1

    .end local v1    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v2, v4

    goto :goto_60f

    .line 4056
    .end local v4    # "status":Z
    .end local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "status":Z
    :cond_605
    move-object/from16 v16, v1

    .end local v1    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_60d

    .line 4032
    .end local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_608
    move-object/from16 v16, v1

    .end local v1    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_60d

    .line 4024
    .end local v7    # "user0Uid":I
    .end local v8    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v12    # "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v15    # "configuratorPkg":[Ljava/lang/String;
    .end local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "status":Z
    .local v2, "status":Z
    :cond_60b
    move/from16 v20, v2

    .line 4075
    .end local v2    # "status":Z
    .restart local v20    # "status":Z
    :goto_60d
    move/from16 v2, v20

    .end local v20    # "status":Z
    .restart local v2    # "status":Z
    :goto_60f
    const/4 v1, 0x1

    move v9, v1

    .end local v17    # "result":Z
    .local v1, "result":Z
    goto :goto_619

    .line 4080
    .end local v1    # "result":Z
    .end local v2    # "status":Z
    .end local v9    # "edmforctx":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .end local v11    # "isPluginUsed":Z
    .end local v13    # "pluginPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "isContainer":Z
    .end local v26    # "isBYODContainer":Z
    .restart local v17    # "result":Z
    :catch_612
    move-exception v0

    move-object v1, v0

    goto :goto_646

    .line 3863
    .end local v22    # "pluginPkg":Ljava/lang/String;
    .local v8, "pluginPkg":Ljava/lang/String;
    .restart local v9    # "edmforctx":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .restart local v13    # "pluginPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_615
    move-object/from16 v22, v8

    .line 4083
    .end local v13    # "pluginPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "result":Z
    .end local v18    # "id":J
    .local v9, "result":Z
    .local v11, "id":J
    :goto_617
    move/from16 v9, v17

    .end local v8    # "pluginPkg":Ljava/lang/String;
    .end local v11    # "id":J
    .restart local v18    # "id":J
    .restart local v22    # "pluginPkg":Ljava/lang/String;
    :goto_619
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4084
    goto :goto_664

    .line 4083
    .end local v9    # "result":Z
    .end local v22    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v17    # "result":Z
    :catchall_61d
    move-exception v0

    move-object/from16 v22, v8

    move-object v1, v0

    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v22    # "pluginPkg":Ljava/lang/String;
    goto :goto_667

    .line 4080
    .end local v22    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    :catch_622
    move-exception v0

    move-object/from16 v22, v8

    move-object v1, v0

    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v22    # "pluginPkg":Ljava/lang/String;
    goto :goto_646

    .line 4083
    .end local v18    # "id":J
    .end local v22    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v11    # "id":J
    :catchall_627
    move-exception v0

    move-object/from16 v22, v8

    move-wide/from16 v18, v11

    move-object v1, v0

    .end local v8    # "pluginPkg":Ljava/lang/String;
    .end local v11    # "id":J
    .restart local v18    # "id":J
    .restart local v22    # "pluginPkg":Ljava/lang/String;
    goto :goto_667

    .line 4080
    .end local v18    # "id":J
    .end local v22    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v11    # "id":J
    :catch_62e
    move-exception v0

    move-object/from16 v22, v8

    move-wide/from16 v18, v11

    move-object v1, v0

    .end local v8    # "pluginPkg":Ljava/lang/String;
    .end local v11    # "id":J
    .restart local v18    # "id":J
    .restart local v22    # "pluginPkg":Ljava/lang/String;
    goto :goto_646

    .line 4083
    .end local v17    # "result":Z
    .end local v18    # "id":J
    .end local v22    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v9    # "result":Z
    .restart local v11    # "id":J
    :catchall_635
    move-exception v0

    move-object/from16 v22, v8

    move/from16 v17, v9

    move-wide/from16 v18, v11

    move-object v1, v0

    .end local v8    # "pluginPkg":Ljava/lang/String;
    .end local v9    # "result":Z
    .end local v11    # "id":J
    .restart local v17    # "result":Z
    .restart local v18    # "id":J
    .restart local v22    # "pluginPkg":Ljava/lang/String;
    goto :goto_667

    .line 4080
    .end local v17    # "result":Z
    .end local v18    # "id":J
    .end local v22    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v9    # "result":Z
    .restart local v11    # "id":J
    :catch_63e
    move-exception v0

    move-object/from16 v22, v8

    move/from16 v17, v9

    move-wide/from16 v18, v11

    move-object v1, v0

    .line 4081
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .end local v9    # "result":Z
    .end local v11    # "id":J
    .local v1, "e":Ljava/lang/Exception;
    .restart local v17    # "result":Z
    .restart local v18    # "id":J
    .restart local v22    # "pluginPkg":Ljava/lang/String;
    :goto_646
    :try_start_646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65e
    .catchall {:try_start_646 .. :try_end_65e} :catchall_665

    .line 4083
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4084
    move/from16 v9, v17

    .line 4085
    .end local v17    # "result":Z
    .restart local v9    # "result":Z
    :goto_664
    return v9

    .line 4083
    .end local v9    # "result":Z
    .restart local v17    # "result":Z
    :catchall_665
    move-exception v0

    move-object v1, v0

    :goto_667
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4084
    throw v1
.end method

.method private checkCaller(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "expectedPackage"    # Ljava/lang/String;

    .line 5382
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5383
    .local v0, "actualPackage":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    move-object v1, v0

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return-object v1
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 7
    .param p0, "methodName"    # Ljava/lang/String;

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkCallerPermissionFor is called for method-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v0, "CredentialManagerService"

    .line 548
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_20

    .line 549
    return v3

    .line 552
    :cond_20
    sget-object v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v2, v4, v5, v0, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_31

    .line 560
    return v3

    .line 553
    :cond_31
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 556
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    throw v2
.end method

.method private checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .registers 13
    .param p1, "activeAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 984
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 985
    .local v0, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 986
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    if-eqz v1, :cond_8f

    .line 987
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfNotify for cs Name = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Package name = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 995
    .local v1, "enforceManagement":Z
    if-eqz v1, :cond_88

    .line 996
    const-string v3, "notifying to managed plugin"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 998
    .local v3, "mUm":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 1000
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v5, 0x0

    .line 1001
    .local v5, "notify":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 1002
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    .line 1003
    .local v8, "userId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfNotify: Valid userid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9, v8, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    .line 1005
    if-eqz v5, :cond_86

    .line 1006
    goto :goto_87

    .line 1007
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_86
    goto :goto_5b

    .line 1008
    .end local v8    # "userId":I
    :cond_87
    :goto_87
    return v5

    .line 1010
    .end local v3    # "mUm":Landroid/os/UserManager;
    .end local v4    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "notify":Z
    :cond_88
    const-string v3, "notifying to unmanaged plugin"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/4 v2, 0x1

    return v2

    .line 990
    .end local v1    # "enforceManagement":Z
    :cond_8f
    const-string v1, "Package name for CS found NULL. Cannot notify."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/4 v1, 0x0

    return v1
.end method

.method private checkPluginUsed(ILjava/lang/String;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .line 3337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPluginUsed for the uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UcmService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    .line 3340
    .local v0, "keyguardCSName":Ljava/lang/String;
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3341
    .local v1, "source":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v0, :cond_49

    const-string v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    if-eqz v1, :cond_49

    .line 3342
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_49

    .line 3343
    const-string v4, "This plugin is already used in keyguard"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    return v3

    .line 3349
    :cond_49
    const-string v4, "persist.security.ucs.csname"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3350
    .local v4, "ODECSName":Ljava/lang/String;
    if-eqz v4, :cond_61

    if-eqz p2, :cond_61

    .line 3351
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_61

    .line 3352
    const-string v5, "This plugin is already used in ODE"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    return v3

    .line 3356
    :cond_61
    const/4 v2, 0x0

    return v2
.end method

.method private checkSystemCaller()V
    .registers 3

    .line 5375
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCaller(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5376
    .local v0, "actual":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 5379
    return-void

    .line 5377
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private compareCallingPkg([B[B)Z
    .registers 19
    .param p1, "storedPkg"    # [B
    .param p2, "callingPkg"    # [B

    .line 4549
    const-string v0, ","

    const-string v1, "UTF-8"

    const-string v2, "UcmService"

    const-string v3, "compareCallingPkg is called..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    const/4 v3, 0x0

    .line 4552
    .local v3, "status":Z
    :try_start_c
    new-instance v4, Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e} :catch_6f

    move-object/from16 v5, p1

    :try_start_10
    invoke-direct {v4, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4553
    .local v4, "configuratorPackage":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4554
    .local v6, "confPkgs":[Ljava/lang/String;
    new-instance v7, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_6d

    move-object/from16 v8, p2

    :try_start_1b
    invoke-direct {v7, v8, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v1, v7

    .line 4555
    .local v1, "callingPackages":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4557
    .local v0, "callingPkgs":[Ljava/lang/String;
    array-length v7, v0

    const/4 v10, 0x0

    :goto_25
    if-ge v10, v7, :cond_6a

    aget-object v11, v0, v10

    .line 4558
    .local v11, "pkg":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "compareCallingPkg pkg - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    array-length v12, v6

    const/4 v13, 0x0

    :goto_3f
    if-ge v13, v12, :cond_67

    aget-object v14, v6, v13

    .line 4560
    .local v14, "cachePkg":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compareCallingPkg cachePkg -"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4561
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 4562
    const/4 v3, 0x1

    .line 4563
    const-string v9, "compareCallingPkg match found..."

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_63} :catch_6b

    .line 4564
    goto :goto_67

    .line 4559
    .end local v14    # "cachePkg":Ljava/lang/String;
    :cond_64
    add-int/lit8 v13, v13, 0x1

    goto :goto_3f

    .line 4557
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_67
    :goto_67
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    .line 4570
    .end local v0    # "callingPkgs":[Ljava/lang/String;
    .end local v1    # "callingPackages":Ljava/lang/String;
    .end local v4    # "configuratorPackage":Ljava/lang/String;
    .end local v6    # "confPkgs":[Ljava/lang/String;
    :cond_6a
    goto :goto_8c

    .line 4568
    :catch_6b
    move-exception v0

    goto :goto_74

    :catch_6d
    move-exception v0

    goto :goto_72

    :catch_6f
    move-exception v0

    move-object/from16 v5, p1

    :goto_72
    move-object/from16 v8, p2

    .line 4569
    .local v0, "e":Ljava/lang/Exception;
    :goto_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4571
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8c
    return v3
.end method

.method private convertByteToString([B)Ljava/lang/String;
    .registers 9
    .param p1, "data"    # [B

    .line 869
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 870
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-nez p1, :cond_b

    .line 871
    const/4 v1, 0x0

    return-object v1

    .line 873
    :cond_b
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_27

    aget-byte v4, p1, v3

    .line 874
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 873
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 876
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, "byteString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertByteToString result - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return-object v1
.end method

.method private deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;
    .registers 27
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "ismdmcaller"    # Z
    .param p3, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2679
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteInternal "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "UcmService"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v11, v0

    .line 2681
    .local v11, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v12

    .line 2682
    .local v12, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v0, 0xe

    const-string v13, "errorresponse"

    const/4 v14, 0x0

    const-string v15, "booleanresponse"

    if-nez v12, :cond_4e

    .line 2683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteInternal : NULL agent for uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    invoke-virtual {v11, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2685
    invoke-virtual {v11, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2686
    return-object v11

    .line 2690
    :cond_4e
    new-instance v3, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v3, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v3

    .line 2691
    .local v16, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2692
    .local v3, "uid":I
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v8

    .line 2693
    .local v8, "uriuid":I
    const/4 v4, -0x1

    if-eq v8, v4, :cond_6f

    .line 2694
    if-eq v3, v8, :cond_6f

    .line 2695
    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_6c

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 2696
    :cond_6c
    move v3, v8

    move v7, v3

    goto :goto_70

    .line 2700
    :cond_6f
    move v7, v3

    .end local v3    # "uid":I
    .local v7, "uid":I
    :goto_70
    if-eqz v9, :cond_75

    move/from16 v3, p3

    goto :goto_79

    :cond_75
    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v3

    .line 2701
    .local v3, "user_id":I
    :goto_79
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v5

    .line 2702
    .local v5, "uriresource":I
    if-ne v5, v4, :cond_80

    const/4 v5, 0x1

    :cond_80
    move v6, v5

    .line 2704
    .end local v5    # "uriresource":I
    .local v6, "uriresource":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 2705
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v5

    .line 2706
    .local v5, "userId":I
    if-eq v5, v4, :cond_ab

    .line 2707
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v3

    .line 2708
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Delete new userid-"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    goto :goto_c0

    .line 2710
    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete. Keeping same userid"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    .end local v5    # "userId":I
    :cond_bf
    move v5, v3

    .end local v3    # "user_id":I
    .local v5, "user_id":I
    :goto_c0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2716
    .local v17, "id":J
    :try_start_c4
    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v0
    :try_end_d2
    .catchall {:try_start_c4 .. :try_end_d2} :catchall_1a7

    move/from16 v19, v5

    .end local v5    # "user_id":I
    .local v19, "user_id":I
    move/from16 v20, v6

    .end local v6    # "uriresource":I
    .local v20, "uriresource":I
    move v6, v7

    move/from16 v21, v7

    .end local v7    # "uid":I
    .local v21, "uid":I
    move/from16 v7, p2

    move/from16 v22, v8

    .end local v8    # "uriuid":I
    .local v22, "uriuid":I
    move-object v8, v0

    :try_start_de
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0
    :try_end_e2
    .catchall {:try_start_de .. :try_end_e2} :catchall_19f

    if-nez v0, :cond_10e

    .line 2717
    :try_start_e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING!!!! deleteInternal is NOT allowed for URI = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    invoke-virtual {v11, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2719
    const/16 v0, 0xf

    invoke-virtual {v11, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_100
    .catchall {:try_start_e4 .. :try_end_100} :catchall_105

    .line 2720
    nop

    .line 2723
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2720
    return-object v11

    .line 2723
    :catchall_105
    move-exception v0

    move/from16 v6, v19

    move/from16 v8, v20

    move/from16 v4, v21

    goto/16 :goto_1ad

    :cond_10e
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2724
    nop

    .line 2727
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2728
    .local v0, "argBundle":Landroid/os/Bundle;
    if-eqz v9, :cond_11e

    const-string v3, "ismdm"

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2729
    :cond_11e
    const-string v3, "callerUid"

    move/from16 v4, v21

    .end local v21    # "uid":I
    .local v4, "uid":I
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2730
    const-string v5, "user_id"

    move/from16 v6, v19

    .end local v19    # "user_id":I
    .local v6, "user_id":I
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    const-string v7, "ownerUid"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2732
    const-string v7, "resource"

    move/from16 v8, v20

    .end local v20    # "uriresource":I
    .local v8, "uriresource":I
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2734
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete KEY_RESOURCE_ID= "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x2

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete KEY_USER_ID= "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete KEY_CALLER_UID= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    invoke-virtual {v12}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v1

    if-nez v1, :cond_196

    .line 2741
    const-string v1, "agent is not bound"

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    const/4 v1, 0x0

    invoke-virtual {v11, v15, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2743
    const/16 v1, 0xe

    invoke-virtual {v11, v13, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2744
    return-object v11

    .line 2746
    :cond_196
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 2723
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v4    # "uid":I
    .end local v6    # "user_id":I
    .end local v8    # "uriresource":I
    .restart local v19    # "user_id":I
    .restart local v20    # "uriresource":I
    .restart local v21    # "uid":I
    :catchall_19f
    move-exception v0

    move/from16 v6, v19

    move/from16 v8, v20

    move/from16 v4, v21

    .end local v19    # "user_id":I
    .end local v20    # "uriresource":I
    .end local v21    # "uid":I
    .restart local v4    # "uid":I
    .restart local v6    # "user_id":I
    .restart local v8    # "uriresource":I
    goto :goto_1ad

    .end local v4    # "uid":I
    .end local v22    # "uriuid":I
    .restart local v5    # "user_id":I
    .local v6, "uriresource":I
    .restart local v7    # "uid":I
    .local v8, "uriuid":I
    :catchall_1a7
    move-exception v0

    move v4, v7

    move/from16 v22, v8

    move v8, v6

    move v6, v5

    .end local v5    # "user_id":I
    .end local v7    # "uid":I
    .restart local v4    # "uid":I
    .local v6, "user_id":I
    .local v8, "uriresource":I
    .restart local v22    # "uriuid":I
    :goto_1ad
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2724
    throw v0
.end method

.method private deleteODEConfigInFileIfExist()V
    .registers 5

    .line 4734
    const-string v0, "UcmService"

    const-string v1, "deleteODEConfigInFileIfExist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4736
    .local v1, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 4737
    .local v2, "existFile":Z
    if-nez v2, :cond_1c

    .line 4738
    const-string v3, "ODE config file does not exist"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 4740
    :cond_1c
    const-string v3, "ODE config file exist so delete it"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4743
    :goto_24
    return-void
.end method

.method private disableAutoFactoryReset()V
    .registers 7

    .line 4281
    const-string v0, "auto_swipe_main_user"

    const-string v1, "UcmService"

    :try_start_4
    const-string v2, "disableAutoFactoryReset"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4284
    .local v2, "current":I
    sget-boolean v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v4, :cond_2c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTO_SWIPE_MAIN_USER current : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4286
    :cond_2c
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 4287
    .local v0, "set":Z
    sget-boolean v3, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v3, :cond_4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.Secure.putInt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4e} :catch_4f

    .line 4290
    .end local v0    # "set":Z
    .end local v2    # "current":I
    :cond_4e
    goto :goto_68

    .line 4288
    :catch_4f
    move-exception v0

    .line 4289
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_68
    return-void
.end method

.method private enforceLockType(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "csName"    # Ljava/lang/String;

    .line 5490
    const-string v0, "UcmService"

    :try_start_2
    const-string v1, "password_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 5491
    .local v1, "pwdPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    const/4 v2, 0x0

    .line 5492
    .local v2, "flag":I
    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v3

    if-le v3, v2, :cond_16

    .line 5493
    invoke-virtual {v1, p1, v2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 5496
    :cond_16
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 5497
    .local v3, "uh":Landroid/os/UserHandle;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enforceLockType called for userID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5498
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 5499
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.password.ConfirmUCMLockPassword"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5500
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " csName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5501
    const-string v5, "lockscreen.ucscredentialstoragename"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5502
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5503
    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5504
    const/high16 v5, 0x800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5505
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_68} :catch_69

    .line 5508
    .end local v1    # "pwdPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    .end local v2    # "flag":I
    .end local v3    # "uh":Landroid/os/UserHandle;
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_82

    .line 5506
    :catch_69
    move-exception v1

    .line 5507
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5509
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_82
    return-void
.end method

.method private enforceUidPermission(I)Z
    .registers 5
    .param p1, "Uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enforceUidPermission : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v2, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    invoke-interface {v0, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_27

    .line 539
    const-string v0, "KNOX_UCM_PLUGIN_PERMISSION is granted"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v0, 0x1

    return v0

    .line 542
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private generateDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1490
    const-string v0, "errorresponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1495
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_1d
    const-string v3, "generateDek"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_c7

    .line 1500
    nop

    .line 1502
    if-eqz p1, :cond_b8

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_30

    goto/16 :goto_b8

    .line 1508
    :cond_30
    if-nez p2, :cond_49

    .line 1509
    const-string v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v4, v3, :cond_41

    .line 1510
    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    goto :goto_49

    .line 1512
    :cond_41
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    .line 1516
    :cond_49
    :goto_49
    const/16 v3, 0xe

    if-nez p2, :cond_6d

    .line 1517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1519
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1523
    :cond_6d
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_80

    .line 1524
    const-string v4, "agent is not bound"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1526
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1528
    :cond_80
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1529
    if-nez v1, :cond_9b

    .line 1530
    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 1532
    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1533
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1535
    :cond_9b
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1536
    .local v0, "errorcode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateDek response from plugin:  error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 1503
    .end local v0    # "errorcode":I
    :cond_b8
    :goto_b8
    const-string v3, "uri is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1505
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1496
    :catch_c7
    move-exception v3

    .line 1497
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The exception occurs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1499
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method private generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 28
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2786
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateKeyPairMain "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UcmService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 2788
    .local v4, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    .line 2789
    .local v5, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v0, 0xe

    const-string v6, "errorresponse"

    const/4 v7, 0x0

    const-string v8, "bytearrayresponse"

    if-nez v5, :cond_4c

    .line 2790
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateKeyPairMain : NULL agent for uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2792
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2793
    return-object v4

    .line 2797
    :cond_4c
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v9, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2798
    .local v9, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2799
    .local v10, "uid":I
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    .line 2800
    .local v11, "uriuid":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_69

    .line 2801
    if-eq v10, v11, :cond_69

    .line 2802
    const/16 v13, 0x3e8

    if-eq v10, v13, :cond_68

    invoke-direct {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v13

    if-eqz v13, :cond_69

    .line 2803
    :cond_68
    move v10, v11

    .line 2807
    :cond_69
    invoke-direct {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v13

    .line 2808
    .local v13, "user_id":I
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v14

    .line 2809
    .local v14, "uriresource":I
    if-ne v14, v12, :cond_74

    const/4 v14, 0x1

    :cond_74
    move v15, v14

    .line 2811
    .end local v14    # "uriresource":I
    .local v15, "uriresource":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-direct {v1, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v14

    if-eqz v14, :cond_b3

    .line 2812
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v14

    .line 2813
    .local v14, "userId":I
    if-eq v14, v12, :cond_9f

    .line 2814
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v13

    .line 2815
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateKeyPairMain new userid-"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v13

    goto :goto_b4

    .line 2817
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateKeyPairMain. Keeping same userid"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    .end local v14    # "userId":I
    :cond_b3
    move v12, v13

    .end local v13    # "user_id":I
    .local v12, "user_id":I
    :goto_b4
    if-nez p5, :cond_10f

    .line 2823
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 2825
    .local v19, "id":J
    :try_start_ba
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v14

    const/16 v17, 0x0

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v18
    :try_end_ca
    .catchall {:try_start_ba .. :try_end_ca} :catchall_108

    move/from16 v21, v15

    .end local v15    # "uriresource":I
    .local v21, "uriresource":I
    move v15, v12

    move/from16 v16, v10

    :try_start_cf
    invoke-virtual/range {v13 .. v18}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f6

    .line 2826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WARNING!!!! generateKeyPairMain is NOT allowed for URI = "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2828
    const/16 v0, 0xf

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_f1
    .catchall {:try_start_cf .. :try_end_f1} :catchall_106

    .line 2829
    nop

    .line 2832
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2829
    return-object v4

    .line 2832
    :cond_f6
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2833
    nop

    .line 2835
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0, v5, v12, v13, v14}, Lcom/samsung/ucm/ucmservice/PolicyManager;->addGeneratedKeyToCertificateAndWhiteList(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;ILjava/lang/String;Landroid/content/pm/IPackageManager;)Z

    goto :goto_111

    .line 2832
    :catchall_106
    move-exception v0

    goto :goto_10b

    .end local v21    # "uriresource":I
    .restart local v15    # "uriresource":I
    :catchall_108
    move-exception v0

    move/from16 v21, v15

    .end local v15    # "uriresource":I
    .restart local v21    # "uriresource":I
    :goto_10b
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2833
    throw v0

    .line 2821
    .end local v19    # "id":J
    .end local v21    # "uriresource":I
    .restart local v15    # "uriresource":I
    :cond_10f
    move/from16 v21, v15

    .line 2838
    .end local v15    # "uriresource":I
    .restart local v21    # "uriresource":I
    :goto_111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2839
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v13, "callerUid"

    invoke-virtual {v0, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2840
    const-string v14, "user_id"

    invoke-virtual {v0, v14, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2841
    const-string v15, "ownerUid"

    invoke-virtual {v0, v15, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2842
    const-string v15, "resource"

    move/from16 v7, v21

    .end local v21    # "uriresource":I
    .local v7, "uriresource":I
    invoke-virtual {v0, v15, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2843
    const-string v1, "extraArgs"

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateKeyPairMain KEY_RESOURCE_ID= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x2

    invoke-virtual {v0, v15, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "generateKeyPairMain KEY_USER_ID= "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "generateKeyPairMain KEY_CALLER_UID= "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v1

    if-nez v1, :cond_191

    .line 2852
    const-string v1, "agent is not bound"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    const/4 v1, 0x0

    invoke-virtual {v4, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2854
    const/16 v1, 0xe

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2855
    return-object v4

    .line 2857
    :cond_191
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v5, v1, v2, v3, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private generateWrappedDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1546
    const-string v0, "errorresponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateWrappedDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1551
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_1d
    const-string v3, "generateWrappedDek"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_c7

    .line 1556
    nop

    .line 1558
    if-eqz p1, :cond_b8

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_30

    goto/16 :goto_b8

    .line 1564
    :cond_30
    if-nez p2, :cond_49

    .line 1565
    const-string v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v4, v3, :cond_41

    .line 1566
    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    goto :goto_49

    .line 1568
    :cond_41
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    .line 1572
    :cond_49
    :goto_49
    const/16 v3, 0xe

    if-nez p2, :cond_6d

    .line 1573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no agent found for Source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1575
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1578
    :cond_6d
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_80

    .line 1579
    const-string v4, "agent is not bound"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1581
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1583
    :cond_80
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1584
    if-nez v1, :cond_9b

    .line 1585
    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 1587
    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1588
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1590
    :cond_9b
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1591
    .local v0, "errorcode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateWrappedDek response from plugin:  error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 1559
    .end local v0    # "errorcode":I
    :cond_b8
    :goto_b8
    const-string v3, "uri is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1561
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1552
    :catch_c7
    move-exception v3

    .line 1553
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The exception occurs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1555
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method private getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;
    .registers 6
    .param p1, "credAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2433
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2434
    .local v0, "agentInfoBundle":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    .line 2435
    .local v1, "credAgentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v1, :cond_94

    .line 2436
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v3, "uniqueId"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    :cond_14
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    :cond_1f
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    const-string v3, "summary"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    :cond_2a
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_35

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    :cond_35
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    if-eqz v2, :cond_40

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    const-string v3, "vendorId"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    :cond_40
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    if-eqz v2, :cond_4b

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    const-string v3, "storageType"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    :cond_4b
    iget-boolean v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    const-string v3, "isDetachable"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2443
    iget-boolean v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    const-string v3, "reqUserVerification"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2444
    iget-boolean v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    const-string v3, "isHardwareBacked"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2445
    iget-boolean v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    const-string v3, "isReadOnly"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2446
    iget-boolean v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    const-string v3, "isManageable"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2447
    iget-boolean v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    const-string v3, "enforceManagement"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2448
    iget-boolean v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isPUKSupported:Z

    const-string v3, "isPUKSupported"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2449
    iget-boolean v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    const-string v3, "isGeneratePasswordAvailable"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2450
    const/4 v2, 0x0

    const-string v3, "isODESupport"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2451
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    if-eqz v2, :cond_94

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    const-string v3, "configuratorList"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    :cond_94
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_ab

    .line 2454
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ab

    .line 2455
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    :cond_ab
    return-object v0
.end method

.method private getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .registers 6
    .param p1, "pluginName"    # Ljava/lang/String;

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppletInfo is called for pluginName-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 798
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 799
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v0, :cond_3f

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppletInfo pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-object v0

    .line 811
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :cond_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method private getConfiguratorPkg(I)[B
    .registers 9
    .param p1, "adminId"    # I

    .line 4575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfiguratorPkg is called for adminId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4576
    const/4 v0, 0x0

    .line 4578
    .local v0, "data":[B
    :try_start_17
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 4579
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_75

    .line 4580
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4581
    .local v3, "tempBaos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    array-length v5, v2

    if-ge v4, v5, :cond_56

    .line 4582
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    aget-object v5, v2, v4

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 4584
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_53

    .line 4585
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4581
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 4588
    .end local v4    # "i":I
    :cond_56
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 4589
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object v0, v4

    .line 4590
    if-eqz v0, :cond_75

    .line 4591
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data size -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_75} :catch_76

    .line 4596
    .end local v2    # "packageNames":[Ljava/lang/String;
    .end local v3    # "tempBaos":Ljava/io/ByteArrayOutputStream;
    :cond_75
    goto :goto_8f

    .line 4594
    :catch_76
    move-exception v2

    .line 4595
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8f
    return-object v0
.end method

.method private getConfiguratorSignature(I)[B
    .registers 11
    .param p1, "adminId"    # I

    .line 4601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfiguratorSignature is called for adminId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4602
    const/4 v0, 0x0

    .line 4604
    .local v0, "data":[B
    :try_start_17
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 4605
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_9e

    .line 4606
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    array-length v4, v2

    if-ge v3, v4, :cond_87

    .line 4607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    const-string v4, ""

    .line 4609
    .local v4, "sig":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    aget-object v6, v2, v3

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 4610
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_84

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_84

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-lez v6, :cond_84

    .line 4611
    const-string v6, "Found signature..."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    .line 4613
    .local v6, "sigStrins":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5f
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-ge v7, v8, :cond_71

    .line 4614
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 4613
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    .line 4616
    .end local v7    # "j":I
    :cond_71
    const-string v7, ","

    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 4618
    const-string v7, "UTF-8"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDigestOfBytes([B)[B

    move-result-object v7

    move-object v0, v7

    .line 4619
    goto :goto_87

    .line 4606
    .end local v4    # "sig":Ljava/lang/String;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sigStrins":[Ljava/lang/String;
    :cond_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 4622
    .end local v3    # "i":I
    :cond_87
    :goto_87
    if-eqz v0, :cond_9e

    .line 4623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data size -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_9e} :catch_9f

    .line 4628
    .end local v2    # "packageNames":[Ljava/lang/String;
    :cond_9e
    goto :goto_b8

    .line 4626
    :catch_9f
    move-exception v2

    .line 4627
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_b8
    return-object v0
.end method

.method private getDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1601
    const-string v0, "errorresponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1606
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_1d
    const-string v3, "getDek"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_ce

    .line 1611
    nop

    .line 1613
    if-eqz p1, :cond_bf

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_30

    goto/16 :goto_bf

    .line 1618
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking uri : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    if-nez p2, :cond_5d

    .line 1621
    const-string v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v4, v3, :cond_55

    .line 1622
    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    goto :goto_5d

    .line 1624
    :cond_55
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p2

    .line 1628
    :cond_5d
    :goto_5d
    const/16 v3, 0xe

    if-nez p2, :cond_6e

    .line 1629
    const-string v4, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1631
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1635
    :cond_6e
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_87

    .line 1636
    const-string v4, "agent is not bound"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 1638
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1639
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1642
    :cond_87
    invoke-virtual {p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1643
    if-nez v1, :cond_a2

    .line 1644
    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 1646
    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1647
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1649
    :cond_a2
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1650
    .local v0, "errorcode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDek Response from plugin:  error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 1614
    .end local v0    # "errorcode":I
    :cond_bf
    :goto_bf
    const-string v3, "uri is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1616
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1607
    :catch_ce
    move-exception v3

    .line 1608
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The exception occurs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1610
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method private getDigestOfBytes([B)[B
    .registers 11
    .param p1, "inBytes"    # [B

    .line 4634
    const-string v0, "The exception occurs "

    const-string v1, "UcmService"

    const/4 v2, 0x0

    .line 4635
    .local v2, "dis":Ljava/security/DigestInputStream;
    const/4 v3, 0x0

    .line 4636
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 4638
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_7
    const-string v5, "SHA256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 4639
    .local v5, "md":Ljava/security/MessageDigest;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v6

    .line 4640
    new-instance v6, Ljava/security/DigestInputStream;

    invoke-direct {v6, v4, v5}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object v2, v6

    .line 4641
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v6

    .line 4643
    :goto_1f
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    .line 4644
    .local v6, "b":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_50

    .line 4645
    nop

    .line 4647
    .end local v6    # "b":I
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_2b} :catch_f8
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_2b} :catch_c8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2b} :catch_98
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2b} :catch_54
    .catchall {:try_start_7 .. :try_end_2b} :catchall_51

    .line 4658
    nop

    .line 4659
    :try_start_2c
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V

    .line 4660
    nop

    .line 4661
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4662
    nop

    .line 4663
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_37} :catch_38

    .line 4666
    goto :goto_4f

    .line 4664
    :catch_38
    move-exception v7

    .line 4665
    .local v7, "ie":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    .end local v7    # "ie":Ljava/io/IOException;
    :goto_4f
    return-object v6

    .line 4646
    :cond_50
    goto :goto_1f

    .line 4657
    .end local v5    # "md":Ljava/security/MessageDigest;
    :catchall_51
    move-exception v5

    goto/16 :goto_12c

    .line 4654
    :catch_54
    move-exception v5

    .line 4655
    .local v5, "e":Ljava/lang/Exception;
    :try_start_55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_51

    .line 4658
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_73

    .line 4659
    :try_start_6d
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V

    goto :goto_73

    .line 4664
    :catch_71
    move-exception v5

    goto :goto_7e

    .line 4660
    :cond_73
    :goto_73
    if-eqz v3, :cond_78

    .line 4661
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4662
    :cond_78
    if-eqz v4, :cond_96

    .line 4663
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_7d} :catch_71

    goto :goto_96

    .line 4665
    .local v5, "ie":Ljava/io/IOException;
    :goto_7e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_83
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4667
    .end local v5    # "ie":Ljava/io/IOException;
    goto/16 :goto_12a

    .line 4666
    :cond_96
    :goto_96
    goto/16 :goto_12a

    .line 4652
    :catch_98
    move-exception v5

    .line 4653
    .restart local v5    # "ie":Ljava/io/IOException;
    :try_start_99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_99 .. :try_end_af} :catchall_51

    .line 4658
    .end local v5    # "ie":Ljava/io/IOException;
    if-eqz v2, :cond_b7

    .line 4659
    :try_start_b1
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V

    goto :goto_b7

    .line 4664
    :catch_b5
    move-exception v5

    goto :goto_c2

    .line 4660
    :cond_b7
    :goto_b7
    if-eqz v3, :cond_bc

    .line 4661
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4662
    :cond_bc
    if-eqz v4, :cond_96

    .line 4663
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_c1} :catch_b5

    goto :goto_96

    .line 4665
    .restart local v5    # "ie":Ljava/io/IOException;
    :goto_c2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_83

    .line 4650
    .end local v5    # "ie":Ljava/io/IOException;
    :catch_c8
    move-exception v5

    .line 4651
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_c9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_c9 .. :try_end_df} :catchall_51

    .line 4658
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_e7

    .line 4659
    :try_start_e1
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V

    goto :goto_e7

    .line 4664
    :catch_e5
    move-exception v5

    goto :goto_f2

    .line 4660
    :cond_e7
    :goto_e7
    if-eqz v3, :cond_ec

    .line 4661
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4662
    :cond_ec
    if-eqz v4, :cond_96

    .line 4663
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_f1} :catch_e5

    goto :goto_96

    .line 4665
    .local v5, "ie":Ljava/io/IOException;
    :goto_f2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_83

    .line 4648
    .end local v5    # "ie":Ljava/io/IOException;
    :catch_f8
    move-exception v5

    .line 4649
    .local v5, "nsae":Ljava/security/NoSuchAlgorithmException;
    :try_start_f9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_f9 .. :try_end_10f} :catchall_51

    .line 4658
    .end local v5    # "nsae":Ljava/security/NoSuchAlgorithmException;
    if-eqz v2, :cond_117

    .line 4659
    :try_start_111
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V

    goto :goto_117

    .line 4664
    :catch_115
    move-exception v5

    goto :goto_123

    .line 4660
    :cond_117
    :goto_117
    if-eqz v3, :cond_11c

    .line 4661
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4662
    :cond_11c
    if-eqz v4, :cond_96

    .line 4663
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_121} :catch_115

    goto/16 :goto_96

    .line 4665
    .local v5, "ie":Ljava/io/IOException;
    :goto_123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_83

    .line 4668
    .end local v5    # "ie":Ljava/io/IOException;
    :goto_12a
    const/4 v0, 0x0

    return-object v0

    .line 4658
    :goto_12c
    if-eqz v2, :cond_134

    .line 4659
    :try_start_12e
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V

    goto :goto_134

    .line 4664
    :catch_132
    move-exception v6

    goto :goto_13f

    .line 4660
    :cond_134
    :goto_134
    if-eqz v3, :cond_139

    .line 4661
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 4662
    :cond_139
    if-eqz v4, :cond_156

    .line 4663
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_13e} :catch_132

    goto :goto_156

    .line 4665
    .local v6, "ie":Ljava/io/IOException;
    :goto_13f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_157

    .line 4666
    .end local v6    # "ie":Ljava/io/IOException;
    :cond_156
    :goto_156
    nop

    .line 4667
    :goto_157
    throw v5
.end method

.method private getIntLen(I)I
    .registers 3
    .param p1, "num"    # I

    .line 5619
    const/4 v0, 0x0

    .line 5620
    .local v0, "len":I
    :goto_1
    if-lez p1, :cond_8

    .line 5621
    add-int/lit8 v0, v0, 0x1

    .line 5622
    div-int/lit8 p1, p1, 0xa

    goto :goto_1

    .line 5624
    :cond_8
    return v0
.end method

.method private getKeyguardInfoFile(I)Landroid/util/AtomicFile;
    .registers 6
    .param p1, "userId"    # I

    .line 4119
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "ucm_keyguardconfig.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;
    .registers 14
    .param p1, "userId"    # I

    .line 3811
    const-string v0, "The exception occurs "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyguardStorageOwnerForCurrentUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardInfoFile(I)Landroid/util/AtomicFile;

    move-result-object v1

    .line 3813
    .local v1, "keguardInfoFile":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2d

    .line 3814
    const-string v0, "isFileExist : not exist"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3815
    return-object v4

    .line 3817
    :cond_2d
    const/4 v3, 0x0

    .line 3819
    .local v3, "ownerId":Ljava/lang/String;
    :try_start_2e
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_32} :catch_bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_32} :catch_a7
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_32} :catch_8f

    .line 3820
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_32
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 3821
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3822
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 3823
    .local v7, "eventType":I
    :goto_3d
    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v7, v9, :cond_49

    if-eq v7, v8, :cond_49

    .line 3824
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v7, v8

    goto :goto_3d

    .line 3826
    :cond_49
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 3827
    .local v10, "tagName":Ljava/lang/String;
    const-string v11, "keyguard"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 3828
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v7, v11

    .line 3830
    :cond_5a
    if-ne v7, v9, :cond_76

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ne v11, v9, :cond_76

    .line 3831
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 3832
    const-string v11, "vendor"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_76

    .line 3833
    const-string v11, "owner"

    invoke-interface {v6, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 3836
    :cond_76
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11
    :try_end_7a
    .catchall {:try_start_32 .. :try_end_7a} :catchall_83

    move v7, v11

    .line 3837
    if-ne v7, v8, :cond_5a

    .line 3839
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "eventType":I
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_7d
    if-eqz v5, :cond_d6

    :try_start_7f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_82} :catch_bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7f .. :try_end_82} :catch_a7
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_8f

    goto :goto_d6

    .line 3819
    :catchall_83
    move-exception v4

    if-eqz v5, :cond_8e

    :try_start_86
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v6

    :try_start_8b
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "keguardInfoFile":Landroid/util/AtomicFile;
    .end local v3    # "ownerId":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .end local p1    # "userId":I
    :cond_8e
    :goto_8e
    throw v4
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_8f} :catch_bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_8f} :catch_a7
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8f} :catch_8f

    .line 3845
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "keguardInfoFile":Landroid/util/AtomicFile;
    .restart local v3    # "ownerId":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local p1    # "userId":I
    :catch_8f
    move-exception v4

    .line 3847
    .local v4, "ie":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 3842
    .end local v4    # "ie":Ljava/io/IOException;
    :catch_a7
    move-exception v4

    .line 3844
    .local v4, "xpe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "xpe":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_d6

    .line 3839
    :catch_bf
    move-exception v4

    .line 3841
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_d6
    :goto_d6
    nop

    .line 3849
    :goto_d7
    return-object v3
.end method

.method private getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .registers 9

    .line 5352
    sget-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    const-string v1, "UcmService"

    if-eqz v0, :cond_b

    const-string v0, "getODEAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5353
    :cond_b
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    .line 5354
    .local v0, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    const/4 v2, 0x0

    if-eqz v0, :cond_73

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-nez v3, :cond_17

    goto :goto_73

    .line 5358
    :cond_17
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5359
    .local v4, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v4, :cond_21

    iget-object v5, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v5, :cond_21

    iget-object v5, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-nez v5, :cond_3a

    .line 5360
    goto :goto_21

    .line 5362
    :cond_3a
    :try_start_3a
    new-instance v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5363
    .local v5, "odeAgentId":Ljava/lang/String;
    iget-object v6, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 5364
    sget-boolean v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v6, :cond_56

    const-string v6, "find agent for ODE"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3a .. :try_end_56} :catch_58

    .line 5365
    :cond_56
    return-object v4

    .line 5369
    .end local v5    # "odeAgentId":Ljava/lang/String;
    :cond_57
    goto :goto_71

    .line 5367
    :catch_58
    move-exception v5

    .line 5368
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The exception occurs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5370
    .end local v4    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_71
    goto :goto_21

    .line 5371
    :cond_72
    return-object v2

    .line 5355
    :cond_73
    :goto_73
    const-string v3, "Failed to load ODE properties"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5356
    return-object v2
.end method

.method private getODEVendorName()Ljava/lang/String;
    .registers 7

    .line 5550
    const-string v0, "UcmService"

    const-string v1, ""

    .line 5551
    .local v1, "vendorName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v2

    .line 5552
    .local v2, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    if-eqz v2, :cond_4b

    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v3, :cond_4b

    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    array-length v3, v3

    if-lez v3, :cond_4b

    .line 5554
    :try_start_13
    new-instance v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v1, v3

    .line 5555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ODE Vendor Name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_31} :catch_32

    .line 5558
    goto :goto_4b

    .line 5556
    :catch_32
    move-exception v3

    .line 5557
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The exception occurs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5560
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4b
    :goto_4b
    return-object v1
.end method

.method private getOdeVendorSpecific(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 5249
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmErcomSpecific:Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

    if-nez v0, :cond_f

    .line 5250
    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmErcomSpecific:Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

    .line 5252
    :cond_f
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmErcomSpecific:Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;

    return-object v0
.end method

.method private getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_10

    .line 566
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 568
    :cond_10
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 4
    .param p1, "errorcode"    # I

    .line 2867
    new-instance v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object v0
.end method

.method private getResponseParcel(I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 4
    .param p1, "errorcode"    # I
    .param p2, "data"    # [B

    .line 2871
    new-instance v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object v0
.end method

.method private getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 5
    .param p1, "agentResponse"    # Landroid/os/Bundle;

    .line 2861
    const-string v0, "errorresponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2862
    .local v0, "errorcode":I
    const-string v1, "bytearrayresponse"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 2863
    .local v1, "data":[B
    new-instance v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object v2
.end method

.method private getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "storageName"    # Ljava/lang/String;

    .line 4123
    if-eqz p1, :cond_11

    .line 4124
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4125
    .local v0, "pkgs":[Ljava/lang/String;
    if-eqz v0, :cond_11

    array-length v1, v0

    if-lez v1, :cond_11

    .line 4126
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 4129
    .end local v0    # "pkgs":[Ljava/lang/String;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .registers 2

    monitor-enter p0

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_f

    .line 184
    const-string v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 186
    .end local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :cond_f
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 182
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUid0FromUid(II)I
    .registers 8
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 5628
    if-nez p2, :cond_3

    .line 5629
    return p1

    .line 5631
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getIntLen(I)I

    move-result v0

    .line 5632
    .local v0, "userIdLen":I
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getIntLen(I)I

    move-result v1

    .line 5633
    .local v1, "uidLen":I
    const/4 v2, 0x1

    .line 5634
    .local v2, "exp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    sub-int v4, v1, v0

    if-ge v3, v4, :cond_16

    .line 5635
    mul-int/lit8 v2, v2, 0xa

    .line 5634
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 5637
    .end local v3    # "i":I
    :cond_16
    mul-int/2addr v2, p2

    .line 5638
    rem-int v3, p1, v2

    return v3
.end method

.method private getuseridforuid(I)I
    .registers 3
    .param p1, "callingUid"    # I

    .line 1776
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1777
    .local v0, "callerUserId":I
    return v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 882
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 883
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 884
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_2a

    .line 885
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 886
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 887
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 889
    .end local v2    # "i":I
    :cond_2a
    return-object v1
.end method

.method private importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 32
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2573
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v10, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importKeyPairInternal "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "UcmService"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    .line 2576
    .local v12, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v13

    .line 2577
    .local v13, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v0, 0xe

    const-string v14, "errorresponse"

    const-string v15, "booleanresponse"

    const/4 v9, 0x0

    if-nez v13, :cond_50

    .line 2578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importKeyPairInternal : NULL agent for uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    invoke-virtual {v12, v15, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2580
    invoke-virtual {v12, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2581
    return-object v12

    .line 2583
    :cond_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "agent= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    new-instance v4, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v4, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v4

    .line 2587
    .local v16, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2588
    .local v4, "uid":I
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v8

    .line 2589
    .local v8, "uriuid":I
    const/4 v5, -0x1

    if-eq v8, v5, :cond_83

    .line 2590
    if-eq v4, v8, :cond_83

    .line 2591
    const/16 v6, 0x3e8

    if-ne v4, v6, :cond_83

    .line 2592
    move v4, v8

    move v7, v4

    goto :goto_84

    .line 2596
    :cond_83
    move v7, v4

    .end local v4    # "uid":I
    .local v7, "uid":I
    :goto_84
    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v6

    .line 2597
    .local v6, "user_id":I
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v4

    .line 2598
    .local v4, "uriresource":I
    if-ne v4, v5, :cond_8f

    const/4 v4, 0x1

    :cond_8f
    move v5, v4

    .line 2600
    .end local v4    # "uriresource":I
    .local v5, "uriresource":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2601
    .local v4, "argBundle":Landroid/os/Bundle;
    const-string v0, "ismdm"

    invoke-virtual {v4, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2603
    const-string v0, "ownerUid"

    const-string v9, "callerUid"

    move-object/from16 v17, v13

    .end local v13    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .local v17, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v13, "resource"

    move-object/from16 v18, v14

    const-string v14, "user_id"

    if-eqz v10, :cond_ff

    if-eqz v3, :cond_ff

    .line 2604
    move/from16 v19, v8

    .end local v8    # "uriuid":I
    .local v19, "uriuid":I
    const-string v8, "admin_id"

    move-object/from16 v20, v12

    const/4 v10, 0x0

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .local v20, "agentResponse":Landroid/os/Bundle;
    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v4, v9, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2605
    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2606
    const-string v0, "renew"

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2608
    const-string v0, "allow_wifi"

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 2609
    const/4 v0, 0x3

    invoke-virtual {v4, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d9

    .line 2611
    :cond_d5
    const/4 v0, 0x1

    invoke-virtual {v4, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2613
    :goto_d9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "userd id from MDM = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v3, v14, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    invoke-virtual {v3, v14, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2615
    const-string v0, "extraArgs"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_110

    .line 2603
    .end local v19    # "uriuid":I
    .end local v20    # "agentResponse":Landroid/os/Bundle;
    .restart local v8    # "uriuid":I
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    :cond_ff
    move/from16 v19, v8

    move-object/from16 v20, v12

    const/4 v10, 0x0

    .line 2617
    .end local v8    # "uriuid":I
    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .restart local v19    # "uriuid":I
    .restart local v20    # "agentResponse":Landroid/os/Bundle;
    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2618
    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2619
    invoke-virtual {v4, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2620
    invoke-virtual {v4, v14, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2623
    :goto_110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 2625
    .local v21, "id":J
    :try_start_114
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v12
    :try_end_122
    .catchall {:try_start_114 .. :try_end_122} :catchall_1ed

    move-object v10, v4

    .end local v4    # "argBundle":Landroid/os/Bundle;
    .local v10, "argBundle":Landroid/os/Bundle;
    move-object v4, v0

    move/from16 v23, v5

    .end local v5    # "uriresource":I
    .local v23, "uriresource":I
    move-object v5, v8

    move/from16 v24, v6

    .end local v6    # "user_id":I
    .local v24, "user_id":I
    move/from16 v25, v7

    .end local v7    # "uid":I
    .local v25, "uid":I
    move/from16 v8, p5

    move-object v0, v9

    const/4 v1, 0x0

    move-object v9, v12

    :try_start_130
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4
    :try_end_134
    .catchall {:try_start_130 .. :try_end_134} :catchall_1e3

    if-nez v4, :cond_16f

    .line 2626
    :try_start_136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! importKeyPairInternal is NOT allowed for URI = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14a
    .catchall {:try_start_136 .. :try_end_14a} :catchall_164

    .line 2627
    move-object/from16 v4, v20

    .end local v20    # "agentResponse":Landroid/os/Bundle;
    .local v4, "agentResponse":Landroid/os/Bundle;
    :try_start_14c
    invoke-virtual {v4, v15, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2628
    const/16 v0, 0xf

    move-object/from16 v5, v18

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_156
    .catchall {:try_start_14c .. :try_end_156} :catchall_15b

    .line 2629
    nop

    .line 2632
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2629
    return-object v4

    .line 2632
    :catchall_15b
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    move-object/from16 v6, v17

    goto/16 :goto_1fd

    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .restart local v20    # "agentResponse":Landroid/os/Bundle;
    :catchall_164
    move-exception v0

    move-object/from16 v4, v20

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    move-object/from16 v6, v17

    .end local v20    # "agentResponse":Landroid/os/Bundle;
    .restart local v4    # "agentResponse":Landroid/os/Bundle;
    goto/16 :goto_1fd

    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .restart local v20    # "agentResponse":Landroid/os/Bundle;
    :cond_16f
    move-object/from16 v5, v18

    move-object/from16 v4, v20

    .end local v20    # "agentResponse":Landroid/os/Bundle;
    .restart local v4    # "agentResponse":Landroid/os/Bundle;
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2633
    nop

    .line 2636
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "importKeyPairInternal KEY_RESOURCE_ID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, -0x2

    invoke-virtual {v10, v13, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "importKeyPairInternal KEY_USER_ID= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "importKeyPairInternal KEY_CALLER_UID= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_1d4

    .line 2643
    const-string v0, "agent is not bound"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    invoke-virtual {v4, v15, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2645
    const/16 v0, 0xe

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2646
    return-object v4

    .line 2648
    :cond_1d4
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    move-object/from16 v6, v17

    .end local v17    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .local v6, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v6, v0, v1, v5, v10}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 2632
    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .end local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v17    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v20    # "agentResponse":Landroid/os/Bundle;
    :catchall_1e3
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    move-object/from16 v6, v17

    move-object/from16 v4, v20

    .end local v17    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v20    # "agentResponse":Landroid/os/Bundle;
    .restart local v4    # "agentResponse":Landroid/os/Bundle;
    .restart local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_1fd

    .end local v10    # "argBundle":Landroid/os/Bundle;
    .end local v23    # "uriresource":I
    .end local v24    # "user_id":I
    .end local v25    # "uid":I
    .local v4, "argBundle":Landroid/os/Bundle;
    .restart local v5    # "uriresource":I
    .local v6, "user_id":I
    .restart local v7    # "uid":I
    .restart local v17    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v20    # "agentResponse":Landroid/os/Bundle;
    :catchall_1ed
    move-exception v0

    move-object/from16 v1, p2

    move-object v10, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v6, v17

    move-object/from16 v4, v20

    move-object/from16 v5, p3

    .end local v5    # "uriresource":I
    .end local v7    # "uid":I
    .end local v17    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v20    # "agentResponse":Landroid/os/Bundle;
    .local v4, "agentResponse":Landroid/os/Bundle;
    .local v6, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v10    # "argBundle":Landroid/os/Bundle;
    .restart local v23    # "uriresource":I
    .restart local v24    # "user_id":I
    .restart local v25    # "uid":I
    :goto_1fd
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2633
    throw v0
.end method

.method private installCACertforCreateSecureChannel()V
    .registers 20

    .line 1340
    move-object/from16 v1, p0

    const-string v0, "location"

    const-string v2, "alias"

    const-string v3, "userId"

    const-string v4, "UcmService"

    const/4 v5, 0x0

    .line 1341
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1344
    .local v6, "ois":Ljava/io/ObjectInputStream;
    :try_start_c
    filled-new-array {v3, v2, v0}, [Ljava/lang/String;

    move-result-object v7

    .line 1345
    .local v7, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1346
    .local v8, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "UniversalCredentialCACertificateTable"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v11, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move-object v8, v9

    .line 1349
    if-eqz v8, :cond_bf

    .line 1350
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 1351
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->restoreCACertificate()V

    goto/16 :goto_c2

    .line 1354
    :cond_28
    const/4 v9, 0x0

    .line 1355
    .local v9, "certFile":Landroid/util/AtomicFile;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_be

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 1356
    .local v11, "value":Landroid/content/ContentValues;
    if-nez v11, :cond_46

    .line 1357
    const-string v12, "value is null, continue..."

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    goto/16 :goto_b6

    .line 1360
    :cond_46
    invoke-virtual {v11, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1361
    .local v12, "intUserId":Ljava/lang/Integer;
    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1362
    .local v13, "alias":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1363
    .local v14, "certLocation":Ljava/lang/String;
    if-eqz v12, :cond_ac

    if-eqz v13, :cond_ac

    if-nez v14, :cond_5d

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    goto :goto_b0

    .line 1367
    :cond_5d
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1368
    .local v15, "userId":I
    move-object/from16 v16, v0

    new-instance v0, Landroid/util/AtomicFile;

    move-object/from16 v17, v2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v9, v0

    .line 1369
    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v5, v0

    .line 1370
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    .line 1371
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1372
    .local v0, "data":[B
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v2, v13, v0, v15}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACerttificate(Ljava/lang/String;[BI)Z

    move-result v2

    .line 1373
    .local v2, "savedInTIMA":Z
    move-object/from16 v18, v0

    .end local v0    # "data":[B
    .local v18, "data":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installCACertforCreateSecureChannel -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1376
    const/4 v5, 0x0

    .line 1377
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    .line 1378
    const/4 v6, 0x0

    .line 1379
    .end local v2    # "savedInTIMA":Z
    .end local v11    # "value":Landroid/content/ContentValues;
    .end local v12    # "intUserId":Ljava/lang/Integer;
    .end local v13    # "alias":Ljava/lang/String;
    .end local v14    # "certLocation":Ljava/lang/String;
    .end local v15    # "userId":I
    .end local v18    # "data":[B
    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    goto :goto_2d

    .line 1363
    .restart local v11    # "value":Landroid/content/ContentValues;
    .restart local v12    # "intUserId":Ljava/lang/Integer;
    .restart local v13    # "alias":Ljava/lang/String;
    .restart local v14    # "certLocation":Ljava/lang/String;
    :cond_ac
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 1364
    :goto_b0
    const-string v0, "invalid parameter error, continue..."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    nop

    .line 1355
    .end local v11    # "value":Landroid/content/ContentValues;
    .end local v12    # "intUserId":Ljava/lang/Integer;
    .end local v13    # "alias":Ljava/lang/String;
    .end local v14    # "certLocation":Ljava/lang/String;
    :goto_b6
    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    goto/16 :goto_2d

    .line 1380
    .end local v9    # "certFile":Landroid/util/AtomicFile;
    :cond_be
    goto :goto_c2

    .line 1383
    :cond_bf
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->restoreCACertificate()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c2} :catch_d1
    .catchall {:try_start_c .. :try_end_c2} :catchall_f7

    .line 1388
    .end local v7    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_c2
    if-eqz v6, :cond_c9

    :try_start_c4
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c7} :catch_c8

    goto :goto_c9

    :catch_c8
    move-exception v0

    .line 1389
    :cond_c9
    :goto_c9
    if-eqz v5, :cond_f6

    :try_start_cb
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_cf

    goto :goto_f6

    :catch_cf
    move-exception v0

    .line 1390
    goto :goto_f6

    .line 1385
    :catch_d1
    move-exception v0

    .line 1386
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The exception occurs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_d2 .. :try_end_ea} :catchall_f7

    .line 1388
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_f1

    :try_start_ec
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ef} :catch_f0

    goto :goto_f1

    :catch_f0
    move-exception v0

    .line 1389
    :cond_f1
    :goto_f1
    if-eqz v5, :cond_f6

    :try_start_f3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f6} :catch_cf

    .line 1391
    :cond_f6
    :goto_f6
    return-void

    .line 1388
    :catchall_f7
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_100

    :try_start_fb
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fe} :catch_ff

    goto :goto_100

    :catch_ff
    move-exception v0

    .line 1389
    :cond_100
    :goto_100
    if-eqz v5, :cond_107

    :try_start_102
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_106

    goto :goto_107

    :catch_106
    move-exception v0

    .line 1390
    :cond_107
    :goto_107
    throw v1
.end method

.method private isActivePlugin(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 523
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UcmService"

    if-eqz v0, :cond_15

    .line 524
    const-string v0, "No active agent exist"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return v1

    .line 527
    :cond_15
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 528
    .local v3, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v4, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    if-ne v4, p1, :cond_47

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "it is active plugin uid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v0, 0x1

    return v0

    .line 532
    .end local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_47
    goto :goto_1f

    .line 533
    :cond_48
    return v1
.end method

.method private isCallFromSystem(I)Z
    .registers 11
    .param p1, "adminUid"    # I

    .line 5398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCallFromSystem adminUid-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    const/4 v0, 0x0

    .line 5401
    .local v0, "status":Z
    :try_start_17
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5402
    .local v2, "userId":I
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 5403
    .local v3, "pkgs":[Ljava/lang/String;
    if-eqz v3, :cond_57

    .line 5404
    array-length v4, v3

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v4, :cond_57

    aget-object v6, v3, v5

    .line 5405
    .local v6, "pkgName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCallFromSystem pkgName-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5406
    sget-object v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v6, v2}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->isSystemApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 5407
    const-string v4, "isCallFromSystem match found...."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_52} :catch_58

    .line 5408
    const/4 v0, 0x1

    .line 5409
    goto :goto_57

    .line 5404
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 5415
    .end local v2    # "userId":I
    .end local v3    # "pkgs":[Ljava/lang/String;
    :cond_57
    :goto_57
    goto :goto_71

    .line 5413
    :catch_58
    move-exception v2

    .line 5414
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5416
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallFromSystem status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    return v0
.end method

.method private isGoodBinaryForEseCommTASelfTest()Z
    .registers 5

    .line 403
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 404
    .local v0, "isEng":Z
    const-string v1, "ro.product_ship"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 405
    .local v1, "isNoShip":Z
    const-string v2, "ro.config.tima"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 408
    .local v2, "isTimaEnabled":Z
    const/4 v3, 0x0

    if-nez v2, :cond_2a

    .line 409
    return v3

    .line 411
    :cond_2a
    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    const/4 v3, 0x1

    :cond_2f
    return v3
.end method

.method private isGoodConfigForEseCommTA()Z
    .registers 6

    .line 421
    const-string v0, "nfc.product.support.ese"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 422
    .local v0, "isEseSupported":Z
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUCMODEEnabledWithPropFile()Z

    move-result v1

    .line 425
    .local v1, "isUcmOdeEnabled":Z
    if-eqz v1, :cond_16

    .line 426
    const/4 v2, 0x0

    .local v2, "isGood":Z
    goto :goto_21

    .line 428
    .end local v2    # "isGood":Z
    :cond_16
    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    goto :goto_20

    .line 429
    :cond_1a
    iget-boolean v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    nop

    .line 432
    .restart local v2    # "isGood":Z
    :goto_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGoodConfigForEseCommTA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UcmService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return v2
.end method

.method private isGoodDeviceForEseCommTA()Z
    .registers 3

    .line 415
    const-string v0, "UcmService"

    const-string v1, "isGoodDeviceForEseCommTA: false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method private isPluginUsedInOtherUser(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "currentUserId"    # I
    .param p3, "configuratorId"    # I

    .line 685
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginUsedInOtherUser(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method private isPluginUsedInOtherUser(Ljava/lang/String;IIZ)Z
    .registers 16
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "currentUserId"    # I
    .param p3, "configuratorId"    # I
    .param p4, "checkConfiguratorId"    # Z

    .line 690
    const-string v0, "UcmService"

    const-string v1, "isPluginUsedInOtherUser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v1, 0x0

    if-eqz p1, :cond_b1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_b1

    if-ne p3, v2, :cond_11

    goto/16 :goto_b1

    .line 695
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 696
    .local v2, "mUm":Landroid/os/UserManager;
    if-nez v2, :cond_1e

    .line 697
    return v1

    .line 699
    :cond_1e
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 700
    .local v3, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v3, :cond_25

    .line 701
    return v1

    .line 703
    :cond_25
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 704
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v5, :cond_38

    .line 705
    goto :goto_29

    .line 706
    :cond_38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCM keyguard check "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v6, :cond_58

    .line 709
    const-string v6, "skip current user"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    goto :goto_29

    .line 713
    :cond_58
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v6

    .line 714
    .local v6, "usedVendorName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidVendorName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 715
    const-string v7, "UCM keyguard is not enabled"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    goto :goto_29

    .line 719
    :cond_6a
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 720
    const-string v7, "this plugin is used in other user"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v7, 0x1

    if-nez p4, :cond_7e

    .line 723
    const-string v4, "skip check configurator. pluginUsedInOtherUser"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return v7

    .line 727
    :cond_7e
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v8
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_84} :catch_97

    .line 728
    .local v8, "usedConfigurator":Ljava/lang/String;
    const/4 v9, -0x1

    .line 730
    .local v9, "usedConfiguratorId":I
    :try_start_85
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_89} :catch_93
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_89} :catch_97

    move v9, v10

    .line 733
    nop

    .line 735
    if-ne p3, v9, :cond_95

    .line 736
    :try_start_8d
    const-string v4, "And it is enabled by same configurator"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_92} :catch_97

    .line 738
    return v7

    .line 731
    :catch_93
    move-exception v7

    .line 732
    .local v7, "e":Ljava/lang/NumberFormatException;
    goto :goto_29

    .line 741
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "usedVendorName":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "usedConfigurator":Ljava/lang/String;
    .end local v9    # "usedConfiguratorId":I
    :cond_95
    goto :goto_29

    .line 744
    .end local v2    # "mUm":Landroid/os/UserManager;
    .end local v3    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_96
    goto :goto_b0

    .line 742
    :catch_97
    move-exception v2

    .line 743
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_b0
    return v1

    .line 692
    :cond_b1
    :goto_b1
    return v1
.end method

.method private isUCMKeyguardEnabled(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 354
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "keyguardUsed":Ljava/lang/String;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keyguard is enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v1, 0x1

    return v1

    .line 359
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method private isVaildSCPType(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 4715
    if-ltz p1, :cond_9

    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_9

    .line 4716
    const/4 v0, 0x1

    return v0

    .line 4717
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private isVaildStorageType(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 4709
    if-ltz p1, :cond_9

    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_9

    .line 4710
    const/4 v0, 0x1

    return v0

    .line 4711
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private isValidFormFactor(Ljava/lang/String;)Z
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 773
    const/4 v0, 0x0

    .line 774
    .local v0, "status":Z
    if-eqz p1, :cond_61

    .line 775
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_80

    :cond_b
    goto :goto_5b

    :sswitch_c
    const-string v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x7

    goto :goto_5b

    :sswitch_16
    const-string v2, "eSE1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    goto :goto_5b

    :sswitch_20
    const-string v2, "SIM2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x4

    goto :goto_5b

    :sswitch_2a
    const-string v2, "SIM1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x3

    goto :goto_5b

    :sswitch_34
    const-string v2, "eSE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x0

    goto :goto_5b

    :sswitch_3e
    const-string v2, "SIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x2

    goto :goto_5b

    :sswitch_48
    const-string v2, "SD1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x6

    goto :goto_5b

    :sswitch_52
    const-string v2, "SD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x5

    :goto_5b
    packed-switch v1, :pswitch_data_a2

    .line 787
    const/4 v0, 0x0

    goto :goto_61

    .line 784
    :pswitch_60
    const/4 v0, 0x1

    .line 790
    :cond_61
    :goto_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidFormFactor type-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and status-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return v0

    :sswitch_data_80
    .sparse-switch
        0xa51 -> :sswitch_52
        0x14000 -> :sswitch_48
        0x140b7 -> :sswitch_3e
        0x18577 -> :sswitch_34
        0x26d65a -> :sswitch_2a
        0x26d65b -> :sswitch_20
        0x2f299a -> :sswitch_16
        0x6761d4f -> :sswitch_c
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method private isValidMsgType(I)Z
    .registers 5
    .param p1, "type"    # I

    .line 1299
    const/4 v0, 0x0

    .line 1300
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_28

    .line 1307
    const/4 v0, 0x0

    goto :goto_8

    .line 1304
    :pswitch_6
    const/4 v0, 0x1

    .line 1305
    nop

    .line 1309
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidMsgType type-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and status-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    return v0

    nop

    :pswitch_data_28
    .packed-switch 0xc8
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private isValidSCPProtocol(I)Z
    .registers 5
    .param p1, "protocolType"    # I

    .line 1283
    const/4 v0, 0x0

    .line 1284
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_28

    .line 1292
    const/4 v0, 0x0

    goto :goto_8

    .line 1289
    :pswitch_6
    const/4 v0, 0x1

    .line 1290
    nop

    .line 1294
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidSCPProtocol protocolType-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and status-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x64
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private isValidVendorName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "vendorName"    # Ljava/lang/String;

    .line 614
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 617
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 615
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method private listExposedProvidersInternal(Z)[Landroid/os/Bundle;
    .registers 10
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2988
    .local v0, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2990
    .local v1, "finalagents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 2991
    .local v3, "agent":Landroid/os/Bundle;
    const-string v4, "uniqueId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2992
    .local v4, "cs_id":Ljava/lang/String;
    const-string v5, "UcmService"

    if-eqz v4, :cond_5a

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    goto :goto_5a

    .line 2996
    :cond_35
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 2997
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! Obscure CS agent bundle. Skipping agent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    goto :goto_16

    .line 3000
    :cond_56
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3001
    .end local v3    # "agent":Landroid/os/Bundle;
    .end local v4    # "cs_id":Ljava/lang/String;
    goto :goto_16

    .line 2993
    .restart local v3    # "agent":Landroid/os/Bundle;
    .restart local v4    # "cs_id":Ljava/lang/String;
    :cond_5a
    :goto_5a
    const-string v6, "WARNING!!!! null/empty ID returned for agent bundle. Skipping agent."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    goto :goto_16

    .line 3002
    .end local v3    # "agent":Landroid/os/Bundle;
    .end local v4    # "cs_id":Ljava/lang/String;
    :cond_60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Bundle;

    return-object v2
.end method

.method private listProvidersInternal(Z)[Landroid/os/Bundle;
    .registers 16
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3006
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3007
    .local v6, "uid":I
    invoke-direct {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v7

    .line 3008
    .local v7, "user_id":I
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v8, "UcmService"

    if-nez v0, :cond_1d

    .line 3009
    const-string v0, "listProvidersInternal:No activeAgent"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    const/4 v0, 0x0

    return-object v0

    .line 3012
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listProvidersInternal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and ismdmcaller-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 3014
    .local v9, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 3015
    .local v11, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_6b

    .line 3016
    goto :goto_5b

    .line 3019
    :cond_6b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3021
    .local v12, "id":J
    if-nez p1, :cond_9a

    :try_start_71
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v5, 0x0

    move-object v1, v11

    move v2, v7

    move v3, v6

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9a

    .line 3022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING!!!! access NOT allowed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_71 .. :try_end_96} :catchall_a7

    .line 3031
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3023
    goto :goto_5b

    .line 3027
    :cond_9a
    :try_start_9a
    invoke-direct {p0, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v0

    .line 3028
    .local v0, "cs":Landroid/os/Bundle;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_a7

    .line 3031
    nop

    .end local v0    # "cs":Landroid/os/Bundle;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3032
    nop

    .line 3033
    .end local v11    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v12    # "id":J
    goto :goto_5b

    .line 3031
    .restart local v11    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v12    # "id":J
    :catchall_a7
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3032
    throw v0

    .line 3034
    .end local v11    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v12    # "id":J
    :cond_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listProviders filtered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    return-object v0
.end method

.method private processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z
    .registers 12
    .param p1, "adminId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAdminConfigRequest is called...adminId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uri-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v0, 0x1

    .line 817
    .local v0, "status":Z
    if-eqz p3, :cond_da

    .line 818
    :try_start_21
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "pluginName":Ljava/lang/String;
    const-string v3, "applet_location"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 820
    .local v3, "appletLocation":Ljava/lang/String;
    const-string v4, "applet_id"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 821
    .local v4, "aid":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processAdminConfigRequest is called...appletLocation-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", pluginName-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidFormFactor(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 824
    const-string v5, "reset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 825
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 826
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processAdminConfigRequest removed pluginName-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 830
    :cond_7d
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 831
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_8a
    new-instance v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    invoke-direct {v5, v3, v4, v2, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Ljava/lang/String;[BLjava/lang/String;I)V

    .line 834
    .local v5, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b0

    .line 835
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processAdminConfigRequest added pluginName-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .end local v5    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :cond_b0
    :goto_b0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_da

    .line 841
    :cond_b7
    if-eqz v3, :cond_da

    .line 842
    const/4 v0, 0x0

    .line 843
    const-string v5, "processAdminConfigRequest not valid form factor"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_bf} :catch_c0

    goto :goto_da

    .line 847
    .end local v2    # "pluginName":Ljava/lang/String;
    .end local v3    # "appletLocation":Ljava/lang/String;
    .end local v4    # "aid":[B
    :catch_c0
    move-exception v2

    .line 848
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    .line 849
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_da
    :goto_da
    nop

    .line 850
    :goto_db
    return v0
.end method

.method private readPersistentAppletsInfoLocked()V
    .registers 17

    .line 926
    move-object/from16 v1, p0

    const-string v2, "UcmService"

    const-string v0, "readPersistentAppletsInfoLocked is called..."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 928
    const-string v0, "mPersistentAppletInfoFile not exist..."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void

    .line 931
    :cond_1b
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 932
    :try_start_20
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_b9

    move-object v3, v0

    .line 933
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_27
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 934
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 935
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 936
    .local v5, "eventType":I
    :goto_33
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3f

    if-eq v5, v6, :cond_3f

    .line 938
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v5, v6

    goto :goto_33

    .line 940
    :cond_3f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 941
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "applets"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 942
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v5, v9

    .line 944
    :goto_50
    if-ne v5, v7, :cond_9b

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ne v9, v7, :cond_9b

    .line 945
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 946
    const-string v9, "applet"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 948
    const-string v9, "pluginName"

    invoke-interface {v0, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 949
    .local v9, "pluginName":Ljava/lang/String;
    const-string v10, "appletLocation"

    invoke-interface {v0, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 950
    .local v10, "appletLocation":Ljava/lang/String;
    const-string v11, "adminId"

    invoke-interface {v0, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 951
    .local v11, "adminId":Ljava/lang/String;
    const-string v12, "aid"

    invoke-interface {v0, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 953
    .local v12, "aid":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 954
    .local v13, "admin":I
    const/4 v14, 0x0

    .line 955
    .local v14, "aidByte":[B
    if-eqz v12, :cond_89

    .line 956
    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    move-object v14, v15

    .line 958
    :cond_89
    new-instance v15, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    invoke-direct {v15, v10, v14, v9, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Ljava/lang/String;[BLjava/lang/String;I)V

    .line 959
    .local v15, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    iget-object v4, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9b

    .line 960
    iget-object v4, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    .end local v9    # "pluginName":Ljava/lang/String;
    .end local v10    # "appletLocation":Ljava/lang/String;
    .end local v11    # "adminId":Ljava/lang/String;
    .end local v12    # "aid":Ljava/lang/String;
    .end local v13    # "admin":I
    .end local v14    # "aidByte":[B
    .end local v15    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :cond_9b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_9f
    .catchall {:try_start_27 .. :try_end_9f} :catchall_ab

    move v5, v4

    .line 965
    if-ne v5, v6, :cond_a3

    goto :goto_a5

    :cond_a3
    const/4 v4, 0x0

    goto :goto_50

    .line 967
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "eventType":I
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_a5
    :goto_a5
    if-eqz v3, :cond_aa

    :try_start_a7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_b9

    .line 969
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_aa
    goto :goto_d2

    .line 932
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_ab
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_b8

    :try_start_af
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_b8

    :catchall_b3
    move-exception v0

    move-object v5, v0

    :try_start_b5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :cond_b8
    :goto_b8
    throw v4
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b9} :catch_b9

    .line 967
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :catch_b9
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d2
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_166

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 972
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 973
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 974
    .local v5, "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentApplet  key-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentApplet  pluginName-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentApplet  AID-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-direct {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentApplet  appletLocation-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PersistentApplet  adminId-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    goto/16 :goto_dc

    .line 981
    :cond_166
    return-void
.end method

.method private refreshAgentList(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 766
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->refreshAgentList(Landroid/os/Bundle;)V

    .line 767
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 768
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerPackageReceiver()V

    .line 770
    :cond_15
    return-void
.end method

.method public static native registerHALService()I
.end method

.method private registerPackageReceiver()V
    .registers 6

    .line 374
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 375
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 378
    .local v2, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.samsung.ucs.agent.ese"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 379
    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 381
    .end local v2    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_39
    goto :goto_19

    .line 382
    :cond_3a
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 383
    return-void
.end method

.method private registerPersonaObserver()V
    .registers 5

    .line 576
    const-string v0, "UcmService"

    :try_start_2
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 577
    const-string v1, "registerPersonaObserver is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getPersonaService()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;

    invoke-direct {v2, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$7;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    .line 610
    :cond_19
    goto :goto_33

    .line 608
    :catch_1a
    move-exception v1

    .line 609
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_33
    return-void
.end method

.method private removeMDMPolicies(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adminUid"    # I

    .line 654
    const-string v0, "UcmService"

    const-string v1, "removeMDMPolicies"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_a1

    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_18

    goto/16 :goto_a1

    .line 660
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", admin UID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V

    .line 663
    .local v1, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v2

    .line 664
    .local v2, "appPolicy":Lcom/samsung/android/knox/application/ApplicationPolicy;
    if-nez v2, :cond_4d

    .line 665
    const-string v3, "Failed to get APP Policy"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-void

    .line 668
    :cond_4d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v4

    .line 673
    .local v4, "status":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeMDMPolicies removePackagesFromForceStopBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearCacheBlackList(Ljava/util/List;)Z

    move-result v4

    .line 676
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeMDMPolicies removePackagesFromClearCacheBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromClearDataBlackList(Ljava/util/List;)Z

    move-result v4

    .line 679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeMDMPolicies removePackagesFromClearDataBlackList status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationEnabled(Ljava/lang/String;)V

    .line 682
    return-void

    .line 656
    .end local v1    # "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .end local v2    # "appPolicy":Lcom/samsung/android/knox/application/ApplicationPolicy;
    .end local v3    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "status":Z
    :cond_a1
    :goto_a1
    const-string v1, "invalid argument"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void
.end method

.method private restoreCACertificate()V
    .registers 11

    .line 1315
    const-string v0, "UcmService"

    const/4 v1, 0x0

    .line 1316
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 1319
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_4
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v3

    .line 1320
    .local v3, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    if-eqz v3, :cond_7d

    iget v4, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-eqz v4, :cond_7d

    iget-object v4, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    if-eqz v4, :cond_7d

    .line 1321
    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1322
    .local v4, "CertLoc":Ljava/lang/String;
    const-string v5, "********restoreCACertificate - started"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1324
    .local v5, "certFile":Landroid/util/AtomicFile;
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    move-object v1, v6

    .line 1325
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v6

    .line 1326
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1327
    .local v6, "data":[B
    sget-boolean v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v7, :cond_57

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreCACertificate - data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_57
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    iget-object v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-static {v8}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    iget v9, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v7, v8, v6, v9}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACerttificate(Ljava/lang/String;[BI)Z

    move-result v7

    .line 1329
    .local v7, "savedInTIMA":Z
    sget-boolean v8, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v8, :cond_7d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreCACertificate -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7d} :catch_8e
    .catchall {:try_start_4 .. :try_end_7d} :catchall_8c

    .line 1334
    .end local v3    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v4    # "CertLoc":Ljava/lang/String;
    .end local v5    # "certFile":Landroid/util/AtomicFile;
    .end local v6    # "data":[B
    .end local v7    # "savedInTIMA":Z
    :cond_7d
    if-eqz v2, :cond_84

    :try_start_7f
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_84

    :catch_83
    move-exception v0

    .line 1335
    :cond_84
    :goto_84
    if-eqz v1, :cond_b3

    :try_start_86
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_b3

    :catch_8a
    move-exception v0

    .line 1336
    goto :goto_b3

    .line 1334
    :catchall_8c
    move-exception v0

    goto :goto_b4

    .line 1331
    :catch_8e
    move-exception v3

    .line 1332
    .local v3, "e":Ljava/lang/Exception;
    :try_start_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The exception occurs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_8f .. :try_end_a7} :catchall_8c

    .line 1334
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_ae

    :try_start_a9
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_ae

    :catch_ad
    move-exception v0

    .line 1335
    :cond_ae
    :goto_ae
    if-eqz v1, :cond_b3

    :try_start_b0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b3} :catch_8a

    .line 1337
    :cond_b3
    :goto_b3
    return-void

    .line 1334
    :goto_b4
    if-eqz v2, :cond_bb

    :try_start_b6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_bb

    :catch_ba
    move-exception v3

    .line 1335
    :cond_bb
    :goto_bb
    if-eqz v1, :cond_c2

    :try_start_bd
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_c2

    :catch_c1
    move-exception v3

    .line 1336
    :cond_c2
    :goto_c2
    throw v0
.end method

.method private runSefTestForEseCommTA()V
    .registers 5

    .line 439
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isGoodBinaryForEseCommTASelfTest()Z

    move-result v0

    const-string v1, "UcmService"

    if-nez v0, :cond_e

    .line 440
    const-string v0, "runSefTestForEseCommTA: isGoodBinaryForEseCommTASelfTest: false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 444
    :cond_e
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isGoodDeviceForEseCommTA()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 445
    const-string v0, "runSefTestForEseCommTA: isGoodDeviceForEseCommTA: false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void

    .line 449
    :cond_1a
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isGoodConfigForEseCommTA()Z

    move-result v0

    if-nez v0, :cond_26

    .line 450
    const-string v0, "runSefTestForEseCommTA: isGoodConfigForEseCommTA: false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void

    .line 455
    :cond_26
    :try_start_26
    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$5;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$5;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    .line 473
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$5;->start()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_2f

    .line 476
    goto :goto_48

    .line 474
    :catch_2f
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_48
    return-void
.end method

.method private saveTempOdeKey(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Ljava/lang/String;)I
    .registers 14
    .param p1, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4496
    const-string v0, "UcmService"

    const/4 v1, 0x0

    .line 4498
    .local v1, "esecommAdapter":Lcom/sec/esecomm/EsecommAdapter;
    :try_start_3
    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_6c

    move-object v1, v2

    .line 4502
    nop

    .line 4505
    const-string v2, "security.ucm_ese_applet_installed"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4506
    .local v2, "defaultAppletProp":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setAppletInstalled()V

    .line 4509
    invoke-direct {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getOdeVendorSpecific(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;->getDeks(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    move-result-object v3

    .line 4510
    .local v3, "data":Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;
    iget v4, v3, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->errorCode:I

    .line 4511
    .local v4, "errorCode":I
    if-eqz v4, :cond_24

    .line 4512
    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setAppletInstalled(Ljava/lang/String;)V

    .line 4513
    return v4

    .line 4515
    :cond_24
    iget-object v5, v3, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->wrappedDek:[B

    .line 4516
    .local v5, "pluginWrappedK0":[B
    iget-object v6, v3, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->dek:[B

    .line 4517
    .local v6, "unwrappedK0":[B
    const/16 v7, 0x12

    if-eqz v6, :cond_63

    if-nez v5, :cond_2f

    goto :goto_63

    .line 4524
    :cond_2f
    invoke-virtual {v1, v6}, Lcom/sec/esecomm/EsecommAdapter;->saveODEKey([B)[B

    move-result-object v8

    .line 4525
    .local v8, "tzResultDek":[B
    if-nez v8, :cond_3e

    .line 4526
    const-string v9, "ERROR: failed to wrap dek"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4527
    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setAppletInstalled(Ljava/lang/String;)V

    .line 4528
    return v7

    .line 4531
    :cond_3e
    invoke-virtual {v1, v5}, Lcom/sec/esecomm/EsecommAdapter;->saveODEKey([B)[B

    move-result-object v9

    .line 4532
    .local v9, "tzResultpluginWrappedK0":[B
    if-nez v9, :cond_4d

    .line 4533
    const-string v10, "ERROR: failed to wrap pluginWrappedK0"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4534
    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setAppletInstalled(Ljava/lang/String;)V

    .line 4535
    return v7

    .line 4539
    :cond_4d
    const-string v0, "/efs/sec_efs/tz_esecomm"

    const-string v10, "ucm_ode_key"

    invoke-static {v8, v0, v10}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->saveDataToFile([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_58

    .line 4540
    return v7

    .line 4542
    :cond_58
    const-string v10, "ucm_ode_key2"

    invoke-static {v9, v0, v10}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->saveDataToFile([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 4543
    return v7

    .line 4545
    :cond_61
    const/4 v0, 0x0

    return v0

    .line 4518
    .end local v8    # "tzResultDek":[B
    .end local v9    # "tzResultpluginWrappedK0":[B
    :cond_63
    :goto_63
    const-string v8, "ERROR: key is null"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setAppletInstalled(Ljava/lang/String;)V

    .line 4520
    return v7

    .line 4499
    .end local v2    # "defaultAppletProp":Ljava/lang/String;
    .end local v3    # "data":Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;
    .end local v4    # "errorCode":I
    .end local v5    # "pluginWrappedK0":[B
    .end local v6    # "unwrappedK0":[B
    :catch_6c
    move-exception v2

    .line 4500
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    const/16 v0, 0x18

    return v0
.end method

.method private sendRefreshFinishIntent(I)V
    .registers 10
    .param p1, "callingUid"    # I

    .line 5590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRefreshFinishIntent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5591
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v0

    .line 5592
    .local v0, "callingUserId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRefreshFinishIntent calling user Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5593
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.UCM_REFRESH_AGENT_DONE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5595
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 5597
    .local v3, "pkgs":[Ljava/lang/String;
    :try_start_36
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3c} :catch_3e

    move-object v3, v4

    .line 5600
    goto :goto_57

    .line 5598
    :catch_3e
    move-exception v4

    .line 5599
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The exception occurs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5602
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_57
    if-nez v3, :cond_5f

    .line 5603
    const-string v4, "Failed to find callingUid package"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5604
    return-void

    .line 5607
    :cond_5f
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_60
    array-length v5, v3

    if-ge v4, v5, :cond_7d

    .line 5608
    aget-object v5, v3, v4

    .line 5609
    .local v5, "callingPackage":Ljava/lang/String;
    if-nez v5, :cond_6d

    .line 5610
    const-string v6, "calling package is eampty, so continue..."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5611
    goto :goto_7a

    .line 5613
    :cond_6d
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5614
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5607
    .end local v5    # "callingPackage":Ljava/lang/String;
    :goto_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 5616
    .end local v4    # "i":I
    :cond_7d
    return-void
.end method

.method private sendStateChangeBroadcast(ILjava/lang/String;)V
    .registers 12
    .param p1, "state"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .line 3428
    const-string v0, "KnoxKeyguardReceiver"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3429
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3430
    .local v2, "csname":Ljava/lang/String;
    const-string v3, "UCS_STATE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3431
    const-string v3, "UCS_CSNAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast CSNAME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UcmService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3436
    :try_start_34
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v3, :cond_44

    .line 3437
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 3440
    :cond_44
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    .line 3441
    .local v3, "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3442
    .local v5, "id":Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send personaId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.knox.kss"

    const-string v8, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3445
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_89} :catch_8b

    .line 3446
    .end local v5    # "id":Ljava/lang/Integer;
    goto :goto_4f

    .line 3449
    .end local v3    # "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8a
    goto :goto_a4

    .line 3447
    :catch_8b
    move-exception v3

    .line 3448
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The exception occurs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_a4
    return-void
.end method

.method private sendUCMKeyguardIntent(ZILjava/lang/String;)V
    .registers 9
    .param p1, "set"    # Z
    .param p2, "userId"    # I
    .param p3, "storagePkg"    # Ljava/lang/String;

    .line 4133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUCMKeyguardIntent set - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storage-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    :try_start_26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4136
    .local v0, "ucmKeyguardIntent":Landroid/content/Intent;
    if-eqz p1, :cond_33

    .line 4137
    const-string v2, "com.samsung.android.knox.intent.action.UCM_KEYGUARD_SET"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_38

    .line 4139
    :cond_33
    const-string v2, "com.samsung.android.knox.intent.action.UCM_KEYGUARD_UNSET"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4141
    :goto_38
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4142
    .local v2, "data":Landroid/os/Bundle;
    const-string v3, "userId"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4143
    const-string v3, "package_name"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4144
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4145
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4146
    const-string v3, "sendUCMKeyguardIntent intent sent to all..."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_56} :catch_58

    .line 4149
    nop

    .end local v0    # "ucmKeyguardIntent":Landroid/content/Intent;
    .end local v2    # "data":Landroid/os/Bundle;
    goto :goto_71

    .line 4147
    :catch_58
    move-exception v0

    .line 4148
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_71
    return-void
.end method

.method private setAppletInstalled()V
    .registers 1

    .line 5645
    return-void
.end method

.method private setAppletInstalled(Ljava/lang/String;)V
    .registers 2
    .param p1, "appletProp"    # Ljava/lang/String;

    .line 5651
    return-void
.end method

.method private setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "vendor"    # Ljava/lang/String;
    .param p3, "ownerId"    # Ljava/lang/String;

    .line 4088
    const-string v0, "keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyguardStorageForCurrentUser called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardInfoFile(I)Landroid/util/AtomicFile;

    move-result-object v1

    .line 4090
    .local v1, "keguardInfoFile":Landroid/util/AtomicFile;
    :try_start_1c
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_83

    .line 4091
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4092
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4093
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4094
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 4095
    invoke-interface {v4, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4096
    const-string v6, "vendor"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4097
    const-string v6, "name"

    invoke-interface {v4, v7, v6, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4098
    const-string v6, "owner"

    invoke-interface {v4, v7, v6, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4099
    invoke-interface {v4, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4100
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4101
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 4102
    if-nez p1, :cond_70

    .line 4103
    const-string v0, "none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5b
    .catchall {:try_start_20 .. :try_end_5b} :catchall_77

    const-string v6, "persist.keyguard.ucs"

    if-ne v0, v5, :cond_68

    .line 4104
    :try_start_5f
    const-string v0, "false"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4105
    invoke-direct {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor(Ljava/lang/String;)V

    goto :goto_70

    .line 4107
    :cond_68
    const-string v0, "true"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4108
    invoke-direct {p0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_77

    .line 4111
    :cond_70
    :goto_70
    nop

    .line 4112
    if-eqz v3, :cond_76

    :try_start_73
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_83

    .line 4111
    :cond_76
    return v5

    .line 4090
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_77
    move-exception v0

    if-eqz v3, :cond_82

    :try_start_7a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_82

    :catchall_7e
    move-exception v4

    :try_start_7f
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "keguardInfoFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .end local p1    # "userId":I
    .end local p2    # "vendor":Ljava/lang/String;
    .end local p3    # "ownerId":Ljava/lang/String;
    :cond_82
    :goto_82
    throw v0
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_83} :catch_83

    .line 4112
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "keguardInfoFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "vendor":Ljava/lang/String;
    .restart local p3    # "ownerId":Ljava/lang/String;
    :catch_83
    move-exception v0

    .line 4113
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4115
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return v0
.end method

.method private setODEConfigInFile(I)V
    .registers 8
    .param p1, "config"    # I

    .line 4721
    const-string v0, "The exception occurs "

    const-string v1, "UcmService"

    const-string v2, "setODEConfigInFile"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/sec_efs"

    const-string v4, "odeConfig"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4723
    .local v2, "odeConfigFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "existFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4724
    :try_start_2a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2f} :catch_58
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_40

    .line 4725
    .local v3, "fis":Ljava/io/FileOutputStream;
    :try_start_2f
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_36

    .line 4726
    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_35} :catch_58
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_40

    goto :goto_6f

    .line 4724
    :catchall_36
    move-exception v4

    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception v5

    :try_start_3c
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "odeConfigFile":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .end local p1    # "config":I
    :goto_3f
    throw v4
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_40} :catch_58
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_40

    .line 4728
    .end local v3    # "fis":Ljava/io/FileOutputStream;
    .restart local v2    # "odeConfigFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local p1    # "config":I
    :catch_40
    move-exception v3

    .line 4729
    .local v3, "ie":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 4726
    .end local v3    # "ie":Ljava/io/IOException;
    :catch_58
    move-exception v3

    .line 4727
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_6f
    nop

    .line 4731
    :goto_70
    return-void
.end method

.method private showODEProgressNotification()V
    .registers 8

    .line 5513
    const-string v0, "UCM_ODE_NOTIFICATION"

    const-string v1, "UcmService"

    :try_start_4
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUCMODEEnabledWithPropFile()Z

    move-result v2

    if-nez v2, :cond_14

    .line 5514
    sget-boolean v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->DBG:Z

    if-eqz v0, :cond_13

    const-string v0, "UCM ODE is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5515
    :cond_13
    return-void

    .line 5517
    :cond_14
    const-string v2, "showODEProgressNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5518
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 5519
    .local v2, "notiMgr":Landroid/app/NotificationManager;
    if-nez v2, :cond_2b

    .line 5520
    const-string v0, "Failed to get Notification Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5521
    return-void

    .line 5523
    :cond_2b
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "UCM ODE Progress Notification"

    const/4 v5, 0x4

    invoke-direct {v3, v0, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 5525
    const-string v3, ""

    .line 5526
    .local v3, "message":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEVendorName()Ljava/lang/String;

    move-result-object v4

    .line 5527
    .local v4, "vendorName":Ljava/lang/String;
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5528
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5537
    .local v0, "notiBuilder":Landroid/app/Notification$Builder;
    const-string v5, "ODE Progress is done"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5538
    const v5, 0x108009b

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object v0, v5

    .line 5539
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040c73

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 5541
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object v0, v5

    .line 5543
    const/16 v5, 0x2328

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6c} :catch_6d

    .line 5546
    .end local v0    # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v2    # "notiMgr":Landroid/app/NotificationManager;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "vendorName":Ljava/lang/String;
    goto :goto_86

    .line 5544
    :catch_6d
    move-exception v0

    .line 5545
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5547
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_86
    return-void
.end method

.method private unwrapDek(Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "wrappedDek"    # [B
    .param p3, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1660
    const-string v0, "errorresponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unwrapDek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1665
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_1d
    const-string v3, "unwrapDek"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_b4

    .line 1670
    nop

    .line 1672
    if-eqz p1, :cond_a5

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_30

    goto/16 :goto_a5

    .line 1678
    :cond_30
    if-nez p3, :cond_49

    .line 1679
    const-string v3, "boot_test"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v4, v3, :cond_41

    .line 1680
    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p3

    goto :goto_49

    .line 1682
    :cond_41
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object p3

    .line 1686
    :cond_49
    :goto_49
    const/16 v3, 0xe

    if-nez p3, :cond_5a

    .line 1687
    const-string v4, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1689
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1692
    :cond_5a
    invoke-virtual {p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v4

    if-nez v4, :cond_6d

    .line 1693
    const-string v4, "agent is not bound"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1695
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1698
    :cond_6d
    invoke-virtual {p3, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object v1

    .line 1699
    if-nez v1, :cond_88

    .line 1700
    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 1702
    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1703
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1705
    :cond_88
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1706
    .local v0, "errorcode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unwrapDek Response from plugin:  error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 1673
    .end local v0    # "errorcode":I
    :cond_a5
    :goto_a5
    const-string v3, "uri is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1675
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1666
    :catch_b4
    move-exception v3

    .line 1667
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1669
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method private updateKeyguardConfig(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 5421
    const-string v0, "UcmService"

    const-string v1, "updateKeyguardConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5423
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v1

    .line 5424
    .local v1, "keyguardUsed":Ljava/lang/String;
    if-eqz v1, :cond_15

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 5425
    :cond_15
    const-string v2, "remove useless keyguard config file"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/sec_efs"

    const-string v4, "keyguardConfig"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5427
    .local v2, "keyguardConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    .line 5428
    .local v3, "existFile":Z
    if-nez v3, :cond_2f

    .line 5429
    const-string v4, "keyguard config file does not exist"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 5431
    :cond_2f
    const-string v4, "keyguard config file exist so delete it"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5432
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_38

    .line 5437
    .end local v1    # "keyguardUsed":Ljava/lang/String;
    .end local v2    # "keyguardConfigFile":Ljava/io/File;
    .end local v3    # "existFile":Z
    :cond_37
    :goto_37
    goto :goto_51

    .line 5435
    :catch_38
    move-exception v1

    .line 5436
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_51
    return-void
.end method

.method private updateMDMPolicies(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMDMPolicies userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "vendorName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidVendorName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 626
    const-string v2, "UCM keyguard is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void

    .line 630
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCM keyguard is enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "onwerId":Ljava/lang/String;
    const/4 v3, -0x1

    .line 633
    .local v3, "configuratorId":I
    if-eqz v2, :cond_60

    .line 635
    :try_start_41
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_45} :catch_47

    move v3, v4

    .line 638
    goto :goto_60

    .line 636
    :catch_47
    move-exception v4

    .line 637
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_60
    :goto_60
    const/4 v4, -0x1

    if-ne v3, v4, :cond_69

    .line 642
    const-string v4, "UCM Keyguard parsing failed"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void

    .line 646
    :cond_69
    invoke-direct {p0, v0, p1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isPluginUsedInOtherUser(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_76

    .line 648
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "vendorPackageName":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->removeMDMPolicies(Ljava/lang/String;I)V

    .line 651
    .end local v1    # "vendorPackageName":Ljava/lang/String;
    :cond_76
    return-void
.end method

.method private updateSystemUIMonitor()V
    .registers 5

    .line 5574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0

    .line 5575
    .local v0, "vendor":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    if-eqz v1, :cond_28

    .line 5577
    :try_start_9
    invoke-interface {v1, v0}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;->setUCMKeyguardVendor(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    .line 5580
    goto :goto_28

    .line 5578
    :catch_d
    move-exception v1

    .line 5579
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5582
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_28
    :goto_28
    return-void
.end method

.method private updateSystemUIMonitor(Ljava/lang/String;)V
    .registers 5
    .param p1, "vendor"    # Ljava/lang/String;

    .line 5564
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    if-eqz v0, :cond_23

    .line 5566
    :try_start_4
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;->setUCMKeyguardVendor(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 5569
    goto :goto_23

    .line 5567
    :catch_8
    move-exception v0

    .line 5568
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The exception occurs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    :goto_23
    return-void
.end method

.method private verifyPassword(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 4747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyPassword : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4748
    const/4 v0, -0x1

    if-eqz p1, :cond_34

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_23

    goto :goto_34

    .line 4753
    :cond_23
    if-eqz p2, :cond_2e

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_2c

    goto :goto_2e

    .line 4760
    :cond_2c
    const/4 v0, 0x0

    return v0

    .line 4754
    :cond_2e
    :goto_2e
    const-string v2, "password is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4755
    return v0

    .line 4749
    :cond_34
    :goto_34
    const-string v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4750
    return v0
.end method

.method private writePersistentAppletsInfoLocked()V
    .registers 13

    .line 896
    const-string v0, "applet"

    const-string v1, "applets"

    const-string v2, "UcmService"

    const-string v3, "writePersistentAppletsInfoLocked is called..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :try_start_b
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_af

    .line 899
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_11
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 900
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 901
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 902
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 903
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_92

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 905
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 906
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 907
    .local v9, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Persistent  key-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-interface {v4, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 909
    const-string v10, "appletLocation"

    iget-object v11, v9, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-interface {v4, v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 910
    const-string v10, "pluginName"

    iget-object v11, v9, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-interface {v4, v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 911
    const-string v10, "adminId"

    iget v11, v9, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 912
    iget-object v10, v9, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    if-eqz v10, :cond_8d

    .line 913
    const-string v10, "aid"

    iget-object v11, v9, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-direct {p0, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 915
    :cond_8d
    invoke-interface {v4, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 916
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    goto :goto_36

    .line 917
    :cond_92
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 918
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 919
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9d
    .catchall {:try_start_11 .. :try_end_9d} :catchall_a3

    .line 920
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    if-eqz v3, :cond_a2

    :try_start_9f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_af

    .line 922
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_a2
    goto :goto_c8

    .line 898
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_a3
    move-exception v0

    if-eqz v3, :cond_ae

    :try_start_a6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    goto :goto_ae

    :catchall_aa
    move-exception v1

    :try_start_ab
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :cond_ae
    :goto_ae
    throw v0
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_af} :catch_af

    .line 920
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :catch_af
    move-exception v0

    .line 921
    .local v0, "ie":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v0    # "ie":Ljava/io/IOException;
    :goto_c8
    return-void
.end method


# virtual methods
.method public APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "apdu"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APDUCommand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3673
    .local v0, "agentResponse":Landroid/os/Bundle;
    const/16 v2, 0x10

    const-string v3, "errorresponse"

    if-eqz p1, :cond_bd

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_2c

    goto/16 :goto_bd

    .line 3679
    :cond_2c
    if-nez p2, :cond_37

    .line 3680
    const-string v4, "apdu is null"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3682
    return-object v0

    .line 3685
    :cond_37
    const/4 v2, 0x0

    .line 3686
    .local v2, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v4, "boot_test"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v5, v4, :cond_47

    .line 3687
    const-string v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    goto :goto_4f

    .line 3689
    :cond_47
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    .line 3692
    :goto_4f
    const/16 v4, 0xe

    if-nez v2, :cond_6f

    .line 3693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3695
    return-object v0

    .line 3698
    :cond_6f
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_96

    .line 3699
    new-instance v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v5}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3700
    .local v5, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3701
    iget-object v6, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3702
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 3705
    .end local v5    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_96
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_a5

    .line 3706
    const-string v5, "agent is not bound"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3708
    return-object v0

    .line 3711
    :cond_a5
    invoke-virtual {v2, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3712
    if-nez v0, :cond_bc

    .line 3713
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 3715
    const/16 v1, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3716
    return-object v0

    .line 3718
    :cond_bc
    return-object v0

    .line 3674
    .end local v2    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_bd
    :goto_bd
    const-string v4, "uri is empty"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3676
    return-object v0
.end method

.method public authenticatePin(Ljava/lang/String;)I
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3422
    const-string v0, "UcmService"

    const-string v1, "need to check authenticatePin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    const/4 v0, 0x0

    return v0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3570
    .local v0, "agentResponse":Landroid/os/Bundle;
    const/16 v2, 0x10

    const-string v3, "errorresponse"

    if-eqz p1, :cond_d8

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_2c

    goto/16 :goto_d8

    .line 3576
    :cond_2c
    if-eqz p2, :cond_cf

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v6, v5, :cond_36

    goto/16 :goto_cf

    .line 3582
    :cond_36
    if-eqz p3, :cond_c6

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_40

    goto/16 :goto_c6

    .line 3588
    :cond_40
    const/4 v2, 0x0

    .line 3589
    .local v2, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v4, "boot_test"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_50

    .line 3590
    const-string v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    goto :goto_58

    .line 3592
    :cond_50
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    .line 3595
    :goto_58
    const/16 v4, 0xe

    if-nez v2, :cond_78

    .line 3596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3598
    return-object v0

    .line 3601
    :cond_78
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_9f

    .line 3602
    new-instance v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v5}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3603
    .local v5, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3604
    iget-object v6, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3605
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 3608
    .end local v5    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_9f
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_ae

    .line 3609
    const-string v5, "agent is not bound"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3611
    return-object v0

    .line 3614
    :cond_ae
    invoke-virtual {v2, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3615
    if-nez v0, :cond_c5

    .line 3616
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 3618
    const/16 v1, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3619
    return-object v0

    .line 3622
    :cond_c5
    return-object v0

    .line 3583
    .end local v2    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_c6
    :goto_c6
    const-string v4, "newPin is empty"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3585
    return-object v0

    .line 3577
    :cond_cf
    :goto_cf
    const-string v4, "oldPin is empty"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3579
    return-object v0

    .line 3571
    :cond_d8
    :goto_d8
    const-string v4, "uri is empty"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3573
    return-object v0
.end method

.method public configureKeyguardSettings(ILjava/lang/String;)Z
    .registers 33
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .line 4153
    move-object/from16 v7, p0

    move/from16 v8, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureKeyguardSettings userId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "UcmService"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4154
    const/4 v0, 0x0

    .line 4155
    .local v0, "result":Z
    const/16 v10, 0xa

    const-string v11, "The exception occurs "

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz p2, :cond_1f4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    goto/16 :goto_1f4

    .line 4191
    :cond_2b
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4192
    .local v14, "csName":Ljava/lang/String;
    iget-object v1, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_39
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1df

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 4193
    .local v6, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v1, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1db

    .line 4194
    iget-object v1, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v1, :cond_1d9

    .line 4195
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminForEnforcedCredentialStorageAsUser(I)I

    move-result v5

    .line 4196
    .local v5, "configuratorId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuratorId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    const/4 v1, -0x1

    if-ne v5, v1, :cond_7b

    .line 4198
    const-string v1, "enforced null"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    return v13

    .line 4201
    :cond_7b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v8, v14, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 4202
    .end local v0    # "result":Z
    .local v16, "result":Z
    if-eqz v16, :cond_12a

    .line 4203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 4205
    .local v17, "id2":J
    :try_start_96
    invoke-direct {v7, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9a} :catch_106
    .catchall {:try_start_96 .. :try_end_9a} :catchall_100

    .line 4206
    .local v0, "storagePkgName":Ljava/lang/String;
    if-nez v8, :cond_b7

    .line 4207
    const/4 v2, 0x1

    const/16 v19, -0x1

    move-object/from16 v1, p0

    move v3, v5

    move/from16 v4, p1

    move/from16 v20, v5

    .end local v5    # "configuratorId":I
    .local v20, "configuratorId":I
    move-object v5, v14

    move-object/from16 v21, v6

    .end local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .local v21, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    move/from16 v6, v19

    :try_start_ab
    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    move-result v1

    move/from16 v16, v1

    .end local v16    # "result":Z
    .local v1, "result":Z
    goto :goto_d1

    .line 4235
    .end local v0    # "storagePkgName":Ljava/lang/String;
    .end local v1    # "result":Z
    .restart local v16    # "result":Z
    :catchall_b2
    move-exception v0

    goto/16 :goto_126

    .line 4232
    :catch_b5
    move-exception v0

    goto :goto_10b

    .line 4208
    .end local v20    # "configuratorId":I
    .end local v21    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v0    # "storagePkgName":Ljava/lang/String;
    .restart local v5    # "configuratorId":I
    .restart local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_b7
    move/from16 v20, v5

    move-object/from16 v21, v6

    .end local v5    # "configuratorId":I
    .end local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v20    # "configuratorId":I
    .restart local v21    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-lt v8, v10, :cond_d1

    .line 4210
    iget-object v1, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 4212
    .local v3, "ownerUid":I
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v14

    move/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z

    move-result v1

    move/from16 v16, v1

    .line 4214
    .end local v3    # "ownerUid":I
    :cond_d1
    :goto_d1
    iget-object v1, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4215
    invoke-virtual {v1, v12, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v1

    if-ne v12, v1, :cond_db

    move v1, v12

    goto :goto_dc

    :cond_db
    move v1, v13

    .line 4216
    .local v1, "fingerprint":Z
    :goto_dc
    iget-object v2, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 4217
    const/16 v3, 0x100

    invoke-virtual {v2, v3, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v2

    if-ne v12, v2, :cond_e8

    move v2, v12

    goto :goto_e9

    :cond_e8
    move v2, v13

    .line 4218
    .local v2, "face":Z
    :goto_e9
    if-eqz v1, :cond_f0

    .line 4219
    iget-object v4, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v12, v13, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 4223
    :cond_f0
    if-eqz v2, :cond_f7

    .line 4224
    iget-object v4, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3, v13, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    .line 4228
    :cond_f7
    invoke-direct {v7, v12, v8, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendUCMKeyguardIntent(ZILjava/lang/String;)V

    .line 4230
    if-nez v8, :cond_ff

    .line 4231
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->disableAutoFactoryReset()V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ff} :catch_b5
    .catchall {:try_start_ab .. :try_end_ff} :catchall_b2

    .line 4235
    .end local v0    # "storagePkgName":Ljava/lang/String;
    .end local v1    # "fingerprint":Z
    .end local v2    # "face":Z
    :cond_ff
    goto :goto_122

    .end local v20    # "configuratorId":I
    .end local v21    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v5    # "configuratorId":I
    .restart local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :catchall_100
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v21, v6

    .end local v5    # "configuratorId":I
    .end local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v20    # "configuratorId":I
    .restart local v21    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_126

    .line 4232
    .end local v20    # "configuratorId":I
    .end local v21    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v5    # "configuratorId":I
    .restart local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :catch_106
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v21, v6

    .line 4233
    .end local v5    # "configuratorId":I
    .end local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "configuratorId":I
    .restart local v21    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_10b
    :try_start_10b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_10b .. :try_end_121} :catchall_b2

    .line 4235
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_122
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4236
    goto :goto_12e

    .line 4235
    :goto_126
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4236
    throw v0

    .line 4202
    .end local v17    # "id2":J
    .end local v20    # "configuratorId":I
    .end local v21    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v5    # "configuratorId":I
    .restart local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_12a
    move/from16 v20, v5

    move-object/from16 v21, v6

    .line 4238
    .end local v5    # "configuratorId":I
    .end local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v20    # "configuratorId":I
    .restart local v21    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_12e
    if-nez v8, :cond_1d4

    .line 4240
    move-object/from16 v1, v21

    .end local v21    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .local v1, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :try_start_132
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v22

    .line 4242
    .local v22, "csNameForProp":[B
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    .line 4243
    .local v0, "storageType":Ljava/lang/String;
    invoke-direct {v7, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v2

    .line 4244
    .local v2, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v2, :cond_14d

    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    if-eqz v3, :cond_14d

    .line 4245
    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object v0, v3

    .line 4248
    :cond_14d
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v3

    .line 4249
    .local v3, "storageTypeIndex":I
    if-gez v3, :cond_168

    .line 4250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UCM does not support this storage type for KG : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    return v13

    .line 4254
    :cond_168
    iget-object v4, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .line 4255
    .local v4, "enabledSCP":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v5

    .line 4256
    .local v5, "scpIndex":I
    if-gez v5, :cond_187

    .line 4257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UCM does not support this SCP type : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    return v13

    .line 4261
    :cond_187
    iget-object v6, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    move/from16 v26, v6

    .line 4262
    .local v26, "pinMinLength":I
    iget-object v6, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    move/from16 v27, v6

    .line 4263
    .local v27, "pinMaxLength":I
    iget-object v6, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    move/from16 v28, v6

    .line 4264
    .local v28, "pukMinLength":I
    iget-object v6, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    move/from16 v29, v6

    .line 4266
    .local v29, "pukMaxLength":I
    new-instance v6, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;

    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v12, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    move-object/from16 v21, v6

    move-object/from16 v23, v12

    move/from16 v24, v3

    move/from16 v25, v5

    invoke-direct/range {v21 .. v29}, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;-><init>([B[BIIIIII)V

    .line 4267
    .local v6, "keyProp":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z

    move-result v9
    :try_end_1b4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_132 .. :try_end_1b4} :catch_1bc

    if-eqz v9, :cond_1ba

    if-eqz v16, :cond_1ba

    const/4 v12, 0x1

    goto :goto_1bb

    :cond_1ba
    move v12, v13

    :goto_1bb
    return v12

    .line 4268
    .end local v0    # "storageType":Ljava/lang/String;
    .end local v2    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v3    # "storageTypeIndex":I
    .end local v4    # "enabledSCP":Ljava/lang/String;
    .end local v5    # "scpIndex":I
    .end local v6    # "keyProp":Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;
    .end local v22    # "csNameForProp":[B
    .end local v26    # "pinMinLength":I
    .end local v27    # "pinMaxLength":I
    .end local v28    # "pukMinLength":I
    .end local v29    # "pukMaxLength":I
    :catch_1bc
    move-exception v0

    .line 4269
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d6

    .line 4238
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v21    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_1d4
    move-object/from16 v1, v21

    .line 4274
    .end local v20    # "configuratorId":I
    .end local v21    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_1d6
    move/from16 v0, v16

    goto :goto_1dc

    .line 4194
    .end local v16    # "result":Z
    .local v0, "result":Z
    .local v6, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_1d9
    move-object v1, v6

    .end local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v1    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_1dc

    .line 4193
    .end local v1    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_1db
    move-object v1, v6

    .line 4274
    .end local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_1dc
    const/4 v12, 0x1

    goto/16 :goto_39

    .line 4275
    :cond_1df
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureKeyguardSettings return : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4276
    return v0

    .line 4156
    .end local v14    # "csName":Ljava/lang/String;
    :cond_1f4
    :goto_1f4
    const-string v1, "disable keyguard in UCS"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4157
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v12

    .line 4158
    .local v12, "storageName":Ljava/lang/String;
    invoke-direct {v7, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getStoragePkgname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4159
    .local v14, "storagePkgName":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardStorageOwnerForCurrentUser(I)Ljava/lang/String;

    move-result-object v15

    .line 4160
    .local v15, "onwerId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storageName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onwerId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    const-string v1, "none"

    invoke-direct {v7, v8, v1, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setKeyguardStorageForCurrentUser(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 4162
    .end local v0    # "result":Z
    .restart local v16    # "result":Z
    if-eqz v16, :cond_22c

    .line 4163
    invoke-direct {v7, v13, v8, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendUCMKeyguardIntent(ZILjava/lang/String;)V

    .line 4165
    :cond_22c
    if-nez v8, :cond_25e

    .line 4167
    const/4 v2, 0x0

    :try_start_22f
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_23c} :catch_23d

    .line 4170
    goto :goto_254

    .line 4168
    :catch_23d
    move-exception v0

    .line 4169
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_254
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteKeyguardConfig()Z

    move-result v0

    if-eqz v0, :cond_25d

    if-eqz v16, :cond_25d

    const/4 v13, 0x1

    :cond_25d
    return v13

    .line 4172
    :cond_25e
    if-lt v8, v10, :cond_29b

    .line 4174
    :try_start_260
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4176
    .local v6, "configuratorId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_260 .. :try_end_268} :catch_284

    move-wide/from16 v17, v0

    .line 4178
    .local v17, "id":J
    :try_start_26a
    iget-object v0, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 4180
    .local v3, "ownerUid":I
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->applyMDMPolicies(ZIILjava/lang/String;I)Z
    :try_end_279
    .catchall {:try_start_26a .. :try_end_279} :catchall_27e

    .line 4182
    .end local v3    # "ownerUid":I
    :try_start_279
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4183
    nop

    .line 4186
    .end local v6    # "configuratorId":I
    .end local v17    # "id":J
    goto :goto_29b

    .line 4182
    .restart local v6    # "configuratorId":I
    .restart local v17    # "id":J
    :catchall_27e
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4183
    nop

    .end local v12    # "storageName":Ljava/lang/String;
    .end local v14    # "storagePkgName":Ljava/lang/String;
    .end local v15    # "onwerId":Ljava/lang/String;
    .end local v16    # "result":Z
    .end local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .end local p1    # "userId":I
    .end local p2    # "uri":Ljava/lang/String;
    throw v0
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_284} :catch_284

    .line 4184
    .end local v6    # "configuratorId":I
    .end local v17    # "id":J
    .restart local v12    # "storageName":Ljava/lang/String;
    .restart local v14    # "storagePkgName":Ljava/lang/String;
    .restart local v15    # "onwerId":Ljava/lang/String;
    .restart local v16    # "result":Z
    .restart local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "uri":Ljava/lang/String;
    :catch_284
    move-exception v0

    .line 4185
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4188
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_29b
    :goto_29b
    return v16
.end method

.method public configureODESettings(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)I
    .registers 35
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "scpParam"    # Landroid/os/Bundle;
    .param p3, "pluginSignature"    # Ljava/lang/String;

    .line 4295
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "UcmService"

    const-string v0, "configureODESettings"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 4297
    .local v4, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    .line 4298
    .local v5, "uriuid":I
    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v6

    .line 4299
    .local v6, "source":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configureODESettings uriuid-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUcmOdeEnabled()Z

    move-result v0

    const v7, 0xc000200

    if-eqz v0, :cond_3c

    .line 4302
    const-string v0, "device is encrypted with UCS so cannot change configuration"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    return v7

    .line 4306
    :cond_3c
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v8

    .line 4307
    .local v8, "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    iget-object v0, v8, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    if-eqz v0, :cond_74

    .line 4308
    const-string v0, "configureODESettings Validating current ODE setting configurator"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v0

    .line 4310
    .local v0, "callingPkg":[B
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v9

    .line 4311
    .local v9, "callingPkgSign":[B
    const v10, 0xc000300

    if-eqz v0, :cond_73

    .line 4312
    iget-object v11, v8, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-direct {v1, v11, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareCallingPkg([B[B)Z

    move-result v11

    if-eqz v11, :cond_6d

    iget-object v11, v8, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-static {v11, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-nez v11, :cond_67

    goto :goto_6d

    .line 4319
    :cond_67
    const-string v10, "configureODESettings valid caller is changing ODE configuration..."

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 4313
    :cond_6d
    :goto_6d
    const-string v7, "configureODESettings invalid caller is trying to change ODE configuration. Error..."

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4314
    return v10

    .line 4317
    :cond_73
    return v10

    .line 4322
    .end local v0    # "callingPkg":[B
    .end local v9    # "callingPkgSign":[B
    :cond_74
    :goto_74
    const-string v0, "reset"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v9, "persist.security.ucs.csname"

    const-string v10, "persist.security.ucs"

    const/4 v11, 0x0

    const/16 v12, 0x10d

    const/4 v13, 0x1

    if-eqz v0, :cond_99

    .line 4323
    const-string v0, "disable configureODESettings in UCS"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    const-string v0, ""

    invoke-static {v10, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4325
    invoke-static {v9, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4326
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteODEConfig()Z

    move-result v0

    .line 4327
    .local v0, "delete":Z
    if-ne v13, v0, :cond_98

    .line 4328
    return v11

    .line 4330
    :cond_98
    return v12

    .line 4333
    .end local v0    # "delete":Z
    :cond_99
    if-eqz p3, :cond_3eb

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-ne v0, v13, :cond_aa

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move-object v4, v3

    goto/16 :goto_3f2

    .line 4338
    :cond_aa
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/16 v7, 0x10

    if-ne v13, v0, :cond_b8

    .line 4339
    const-string v0, "uri is empty"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4340
    return v7

    .line 4343
    :cond_b8
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v14, 0xe

    if-eqz v0, :cond_c7

    .line 4344
    return v14

    .line 4347
    :cond_c7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4348
    .local v15, "pluginName":Ljava/lang/String;
    if-eqz v15, :cond_3e1

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-ne v0, v13, :cond_de

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move v0, v14

    move-object/from16 v25, v15

    goto/16 :goto_3ea

    .line 4352
    :cond_de
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3de

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 4353
    .local v14, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v14, :cond_3c5

    iget-object v11, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v11, :cond_3b3

    iget-object v11, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v11, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-nez v11, :cond_106

    .line 4354
    const/4 v11, 0x0

    const/16 v14, 0xe

    goto :goto_e8

    .line 4356
    :cond_106
    iget-object v11, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v11, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_398

    .line 4357
    const-string v0, "Find UcmAgentWrapper"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4359
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    if-nez v0, :cond_122

    .line 4360
    const-string v0, "This agent dose not support ODE"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    const/4 v0, 0x3

    return v0

    .line 4364
    :cond_122
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v11, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    .line 4365
    .local v11, "AID":[B
    const/16 v17, 0x4

    if-eqz v11, :cond_387

    array-length v0, v11

    if-nez v0, :cond_13a

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move-object/from16 v28, v14

    move-object/from16 v25, v15

    move-object v4, v3

    goto/16 :goto_392

    .line 4368
    :cond_13a
    array-length v0, v11

    const/4 v13, 0x5

    if-lt v0, v13, :cond_376

    array-length v0, v11

    if-le v0, v7, :cond_14e

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move-object/from16 v28, v14

    move-object/from16 v25, v15

    move-object v4, v3

    goto/16 :goto_381

    .line 4373
    :cond_14e
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    .line 4374
    .local v0, "storageType":Ljava/lang/String;
    invoke-direct {v1, v15}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v7

    .line 4375
    .local v7, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v7, :cond_160

    iget-object v13, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    if-eqz v13, :cond_160

    .line 4376
    iget-object v0, v7, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object v13, v0

    goto :goto_161

    .line 4378
    :cond_160
    move-object v13, v0

    .end local v0    # "storageType":Ljava/lang/String;
    .local v13, "storageType":Ljava/lang/String;
    :goto_161
    invoke-static {v13}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v12

    .line 4379
    .local v12, "storageTypeIndex":I
    if-gez v12, :cond_17c

    .line 4380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UCM does not support this storage type : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    return v17

    .line 4384
    :cond_17c
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v18, v4

    .end local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .local v18, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .line 4385
    .local v4, "enabledSCP":Ljava/lang/String;
    const/16 v19, 0x0

    .line 4386
    .local v19, "scpCreationParam":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    move-object/from16 v20, v6

    .end local v6    # "source":Ljava/lang/String;
    .local v20, "source":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v6

    .line 4387
    .local v6, "scpIndex":I
    if-gez v6, :cond_1a1

    .line 4388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UCM does not support this SCP type : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4389
    return v17

    .line 4390
    :cond_1a1
    const-string v0, "NONE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v21, v4

    .end local v4    # "enabledSCP":Ljava/lang/String;
    .local v21, "enabledSCP":Ljava/lang/String;
    const-string v4, "The exception occurs "

    if-nez v0, :cond_1e1

    .line 4393
    :try_start_1ad
    invoke-static/range {p2 .. p2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    move-result-object v0

    move-object/from16 v19, v0

    .line 4394
    if-nez v19, :cond_1bb

    .line 4395
    const-string v0, "Can\'t find SCP parameter from bundle"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1ba} :catch_1c0

    .line 4396
    return v17

    .line 4401
    :cond_1bb
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    goto :goto_1e5

    .line 4398
    :catch_1c0
    move-exception v0

    .line 4399
    .local v0, "e":Ljava/lang/Exception;
    move-object/from16 v22, v7

    .end local v7    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .local v22, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v8

    .end local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .local v23, "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4400
    const-string v7, "failed to generate SCP param from Bundle"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e5

    .line 4390
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v22    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v7    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .restart local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :cond_1e1
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .line 4404
    .end local v7    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v22    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .restart local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :goto_1e5
    iget-boolean v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    if-eqz v0, :cond_22b

    .line 4406
    :try_start_1e9
    invoke-direct {v1, v14, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->saveTempOdeKey(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Ljava/lang/String;)I

    move-result v0

    .line 4407
    .local v0, "errCode":I
    if-eqz v0, :cond_209

    .line 4408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed saveTempOdeKey. ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_208} :catch_20a

    .line 4409
    return v0

    .line 4415
    .end local v0    # "errCode":I
    :cond_209
    goto :goto_22b

    .line 4411
    :catch_20a
    move-exception v0

    .line 4412
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4413
    const-string v4, "failed to store ODE key"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4414
    const/16 v3, 0x10d

    return v3

    .line 4418
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_22b
    :goto_22b
    const-string v7, "1"

    invoke-static {v10, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4419
    invoke-static {v9, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4421
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v8, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    .line 4423
    .local v8, "enabledWrap":I
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v9, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 4424
    .local v9, "pinMinLength":I
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 4425
    .local v10, "pinMaxLength":I
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 4426
    .local v2, "authMode":I
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v24, v13

    .end local v13    # "storageType":Ljava/lang/String;
    .local v24, "storageType":Ljava/lang/String;
    iget v13, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 4427
    .local v13, "authMaxCnt":I
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v25, v15

    .end local v15    # "pluginName":Ljava/lang/String;
    .local v25, "pluginName":Ljava/lang/String;
    iget v15, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 4428
    .local v15, "pukMinLength":I
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v26, v7

    iget v7, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 4429
    .local v7, "pukMaxLength":I
    const/16 v27, 0x0

    .line 4431
    .local v27, "csName":[B
    :try_start_257
    iget-object v0, v14, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;
    :try_end_25b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_257 .. :try_end_25b} :catch_358

    move-object/from16 v28, v14

    .end local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .local v28, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :try_start_25d
    const-string v14, "UTF-8"

    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_263
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25d .. :try_end_263} :catch_352

    move-object v14, v0

    .line 4435
    .end local v27    # "csName":[B
    .local v14, "csName":[B
    nop

    .line 4436
    if-eqz v14, :cond_349

    array-length v0, v14

    if-nez v0, :cond_26f

    move/from16 v30, v2

    move-object v4, v3

    goto/16 :goto_34c

    .line 4441
    :cond_26f
    move-object/from16 v29, v3

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v3

    .line 4443
    .local v3, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    move-object/from16 v30, v4

    const/4 v4, 0x1

    iput v4, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 4444
    iput-object v11, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 4445
    iput v12, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 4446
    iput v6, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 4447
    iput v8, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 4448
    iput v9, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 4449
    iput v10, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 4450
    iput v2, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 4451
    iput v13, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 4452
    iput v15, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 4453
    iput v7, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 4454
    iput-object v14, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 4455
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorPkg(I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 4456
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getConfiguratorSignature(I)[B

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 4457
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDigestOfBytes([B)[B

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    .line 4458
    const/4 v0, 0x2

    iput v0, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    .line 4460
    :try_start_2a9
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 4461
    .local v0, "localeList":Landroid/os/LocaleList;
    if-eqz v0, :cond_2e1

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-lez v4, :cond_2e1

    .line 4462
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v17

    move-object/from16 v4, v17

    .line 4463
    .local v4, "locale":Ljava/util/Locale;
    if-eqz v4, :cond_2de

    .line 4464
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    .line 4465
    .local v17, "language":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_2db

    .line 4466
    move-object/from16 v27, v0

    .end local v0    # "localeList":Landroid/os/LocaleList;
    .local v27, "localeList":Landroid/os/LocaleList;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B
    :try_end_2da
    .catch Ljava/lang/Exception; {:try_start_2a9 .. :try_end_2da} :catch_2ea

    goto :goto_2e3

    .line 4465
    .end local v27    # "localeList":Landroid/os/LocaleList;
    .restart local v0    # "localeList":Landroid/os/LocaleList;
    :cond_2db
    move-object/from16 v27, v0

    .end local v0    # "localeList":Landroid/os/LocaleList;
    .restart local v27    # "localeList":Landroid/os/LocaleList;
    goto :goto_2e3

    .line 4463
    .end local v17    # "language":Ljava/lang/String;
    .end local v27    # "localeList":Landroid/os/LocaleList;
    .restart local v0    # "localeList":Landroid/os/LocaleList;
    :cond_2de
    move-object/from16 v27, v0

    .end local v0    # "localeList":Landroid/os/LocaleList;
    .restart local v27    # "localeList":Landroid/os/LocaleList;
    goto :goto_2e3

    .line 4461
    .end local v4    # "locale":Ljava/util/Locale;
    .end local v27    # "localeList":Landroid/os/LocaleList;
    .restart local v0    # "localeList":Landroid/os/LocaleList;
    :cond_2e1
    move-object/from16 v27, v0

    .line 4472
    .end local v0    # "localeList":Landroid/os/LocaleList;
    :goto_2e3
    move-object/from16 v4, v29

    move-object/from16 v1, v30

    move/from16 v30, v2

    goto :goto_307

    .line 4470
    :catch_2ea
    move-exception v0

    .line 4471
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v30

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v30, v2

    .end local v2    # "authMode":I
    .local v30, "authMode":I
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v29

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_307
    if-eqz v19, :cond_32d

    .line 4476
    :try_start_309
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toTLV()[B

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B
    :try_end_30f
    .catch Ljava/lang/Exception; {:try_start_309 .. :try_end_30f} :catch_310

    goto :goto_32d

    .line 4478
    :catch_310
    move-exception v0

    .line 4479
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    const-string v1, " failed to convert SCP param to TLV"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32e

    .line 4481
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_32d
    :goto_32d
    nop

    .line 4483
    :goto_32e
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v0

    .line 4484
    .local v0, "save":Z
    const/4 v1, 0x1

    if-eq v1, v0, :cond_33d

    .line 4485
    const-string v1, "configureODESettings. failed to save ode config"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4486
    const/16 v2, 0x10d

    return v2

    .line 4488
    :cond_33d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "/efs/sec_efs/ucm_ode_mode"

    invoke-static {v1, v2}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->saveDataToFile([BLjava/lang/String;)Z

    .line 4489
    const/16 v16, 0x0

    return v16

    .line 4436
    .end local v0    # "save":Z
    .end local v3    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v30    # "authMode":I
    .restart local v2    # "authMode":I
    :cond_349
    move/from16 v30, v2

    move-object v4, v3

    .line 4437
    .end local v2    # "authMode":I
    .restart local v30    # "authMode":I
    :goto_34c
    const-string v0, "csName is empty"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4438
    return v17

    .line 4432
    .end local v14    # "csName":[B
    .end local v30    # "authMode":I
    .restart local v2    # "authMode":I
    .local v27, "csName":[B
    :catch_352
    move-exception v0

    move/from16 v30, v2

    move-object v1, v4

    move-object v4, v3

    .end local v2    # "authMode":I
    .restart local v30    # "authMode":I
    goto :goto_35f

    .end local v28    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v30    # "authMode":I
    .restart local v2    # "authMode":I
    .local v14, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :catch_358
    move-exception v0

    move/from16 v30, v2

    move-object v1, v4

    move-object/from16 v28, v14

    move-object v4, v3

    .line 4433
    .end local v2    # "authMode":I
    .end local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    .restart local v28    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v30    # "authMode":I
    :goto_35f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    return v17

    .line 4368
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "pukMaxLength":I
    .end local v9    # "pinMinLength":I
    .end local v10    # "pinMaxLength":I
    .end local v12    # "storageTypeIndex":I
    .end local v13    # "authMaxCnt":I
    .end local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v19    # "scpCreationParam":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    .end local v20    # "source":Ljava/lang/String;
    .end local v21    # "enabledSCP":Ljava/lang/String;
    .end local v22    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v24    # "storageType":Ljava/lang/String;
    .end local v25    # "pluginName":Ljava/lang/String;
    .end local v27    # "csName":[B
    .end local v28    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v30    # "authMode":I
    .local v4, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .local v6, "source":Ljava/lang/String;
    .local v8, "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .local v15, "pluginName":Ljava/lang/String;
    :cond_376
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move-object/from16 v28, v14

    move-object/from16 v25, v15

    move-object v4, v3

    .line 4369
    .end local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v6    # "source":Ljava/lang/String;
    .end local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v15    # "pluginName":Ljava/lang/String;
    .restart local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v20    # "source":Ljava/lang/String;
    .restart local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v25    # "pluginName":Ljava/lang/String;
    .restart local v28    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_381
    const-string v0, "AID range is not proper"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    return v17

    .line 4365
    .end local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v20    # "source":Ljava/lang/String;
    .end local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v25    # "pluginName":Ljava/lang/String;
    .end local v28    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v6    # "source":Ljava/lang/String;
    .restart local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v15    # "pluginName":Ljava/lang/String;
    :cond_387
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move-object/from16 v28, v14

    move-object/from16 v25, v15

    move-object v4, v3

    .line 4366
    .end local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v6    # "source":Ljava/lang/String;
    .end local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v15    # "pluginName":Ljava/lang/String;
    .restart local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v20    # "source":Ljava/lang/String;
    .restart local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v25    # "pluginName":Ljava/lang/String;
    .restart local v28    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_392
    const-string v0, "AID is empty"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    return v17

    .line 4356
    .end local v11    # "AID":[B
    .end local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v20    # "source":Ljava/lang/String;
    .end local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v25    # "pluginName":Ljava/lang/String;
    .end local v28    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v6    # "source":Ljava/lang/String;
    .restart local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v15    # "pluginName":Ljava/lang/String;
    :cond_398
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move v2, v12

    move v1, v13

    move-object/from16 v28, v14

    move-object/from16 v25, v15

    const/16 v16, 0x0

    move-object v4, v3

    .line 4491
    .end local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v6    # "source":Ljava/lang/String;
    .end local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v15    # "pluginName":Ljava/lang/String;
    .restart local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v20    # "source":Ljava/lang/String;
    .restart local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v25    # "pluginName":Ljava/lang/String;
    move/from16 v11, v16

    move-object/from16 v4, v18

    const/16 v14, 0xe

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_e8

    .line 4353
    .end local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v20    # "source":Ljava/lang/String;
    .end local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v25    # "pluginName":Ljava/lang/String;
    .restart local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v6    # "source":Ljava/lang/String;
    .restart local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v15    # "pluginName":Ljava/lang/String;
    :cond_3b3
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move v2, v12

    move v1, v13

    move-object/from16 v28, v14

    move-object/from16 v25, v15

    const/16 v16, 0x0

    move-object v4, v3

    .end local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v6    # "source":Ljava/lang/String;
    .end local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v15    # "pluginName":Ljava/lang/String;
    .restart local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v20    # "source":Ljava/lang/String;
    .restart local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v25    # "pluginName":Ljava/lang/String;
    .restart local v28    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    move/from16 v11, v16

    goto :goto_3d4

    .end local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v20    # "source":Ljava/lang/String;
    .end local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v25    # "pluginName":Ljava/lang/String;
    .end local v28    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v6    # "source":Ljava/lang/String;
    .restart local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v15    # "pluginName":Ljava/lang/String;
    :cond_3c5
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move/from16 v16, v11

    move v2, v12

    move v1, v13

    move-object/from16 v28, v14

    move-object/from16 v25, v15

    move-object v4, v3

    .end local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v6    # "source":Ljava/lang/String;
    .end local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v15    # "pluginName":Ljava/lang/String;
    .restart local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v20    # "source":Ljava/lang/String;
    .restart local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v25    # "pluginName":Ljava/lang/String;
    .restart local v28    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_3d4
    move-object/from16 v4, v18

    const/16 v14, 0xe

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_e8

    .line 4492
    .end local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v20    # "source":Ljava/lang/String;
    .end local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v25    # "pluginName":Ljava/lang/String;
    .end local v28    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v6    # "source":Ljava/lang/String;
    .restart local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v15    # "pluginName":Ljava/lang/String;
    :cond_3de
    const/16 v0, 0xe

    return v0

    .line 4348
    :cond_3e1
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move v0, v14

    move-object/from16 v25, v15

    .line 4349
    .end local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v6    # "source":Ljava/lang/String;
    .end local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v15    # "pluginName":Ljava/lang/String;
    .restart local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v20    # "source":Ljava/lang/String;
    .restart local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v25    # "pluginName":Ljava/lang/String;
    :goto_3ea
    return v0

    .line 4333
    .end local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v20    # "source":Ljava/lang/String;
    .end local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v25    # "pluginName":Ljava/lang/String;
    .restart local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v6    # "source":Ljava/lang/String;
    .restart local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :cond_3eb
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move-object v4, v3

    .line 4334
    .end local v4    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v6    # "source":Ljava/lang/String;
    .end local v8    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .restart local v18    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v20    # "source":Ljava/lang/String;
    .restart local v23    # "currentOdeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    :goto_3f2
    const-string v0, "plugin signature is null"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4335
    return v7
.end method

.method public containsAlias(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 24
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5059
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5060
    .local v3, "callerUid":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 5062
    .local v4, "agentResponse":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containsAlias "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UcmService"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5063
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    .line 5064
    .local v6, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v0, 0xe

    const/4 v7, 0x0

    const-string v8, "booleanresponse"

    const-string v9, "errorresponse"

    if-nez v6, :cond_3c

    .line 5065
    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5066
    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5067
    return-object v4

    .line 5071
    :cond_3c
    new-instance v10, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v10, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 5072
    .local v10, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    .line 5073
    .local v11, "uriuid":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_49

    move v11, v3

    .line 5074
    :cond_49
    invoke-direct {v1, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v18

    .line 5075
    .local v18, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 5077
    .local v19, "id":J
    :try_start_51
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v13

    const/16 v16, 0x0

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v17

    move/from16 v14, v18

    move v15, v11

    invoke-virtual/range {v12 .. v17}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_8b

    .line 5078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WARNING!!!! containsAlias is NOT allowed for URI = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5080
    const/16 v0, 0xf

    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_86
    .catchall {:try_start_51 .. :try_end_86} :catchall_da

    .line 5081
    nop

    .line 5084
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5081
    return-object v4

    .line 5084
    :cond_8b
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5085
    nop

    .line 5089
    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v12

    if-nez v12, :cond_a1

    .line 5090
    const-string v12, "agent is not bound"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5091
    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5092
    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5093
    return-object v4

    .line 5095
    :cond_a1
    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v0

    move/from16 v12, p2

    invoke-virtual {v6, v0, v12, v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    .line 5096
    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez v0, :cond_c1

    .line 5097
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5098
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v0, v4

    .line 5099
    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5100
    const/16 v4, 0xd

    invoke-virtual {v0, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5101
    return-object v0

    .line 5103
    :cond_c1
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 5104
    .local v4, "errorcode":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "containsAlias Response from plugin:  error code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5105
    return-object v0

    .line 5084
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .local v4, "agentResponse":Landroid/os/Bundle;
    :catchall_da
    move-exception v0

    move/from16 v12, p2

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5085
    throw v0
.end method

.method public createSecureChannel(ILandroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 11
    .param p1, "protocolType"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSecureChannel protocolType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1397
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1398
    const-string v2, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    .line 1400
    .local v1, "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    const/4 v2, 0x1

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    .line 1401
    const/16 v2, 0x41

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1402
    return-object v1

    .line 1404
    .end local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    :cond_32
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidSCPProtocol(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3f

    .line 1405
    const-string v2, "Invalid protocolType..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return-object v3

    .line 1408
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1410
    .local v4, "id":J
    :try_start_43
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->installCACertforCreateSecureChannel()V

    .line 1411
    invoke-static {p2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    move-result-object v2
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_5d
    .catchall {:try_start_43 .. :try_end_4a} :catchall_5b

    .line 1412
    .local v2, "param":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    if-nez v2, :cond_51

    .line 1413
    nop

    .line 1419
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1413
    return-object v3

    .line 1415
    :cond_51
    :try_start_51
    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v6, v0, p1, v2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->createSecureChannel(IILcom/samsung/ucm/ucmservice/scp/CreationParam;)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_57} :catch_5d
    .catchall {:try_start_51 .. :try_end_57} :catchall_5b

    .line 1419
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1415
    return-object v1

    .line 1419
    .end local v2    # "param":Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    :catchall_5b
    move-exception v1

    goto :goto_7c

    .line 1416
    :catch_5d
    move-exception v2

    .line 1417
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The exception occurs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_5e .. :try_end_76} :catchall_5b

    .line 1419
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1420
    nop

    .line 1421
    return-object v3

    .line 1419
    :goto_7c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1420
    throw v1
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 25
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1872
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decrypt "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UcmService"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    .line 1874
    .local v5, "agentResponse":Landroid/os/Bundle;
    const-string v0, "errorresponse"

    if-nez v3, :cond_2f

    .line 1875
    const/4 v4, 0x4

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1876
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1879
    :cond_2f
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    .line 1880
    .local v6, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v7, 0xe

    if-nez v6, :cond_43

    .line 1881
    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1882
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1886
    :cond_43
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v8, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1887
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1888
    .local v9, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v10

    .line 1889
    .local v10, "uriuid":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_60

    .line 1890
    if-eq v9, v10, :cond_60

    .line 1891
    const/16 v12, 0x3e8

    if-eq v9, v12, :cond_5f

    invoke-direct {v1, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v12

    if-eqz v12, :cond_60

    .line 1892
    :cond_5f
    move v9, v10

    .line 1896
    :cond_60
    invoke-direct {v1, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v12

    .line 1897
    .local v12, "user_id":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 1898
    .local v13, "uriresource":I
    if-ne v13, v11, :cond_6b

    const/4 v13, 0x1

    :cond_6b
    move v15, v13

    .line 1900
    .end local v13    # "uriresource":I
    .local v15, "uriresource":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-direct {v1, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v13

    if-eqz v13, :cond_aa

    .line 1901
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v13

    .line 1902
    .local v13, "userId":I
    if-eq v13, v11, :cond_96

    .line 1903
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v12

    .line 1904
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Decrypt new userid-"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v12

    goto :goto_ab

    .line 1906
    :cond_96
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Decrypt. Keeping same userid"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    .end local v13    # "userId":I
    :cond_aa
    move v11, v12

    .end local v12    # "user_id":I
    .local v11, "user_id":I
    :goto_ab
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    move-object v14, v12

    .line 1913
    .local v14, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1915
    .local v18, "id":J
    :try_start_b5
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v13

    const/16 v16, 0x0

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v17
    :try_end_c5
    .catchall {:try_start_b5 .. :try_end_c5} :catchall_1c1

    move-object v7, v14

    .end local v14    # "argBundle":Landroid/os/Bundle;
    .local v7, "argBundle":Landroid/os/Bundle;
    move v14, v11

    move/from16 v20, v10

    move v10, v15

    .end local v15    # "uriresource":I
    .local v10, "uriresource":I
    .local v20, "uriuid":I
    move v15, v9

    :try_start_cb
    invoke-virtual/range {v12 .. v17}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_f2

    .line 1916
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WARNING!!!! decrypt is NOT allowed for URI = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const/16 v4, 0xf

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1918
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_ee
    .catchall {:try_start_cb .. :try_end_ee} :catchall_1bd

    .line 1921
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1918
    return-object v0

    .line 1921
    :cond_f2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1922
    nop

    .line 1925
    const-string v12, "callerUid"

    invoke-virtual {v7, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1926
    const-string v13, "user_id"

    invoke-virtual {v7, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1927
    const-string v14, "ownerUid"

    invoke-virtual {v7, v14, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1928
    const-string v14, "resource"

    invoke-virtual {v7, v14, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1930
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrypt KEY_RESOURCE_ID= "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x2

    invoke-virtual {v7, v14, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "decrypt KEY_USER_ID= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "decrypt KEY_CALLER_UID= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_168

    .line 1937
    const-string v2, "agent is not bound"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/16 v2, 0xe

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1939
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1942
    :cond_168
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, p3

    invoke-virtual {v6, v2, v3, v12, v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1943
    .end local v5    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Landroid/os/Bundle;
    const/16 v5, 0xd

    if-nez v2, :cond_189

    .line 1944
    const-string v13, "ERROR: Null Response received from agent"

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v4

    .line 1946
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1947
    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1949
    :cond_189
    const-string v13, "bytearrayresponse"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 1950
    .local v13, "response":[B
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1951
    .local v14, "errorcode":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decrypt Response from plugin:  error code = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    if-nez v13, :cond_1b8

    .line 1953
    const-string v5, "ERROR: Empty data received for decrypt"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const/16 v4, 0xd

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1955
    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1957
    :cond_1b8
    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1921
    .end local v2    # "agentResponse":Landroid/os/Bundle;
    .end local v13    # "response":[B
    .end local v14    # "errorcode":I
    .restart local v5    # "agentResponse":Landroid/os/Bundle;
    :catchall_1bd
    move-exception v0

    move-object/from16 v12, p3

    goto :goto_1c8

    .end local v7    # "argBundle":Landroid/os/Bundle;
    .end local v20    # "uriuid":I
    .local v10, "uriuid":I
    .local v14, "argBundle":Landroid/os/Bundle;
    .restart local v15    # "uriresource":I
    :catchall_1c1
    move-exception v0

    move-object/from16 v12, p3

    move/from16 v20, v10

    move-object v7, v14

    move v10, v15

    .end local v14    # "argBundle":Landroid/os/Bundle;
    .end local v15    # "uriresource":I
    .restart local v7    # "argBundle":Landroid/os/Bundle;
    .local v10, "uriresource":I
    .restart local v20    # "uriuid":I
    :goto_1c8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1922
    throw v0
.end method

.method protected deletAndRefreshAgents(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .registers 5
    .param p1, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 754
    const-string v0, "UcmService"

    const-string v1, "deletAndRefreshAgents()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    if-eqz p1, :cond_26

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletAndRefreshAgents() remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 759
    :cond_26
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgents()V

    .line 760
    return-void
.end method

.method public delete(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2653
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .line 2654
    .local v0, "pluginResponse":Landroid/os/Bundle;
    const-string v1, "UcmService"

    if-eqz v0, :cond_24

    .line 2655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCMERRORTESTING: @CredentialManagerService delete Response from plugin with error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 2657
    :cond_24
    const-string v2, "UCMERRORTESTING: @CredentialManagerService delete Response from plugin is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    :goto_29
    return-object v0
.end method

.method public deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2664
    const-string v0, "deleteCertificate"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2665
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .line 2666
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v1, "errorresponse"

    if-nez v0, :cond_20

    .line 2667
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    .line 2668
    const/4 v2, 0x0

    const-string v3, "booleanresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2669
    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2670
    return-object v0

    .line 2672
    :cond_20
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2673
    .local v1, "errorcode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCertificate Response:  error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UCMERRORTESTING: @CredentialManagerService deleteCertificate Response from plugin with error code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    return-object v0
.end method

.method public destroySecureChannel()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1465
    const-string v0, "UcmService"

    const-string v1, "destroySecureChannel ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1467
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1468
    const-string v2, "  Agent don\'t UCM PLUGIN permission. Returning..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    const/16 v0, 0x41

    return v0

    .line 1472
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1474
    .local v2, "id":J
    :try_start_1d
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v4, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destroySecureChannel(I)I

    move-result v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_29
    .catchall {:try_start_1d .. :try_end_23} :catchall_27

    .line 1478
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1474
    return v0

    .line 1478
    :catchall_27
    move-exception v0

    goto :goto_49

    .line 1475
    :catch_29
    move-exception v4

    .line 1476
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The exception occurs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_27

    .line 1478
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1479
    nop

    .line 1481
    const/4 v0, 0x1

    return v0

    .line 1478
    :goto_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1479
    throw v0
.end method

.method public encrypt(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 25
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1962
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encrypt "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UcmService"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    .line 1964
    .local v5, "agentResponse":Landroid/os/Bundle;
    const-string v0, "errorresponse"

    if-nez v3, :cond_2f

    .line 1965
    const/4 v4, 0x4

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1966
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1969
    :cond_2f
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    .line 1970
    .local v6, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v7, 0xe

    if-nez v6, :cond_43

    .line 1971
    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1972
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1976
    :cond_43
    new-instance v8, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v8, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1977
    .local v8, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1978
    .local v9, "uid":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v10

    .line 1979
    .local v10, "uriuid":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_60

    .line 1980
    if-eq v9, v10, :cond_60

    .line 1981
    const/16 v12, 0x3e8

    if-eq v9, v12, :cond_5f

    invoke-direct {v1, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v12

    if-eqz v12, :cond_60

    .line 1982
    :cond_5f
    move v9, v10

    .line 1986
    :cond_60
    invoke-direct {v1, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v12

    .line 1987
    .local v12, "user_id":I
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 1988
    .local v13, "uriresource":I
    if-ne v13, v11, :cond_6b

    const/4 v13, 0x1

    :cond_6b
    move v15, v13

    .line 1990
    .end local v13    # "uriresource":I
    .local v15, "uriresource":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-direct {v1, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v13

    if-eqz v13, :cond_aa

    .line 1991
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v13

    .line 1992
    .local v13, "userId":I
    if-eq v13, v11, :cond_96

    .line 1993
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v12

    .line 1994
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Encrypt new userid-"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v12

    goto :goto_ab

    .line 1996
    :cond_96
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Encrypt. Keeping same userid"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    .end local v13    # "userId":I
    :cond_aa
    move v11, v12

    .end local v12    # "user_id":I
    .local v11, "user_id":I
    :goto_ab
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    move-object v14, v12

    .line 2003
    .local v14, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2005
    .local v18, "id":J
    :try_start_b5
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v13

    const/16 v16, 0x0

    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v17
    :try_end_c5
    .catchall {:try_start_b5 .. :try_end_c5} :catchall_1c1

    move-object v7, v14

    .end local v14    # "argBundle":Landroid/os/Bundle;
    .local v7, "argBundle":Landroid/os/Bundle;
    move v14, v11

    move/from16 v20, v10

    move v10, v15

    .end local v15    # "uriresource":I
    .local v10, "uriresource":I
    .local v20, "uriuid":I
    move v15, v9

    :try_start_cb
    invoke-virtual/range {v12 .. v17}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_f2

    .line 2006
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WARNING!!!! decrypt is NOT allowed for URI = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    const/16 v4, 0xf

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2008
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_ee
    .catchall {:try_start_cb .. :try_end_ee} :catchall_1bd

    .line 2011
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2008
    return-object v0

    .line 2011
    :cond_f2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2012
    nop

    .line 2015
    const-string v12, "callerUid"

    invoke-virtual {v7, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2016
    const-string v13, "user_id"

    invoke-virtual {v7, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2017
    const-string v14, "ownerUid"

    invoke-virtual {v7, v14, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2018
    const-string v14, "resource"

    invoke-virtual {v7, v14, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2020
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt KEY_RESOURCE_ID= "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x2

    invoke-virtual {v7, v14, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "encrypt KEY_USER_ID= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encrypt KEY_CALLER_UID= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v2

    if-nez v2, :cond_168

    .line 2027
    const-string v2, "agent is not bound"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    const/16 v2, 0xe

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2029
    invoke-direct {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2032
    :cond_168
    invoke-virtual {v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, p3

    invoke-virtual {v6, v2, v3, v12, v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 2033
    .end local v5    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Landroid/os/Bundle;
    const/16 v5, 0xd

    if-nez v2, :cond_189

    .line 2034
    const-string v13, "ERROR: Null Response received from agent"

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v4

    .line 2036
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2037
    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2039
    :cond_189
    const-string v13, "bytearrayresponse"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 2040
    .local v13, "response":[B
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 2041
    .local v14, "errorcode":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encrypt Response from plugin:  error code = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    if-nez v13, :cond_1b8

    .line 2043
    const-string v5, "ERROR: Empty data received for encrypt"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    const/16 v4, 0xd

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2045
    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2047
    :cond_1b8
    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2011
    .end local v2    # "agentResponse":Landroid/os/Bundle;
    .end local v13    # "response":[B
    .end local v14    # "errorcode":I
    .restart local v5    # "agentResponse":Landroid/os/Bundle;
    :catchall_1bd
    move-exception v0

    move-object/from16 v12, p3

    goto :goto_1c8

    .end local v7    # "argBundle":Landroid/os/Bundle;
    .end local v20    # "uriuid":I
    .local v10, "uriuid":I
    .local v14, "argBundle":Landroid/os/Bundle;
    .restart local v15    # "uriresource":I
    :catchall_1c1
    move-exception v0

    move-object/from16 v12, p3

    move/from16 v20, v10

    move-object v7, v14

    move v10, v15

    .end local v14    # "argBundle":Landroid/os/Bundle;
    .end local v15    # "uriresource":I
    .restart local v7    # "argBundle":Landroid/os/Bundle;
    .local v10, "uriresource":I
    .restart local v20    # "uriuid":I
    :goto_1c8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2012
    throw v0
.end method

.method public generateDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1486
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateKeyPair "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 2773
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    if-nez v0, :cond_36

    .line 2774
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 2775
    const/4 v1, 0x0

    const-string v3, "bytearrayresponse"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2776
    const/16 v1, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2777
    return-object v0

    .line 2779
    :cond_36
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2780
    .local v2, "errorcode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateKeyPair Response:  error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    return-object v0
.end method

.method public generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateKeyPairInternal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    const-string v0, "generateKeyPairInternal"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2755
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 2756
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    if-nez v0, :cond_3b

    .line 2757
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 2758
    const/4 v1, 0x0

    const-string v3, "bytearrayresponse"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2759
    const/16 v1, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2760
    return-object v0

    .line 2762
    :cond_3b
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2763
    .local v2, "errorcode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateKeyPairInternal Response:  error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    return-object v0
.end method

.method public generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateKeyguardPassword "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1720
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    if-eqz p2, :cond_e6

    const-string v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_32

    goto/16 :goto_e6

    .line 1726
    :cond_32
    const/4 v3, 0x0

    .line 1727
    .local v3, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_42

    .line 1728
    const-string v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    goto :goto_4a

    .line 1730
    :cond_42
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    .line 1733
    :goto_4a
    const/16 v4, 0xe

    if-nez v3, :cond_6a

    .line 1734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1736
    return-object v0

    .line 1740
    :cond_6a
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_79

    .line 1741
    const-string v5, "agent is not bound"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1743
    return-object v0

    .line 1746
    :cond_79
    invoke-virtual {v3, p1, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1747
    if-nez v0, :cond_90

    .line 1748
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 1750
    const/16 v1, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1751
    return-object v0

    .line 1754
    :cond_90
    const-string v4, "bytearrayresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1755
    .local v5, "bytePasswd":[B
    const-string v6, "stringresponse"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1756
    .local v6, "strPasswd":Ljava/lang/String;
    if-nez v5, :cond_cd

    .line 1757
    const-string v7, "generateKeyguardPassword. byte is null."

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    if-eqz v6, :cond_cd

    .line 1759
    const-string v7, "generateKeyguardPassword. byte is null. fill bytes from str"

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :try_start_aa
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_b3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_aa .. :try_end_b3} :catch_b4

    .line 1764
    goto :goto_cd

    .line 1762
    :catch_b4
    move-exception v4

    .line 1763
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The exception occurs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_cd
    :goto_cd
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1769
    .local v2, "errorcode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateKeyguardPassword Response from plugin:  error code = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    return-object v0

    .line 1721
    .end local v2    # "errorcode":I
    .end local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v5    # "bytePasswd":[B
    .end local v6    # "strPasswd":Ljava/lang/String;
    :cond_e6
    :goto_e6
    const-string v3, "uri is empty"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const/16 v1, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1723
    return-object v0
.end method

.method public generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;
    .registers 26
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "numBytes"    # I
    .param p3, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3101
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateSecureRandom "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UcmService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 3103
    .local v4, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    .line 3104
    .local v5, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v0, 0xe

    const/4 v6, 0x0

    const-string v7, "errorresponse"

    const-string v8, "bytearrayresponse"

    if-nez v5, :cond_4c

    .line 3105
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateSecureRandom : NULL agent for uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3107
    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3108
    return-object v4

    .line 3112
    :cond_4c
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v9, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3113
    .local v9, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3114
    .local v10, "uid":I
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    .line 3115
    .local v11, "uriuid":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_63

    .line 3116
    if-eq v10, v11, :cond_63

    .line 3117
    const/16 v13, 0x3e8

    if-ne v10, v13, :cond_63

    .line 3118
    move v10, v11

    .line 3122
    :cond_63
    invoke-direct {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    .line 3123
    .local v15, "user_id":I
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 3124
    .local v13, "uriresource":I
    if-ne v13, v12, :cond_6e

    const/4 v13, 0x1

    :cond_6e
    move v12, v13

    .line 3127
    .end local v13    # "uriresource":I
    .local v12, "uriresource":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 3129
    .local v19, "id":J
    :try_start_73
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v14

    const/16 v17, 0x0

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v18
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_18b

    move/from16 v21, v15

    .end local v15    # "user_id":I
    .local v21, "user_id":I
    move/from16 v16, v10

    :try_start_87
    invoke-virtual/range {v13 .. v18}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v13
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_185

    if-nez v13, :cond_b5

    .line 3130
    :try_start_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WARNING!!!! generateSecureRandom is NOT allowed for URI = "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3132
    const/16 v0, 0xf

    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_a9
    .catchall {:try_start_8d .. :try_end_a9} :catchall_ae

    .line 3133
    nop

    .line 3136
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3133
    return-object v4

    .line 3136
    :catchall_ae
    move-exception v0

    move-object/from16 v2, p3

    move/from16 v6, v21

    goto/16 :goto_18f

    :cond_b5
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3137
    nop

    .line 3140
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 3141
    .local v13, "argBundle":Landroid/os/Bundle;
    const-string v14, "callerUid"

    invoke-virtual {v13, v14, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3142
    const-string v15, "user_id"

    move/from16 v6, v21

    .end local v21    # "user_id":I
    .local v6, "user_id":I
    invoke-virtual {v13, v15, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3143
    const-string v0, "ownerUid"

    invoke-virtual {v13, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3144
    const-string v0, "resource"

    invoke-virtual {v13, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateSecureRandom KEY_RESOURCE_ID= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x2

    invoke-virtual {v13, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateSecureRandom KEY_USER_ID= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateSecureRandom KEY_CALLER_UID= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v0

    if-nez v0, :cond_132

    .line 3153
    const-string v0, "agent is not bound"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    const/4 v0, 0x0

    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3155
    const/16 v0, 0xe

    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3156
    return-object v4

    .line 3158
    :cond_132
    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v5, v1, v2, v13}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3159
    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez v0, :cond_151

    .line 3160
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 3162
    const/4 v3, 0x0

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3163
    const/16 v3, 0xe

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3164
    return-object v0

    .line 3166
    :cond_151
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 3167
    .local v4, "response":[B
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 3168
    .local v14, "errorcode":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateSecureRandom Response from plugin:  error code = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    if-nez v4, :cond_184

    .line 3171
    const-string v1, "ERROR: Empty data received for generateSecureRandom"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 3173
    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3174
    const/16 v1, 0xd

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3175
    return-object v0

    .line 3177
    :cond_184
    return-object v0

    .line 3136
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .end local v6    # "user_id":I
    .end local v13    # "argBundle":Landroid/os/Bundle;
    .end local v14    # "errorcode":I
    .local v4, "agentResponse":Landroid/os/Bundle;
    .restart local v21    # "user_id":I
    :catchall_185
    move-exception v0

    move-object/from16 v2, p3

    move/from16 v6, v21

    .end local v21    # "user_id":I
    .restart local v6    # "user_id":I
    goto :goto_18f

    .end local v6    # "user_id":I
    .restart local v15    # "user_id":I
    :catchall_18b
    move-exception v0

    move-object/from16 v2, p3

    move v6, v15

    .end local v15    # "user_id":I
    .restart local v6    # "user_id":I
    :goto_18f
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3137
    throw v0
.end method

.method public generateWrappedDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1542
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateWrappedDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .registers 7
    .param p1, "source"    # Ljava/lang/String;

    .line 5114
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5115
    return-object v0

    .line 5117
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finding active agent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5118
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5119
    .local v3, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v4, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 5120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found active agent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5121
    return-object v3

    .line 5123
    .end local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_51
    goto :goto_24

    .line 5124
    :cond_52
    return-object v0
.end method

.method public getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;
    .registers 22
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3370
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v0, "getAdminConfigureBundleFromCs"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3371
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    .line 3373
    .local v3, "agentResponse":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdminConfigureBundleFromCs "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UcmService"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    .line 3375
    .local v5, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v0, 0xe

    const/4 v6, 0x0

    const-string v7, "bundleresponse"

    const-string v8, "errorresponse"

    if-nez v5, :cond_55

    .line 3376
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no agent found for Source = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3378
    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3379
    return-object v3

    .line 3383
    :cond_55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3385
    .local v9, "id":J
    :try_start_59
    new-instance v11, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v11, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3386
    .local v11, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v11}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v15

    .line 3387
    .local v15, "uriuid":I
    move/from16 v14, p2

    .line 3388
    .local v14, "user_id":I
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v11}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v13

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_99

    .line 3389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WARNING!!!! getAdminConfigureBundleFromCs is NOT allowed for URI = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3391
    const/16 v0, 0xf

    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_94
    .catchall {:try_start_59 .. :try_end_94} :catchall_e4

    .line 3392
    nop

    .line 3395
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3392
    return-object v3

    .line 3395
    .end local v11    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v14    # "user_id":I
    .end local v15    # "uriuid":I
    :cond_99
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3396
    nop

    .line 3400
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v11

    if-nez v11, :cond_af

    .line 3401
    const-string v11, "agent is not bound"

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3403
    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3404
    return-object v3

    .line 3406
    :cond_af
    move/from16 v11, p1

    invoke-virtual {v5, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object v0

    .line 3407
    .end local v3    # "agentResponse":Landroid/os/Bundle;
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez v0, :cond_cb

    .line 3408
    const-string v3, "ERROR: Null Response received from agent"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 3410
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3411
    const/16 v3, 0xd

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3412
    return-object v0

    .line 3414
    :cond_cb
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3415
    .local v3, "errorcode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCredentialStoragePluginConfiguration Response from plugin: error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    return-object v0

    .line 3395
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .local v3, "agentResponse":Landroid/os/Bundle;
    :catchall_e4
    move-exception v0

    move/from16 v11, p1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3396
    throw v0
.end method

.method public getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 16
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2400
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 2403
    .local v0, "credAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    new-instance v1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2404
    .local v1, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2405
    .local v2, "uid":I
    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v3

    .line 2406
    .local v3, "uriuid":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    .line 2407
    if-eq v2, v3, :cond_1f

    .line 2408
    const/16 v5, 0x3e8

    if-ne v2, v5, :cond_1f

    .line 2409
    move v2, v3

    .line 2413
    :cond_1f
    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v11

    .line 2414
    .local v11, "user_id":I
    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v5

    .line 2415
    .local v5, "uriresource":I
    if-ne v5, v4, :cond_2a

    const/4 v5, 0x1

    :cond_2a
    move v4, v5

    .line 2418
    .end local v5    # "uriresource":I
    .local v4, "uriresource":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2420
    .local v12, "id":J
    :try_start_2f
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v7, v11

    move v8, v2

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5e

    .line 2421
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! getAgentInfo is NOT allowed for URI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_2f .. :try_end_59} :catchall_67

    .line 2422
    const/4 v5, 0x0

    .line 2425
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2422
    return-object v5

    .line 2425
    :cond_5e
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2426
    nop

    .line 2429
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v5

    return-object v5

    .line 2425
    :catchall_67
    move-exception v5

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2426
    throw v5
.end method

.method public getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 24
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1782
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCertificateChain "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UcmService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 1786
    .local v4, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    .line 1787
    .local v5, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v0, 0xe

    const-string v6, "errorresponse"

    if-nez v5, :cond_4e

    .line 1788
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no agent found for Source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1790
    invoke-direct {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1794
    :cond_4e
    new-instance v7, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v7, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v7, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1796
    .local v8, "uid":I
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v9

    .line 1797
    .local v9, "uriuid":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_6b

    .line 1798
    if-eq v8, v9, :cond_6b

    .line 1799
    const/16 v11, 0x3e8

    if-eq v8, v11, :cond_6a

    invoke-direct {v1, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 1800
    :cond_6a
    move v8, v9

    .line 1804
    :cond_6b
    invoke-direct {v1, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v11

    .line 1805
    .local v11, "user_id":I
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v12

    .line 1806
    .local v12, "uriresource":I
    if-ne v12, v10, :cond_76

    const/4 v12, 0x1

    :cond_76
    move v15, v12

    .line 1808
    .end local v12    # "uriresource":I
    .local v15, "uriresource":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-direct {v1, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v12

    if-eqz v12, :cond_a6

    .line 1809
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v12

    .line 1810
    .local v12, "userId":I
    if-eq v12, v10, :cond_a1

    .line 1811
    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v11

    .line 1812
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCertificateChain new userid-"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    goto :goto_a7

    .line 1814
    :cond_a1
    const-string v10, "getCertificateChain user id id not valid. Keeping same userid"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    .end local v12    # "userId":I
    :cond_a6
    move v10, v11

    .end local v11    # "user_id":I
    .local v10, "user_id":I
    :goto_a7
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v14, v11

    .line 1821
    .local v14, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1823
    .local v17, "id":J
    :try_start_b1
    iget-object v11, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v12

    const/16 v16, 0x0

    invoke-virtual {v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v19
    :try_end_c1
    .catchall {:try_start_b1 .. :try_end_c1} :catchall_1bb

    move v13, v10

    move/from16 v20, v9

    move-object v9, v14

    .end local v14    # "argBundle":Landroid/os/Bundle;
    .local v9, "argBundle":Landroid/os/Bundle;
    .local v20, "uriuid":I
    move v14, v8

    move-object/from16 v21, v7

    move v7, v15

    .end local v15    # "uriresource":I
    .local v7, "uriresource":I
    .local v21, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    move/from16 v15, v16

    move-object/from16 v16, v19

    :try_start_cd
    invoke-virtual/range {v11 .. v16}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_f4

    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WARNING!!!! getCertificateChain is NOT allowed for URI = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const/16 v0, 0xf

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1826
    invoke-direct {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_f0
    .catchall {:try_start_cd .. :try_end_f0} :catchall_1b9

    .line 1829
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1826
    return-object v0

    .line 1829
    :cond_f4
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1830
    nop

    .line 1834
    const-string v11, "callerUid"

    invoke-virtual {v9, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1835
    const-string v12, "user_id"

    invoke-virtual {v9, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1836
    const-string v13, "ownerUid"

    invoke-virtual {v9, v13, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1837
    const-string v13, "resource"

    invoke-virtual {v9, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1839
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, -0x2

    invoke-virtual {v9, v13, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getCertificateChain KEY_USER_ID= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v11

    if-nez v11, :cond_168

    .line 1846
    const-string v11, "agent is not bound"

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1848
    invoke-direct {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 1850
    :cond_168
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1851
    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .local v0, "agentResponse":Landroid/os/Bundle;
    const/16 v4, 0xd

    if-nez v0, :cond_187

    .line 1852
    const-string v11, "ERROR: Null Response received from agent"

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 1854
    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1855
    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    .line 1857
    :cond_187
    const-string v11, "bytearrayresponse"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 1858
    .local v11, "response":[B
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1859
    .local v12, "errorcode":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getCertificateChain Response from plugin:  error code = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    if-nez v11, :cond_1b4

    .line 1862
    const-string v13, "ERROR: Empty data received for getCertificateChain"

    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1864
    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    .line 1866
    :cond_1b4
    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    .line 1829
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .end local v11    # "response":[B
    .end local v12    # "errorcode":I
    .restart local v4    # "agentResponse":Landroid/os/Bundle;
    :catchall_1b9
    move-exception v0

    goto :goto_1c2

    .end local v20    # "uriuid":I
    .end local v21    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .local v7, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .local v9, "uriuid":I
    .restart local v14    # "argBundle":Landroid/os/Bundle;
    .restart local v15    # "uriresource":I
    :catchall_1bb
    move-exception v0

    move-object/from16 v21, v7

    move/from16 v20, v9

    move-object v9, v14

    move v7, v15

    .end local v14    # "argBundle":Landroid/os/Bundle;
    .end local v15    # "uriresource":I
    .local v7, "uriresource":I
    .local v9, "argBundle":Landroid/os/Bundle;
    .restart local v20    # "uriuid":I
    .restart local v21    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    :goto_1c2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1830
    throw v0
.end method

.method public getConfigureBundleFromCs(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3363
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v1, "bundleresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3364
    const-string v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3365
    return-object v0
.end method

.method public getCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 13
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3211
    .local v0, "agentResponse":Landroid/os/Bundle;
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 3212
    .local v1, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v2, 0xe

    const-string v3, "errorresponse"

    const/4 v4, 0x0

    const-string v5, "bundleresponse"

    if-nez v1, :cond_1d

    .line 3213
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3214
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3215
    return-object v0

    .line 3219
    :cond_1d
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v6

    const-string v7, "UcmService"

    if-nez v6, :cond_31

    .line 3220
    const-string v6, "agent is not bound"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3222
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3223
    return-object v0

    .line 3225
    :cond_31
    invoke-virtual {v1, p1, p4, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3226
    const-string v2, "getCredentialStorageProperty Response from plugin"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    return-object v0
.end method

.method public getDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1597
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method public getDekForVold(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDekForVold ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    :try_start_1b
    const-string v0, "getDekForVold"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_2a

    .line 5183
    nop

    .line 5184
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getOdeVendorSpecific(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;->getDekForVold(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 5180
    :catch_2a
    move-exception v0

    .line 5181
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5182
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1
.end method

.method public getDekForVoldInternalKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDekForVoldInternalKey ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5192
    :try_start_1b
    const-string v0, "getDekForVoldInternalKey"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_3c

    .line 5196
    nop

    .line 5198
    if-eqz p2, :cond_30

    array-length v0, p2

    if-nez v0, :cond_27

    goto :goto_30

    .line 5202
    :cond_27
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getOdeVendorSpecific(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;->getDekForVoldInternalKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 5199
    :cond_30
    :goto_30
    const-string v0, "getDekForVoldInternalKey. key is empty"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5200
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 5193
    :catch_3c
    move-exception v0

    .line 5194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5195
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1
.end method

.method public getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDetailErrorMessage uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_2b

    goto :goto_4c

    .line 4771
    :cond_2b
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    .line 4772
    .local v2, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v2, :cond_3b

    .line 4773
    const-string v3, "Cannot find agent"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4774
    return-object v0

    .line 4777
    :cond_3b
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v3

    if-nez v3, :cond_47

    .line 4778
    const-string v3, "agent is not bound"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    return-object v0

    .line 4782
    :cond_47
    invoke-virtual {v2, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4767
    .end local v2    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_4c
    :goto_4c
    const-string v2, "uri is not proper"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    return-object v0
.end method

.method public getInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3726
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    if-eqz p1, :cond_b0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_2a

    goto/16 :goto_b0

    .line 3732
    :cond_2a
    const/4 v3, 0x0

    .line 3733
    .local v3, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_3a

    .line 3734
    const-string v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    goto :goto_42

    .line 3736
    :cond_3a
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    .line 3739
    :goto_42
    const/16 v4, 0xe

    if-nez v3, :cond_62

    .line 3740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3742
    return-object v0

    .line 3745
    :cond_62
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_89

    .line 3746
    new-instance v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v5}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3747
    .local v5, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3748
    iget-object v6, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3749
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 3752
    .end local v5    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_89
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_98

    .line 3753
    const-string v5, "agent is not bound"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3755
    return-object v0

    .line 3758
    :cond_98
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 3759
    if-nez v0, :cond_af

    .line 3760
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 3762
    const/16 v1, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3763
    return-object v0

    .line 3765
    :cond_af
    return-object v0

    .line 3727
    .end local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_b0
    :goto_b0
    const-string v3, "uri is empty"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    const/16 v1, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3729
    return-object v0
.end method

.method public getKeyguardStorageForCurrentUser(I)Ljava/lang/String;
    .registers 14
    .param p1, "userId"    # I

    .line 3769
    const-string v0, "The exception occurs "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyguardStorageForCurrentUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    const/4 v1, 0x0

    .line 3771
    .local v1, "vendorName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getKeyguardInfoFile(I)Landroid/util/AtomicFile;

    move-result-object v3

    .line 3772
    .local v3, "keguardInfoFile":Landroid/util/AtomicFile;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_29

    .line 3773
    return-object v5

    .line 3775
    :cond_29
    const-string v4, "isFileExist : exist"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    :try_start_2e
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_32} :catch_bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_32} :catch_a7
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_32} :catch_8f

    .line 3778
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_32
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 3779
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3780
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 3781
    .local v7, "eventType":I
    :goto_3d
    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v7, v9, :cond_49

    if-eq v7, v8, :cond_49

    .line 3782
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v7, v8

    goto :goto_3d

    .line 3784
    :cond_49
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 3785
    .local v10, "tagName":Ljava/lang/String;
    const-string v11, "keyguard"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 3786
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v7, v11

    .line 3788
    :cond_5a
    if-ne v7, v9, :cond_76

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ne v11, v9, :cond_76

    .line 3789
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 3790
    const-string v11, "vendor"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_76

    .line 3791
    const-string v11, "name"

    invoke-interface {v6, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    .line 3794
    :cond_76
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11
    :try_end_7a
    .catchall {:try_start_32 .. :try_end_7a} :catchall_83

    move v7, v11

    .line 3795
    if-ne v7, v8, :cond_5a

    .line 3797
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "eventType":I
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_7d
    if-eqz v4, :cond_d6

    :try_start_7f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_82} :catch_bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7f .. :try_end_82} :catch_a7
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_8f

    goto :goto_d6

    .line 3777
    :catchall_83
    move-exception v5

    if-eqz v4, :cond_8e

    :try_start_86
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v6

    :try_start_8b
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "vendorName":Ljava/lang/String;
    .end local v3    # "keguardInfoFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .end local p1    # "userId":I
    :cond_8e
    :goto_8e
    throw v5
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_8f} :catch_bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_8f} :catch_a7
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8f} :catch_8f

    .line 3803
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "vendorName":Ljava/lang/String;
    .restart local v3    # "keguardInfoFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local p1    # "userId":I
    :catch_8f
    move-exception v4

    .line 3805
    .local v4, "ie":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 3800
    .end local v4    # "ie":Ljava/io/IOException;
    :catch_a7
    move-exception v4

    .line 3802
    .local v4, "xpe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "xpe":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_d6

    .line 3797
    :catch_bf
    move-exception v4

    .line 3799
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_d6
    :goto_d6
    nop

    .line 3807
    :goto_d7
    return-object v1
.end method

.method public getODEConfigurationForVold(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 14
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5207
    const-string v0, "The exception occurs "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getODEConfigurationForVold ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    :try_start_1d
    const-string v1, "getODEConfigurationForVold"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_9c

    .line 5214
    nop

    .line 5217
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v1

    .line 5218
    .local v1, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5220
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v4, v1, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_36

    .line 5221
    const-string v4, "enabledWrap"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5225
    :cond_36
    const/4 v4, 0x0

    .line 5226
    .local v4, "totalLen":I
    const/4 v6, 0x0

    .line 5227
    .local v6, "index":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_50

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5228
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v4, v9

    .line 5229
    nop

    .end local v8    # "str":Ljava/lang/String;
    add-int/2addr v4, v5

    .line 5230
    goto :goto_3c

    .line 5231
    :cond_50
    new-array v5, v4, [B

    .line 5233
    .local v5, "ret":[B
    const/4 v7, 0x0

    :try_start_53
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_57
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5234
    .local v9, "str":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v5, v6

    .line 5235
    add-int/lit8 v6, v6, 0x1

    .line 5236
    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v7, v5, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5237
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_53 .. :try_end_7d} :catch_80

    add-int/2addr v6, v10

    .line 5238
    .end local v9    # "str":Ljava/lang/String;
    goto :goto_57

    .line 5241
    :cond_7f
    goto :goto_97

    .line 5239
    :catch_80
    move-exception v8

    .line 5240
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5243
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_97
    invoke-direct {p0, v7, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 5211
    .end local v1    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "totalLen":I
    .end local v5    # "ret":[B
    .end local v6    # "index":I
    :catch_9c
    move-exception v1

    .line 5212
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5213
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method public getODESettingsConfiguration()Landroid/os/Bundle;
    .registers 8

    .line 4673
    const-string v0, "UcmService"

    const-string v1, "getODESettingsConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4674
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4676
    .local v1, "responseBundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v2

    .line 4678
    .local v2, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    if-nez v2, :cond_13

    .line 4680
    return-object v1

    .line 4683
    :cond_13
    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->isUcmOdeEnabled()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4684
    const-string v3, "Device is encrypted as UCM"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4685
    const/4 v3, 0x1

    const-string v4, "odeEnabled"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4688
    :cond_24
    iget-object v3, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 4690
    .local v3, "csNameByte":[B
    if-eqz v3, :cond_66

    :try_start_28
    array-length v4, v3

    if-lez v4, :cond_66

    .line 4691
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4692
    .local v4, "agentId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "agentId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4693
    const-string v5, "id"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_28 .. :try_end_4b} :catch_4c

    goto :goto_66

    .line 4695
    .end local v4    # "agentId":Ljava/lang/String;
    :catch_4c
    move-exception v4

    .line 4696
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The exception occurs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 4697
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_66
    :goto_66
    nop

    .line 4698
    :goto_67
    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const-string v4, "odeSignature"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4699
    iget-object v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    const-string v4, "aid"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 4700
    iget v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isVaildStorageType(I)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 4701
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    iget v4, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    aget-object v0, v0, v4

    const-string v4, "storagetype"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4702
    :cond_88
    iget v0, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isVaildSCPType(I)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 4703
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    iget v4, v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    aget-object v0, v0, v4

    const-string v4, "scptype"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4705
    :cond_9b
    return-object v1
.end method

.method public getOdeKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5129
    const-string v0, "The exception occurs "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOdeKey ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    :try_start_1d
    const-string v1, "getOdeKey"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_6c

    .line 5136
    nop

    .line 5138
    if-eqz p2, :cond_60

    array-length v1, p2

    if-nez v1, :cond_29

    goto :goto_60

    .line 5143
    :cond_29
    const/4 v1, 0x0

    .line 5145
    .local v1, "esecommAdapter":Lcom/sec/esecomm/EsecommAdapter;
    :try_start_2a
    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_42

    .line 5149
    .end local v1    # "esecommAdapter":Lcom/sec/esecomm/EsecommAdapter;
    .local v0, "esecommAdapter":Lcom/sec/esecomm/EsecommAdapter;
    nop

    .line 5150
    invoke-virtual {v0, p2}, Lcom/sec/esecomm/EsecommAdapter;->getODEKey([B)[B

    move-result-object v1

    .line 5151
    .local v1, "odeKey":[B
    if-nez v1, :cond_3c

    .line 5152
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 5154
    :cond_3c
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    return-object v2

    .line 5146
    .end local v0    # "esecommAdapter":Lcom/sec/esecomm/EsecommAdapter;
    .local v1, "esecommAdapter":Lcom/sec/esecomm/EsecommAdapter;
    :catch_42
    move-exception v3

    .line 5147
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 5139
    .end local v1    # "esecommAdapter":Lcom/sec/esecomm/EsecommAdapter;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_60
    :goto_60
    const-string v0, "getOdeKey. wrappedKey is empty"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5140
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 5133
    :catch_6c
    move-exception v1

    .line 5134
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5135
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method public getStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 18
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4798
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4800
    .local v2, "agentResponse":Landroid/os/Bundle;
    const-string v4, "errorresponse"

    if-eqz v1, :cond_14e

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_2e

    goto/16 :goto_14e

    .line 4806
    :cond_2e
    const/4 v5, -0x1

    .line 4807
    .local v5, "state":I
    const/4 v7, -0x1

    .line 4808
    .local v7, "remainCnt":I
    const/4 v8, -0x1

    .line 4809
    .local v8, "maxCnt":I
    const/4 v9, -0x1

    .line 4810
    .local v9, "pinMinLength":I
    const/4 v10, -0x1

    .line 4811
    .local v10, "pinMaxLength":I
    const/4 v11, 0x0

    .line 4812
    .local v11, "authMode":I
    const/4 v12, -0x1

    .line 4813
    .local v12, "pukMinLength":I
    const/4 v13, -0x1

    .line 4815
    .local v13, "pukMaxLength":I
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v14

    .line 4816
    .local v14, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v15, "boot_test"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-ne v6, v15, :cond_4d

    .line 4817
    const-string v6, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {v0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    .end local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .local v6, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto :goto_55

    .line 4819
    .end local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_4d
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    .line 4822
    .end local v14    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_55
    if-nez v6, :cond_75

    .line 4823
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no agent found for Source = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    const/16 v3, 0xe

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4825
    return-object v2

    .line 4827
    :cond_75
    iget-object v14, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-nez v14, :cond_97

    .line 4828
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "no agent info found for Source = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    const/16 v3, 0xe

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4830
    return-object v2

    .line 4833
    :cond_97
    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v14

    if-nez v14, :cond_ae

    .line 4834
    const-string v14, "agent is not bound"

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 4836
    const/16 v3, 0xe

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4837
    return-object v2

    .line 4840
    :cond_ae
    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getStatus()Landroid/os/Bundle;

    move-result-object v2

    .line 4841
    if-nez v2, :cond_c5

    .line 4842
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object v2, v14

    .line 4843
    const-string v14, "ERROR: Null Response received from agent"

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4844
    const/16 v3, 0xd

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4845
    return-object v2

    .line 4848
    :cond_c5
    const-string v4, "getStatus success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    const-string v4, "state"

    const/4 v14, -0x1

    invoke-virtual {v2, v4, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 4850
    .end local v5    # "state":I
    .local v4, "state":I
    const-string v5, "remainCnt"

    invoke-virtual {v2, v5, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4851
    .end local v7    # "remainCnt":I
    .local v5, "remainCnt":I
    iget-object v7, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 4852
    .end local v8    # "maxCnt":I
    .local v7, "maxCnt":I
    iget-object v8, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 4853
    .end local v9    # "pinMinLength":I
    .local v8, "pinMinLength":I
    iget-object v9, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 4854
    .end local v10    # "pinMaxLength":I
    .local v9, "pinMaxLength":I
    iget-object v10, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 4855
    .end local v11    # "authMode":I
    .local v10, "authMode":I
    iget-object v11, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v11, v11, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 4856
    .end local v12    # "pukMinLength":I
    .local v11, "pukMinLength":I
    iget-object v12, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v12, v12, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 4858
    .end local v13    # "pukMaxLength":I
    .local v12, "pukMaxLength":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "values get from agent : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4861
    const-string v3, "maxAuthCnt"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4862
    const-string v3, "maxPinLength"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4863
    const-string v3, "minPinLength"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4864
    const-string v3, "authMode"

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4865
    const-string v3, "minPukLength"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4866
    const-string v3, "maxPukLength"

    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4868
    return-object v2

    .line 4801
    .end local v4    # "state":I
    .end local v5    # "remainCnt":I
    .end local v6    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v7    # "maxCnt":I
    .end local v8    # "pinMinLength":I
    .end local v9    # "pinMaxLength":I
    .end local v10    # "authMode":I
    .end local v11    # "pukMinLength":I
    .end local v12    # "pukMaxLength":I
    :cond_14e
    :goto_14e
    const-string v5, "csName is empty"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    const/16 v3, 0x10

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4803
    return-object v2
.end method

.method public grantKeyChainAccess(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grantKeyChainAccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkSystemCaller()V

    .line 3087
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 3088
    const-string v0, "Not Keychain URI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    const/4 v0, 0x0

    return v0

    .line 3091
    :cond_2e
    const/4 v0, 0x1

    return v0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2546
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 2547
    .local v0, "pluginResponse":Landroid/os/Bundle;
    const-string v1, "UcmService"

    if-eqz v0, :cond_29

    .line 2548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCMERRORTESTING: @CredentialManagerService importKeyPair Response from plugin with error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 2550
    :cond_29
    const-string v2, "UCMERRORTESTING: @CredentialManagerService importKeyPair Response from plugin is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :goto_2e
    return-object v0
.end method

.method public installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2557
    const-string v0, "installCertificate"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2559
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 2560
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v1, "errorresponse"

    if-nez v0, :cond_25

    .line 2561
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    .line 2562
    const/4 v2, 0x0

    const-string v3, "booleanresponse"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2563
    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2564
    return-object v0

    .line 2566
    :cond_25
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2567
    .local v1, "errorcode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installCertificate Response:  error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UcmService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UCMERRORTESTING: @CredentialManagerService installCertificate Response from plugin with error code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    return-object v0
.end method

.method public isCredentialStorageLock(Ljava/lang/String;)Z
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 1712
    const-string v0, "UcmService"

    const-string v1, "UCS ODE isCredentialStorageLock in UCS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    return v0
.end method

.method public isKeyChainGranted(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3096
    const/4 v0, 0x1

    return v0
.end method

.method public isUserCertificatesExistInUCS()Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    move-object/from16 v1, p0

    const-string v0, "UcmService"

    const-string v2, "isUserCertificatesExistInUCS called"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const-string v2, "isUserCertificatesExistInUCS"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1182
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1183
    .local v2, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v3

    .line 1185
    .local v3, "user_id":I
    const-string v4, "callerUid"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1186
    const-string v4, "user_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1187
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1188
    .local v4, "newParamBundle":Landroid/os/Bundle;
    const-string v5, "removable_user_certificates_list"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1189
    const-string v5, "extraArgs"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1191
    const-string v5, "Iteration has started...."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v5, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1194
    .local v7, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v7, :cond_55

    .line 1195
    goto :goto_46

    .line 1197
    :cond_55
    invoke-virtual {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v8

    if-eqz v8, :cond_101

    iget-object v8, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    if-eqz v8, :cond_64

    move v13, v6

    goto/16 :goto_102

    .line 1202
    :cond_64
    iget-object v8, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 1203
    const-string v8, "activeAgent is CSobscure"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    goto :goto_46

    .line 1208
    :cond_72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1211
    .local v8, "id1":J
    :try_start_76
    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10, v3, v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v10
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_fc

    .line 1213
    .local v10, "mdmAliases":[Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1214
    nop

    .line 1217
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .local v11, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "resource"

    invoke-virtual {v2, v12, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1219
    invoke-virtual {v7, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    .line 1220
    .local v13, "agentResponse":Landroid/os/Bundle;
    const/4 v14, 0x0

    .line 1221
    .local v14, "agentAliasesKeyChain":[Ljava/lang/String;
    const-string v15, "stringarrayresponse"

    if-eqz v13, :cond_97

    .line 1222
    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1224
    :cond_97
    if-eqz v14, :cond_9c

    .line 1225
    invoke-static {v11, v14}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1228
    :cond_9c
    if-eqz v10, :cond_b7

    .line 1229
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "i":I
    :goto_a2
    array-length v1, v10

    if-ge v6, v1, :cond_b7

    .line 1230
    aget-object v1, v10, v6

    invoke-interface {v11, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1231
    aget-object v1, v10, v6

    invoke-interface {v11, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1229
    :cond_b2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto :goto_a2

    .line 1237
    .end local v6    # "i":I
    :cond_b7
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_bf

    .line 1238
    const/4 v0, 0x1

    return v0

    .line 1242
    :cond_bf
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    .local v1, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x3

    invoke-virtual {v2, v12, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1244
    invoke-virtual {v7, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 1245
    .end local v13    # "agentResponse":Landroid/os/Bundle;
    .local v6, "agentResponse":Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 1246
    .local v12, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v6, :cond_d3

    .line 1247
    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1248
    :cond_d3
    if-eqz v12, :cond_d8

    .line 1249
    invoke-static {v1, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1252
    :cond_d8
    if-eqz v10, :cond_ee

    .line 1253
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_db
    array-length v15, v10

    if-ge v13, v15, :cond_ee

    .line 1254
    aget-object v15, v10, v13

    invoke-interface {v1, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_eb

    .line 1255
    aget-object v15, v10, v13

    invoke-interface {v1, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1253
    :cond_eb
    add-int/lit8 v13, v13, 0x1

    goto :goto_db

    .line 1260
    .end local v13    # "i":I
    :cond_ee
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_f6

    .line 1261
    const/4 v13, 0x1

    return v13

    .line 1260
    :cond_f6
    const/4 v13, 0x1

    .line 1263
    .end local v1    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .end local v7    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v8    # "id1":J
    .end local v10    # "mdmAliases":[Ljava/lang/String;
    .end local v11    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "agentAliasesWiFi":[Ljava/lang/String;
    .end local v14    # "agentAliasesKeyChain":[Ljava/lang/String;
    move-object/from16 v1, p0

    move v6, v13

    goto/16 :goto_46

    .line 1213
    .restart local v7    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v8    # "id1":J
    :catchall_fc
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1214
    throw v0

    .line 1197
    .end local v8    # "id1":J
    :cond_101
    move v13, v6

    .line 1198
    :goto_102
    const-string v1, "agent is not bound or not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    move-object/from16 v1, p0

    move v6, v13

    goto/16 :goto_46

    .line 1264
    .end local v7    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_10c
    const/4 v0, 0x0

    return v0
.end method

.method public listAllProviders()[Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2982
    const-string v0, "listAllProviders"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2983
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public listPasswordSupportedProviders(I)[Ljava/lang/String;
    .registers 12
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listPasswordSupportedProviders : userid -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3042
    .local v0, "uid":I
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_28

    .line 3043
    const/4 v1, 0x0

    return-object v1

    .line 3045
    :cond_28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3046
    .local v2, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 3047
    .local v4, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v4, :cond_37

    iget-object v5, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v5, :cond_37

    iget-object v5, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-nez v5, :cond_50

    .line 3048
    goto :goto_37

    .line 3049
    :cond_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3051
    .local v5, "id":J
    :try_start_54
    new-instance v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v7}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3052
    .local v7, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v8, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3053
    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11f

    .line 3054
    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3055
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listPasswordSupportedProviders :  cs Name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Package name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, p1, v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-eqz v8, :cond_101

    .line 3062
    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v8, :cond_119

    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v8, :cond_119

    .line 3063
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, p1, v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCredentialStorageEnabledForLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-eqz v8, :cond_c9

    .line 3064
    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3065
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "password support provider enabled as a lock type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_119

    .line 3067
    :cond_c9
    iget-object v8, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v8, :cond_e8

    .line 3068
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Credential Storage not enabled as a lock type -  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_119

    .line 3070
    :cond_e8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NON Password Supported Credential Storage -  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_119

    .line 3074
    :cond_101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NON managed provider -  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catchall {:try_start_54 .. :try_end_119} :catchall_129

    .line 3077
    .end local v7    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_119
    :goto_119
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3078
    nop

    .line 3079
    .end local v4    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v5    # "id":J
    goto/16 :goto_37

    .line 3057
    .restart local v4    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v5    # "id":J
    .restart local v7    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_11f
    :try_start_11f
    const-string v8, "Package name for CS found NULL. Ignoring CS"

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_11f .. :try_end_124} :catchall_129

    .line 3077
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3058
    goto/16 :goto_37

    .line 3077
    .end local v7    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :catchall_129
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3078
    throw v1

    .line 3080
    .end local v4    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v5    # "id":J
    :cond_12e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public listProviders()[Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2978
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1016
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyChangeToPlugin event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UcmService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const-string v3, "notifyChangeToPlugin"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1018
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1020
    .local v3, "agentResponse":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 1021
    .local v5, "error":Z
    const/16 v6, 0x12

    const/4 v7, 0x1

    const-string v10, "booleanresponse"

    const-string v11, "errorresponse"

    if-nez p1, :cond_cb

    .line 1022
    iget-object v12, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v12}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1023
    .local v13, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v13, :cond_49

    .line 1024
    goto :goto_3a

    .line 1025
    :cond_49
    invoke-virtual {v13}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v14

    if-eqz v14, :cond_b4

    .line 1026
    const/4 v14, 0x0

    .line 1027
    .local v14, "status":I
    invoke-direct {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v15

    .line 1028
    .local v15, "notify":Z
    const-string v9, "activeAgent "

    if-eqz v15, :cond_7b

    .line 1029
    invoke-virtual {v13, v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->notifyChange(ILandroid/os/Bundle;)I

    move-result v14

    .line 1030
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " notify status - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 1032
    :cond_7b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not notified"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :goto_96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activeAgent status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    if-ne v5, v7, :cond_ad

    goto :goto_3a

    .line 1037
    :cond_ad
    if-eqz v14, :cond_b3

    .line 1038
    invoke-virtual {v3, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1039
    const/4 v5, 0x1

    .line 1041
    .end local v14    # "status":I
    .end local v15    # "notify":Z
    :cond_b3
    goto :goto_bf

    .line 1042
    :cond_b4
    const/16 v8, 0xe

    invoke-virtual {v3, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1043
    const-string v8, "agentService is null"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v5, 0x1

    .line 1046
    .end local v13    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :goto_bf
    goto/16 :goto_3a

    .line 1047
    :cond_c1
    if-nez v5, :cond_c7

    .line 1048
    const/4 v4, 0x0

    invoke-virtual {v3, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1050
    :cond_c7
    invoke-virtual {v3, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1051
    return-object v3

    .line 1053
    :cond_cb
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v8

    .line 1054
    .local v8, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v8, :cond_f7

    .line 1055
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/4 v4, 0x0

    invoke-virtual {v3, v10, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1057
    const/16 v4, 0xe

    invoke-virtual {v3, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1058
    return-object v3

    .line 1061
    :cond_f7
    invoke-virtual {v8}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 1062
    invoke-virtual {v8, v1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->notifyChange(ILandroid/os/Bundle;)I

    move-result v4

    .line 1063
    .local v4, "status":I
    if-nez v4, :cond_10b

    .line 1064
    invoke-virtual {v3, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1065
    const/4 v6, 0x0

    invoke-virtual {v3, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1066
    return-object v3

    .line 1068
    :cond_10b
    invoke-virtual {v3, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1070
    .end local v4    # "status":I
    goto :goto_119

    .line 1071
    :cond_10f
    const/16 v6, 0xe

    invoke-virtual {v3, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1072
    const-string v6, "agent is not bound"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :goto_119
    const/4 v4, 0x0

    invoke-virtual {v3, v10, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1075
    return-object v3
.end method

.method public notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .line 1269
    const-string v0, "notifyLicenseStatus"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyLicenseStatus packageName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",status-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1272
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1273
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v2, "status"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1276
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1277
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v2, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->checkESE(Ljava/lang/String;)V

    .line 1278
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1279
    const/4 v2, 0x1

    return v2
.end method

.method public notifyVoldComplete(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVoldComplete ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    :try_start_1b
    const-string v0, "notifyVoldComplete"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_36

    .line 5166
    nop

    .line 5167
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsVoldCompleteNotified:Z

    .line 5170
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_56

    .line 5171
    .local v0, "retMsg":[B
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1

    .line 5163
    .end local v0    # "retMsg":[B
    :catch_36
    move-exception v0

    .line 5164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5165
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1

    :array_56
    .array-data 1
        0x6ft
        0x6bt
    .end array-data
.end method

.method public processCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 25
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "command"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4999
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCommand "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UcmService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5000
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 5001
    .local v4, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    .line 5002
    .local v5, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v0, 0xe

    const/4 v6, 0x0

    const-string v7, "bytearrayresponse"

    const-string v8, "errorresponse"

    if-nez v5, :cond_38

    .line 5003
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5004
    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5005
    return-object v4

    .line 5009
    :cond_38
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v9, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 5010
    .local v9, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 5011
    .local v10, "uid":I
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    .line 5012
    .local v11, "uriuid":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_4f

    .line 5013
    if-eq v10, v11, :cond_4f

    .line 5014
    const/16 v12, 0x3e8

    if-ne v10, v12, :cond_4f

    .line 5015
    move v10, v11

    .line 5019
    :cond_4f
    invoke-direct {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v18

    .line 5021
    .local v18, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 5023
    .local v19, "id":J
    :try_start_57
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v14, v18

    move v15, v10

    invoke-virtual/range {v12 .. v17}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_8f

    .line 5024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WARNING!!!! processCommand is NOT allowed for URI = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5025
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5026
    const/16 v0, 0xf

    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8a
    .catchall {:try_start_57 .. :try_end_8a} :catchall_dc

    .line 5027
    nop

    .line 5030
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5027
    return-object v4

    .line 5030
    :cond_8f
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5031
    nop

    .line 5035
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v12

    if-nez v12, :cond_a5

    .line 5036
    const-string v12, "agent is not bound"

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5037
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5038
    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5039
    return-object v4

    .line 5041
    :cond_a5
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual {v5, v12, v13, v10}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    .line 5042
    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez v0, :cond_c3

    .line 5043
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5044
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 5045
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 5046
    const/16 v3, 0xd

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5047
    return-object v0

    .line 5049
    :cond_c3
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 5050
    .local v4, "errorcode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processCommand Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5051
    return-object v0

    .line 5030
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .local v4, "agentResponse":Landroid/os/Bundle;
    :catchall_dc
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5031
    throw v0
.end method

.method public processMessage(I[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 10
    .param p1, "type"    # I
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1428
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->enforceUidPermission(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_32

    .line 1429
    const-string v2, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    .line 1431
    .local v1, "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    iput v3, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    .line 1432
    const/16 v2, 0x41

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1433
    return-object v1

    .line 1436
    .end local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    :cond_32
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidMsgType(I)Z

    move-result v2

    if-nez v2, :cond_49

    .line 1437
    const-string v2, "Invalid message Type..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    .line 1439
    .restart local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    iput v3, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    .line 1440
    const/16 v2, 0x40

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1441
    return-object v1

    .line 1444
    .end local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    :cond_49
    if-nez p2, :cond_5c

    .line 1445
    const-string v2, "message byte is null.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>()V

    .line 1447
    .restart local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    iput v3, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    .line 1448
    const/16 v2, 0x32

    iput v2, v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    .line 1449
    return-object v1

    .line 1451
    .end local v1    # "message":Lcom/samsung/android/knox/ucm/core/ApduMessage;
    :cond_5c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1453
    .local v2, "id":J
    :try_start_60
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v4, v0, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->processMsg(II[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v1
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_66} :catch_6c
    .catchall {:try_start_60 .. :try_end_66} :catchall_6a

    .line 1457
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1453
    return-object v1

    .line 1457
    :catchall_6a
    move-exception v1

    goto :goto_8c

    .line 1454
    :catch_6c
    move-exception v4

    .line 1455
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The exception occurs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_6d .. :try_end_85} :catchall_6a

    .line 1457
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1458
    nop

    .line 1460
    const/4 v1, 0x0

    return-object v1

    .line 1457
    :goto_8c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1458
    throw v1
.end method

.method public declared-synchronized publishService()V
    .registers 3

    monitor-enter p0

    .line 5391
    :try_start_1
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_15

    .line 5392
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5393
    const-string v0, "UcmService"

    const-string v1, "publishedService com.samsung.ucs.ucsservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 5395
    .end local p0    # "this":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :cond_15
    monitor-exit p0

    return-void

    .line 5390
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected refreshAgents()V
    .registers 3

    .line 749
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 750
    return-void
.end method

.method public registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    .line 5585
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mSystemUICallback:Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    .line 5586
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->updateSystemUIMonitor()V

    .line 5587
    return-void
.end method

.method public removeEnforcedLockTypeNotification(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 5478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeEnforcedLockTypeNotification : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5479
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 5480
    .local v0, "notiMgr":Landroid/app/NotificationManager;
    if-nez v0, :cond_28

    .line 5481
    const-string v2, "Failed to get NotificationManager"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    return-void

    .line 5484
    :cond_28
    add-int/lit16 v1, p1, 0x1f40

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 5485
    return-void
.end method

.method public resetNonMdmCertificates()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1085
    move-object/from16 v1, p0

    const-string v0, "UcmService"

    const-string v2, "resetNonMdmCertificates called"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const-string v2, "resetNonMdmCertificates"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1088
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1089
    .local v2, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v3

    .line 1091
    .local v3, "user_id":I
    const-string v4, "callerUid"

    const/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1092
    const-string v4, "user_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1094
    const-string v4, "Iteration has started...."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v4, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v4}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1097
    .local v5, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v5, :cond_45

    .line 1098
    goto :goto_36

    .line 1100
    :cond_45
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v6

    if-eqz v6, :cond_14e

    iget-object v6, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    if-eqz v6, :cond_55

    move/from16 v18, v3

    goto/16 :goto_150

    .line 1105
    :cond_55
    iget-object v6, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6, v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 1106
    const-string v6, "activeAgent is CSobscure"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    goto :goto_36

    .line 1110
    :cond_63
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .local v6, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    .local v7, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "resource"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1115
    invoke-virtual {v5, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1116
    .local v10, "agentResponse":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 1117
    .local v11, "agentAliasesKeyChain":[Ljava/lang/String;
    const-string v12, "stringarrayresponse"

    if-eqz v10, :cond_80

    .line 1118
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1119
    :cond_80
    if-eqz v11, :cond_85

    .line 1120
    invoke-static {v6, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1124
    :cond_85
    const/4 v13, 0x3

    invoke-virtual {v2, v8, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1125
    invoke-virtual {v5, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1126
    const/4 v14, 0x0

    .line 1127
    .local v14, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v10, :cond_94

    .line 1128
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1129
    :cond_94
    if-eqz v14, :cond_99

    .line 1130
    invoke-static {v7, v14}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1133
    :cond_99
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_ab

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_ab

    .line 1134
    const-string v8, "agentAliasesListKeychain.isEmpty() && agentAliasesListWiFi.isEmpty() .... continue"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    goto :goto_36

    .line 1139
    :cond_ab
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1142
    .local v15, "id1":J
    :try_start_af
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v12, v3, v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v12
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_147

    .line 1144
    .local v12, "mdmAliases":[Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1145
    nop

    .line 1148
    if-eqz v12, :cond_e1

    .line 1149
    const/16 v17, 0x0

    move/from16 v13, v17

    .local v13, "i":I
    :goto_bf
    array-length v9, v12

    if-ge v13, v9, :cond_e1

    .line 1150
    aget-object v9, v12, v13

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 1151
    aget-object v9, v12, v13

    invoke-interface {v6, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_dd

    .line 1152
    :cond_d0
    aget-object v9, v12, v13

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dd

    .line 1153
    aget-object v9, v12, v13

    invoke-interface {v7, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1149
    :cond_dd
    :goto_dd
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x1

    goto :goto_bf

    .line 1159
    .end local v13    # "i":I
    :cond_e1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_e5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_113

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1160
    .local v13, "alias":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    .end local v3    # "user_id":I
    .local v18, "user_id":I
    const-string v3, "request to delete KEYCHAIN for alias: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 v1, 0x1

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1162
    invoke-virtual {v5, v13, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1163
    .end local v13    # "alias":Ljava/lang/String;
    move-object/from16 v1, p0

    move/from16 v3, v18

    goto :goto_e5

    .line 1166
    .end local v18    # "user_id":I
    .restart local v3    # "user_id":I
    :cond_113
    move/from16 v18, v3

    .end local v3    # "user_id":I
    .restart local v18    # "user_id":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_119
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_141

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1167
    .local v3, "alias":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "request to delete WIFI for alias: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v9, 0x3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1169
    invoke-virtual {v5, v3, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1170
    .end local v3    # "alias":Ljava/lang/String;
    goto :goto_119

    .line 1171
    .end local v5    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v6    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .end local v11    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v12    # "mdmAliases":[Ljava/lang/String;
    .end local v14    # "agentAliasesWiFi":[Ljava/lang/String;
    .end local v15    # "id1":J
    :cond_141
    move-object/from16 v1, p0

    move/from16 v3, v18

    goto/16 :goto_36

    .line 1144
    .end local v18    # "user_id":I
    .local v3, "user_id":I
    .restart local v5    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v6    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    .restart local v11    # "agentAliasesKeyChain":[Ljava/lang/String;
    .restart local v14    # "agentAliasesWiFi":[Ljava/lang/String;
    .restart local v15    # "id1":J
    :catchall_147
    move-exception v0

    move/from16 v18, v3

    .end local v3    # "user_id":I
    .restart local v18    # "user_id":I
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1145
    throw v0

    .line 1100
    .end local v6    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .end local v11    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v14    # "agentAliasesWiFi":[Ljava/lang/String;
    .end local v15    # "id1":J
    .end local v18    # "user_id":I
    .restart local v3    # "user_id":I
    :cond_14e
    move/from16 v18, v3

    .line 1101
    .end local v3    # "user_id":I
    .restart local v18    # "user_id":I
    :goto_150
    const-string v1, "agent is not bound or not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    move-object/from16 v1, p0

    move/from16 v3, v18

    goto/16 :goto_36

    .line 1172
    .end local v5    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v18    # "user_id":I
    .restart local v3    # "user_id":I
    :cond_15b
    return-void
.end method

.method public resetUid(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 24
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "rstuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4938
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetUid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UcmService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 4940
    .local v4, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    .line 4941
    .local v5, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v0, 0xe

    const/4 v6, 0x0

    const-string v7, "booleanresponse"

    const-string v8, "errorresponse"

    if-nez v5, :cond_38

    .line 4942
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4943
    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4944
    return-object v4

    .line 4948
    :cond_38
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v9, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4949
    .local v9, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 4950
    .local v10, "uid":I
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    .line 4951
    .local v11, "uriuid":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_4f

    .line 4952
    if-eq v10, v11, :cond_4f

    .line 4953
    const/16 v12, 0x3e8

    if-ne v10, v12, :cond_4f

    .line 4954
    move v10, v11

    .line 4958
    :cond_4f
    invoke-direct {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v18

    .line 4960
    .local v18, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 4962
    .local v19, "id":J
    :try_start_57
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v14, v18

    move v15, v10

    invoke-virtual/range {v12 .. v17}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_8f

    .line 4963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WARNING!!!! resetUid is NOT allowed for URI = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4965
    const/16 v0, 0xf

    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8a
    .catchall {:try_start_57 .. :try_end_8a} :catchall_da

    .line 4966
    nop

    .line 4969
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4966
    return-object v4

    .line 4969
    :cond_8f
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4970
    nop

    .line 4974
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v12

    if-nez v12, :cond_a5

    .line 4975
    const-string v12, "agent is not bound"

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4976
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4977
    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4978
    return-object v4

    .line 4980
    :cond_a5
    move/from16 v12, p2

    invoke-virtual {v5, v12}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->resetUid(I)Landroid/os/Bundle;

    move-result-object v0

    .line 4981
    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez v0, :cond_c1

    .line 4982
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4983
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 4984
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4985
    const/16 v3, 0xd

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4986
    return-object v0

    .line 4988
    :cond_c1
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 4989
    .local v4, "errorcode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetUid Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4990
    return-object v0

    .line 4969
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .local v4, "agentResponse":Landroid/os/Bundle;
    :catchall_da
    move-exception v0

    move/from16 v12, p2

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4970
    throw v0
.end method

.method public resetUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 24
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4877
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetUser "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UcmService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 4879
    .local v4, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    .line 4880
    .local v5, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v0, 0xe

    const/4 v6, 0x0

    const-string v7, "booleanresponse"

    const-string v8, "errorresponse"

    if-nez v5, :cond_38

    .line 4881
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4882
    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4883
    return-object v4

    .line 4887
    :cond_38
    new-instance v9, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v9, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 4888
    .local v9, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 4889
    .local v10, "uid":I
    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    .line 4890
    .local v11, "uriuid":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_4f

    .line 4891
    if-eq v10, v11, :cond_4f

    .line 4892
    const/16 v12, 0x3e8

    if-ne v10, v12, :cond_4f

    .line 4893
    move v10, v11

    .line 4897
    :cond_4f
    invoke-direct {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v18

    .line 4899
    .local v18, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 4901
    .local v19, "id":J
    :try_start_57
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v14, v18

    move v15, v10

    invoke-virtual/range {v12 .. v17}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v12

    if-nez v12, :cond_8f

    .line 4902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WARNING!!!! resetUser is NOT allowed for URI = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4904
    const/16 v0, 0xf

    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8a
    .catchall {:try_start_57 .. :try_end_8a} :catchall_da

    .line 4905
    nop

    .line 4908
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4905
    return-object v4

    .line 4908
    :cond_8f
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4909
    nop

    .line 4913
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v12

    if-nez v12, :cond_a5

    .line 4914
    const-string v12, "agent is not bound"

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4915
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4916
    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4917
    return-object v4

    .line 4919
    :cond_a5
    move/from16 v12, p2

    invoke-virtual {v5, v12}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->resetUser(I)Landroid/os/Bundle;

    move-result-object v0

    .line 4920
    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez v0, :cond_c1

    .line 4921
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4922
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 4923
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4924
    const/16 v3, 0xd

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4925
    return-object v0

    .line 4927
    :cond_c1
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 4928
    .local v4, "errorcode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetUser Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4929
    return-object v0

    .line 4908
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .local v4, "agentResponse":Landroid/os/Bundle;
    :catchall_da
    move-exception v0

    move/from16 v12, p2

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4909
    throw v0
.end method

.method public saw(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 43
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2052
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saw "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UcmService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const/4 v4, 0x0

    .line 2054
    .local v4, "error":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2057
    .local v0, "agentResponse":Landroid/os/Bundle;
    new-instance v5, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v5, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2058
    .local v5, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2059
    .local v6, "uid":I
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v7

    .line 2060
    .local v7, "uriuid":I
    invoke-direct {v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v14

    .line 2061
    .local v14, "user_id":I
    const/16 v15, 0x3e8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_41

    .line 2062
    if-eq v6, v7, :cond_41

    .line 2063
    if-eq v6, v15, :cond_40

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 2064
    :cond_40
    move v6, v7

    .line 2068
    :cond_41
    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v9

    .line 2069
    .local v9, "uriresource":I
    if-ne v9, v8, :cond_4a

    .line 2070
    const/4 v9, 0x1

    move v13, v9

    goto :goto_4b

    .line 2069
    :cond_4a
    move v13, v9

    .line 2072
    .end local v9    # "uriresource":I
    .local v13, "uriresource":I
    :goto_4b
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v12, v8

    .line 2074
    .local v12, "argBundle":Landroid/os/Bundle;
    const-string v8, "callerUid"

    invoke-virtual {v12, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2075
    const-string v9, "user_id"

    invoke-virtual {v12, v9, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2076
    const-string v10, "ownerUid"

    invoke-virtual {v12, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2077
    const-string v10, "resource"

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2078
    const-string v11, "entryType"

    move/from16 v15, p2

    invoke-virtual {v12, v11, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2080
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saw KEY_RESOURCE_ID= "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x2

    invoke-virtual {v12, v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saw KEY_USER_ID= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saw KEY_CALLER_UID= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v2

    const/16 v11, 0xf

    const-string v10, "WARNING!!!! saw access NOT allowed for "

    move/from16 v17, v13

    .end local v13    # "uriresource":I
    .local v17, "uriresource":I
    const-string v13, "ERROR: Null Response received from activeAgent"

    move-object/from16 v18, v13

    const-string v13, ",  error code = "

    move-object/from16 v19, v13

    const-string v13, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    move-object/from16 v20, v13

    const-string v13, "activeAgent is not bound"

    move-object/from16 v21, v13

    const-string v13, "stringarrayresponse"

    move-object/from16 v23, v13

    const-string v13, "errorresponse"

    if-eqz v2, :cond_5e5

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v8, "KNOX"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e5

    .line 2087
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2088
    .local v2, "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Iteration has started.... uid-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v8, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    invoke-virtual {v8}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->getActiveAgentList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move/from16 v27, v4

    move-object v4, v0

    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .local v4, "agentResponse":Landroid/os/Bundle;
    .local v27, "error":Z
    :goto_109
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c3

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 2090
    .local v9, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_132

    .line 2091
    move-object/from16 v25, v5

    move-object v5, v12

    move-object/from16 v0, v18

    move-object/from16 v15, v19

    move-object/from16 v32, v23

    move-object/from16 v18, v2

    move v12, v11

    move/from16 v19, v14

    move-object/from16 v2, v20

    move-object/from16 v14, v21

    move/from16 v20, v17

    move/from16 v17, v7

    move-object v7, v13

    move-object v13, v10

    goto/16 :goto_1fc

    .line 2094
    :cond_132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 2096
    .local v28, "id":J
    :try_start_136
    iget-object v8, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;
    :try_end_138
    .catchall {:try_start_136 .. :try_end_138} :catchall_5b5

    const/4 v0, 0x0

    const/16 v30, 0x0

    move-object/from16 v24, v9

    .end local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .local v24, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    move-object/from16 v31, v10

    move v10, v14

    move v11, v6

    move-object/from16 v25, v5

    move-object v5, v12

    .end local v12    # "argBundle":Landroid/os/Bundle;
    .local v5, "argBundle":Landroid/os/Bundle;
    .local v25, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    move v12, v0

    move-object/from16 v0, v18

    move-object/from16 v15, v19

    move-object/from16 v32, v23

    move-object/from16 v18, v2

    move/from16 v19, v14

    move-object/from16 v2, v20

    move-object/from16 v14, v21

    move/from16 v20, v17

    move/from16 v17, v7

    move-object v7, v13

    .end local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "uriuid":I
    .end local v14    # "user_id":I
    .local v17, "uriuid":I
    .local v18, "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "user_id":I
    .local v20, "uriresource":I
    move-object/from16 v13, v30

    :try_start_15a
    invoke-virtual/range {v8 .. v13}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v8
    :try_end_15e
    .catchall {:try_start_15a .. :try_end_15e} :catchall_5a9

    if-nez v8, :cond_1b8

    .line 2097
    :try_start_160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v31

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_16a
    .catchall {:try_start_160 .. :try_end_16a} :catchall_1ab

    move-object/from16 v9, v24

    .end local v24    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :try_start_16c
    iget-object v10, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const/16 v12, 0xf

    invoke-virtual {v4, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_17f
    .catchall {:try_start_16c .. :try_end_17f} :catchall_1a0

    .line 2099
    const/16 v27, 0x1

    .line 2103
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2100
    move v11, v12

    move-object v10, v13

    move-object/from16 v21, v14

    move/from16 v14, v19

    move-object/from16 v23, v32

    move-object v12, v5

    move-object v13, v7

    move-object/from16 v19, v15

    move/from16 v7, v17

    move/from16 v17, v20

    move-object/from16 v5, v25

    move/from16 v15, p2

    move-object/from16 v20, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v0

    goto/16 :goto_109

    .line 2103
    :catchall_1a0
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v2, v18

    move/from16 v5, v19

    move/from16 v8, v20

    goto/16 :goto_5bf

    .end local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v24    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :catchall_1ab
    move-exception v0

    move-object/from16 v9, v24

    move-object/from16 v37, v5

    move-object/from16 v2, v18

    move/from16 v5, v19

    move/from16 v8, v20

    .end local v24    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    goto/16 :goto_5bf

    .end local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v24    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_1b8
    move-object/from16 v9, v24

    move-object/from16 v13, v31

    const/16 v12, 0xf

    .end local v24    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2104
    nop

    .line 2107
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v8

    if-nez v8, :cond_1ee

    .line 2108
    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const/16 v8, 0xe

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2110
    const/16 v27, 0x1

    .line 2111
    move v11, v12

    move-object v10, v13

    move-object/from16 v21, v14

    move/from16 v14, v19

    move-object/from16 v23, v32

    move-object v12, v5

    move-object v13, v7

    move-object/from16 v19, v15

    move/from16 v7, v17

    move/from16 v17, v20

    move-object/from16 v5, v25

    move/from16 v15, p2

    move-object/from16 v20, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v0

    goto/16 :goto_109

    .line 2115
    :cond_1ee
    iget-object v8, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v8

    if-eqz v8, :cond_218

    .line 2116
    const-string v8, "skipping obscure activeAgent"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    nop

    .line 2089
    .end local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "user_id":I
    .end local v20    # "uriresource":I
    .end local v25    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v28    # "id":J
    .restart local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v7    # "uriuid":I
    .restart local v12    # "argBundle":Landroid/os/Bundle;
    .restart local v14    # "user_id":I
    .local v17, "uriresource":I
    :goto_1fc
    move v11, v12

    move-object v10, v13

    move-object/from16 v21, v14

    move/from16 v14, v19

    move-object/from16 v23, v32

    move-object v12, v5

    move-object v13, v7

    move-object/from16 v19, v15

    move/from16 v7, v17

    move/from16 v17, v20

    move-object/from16 v5, v25

    move/from16 v15, p2

    move-object/from16 v20, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v0

    .end local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "uriuid":I
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .end local v14    # "user_id":I
    .local v5, "argBundle":Landroid/os/Bundle;
    .local v17, "uriuid":I
    .restart local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "user_id":I
    .restart local v20    # "uriresource":I
    .restart local v25    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    goto/16 :goto_109

    .line 2120
    .restart local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v28    # "id":J
    :cond_218
    invoke-virtual {v9, v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 2121
    if-nez v4, :cond_24a

    .line 2122
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v4, v8

    .line 2124
    const/16 v8, 0xd

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2125
    const/16 v27, 0x1

    .line 2126
    move v11, v12

    move-object v10, v13

    move-object/from16 v21, v14

    move/from16 v14, v19

    move-object/from16 v23, v32

    move-object v12, v5

    move-object v13, v7

    move-object/from16 v19, v15

    move/from16 v7, v17

    move/from16 v17, v20

    move-object/from16 v5, v25

    move/from16 v15, p2

    move-object/from16 v20, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v0

    goto/16 :goto_109

    .line 2129
    :cond_24a
    const/16 v8, 0xd

    move-object/from16 v11, v32

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2130
    .local v10, "agentaliases":[Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 2131
    .local v12, "errorcode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v4

    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .local v21, "agentResponse":Landroid/os/Bundle;
    iget-object v4, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    if-nez v10, :cond_288

    .line 2136
    move-object/from16 v36, v0

    move-object/from16 v35, v2

    move-object/from16 v37, v5

    move-object/from16 v31, v13

    move-object/from16 v34, v15

    move-object/from16 v2, v18

    move/from16 v5, v19

    move/from16 v8, v20

    goto/16 :goto_55c

    .line 2138
    :cond_288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Agent alias size -"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v10

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    array-length v4, v10

    const/4 v8, 0x0

    :goto_29f
    if-ge v8, v4, :cond_2c6

    move/from16 v23, v4

    aget-object v4, v10, v8

    .line 2140
    .local v4, "alias":Ljava/lang/String;
    move/from16 v24, v12

    .end local v12    # "errorcode":I
    .local v24, "errorcode":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v13

    const-string v13, "Agent alias-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    .end local v4    # "alias":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v23

    move/from16 v12, v24

    move-object/from16 v13, v31

    goto :goto_29f

    .line 2143
    .end local v24    # "errorcode":I
    .restart local v12    # "errorcode":I
    :cond_2c6
    move/from16 v24, v12

    move-object/from16 v31, v13

    .end local v12    # "errorcode":I
    .restart local v24    # "errorcode":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2144
    .local v4, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2145
    .local v8, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2150
    .local v12, "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    .line 2152
    .local v32, "id1":J
    :try_start_2dd
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v13, v6, v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v13
    :try_end_2e3
    .catchall {:try_start_2dd .. :try_end_2e3} :catchall_596

    .line 2154
    .local v13, "mdmallowedaliases":[Ljava/lang/String;
    const/16 v23, 0x0

    .line 2155
    .local v23, "wifiCert":[Ljava/lang/String;
    move-object/from16 v30, v8

    move/from16 v8, v20

    move-object/from16 v20, v4

    const/4 v4, 0x3

    .end local v4    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "uriresource":I
    .local v20, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v30, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-ne v8, v4, :cond_390

    const/16 v4, 0x3e8

    if-ne v6, v4, :cond_390

    .line 2156
    :try_start_2f2
    iget-object v4, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v34, v15

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getWifiCertificateAliasesAsUser(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v4

    .line 2157
    .end local v23    # "wifiCert":[Ljava/lang/String;
    .local v4, "wifiCert":[Ljava/lang/String;
    if-eqz v4, :cond_37a

    array-length v15, v4

    if-lez v15, :cond_37a

    .line 2158
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2159
    .local v15, "combinedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v35, v2

    array-length v2, v4

    move-object/from16 v36, v0

    const/4 v0, 0x0

    :goto_30b
    if-ge v0, v2, :cond_344

    aget-object v23, v4, v0

    move-object/from16 v37, v23

    .line 2160
    .local v37, "certAlias":Ljava/lang/String;
    move/from16 v23, v2

    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v38, v4

    move-object/from16 v4, v37

    .end local v37    # "certAlias":Ljava/lang/String;
    .local v4, "certAlias":Ljava/lang/String;
    .local v38, "wifiCert":[Ljava/lang/String;
    invoke-virtual {v2, v4, v15}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_339

    .line 2161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_324
    .catchall {:try_start_2f2 .. :try_end_324} :catchall_385

    move-object/from16 v37, v5

    .end local v5    # "argBundle":Landroid/os/Bundle;
    .local v37, "argBundle":Landroid/os/Bundle;
    :try_start_326
    const-string v5, "saw : Found wifi certAlias-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33b

    .line 2160
    .end local v37    # "argBundle":Landroid/os/Bundle;
    .restart local v5    # "argBundle":Landroid/os/Bundle;
    :cond_339
    move-object/from16 v37, v5

    .line 2159
    .end local v4    # "certAlias":Ljava/lang/String;
    .end local v5    # "argBundle":Landroid/os/Bundle;
    .restart local v37    # "argBundle":Landroid/os/Bundle;
    :goto_33b
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v23

    move-object/from16 v5, v37

    move-object/from16 v4, v38

    goto :goto_30b

    .line 2165
    .end local v37    # "argBundle":Landroid/os/Bundle;
    .end local v38    # "wifiCert":[Ljava/lang/String;
    .local v4, "wifiCert":[Ljava/lang/String;
    .restart local v5    # "argBundle":Landroid/os/Bundle;
    :cond_344
    move-object/from16 v38, v4

    move-object/from16 v37, v5

    .end local v4    # "wifiCert":[Ljava/lang/String;
    .end local v5    # "argBundle":Landroid/os/Bundle;
    .restart local v37    # "argBundle":Landroid/os/Bundle;
    .restart local v38    # "wifiCert":[Ljava/lang/String;
    if-eqz v13, :cond_361

    array-length v0, v13

    if-lez v0, :cond_361

    .line 2166
    array-length v0, v13

    const/4 v2, 0x0

    :goto_34f
    if-ge v2, v0, :cond_361

    aget-object v4, v13, v2

    .line 2167
    .local v4, "whitelistedAlias":Ljava/lang/String;
    iget-object v5, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v5, v4, v15}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_35e

    .line 2168
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2166
    .end local v4    # "whitelistedAlias":Ljava/lang/String;
    :cond_35e
    add-int/lit8 v2, v2, 0x1

    goto :goto_34f

    .line 2172
    :cond_361
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_36d
    .catchall {:try_start_326 .. :try_end_36d} :catchall_371

    move-object v13, v0

    move-object/from16 v23, v38

    goto :goto_398

    .line 2187
    .end local v13    # "mdmallowedaliases":[Ljava/lang/String;
    .end local v15    # "combinedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "wifiCert":[Ljava/lang/String;
    :catchall_371
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v2, v18

    move/from16 v5, v19

    goto/16 :goto_5a5

    .line 2157
    .end local v37    # "argBundle":Landroid/os/Bundle;
    .local v4, "wifiCert":[Ljava/lang/String;
    .restart local v5    # "argBundle":Landroid/os/Bundle;
    .restart local v13    # "mdmallowedaliases":[Ljava/lang/String;
    :cond_37a
    move-object/from16 v36, v0

    move-object/from16 v35, v2

    move-object/from16 v38, v4

    move-object/from16 v37, v5

    .line 2176
    .end local v4    # "wifiCert":[Ljava/lang/String;
    .end local v5    # "argBundle":Landroid/os/Bundle;
    .restart local v37    # "argBundle":Landroid/os/Bundle;
    .restart local v38    # "wifiCert":[Ljava/lang/String;
    move-object/from16 v23, v38

    goto :goto_398

    .line 2187
    .end local v13    # "mdmallowedaliases":[Ljava/lang/String;
    .end local v37    # "argBundle":Landroid/os/Bundle;
    .end local v38    # "wifiCert":[Ljava/lang/String;
    .restart local v5    # "argBundle":Landroid/os/Bundle;
    :catchall_385
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v23, v10

    move-object/from16 v2, v18

    move/from16 v5, v19

    .end local v5    # "argBundle":Landroid/os/Bundle;
    .restart local v37    # "argBundle":Landroid/os/Bundle;
    goto/16 :goto_5a5

    .line 2155
    .end local v37    # "argBundle":Landroid/os/Bundle;
    .restart local v5    # "argBundle":Landroid/os/Bundle;
    .restart local v13    # "mdmallowedaliases":[Ljava/lang/String;
    .restart local v23    # "wifiCert":[Ljava/lang/String;
    :cond_390
    move-object/from16 v36, v0

    move-object/from16 v35, v2

    move-object/from16 v37, v5

    move-object/from16 v34, v15

    .line 2176
    .end local v5    # "argBundle":Landroid/os/Bundle;
    .restart local v37    # "argBundle":Landroid/os/Bundle;
    :goto_398
    const-string v0, " is = "

    const-string v2, "saw : mdmallowedaliasesList for uid "

    if-nez v13, :cond_3c2

    .line 2177
    const/4 v4, 0x0

    .line 2178
    .end local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_39f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is null"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b6
    .catchall {:try_start_39f .. :try_end_3b6} :catchall_3b7

    goto :goto_3e2

    .line 2187
    .end local v13    # "mdmallowedaliases":[Ljava/lang/String;
    .end local v23    # "wifiCert":[Ljava/lang/String;
    :catchall_3b7
    move-exception v0

    move-object/from16 v30, v4

    move-object/from16 v23, v10

    move-object/from16 v2, v18

    move/from16 v5, v19

    goto/16 :goto_5a5

    .line 2180
    .end local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "mdmallowedaliases":[Ljava/lang/String;
    .restart local v23    # "wifiCert":[Ljava/lang/String;
    .restart local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3c2
    :try_start_3c2
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4
    :try_end_3c6
    .catchall {:try_start_3c2 .. :try_end_3c6} :catchall_58e

    .line 2181
    .end local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3c6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e2
    .catchall {:try_start_3c6 .. :try_end_3e2} :catchall_584

    .line 2185
    :goto_3e2
    :try_start_3e2
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v2
    :try_end_3e8
    .catchall {:try_start_3e2 .. :try_end_3e8} :catchall_57a

    .line 2187
    .end local v23    # "wifiCert":[Ljava/lang/String;
    .local v2, "mdmaliases":[Ljava/lang/String;
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2188
    nop

    .line 2191
    if-eqz v2, :cond_472

    array-length v5, v2

    if-nez v5, :cond_3f7

    move-object/from16 v30, v4

    move/from16 v5, v19

    goto/16 :goto_476

    .line 2194
    :cond_3f7
    if-eqz v13, :cond_44b

    array-length v5, v13

    if-nez v5, :cond_3ff

    move-object/from16 v30, v4

    goto :goto_44d

    .line 2198
    :cond_3ff
    array-length v0, v2

    const/4 v5, 0x0

    :goto_401
    if-ge v5, v0, :cond_446

    aget-object v15, v2, v5

    .line 2199
    .local v15, "alias":Ljava/lang/String;
    move/from16 v23, v0

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v0, v15, v4}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_429

    .line 2200
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v4

    .end local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "saw : new alias added to mdmunauthorizedaliasesList : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43f

    .line 2203
    .end local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_429
    move-object/from16 v30, v4

    .end local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saw : mdmunauthorizedaliasesList unchanged, access allowed for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    .end local v15    # "alias":Ljava/lang/String;
    :goto_43f
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v23

    move-object/from16 v4, v30

    goto :goto_401

    .end local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_446
    move-object/from16 v30, v4

    .end local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v5, v19

    goto :goto_490

    .line 2194
    .end local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_44b
    move-object/from16 v30, v4

    .line 2195
    .end local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_44d
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 2196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v19

    .end local v19    # "user_id":I
    .local v5, "user_id":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_490

    .line 2191
    .end local v5    # "user_id":I
    .end local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "user_id":I
    :cond_472
    move-object/from16 v30, v4

    move/from16 v5, v19

    .line 2192
    .end local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "user_id":I
    .restart local v5    # "user_id":I
    .restart local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is = null "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    const/4 v12, 0x0

    .line 2209
    :goto_490
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2210
    .end local v20    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saw : Initial agent alias list for agent "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v15, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    if-eqz v12, :cond_504

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_504

    .line 2212
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4c6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_4ff

    .line 2213
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2214
    .restart local v15    # "alias":Ljava/lang/String;
    move-object/from16 v19, v2

    .end local v2    # "mdmaliases":[Ljava/lang/String;
    .local v19, "mdmaliases":[Ljava/lang/String;
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v15, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4f6

    .line 2215
    invoke-interface {v0, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v10

    .end local v10    # "agentaliases":[Ljava/lang/String;
    .local v23, "agentaliases":[Ljava/lang/String;
    const-string v10, "saw : Removing from agent alias list : alias name = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f8

    .line 2214
    .end local v23    # "agentaliases":[Ljava/lang/String;
    .restart local v10    # "agentaliases":[Ljava/lang/String;
    :cond_4f6
    move-object/from16 v23, v10

    .line 2212
    .end local v10    # "agentaliases":[Ljava/lang/String;
    .end local v15    # "alias":Ljava/lang/String;
    .restart local v23    # "agentaliases":[Ljava/lang/String;
    :goto_4f8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v19

    move-object/from16 v10, v23

    goto :goto_4c6

    .end local v19    # "mdmaliases":[Ljava/lang/String;
    .end local v23    # "agentaliases":[Ljava/lang/String;
    .restart local v2    # "mdmaliases":[Ljava/lang/String;
    .restart local v10    # "agentaliases":[Ljava/lang/String;
    :cond_4ff
    move-object/from16 v19, v2

    move-object/from16 v23, v10

    .end local v2    # "mdmaliases":[Ljava/lang/String;
    .end local v10    # "agentaliases":[Ljava/lang/String;
    .restart local v19    # "mdmaliases":[Ljava/lang/String;
    .restart local v23    # "agentaliases":[Ljava/lang/String;
    goto :goto_508

    .line 2211
    .end local v4    # "i":I
    .end local v19    # "mdmaliases":[Ljava/lang/String;
    .end local v23    # "agentaliases":[Ljava/lang/String;
    .restart local v2    # "mdmaliases":[Ljava/lang/String;
    .restart local v10    # "agentaliases":[Ljava/lang/String;
    :cond_504
    move-object/from16 v19, v2

    move-object/from16 v23, v10

    .line 2221
    .end local v2    # "mdmaliases":[Ljava/lang/String;
    .end local v10    # "agentaliases":[Ljava/lang/String;
    .restart local v19    # "mdmaliases":[Ljava/lang/String;
    .restart local v23    # "agentaliases":[Ljava/lang/String;
    :goto_508
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_50c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_557

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2222
    .local v4, "alias":Ljava/lang/String;
    new-instance v10, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v15, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v15, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v10, v15}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 2223
    .local v10, "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    invoke-virtual {v10, v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v15

    .line 2224
    .local v15, "csUri":Ljava/lang/String;
    move-object/from16 v20, v2

    move-object/from16 v2, v18

    .end local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2225
    move-object/from16 v18, v0

    .end local v0    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v4

    .end local v4    # "alias":Ljava/lang/String;
    .local v38, "alias":Ljava/lang/String;
    const-string v4, "saw : Adding alias uri to finalaliasesList : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    .end local v10    # "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v15    # "csUri":Ljava/lang/String;
    .end local v38    # "alias":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v20

    goto :goto_50c

    .line 2221
    .end local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_557
    move-object/from16 v2, v18

    move-object/from16 v18, v0

    .line 2228
    .end local v0    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v12    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "mdmallowedaliases":[Ljava/lang/String;
    .end local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "mdmaliases":[Ljava/lang/String;
    .end local v23    # "agentaliases":[Ljava/lang/String;
    .end local v24    # "errorcode":I
    .end local v28    # "id":J
    .end local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "id1":J
    .restart local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 2089
    .end local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "uriresource":I
    .end local v37    # "argBundle":Landroid/os/Bundle;
    .local v5, "argBundle":Landroid/os/Bundle;
    .restart local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "user_id":I
    .local v20, "uriresource":I
    :goto_55c
    move/from16 v15, p2

    move-object v13, v7

    move-object/from16 v23, v11

    move/from16 v7, v17

    move-object/from16 v4, v21

    move-object/from16 v10, v31

    move-object/from16 v19, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v12, v37

    const/16 v11, 0xf

    move/from16 v17, v8

    move-object/from16 v21, v14

    move v14, v5

    move-object/from16 v5, v25

    .end local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "user_id":I
    .end local v20    # "uriresource":I
    .restart local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "user_id":I
    .restart local v8    # "uriresource":I
    .restart local v37    # "argBundle":Landroid/os/Bundle;
    goto/16 :goto_109

    .line 2187
    .end local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "user_id":I
    .local v4, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .local v10, "agentaliases":[Ljava/lang/String;
    .restart local v12    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "user_id":I
    .local v20, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "errorcode":I
    .restart local v28    # "id":J
    .restart local v32    # "id1":J
    :catchall_57a
    move-exception v0

    move-object/from16 v30, v4

    move-object/from16 v23, v10

    move-object/from16 v2, v18

    move/from16 v5, v19

    .end local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "agentaliases":[Ljava/lang/String;
    .end local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "user_id":I
    .restart local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "user_id":I
    .restart local v23    # "agentaliases":[Ljava/lang/String;
    .restart local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5a5

    .end local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "user_id":I
    .end local v23    # "agentaliases":[Ljava/lang/String;
    .end local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "agentaliases":[Ljava/lang/String;
    .restart local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "user_id":I
    :catchall_584
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v2, v18

    move/from16 v5, v19

    move-object/from16 v30, v4

    .end local v10    # "agentaliases":[Ljava/lang/String;
    .end local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "user_id":I
    .restart local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "user_id":I
    .restart local v23    # "agentaliases":[Ljava/lang/String;
    goto :goto_5a5

    .end local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "user_id":I
    .end local v23    # "agentaliases":[Ljava/lang/String;
    .restart local v10    # "agentaliases":[Ljava/lang/String;
    .restart local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "user_id":I
    .restart local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_58e
    move-exception v0

    move-object/from16 v23, v10

    move-object/from16 v2, v18

    move/from16 v5, v19

    .end local v10    # "agentaliases":[Ljava/lang/String;
    .end local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "user_id":I
    .restart local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "user_id":I
    .restart local v23    # "agentaliases":[Ljava/lang/String;
    goto :goto_5a5

    .end local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "agentaliases":[Ljava/lang/String;
    .end local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "argBundle":Landroid/os/Bundle;
    .local v4, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "argBundle":Landroid/os/Bundle;
    .local v8, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "agentaliases":[Ljava/lang/String;
    .restart local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "user_id":I
    .local v20, "uriresource":I
    :catchall_596
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v30, v8

    move-object/from16 v23, v10

    move-object/from16 v2, v18

    move/from16 v5, v19

    move/from16 v8, v20

    move-object/from16 v20, v4

    .end local v4    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "agentaliases":[Ljava/lang/String;
    .end local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "user_id":I
    .restart local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "user_id":I
    .local v8, "uriresource":I
    .local v20, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "agentaliases":[Ljava/lang/String;
    .restart local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37    # "argBundle":Landroid/os/Bundle;
    :goto_5a5
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2188
    throw v0

    .line 2103
    .end local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "uriresource":I
    .end local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v12    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "agentResponse":Landroid/os/Bundle;
    .end local v23    # "agentaliases":[Ljava/lang/String;
    .end local v30    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "id1":J
    .end local v37    # "argBundle":Landroid/os/Bundle;
    .local v4, "agentResponse":Landroid/os/Bundle;
    .local v5, "argBundle":Landroid/os/Bundle;
    .restart local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "user_id":I
    .local v20, "uriresource":I
    .local v24, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :catchall_5a9
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v2, v18

    move/from16 v5, v19

    move/from16 v8, v20

    move-object/from16 v9, v24

    .end local v18    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "user_id":I
    .end local v20    # "uriresource":I
    .end local v24    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "user_id":I
    .restart local v8    # "uriresource":I
    .restart local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v37    # "argBundle":Landroid/os/Bundle;
    goto :goto_5bf

    .end local v8    # "uriresource":I
    .end local v25    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v37    # "argBundle":Landroid/os/Bundle;
    .local v5, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v7    # "uriuid":I
    .local v12, "argBundle":Landroid/os/Bundle;
    .restart local v14    # "user_id":I
    .local v17, "uriresource":I
    :catchall_5b5
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v37, v12

    move v5, v14

    move/from16 v8, v17

    move/from16 v17, v7

    .end local v7    # "uriuid":I
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .end local v14    # "user_id":I
    .local v5, "user_id":I
    .restart local v8    # "uriresource":I
    .local v17, "uriuid":I
    .restart local v25    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v37    # "argBundle":Landroid/os/Bundle;
    :goto_5bf
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2104
    throw v0

    .line 2230
    .end local v8    # "uriresource":I
    .end local v9    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v25    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v28    # "id":J
    .end local v37    # "argBundle":Landroid/os/Bundle;
    .local v5, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v7    # "uriuid":I
    .restart local v12    # "argBundle":Landroid/os/Bundle;
    .restart local v14    # "user_id":I
    .local v17, "uriresource":I
    :cond_5c3
    move-object/from16 v25, v5

    move-object/from16 v37, v12

    move v5, v14

    move/from16 v8, v17

    move-object/from16 v11, v23

    move/from16 v17, v7

    move-object v7, v13

    .end local v7    # "uriuid":I
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .end local v14    # "user_id":I
    .local v5, "user_id":I
    .restart local v8    # "uriresource":I
    .local v17, "uriuid":I
    .restart local v25    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v37    # "argBundle":Landroid/os/Bundle;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2231
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {v4, v11, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2232
    if-nez v27, :cond_5e4

    const/4 v3, 0x0

    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2233
    :cond_5e4
    return-object v4

    .line 2086
    .end local v2    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "uriresource":I
    .end local v25    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v27    # "error":Z
    .end local v37    # "argBundle":Landroid/os/Bundle;
    .local v0, "agentResponse":Landroid/os/Bundle;
    .local v4, "error":Z
    .local v5, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v7    # "uriuid":I
    .restart local v12    # "argBundle":Landroid/os/Bundle;
    .restart local v14    # "user_id":I
    .local v17, "uriresource":I
    :cond_5e5
    move v2, v4

    move-object/from16 v25, v5

    move-object/from16 v31, v10

    move-object/from16 v37, v12

    move v5, v14

    move/from16 v8, v17

    move-object/from16 v36, v18

    move-object/from16 v34, v19

    move-object/from16 v35, v20

    move-object/from16 v14, v21

    move-object/from16 v11, v23

    const/4 v4, 0x0

    move/from16 v17, v7

    move-object v7, v13

    .line 2237
    .end local v4    # "error":Z
    .end local v7    # "uriuid":I
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .end local v14    # "user_id":I
    .local v2, "error":Z
    .local v5, "user_id":I
    .restart local v8    # "uriresource":I
    .local v17, "uriuid":I
    .restart local v25    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .restart local v37    # "argBundle":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v15

    .line 2238
    .local v15, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v15, :cond_60d

    .line 2239
    const/16 v9, 0xe

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2240
    return-object v0

    .line 2243
    :cond_60d
    const/16 v9, 0xe

    invoke-virtual {v15}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v10

    if-nez v10, :cond_61c

    .line 2244
    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2246
    return-object v0

    .line 2249
    :cond_61c
    move-object/from16 v14, v37

    .end local v37    # "argBundle":Landroid/os/Bundle;
    .local v14, "argBundle":Landroid/os/Bundle;
    invoke-virtual {v15, v14}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    .line 2250
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .local v13, "agentResponse":Landroid/os/Bundle;
    if-nez v13, :cond_634

    .line 2251
    move-object/from16 v0, v36

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2253
    .end local v13    # "agentResponse":Landroid/os/Bundle;
    .restart local v0    # "agentResponse":Landroid/os/Bundle;
    const/16 v3, 0xd

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2254
    return-object v0

    .line 2256
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .restart local v13    # "agentResponse":Landroid/os/Bundle;
    :cond_634
    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2257
    .local v12, "agentaliases":[Ljava/lang/String;
    invoke-virtual {v13, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 2258
    .local v10, "errorcode":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saw Response from plugin:  error code = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    const/4 v0, 0x2

    if-ne v8, v0, :cond_67a

    .line 2263
    invoke-virtual {v13, v11, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2264
    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2265
    return-object v13

    .line 2268
    :cond_67a
    const/4 v0, 0x3

    if-eq v8, v0, :cond_681

    .line 2270
    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2271
    return-object v13

    .line 2275
    :cond_681
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v0, v15}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_690

    .line 2276
    invoke-virtual {v13, v11, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2278
    return-object v13

    .line 2282
    :cond_690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    .line 2283
    .local v16, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v0

    .line 2284
    .local v18, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 2285
    .local v9, "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 2287
    .local v19, "id":J
    :try_start_6a8
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;
    :try_end_6aa
    .catchall {:try_start_6a8 .. :try_end_6aa} :catchall_7ba

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v8

    .end local v8    # "uriresource":I
    .local v23, "uriresource":I
    move-object v8, v0

    move-object v4, v9

    .end local v9    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v15

    move/from16 v39, v10

    .end local v10    # "errorcode":I
    .local v39, "errorcode":I
    move v10, v5

    move-object v0, v11

    move v11, v6

    move/from16 v26, v2

    move-object/from16 v24, v12

    const/16 v2, 0xf

    .end local v2    # "error":Z
    .end local v12    # "agentaliases":[Ljava/lang/String;
    .local v24, "agentaliases":[Ljava/lang/String;
    .local v26, "error":Z
    move/from16 v12, v21

    move/from16 v21, v5

    move-object v2, v13

    move-object/from16 v5, v31

    .end local v5    # "user_id":I
    .end local v13    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Landroid/os/Bundle;
    .local v21, "user_id":I
    move-object/from16 v13, v22

    :try_start_6c7
    invoke-virtual/range {v8 .. v13}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v8
    :try_end_6cb
    .catchall {:try_start_6c7 .. :try_end_6cb} :catchall_7b6

    if-nez v8, :cond_6f2

    .line 2288
    :try_start_6cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    const/16 v0, 0xf

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_6e8
    .catchall {:try_start_6cd .. :try_end_6e8} :catchall_6ed

    .line 2290
    nop

    .line 2319
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2290
    return-object v2

    .line 2319
    :catchall_6ed
    move-exception v0

    move/from16 v3, v39

    goto/16 :goto_7c6

    .line 2293
    :cond_6f2
    if-nez v24, :cond_6fe

    .line 2294
    move/from16 v3, v39

    .end local v39    # "errorcode":I
    .local v3, "errorcode":I
    :try_start_6f6
    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_6f9
    .catchall {:try_start_6f6 .. :try_end_6f9} :catchall_7b4

    .line 2295
    nop

    .line 2319
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2295
    return-object v2

    .line 2298
    .end local v3    # "errorcode":I
    .restart local v39    # "errorcode":I
    :cond_6fe
    move/from16 v3, v39

    .end local v39    # "errorcode":I
    .restart local v3    # "errorcode":I
    :try_start_700
    iget-object v5, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v5, v6, v15}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v5

    .line 2299
    .local v5, "mdmallowedaliases":[Ljava/lang/String;
    if-nez v5, :cond_70a

    .line 2300
    const/4 v8, 0x0

    .end local v18    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_70e

    .line 2302
    .end local v8    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_70a
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8
    :try_end_70e
    .catchall {:try_start_700 .. :try_end_70e} :catchall_7b4

    .line 2306
    .end local v18    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_70e
    :try_start_70e
    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v9, v15}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v9

    .line 2307
    .local v9, "mdmaliases":[Ljava/lang/String;
    if-eqz v9, :cond_73d

    array-length v10, v9

    if-nez v10, :cond_71a

    goto :goto_73d

    .line 2309
    :cond_71a
    if-eqz v5, :cond_736

    array-length v10, v5

    if-nez v10, :cond_720

    goto :goto_736

    .line 2312
    :cond_720
    array-length v10, v9

    const/4 v13, 0x0

    :goto_722
    if-ge v13, v10, :cond_734

    aget-object v11, v9, v13

    .line 2313
    .local v11, "alias":Ljava/lang/String;
    iget-object v12, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v12, v11, v8}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    if-nez v12, :cond_731

    .line 2314
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2312
    .end local v11    # "alias":Ljava/lang/String;
    :cond_731
    add-int/lit8 v13, v13, 0x1

    goto :goto_722

    :cond_734
    move-object v9, v4

    goto :goto_73f

    .line 2310
    :cond_736
    :goto_736
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10
    :try_end_73a
    .catchall {:try_start_70e .. :try_end_73a} :catchall_7b0

    move-object v4, v10

    move-object v9, v4

    goto :goto_73f

    .line 2308
    :cond_73d
    :goto_73d
    const/4 v4, 0x0

    move-object v9, v4

    .line 2319
    .end local v4    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "mdmallowedaliases":[Ljava/lang/String;
    .local v9, "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_73f
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2320
    nop

    .line 2323
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2324
    .end local v16    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_76a

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_76a

    .line 2325
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_750
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_76a

    .line 2326
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2327
    .local v10, "alias":Ljava/lang/String;
    iget-object v11, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v11, v10, v4}, Lcom/samsung/ucm/ucmservice/PolicyManager;->containsCaseInsensitive(Ljava/lang/String;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_767

    .line 2328
    invoke-interface {v4, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2325
    .end local v10    # "alias":Ljava/lang/String;
    :cond_767
    add-int/lit8 v5, v5, 0x1

    goto :goto_750

    .line 2333
    .end local v5    # "i":I
    :cond_76a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2334
    .local v5, "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_773
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_79d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2335
    .restart local v11    # "alias":Ljava/lang/String;
    new-instance v12, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v13, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v13, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v12, v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 2336
    .local v12, "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v13

    .line 2338
    .local v13, "csUri":Ljava/lang/String;
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2339
    .end local v11    # "alias":Ljava/lang/String;
    .end local v12    # "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v13    # "csUri":Ljava/lang/String;
    goto :goto_773

    .line 2340
    :cond_79d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 2341
    .local v10, "array":[Ljava/lang/String;
    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2342
    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2343
    return-object v2

    .line 2319
    .end local v5    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "array":[Ljava/lang/String;
    .local v4, "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_7b0
    move-exception v0

    move-object/from16 v18, v8

    goto :goto_7c6

    .end local v8    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_7b4
    move-exception v0

    goto :goto_7c6

    .end local v3    # "errorcode":I
    .restart local v39    # "errorcode":I
    :catchall_7b6
    move-exception v0

    move/from16 v3, v39

    .end local v39    # "errorcode":I
    .restart local v3    # "errorcode":I
    goto :goto_7c6

    .end local v3    # "errorcode":I
    .end local v4    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "user_id":I
    .end local v23    # "uriresource":I
    .end local v24    # "agentaliases":[Ljava/lang/String;
    .end local v26    # "error":Z
    .local v2, "error":Z
    .local v5, "user_id":I
    .local v8, "uriresource":I
    .restart local v9    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "errorcode":I
    .local v12, "agentaliases":[Ljava/lang/String;
    .local v13, "agentResponse":Landroid/os/Bundle;
    :catchall_7ba
    move-exception v0

    move/from16 v26, v2

    move/from16 v21, v5

    move/from16 v23, v8

    move-object v4, v9

    move v3, v10

    move-object/from16 v24, v12

    move-object v2, v13

    .end local v5    # "user_id":I
    .end local v8    # "uriresource":I
    .end local v9    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "errorcode":I
    .end local v12    # "agentaliases":[Ljava/lang/String;
    .end local v13    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Landroid/os/Bundle;
    .restart local v3    # "errorcode":I
    .restart local v4    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "user_id":I
    .restart local v23    # "uriresource":I
    .restart local v24    # "agentaliases":[Ljava/lang/String;
    .restart local v26    # "error":Z
    :goto_7c6
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2320
    throw v0
.end method

.method public sawInternal(Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 14
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sawInternal() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; resourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2353
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v2, "sawInternal"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2355
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    .line 2356
    .local v2, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v3, 0xe

    const-string v4, "errorresponse"

    if-nez v2, :cond_47

    .line 2357
    const-string v5, "sawInternal(): activeAgent == null"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2359
    return-object v0

    .line 2363
    :cond_47
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_56

    .line 2364
    const-string v5, "agent is not bound"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2366
    return-object v0

    .line 2369
    :cond_56
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v5, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 2370
    const-string v5, "activeAgent is CSobscure"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2372
    return-object v0

    .line 2375
    :cond_67
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2376
    .local v3, "argBundle":Landroid/os/Bundle;
    const/16 v5, 0x3e8

    const-string v6, "callerUid"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2377
    const-string v5, "user_id"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2378
    const-string v5, "resource"

    invoke-virtual {v3, v5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2380
    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2381
    if-nez v0, :cond_94

    .line 2382
    const-string v5, "ERROR: Null Response received from activeAgent"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 2384
    const/16 v1, 0xd

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2385
    return-object v0

    .line 2387
    :cond_94
    const-string v4, "stringarrayresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2388
    .local v4, "agentAliases":[Ljava/lang/String;
    if-eqz v4, :cond_ce

    .line 2389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sawInternal() agentAliases.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    array-length v5, v4

    const/4 v6, 0x0

    :goto_b3
    if-ge v6, v5, :cond_ce

    aget-object v7, v4, v6

    .line 2391
    .local v7, "alias":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sawInternal() agentAliases="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    .end local v7    # "alias":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_b3

    .line 2394
    :cond_ce
    return-object v0
.end method

.method public setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 28
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "profile"    # Landroid/os/Bundle;
    .param p5, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3248
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v0, "setAdminConfigureBundleForCs"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    .line 3251
    .local v5, "agentResponse":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAdminConfigureBundleForCs "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "UcmService"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    const-string v0, "errorresponse"

    const/4 v7, -0x1

    const-string v8, "intresponse"

    if-nez v4, :cond_3e

    .line 3253
    const-string v9, "setAdminConfigureBundleForCs : Bundle is null"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3255
    const/16 v6, 0x10

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3256
    return-object v5

    .line 3259
    :cond_3e
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3260
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v10, 0xe

    if-nez v9, :cond_69

    .line 3261
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "no agent found for Source = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3263
    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3264
    return-object v5

    .line 3268
    :cond_69
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3270
    .local v11, "id":J
    :try_start_6d
    new-instance v13, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v13, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3271
    .local v13, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 3272
    .local v14, "uid":I
    invoke-virtual {v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v15

    .line 3273
    .local v15, "uriuid":I
    if-eq v15, v7, :cond_83

    .line 3274
    if-eq v14, v15, :cond_83

    .line 3275
    const/16 v10, 0x3e8

    if-ne v14, v10, :cond_83

    .line 3276
    move v14, v15

    .line 3280
    :cond_83
    move/from16 v18, p2

    .line 3282
    .local v18, "user_id":I
    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v13}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v17

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v10

    move/from16 v19, v14

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_bf

    .line 3283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING!!!! setAdminConfigureBundleForCs is NOT allowed for URI = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    const/4 v6, -0x1

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3285
    const/16 v6, 0xf

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_ba
    .catchall {:try_start_6d .. :try_end_ba} :catchall_149

    .line 3286
    nop

    .line 3289
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3286
    return-object v5

    .line 3289
    .end local v13    # "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    .end local v14    # "uid":I
    .end local v15    # "uriuid":I
    .end local v18    # "user_id":I
    :cond_bf
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3290
    nop

    .line 3293
    const-string v7, "applet_location"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3294
    .local v7, "appletLocation":Ljava/lang/String;
    if-eqz v7, :cond_f3

    .line 3295
    move/from16 v10, p2

    invoke-direct {v1, v10, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkPluginUsed(ILjava/lang/String;)Z

    move-result v13

    .line 3296
    .local v13, "usedPlugin":Z
    const/4 v14, 0x1

    if-ne v14, v13, :cond_e3

    .line 3297
    const-string v14, "the plugin already is used"

    invoke-static {v6, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    const/4 v14, -0x1

    invoke-virtual {v5, v8, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3299
    const/16 v6, 0x22

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3300
    return-object v5

    .line 3302
    :cond_e3
    const/4 v14, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v15

    if-nez v15, :cond_f5

    .line 3303
    invoke-virtual {v5, v8, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3304
    const/16 v6, 0x19

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3305
    return-object v5

    .line 3294
    .end local v13    # "usedPlugin":Z
    :cond_f3
    move/from16 v10, p2

    .line 3310
    :cond_f5
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v13

    if-nez v13, :cond_10a

    .line 3311
    const-string v13, "agent is not bound"

    invoke-static {v6, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    const/4 v6, -0x1

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3313
    const/16 v6, 0xe

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3314
    return-object v5

    .line 3316
    :cond_10a
    move/from16 v13, p5

    invoke-virtual {v9, v2, v4, v13}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v5

    .line 3317
    if-nez v5, :cond_127

    .line 3318
    const-string v14, "ERROR: Null Response received from agent"

    invoke-static {v6, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v5, v6

    .line 3320
    const/4 v6, -0x1

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3321
    const/16 v6, 0xd

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3322
    return-object v5

    .line 3324
    :cond_127
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 3325
    .local v8, "response":I
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3326
    .local v0, "errorcode":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    if-nez v0, :cond_148

    .line 3328
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->setAppletInstalled()V

    .line 3330
    :cond_148
    return-object v5

    .line 3289
    .end local v0    # "errorcode":I
    .end local v7    # "appletLocation":Ljava/lang/String;
    .end local v8    # "response":I
    :catchall_149
    move-exception v0

    move/from16 v10, p2

    move/from16 v13, p5

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3290
    throw v0
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 28
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "certChain"    # [B
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2462
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCertificateChain "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UcmService"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    .line 2465
    .local v5, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    .line 2466
    .local v6, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v0, 0xe

    const-string v7, "errorresponse"

    const-string v8, "booleanresponse"

    const/4 v9, 0x0

    if-nez v6, :cond_3a

    .line 2467
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2468
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2469
    return-object v5

    .line 2473
    :cond_3a
    new-instance v10, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v10, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2474
    .local v10, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2475
    .local v11, "uid":I
    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .line 2476
    .local v12, "uriuid":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_51

    .line 2477
    if-eq v11, v12, :cond_51

    .line 2478
    const/16 v14, 0x3e8

    if-ne v11, v14, :cond_51

    .line 2479
    move v11, v12

    .line 2483
    :cond_51
    invoke-direct {v1, v11}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v15

    .line 2484
    .local v15, "user_id":I
    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v14

    .line 2485
    .local v14, "uriresource":I
    if-ne v14, v13, :cond_5c

    const/4 v14, 0x1

    :cond_5c
    move v13, v14

    .line 2487
    .end local v14    # "uriresource":I
    .local v13, "uriresource":I
    if-eqz v3, :cond_6a

    const-string v14, "admin_id"

    invoke-virtual {v3, v14, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_68

    goto :goto_6a

    :cond_68
    const/4 v14, 0x1

    goto :goto_6b

    :cond_6a
    :goto_6a
    move v14, v9

    :goto_6b
    move/from16 v20, v14

    .line 2490
    .local v20, "ismdmcaller":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 2492
    .local v21, "id":J
    :try_start_71
    iget-object v14, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    const/16 v18, 0x0

    invoke-virtual {v10}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v19
    :try_end_81
    .catchall {:try_start_71 .. :try_end_81} :catchall_186

    move/from16 v23, v15

    .end local v15    # "user_id":I
    .local v23, "user_id":I
    move-object v15, v0

    move/from16 v16, v23

    move/from16 v17, v11

    :try_start_88
    invoke-virtual/range {v14 .. v19}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_af

    .line 2493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WARNING!!!! setCertificateChain is NOT allowed for URI = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2495
    const/16 v0, 0xf

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_aa
    .catchall {:try_start_88 .. :try_end_aa} :catchall_182

    .line 2496
    nop

    .line 2499
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2496
    return-object v5

    .line 2499
    :cond_af
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2500
    nop

    .line 2503
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2504
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v14, "callerUid"

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2505
    const-string v15, "user_id"

    move/from16 v9, v23

    .end local v23    # "user_id":I
    .local v9, "user_id":I
    invoke-virtual {v0, v15, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2506
    const-string v1, "ownerUid"

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2507
    const-string v1, "resource"

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2508
    const-string v2, "extraArgs"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .end local v9    # "user_id":I
    .restart local v23    # "user_id":I
    const-string v9, "setCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, -0x2

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCertificateChain KEY_USER_ID= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v1

    if-nez v1, :cond_131

    .line 2517
    const-string v1, "agent is not bound"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    const/4 v1, 0x0

    invoke-virtual {v5, v8, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2519
    const/16 v1, 0xe

    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2520
    return-object v5

    .line 2523
    :cond_131
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v6, v1, v2, v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2524
    .end local v5    # "agentResponse":Landroid/os/Bundle;
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-nez v1, :cond_152

    .line 2525
    const-string v5, "ERROR: Null Response received from agent"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    .line 2527
    const/4 v4, 0x0

    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2528
    const/16 v4, 0xe

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2529
    return-object v1

    .line 2531
    :cond_152
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2532
    .local v5, "response":Z
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 2533
    .local v9, "errorcode":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setCertificateChain Response from plugin:  error code = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    if-nez v5, :cond_181

    if-nez v9, :cond_181

    .line 2536
    const-string v14, "ERROR: Empty data received for setCertificateChain"

    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    const/4 v4, 0x0

    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2538
    const/16 v4, 0xd

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2539
    return-object v1

    .line 2541
    :cond_181
    return-object v1

    .line 2499
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .end local v9    # "errorcode":I
    .local v5, "agentResponse":Landroid/os/Bundle;
    :catchall_182
    move-exception v0

    move-object/from16 v2, p2

    goto :goto_18b

    .end local v23    # "user_id":I
    .restart local v15    # "user_id":I
    :catchall_186
    move-exception v0

    move-object/from16 v2, p2

    move/from16 v23, v15

    .end local v15    # "user_id":I
    .restart local v23    # "user_id":I
    :goto_18b
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2500
    throw v0
.end method

.method public setConfigureBundleForCs(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "profile"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfigureBundleForCs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3235
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    const/4 v3, -0x1

    const-string v4, "intresponse"

    if-nez p3, :cond_30

    .line 3236
    const-string v5, "setConfigureBundleForCs : Bundle is null"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3238
    const/16 v1, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3239
    return-object v0

    .line 3241
    :cond_30
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3242
    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3243
    return-object v0
.end method

.method public setCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 13
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "option"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3186
    .local v0, "agentResponse":Landroid/os/Bundle;
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 3187
    .local v1, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v2, 0xe

    const-string v3, "errorresponse"

    const/4 v4, -0x1

    const-string v5, "intresponse"

    if-nez v1, :cond_1d

    .line 3188
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3189
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3190
    return-object v0

    .line 3194
    :cond_1d
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v6

    const-string v7, "UcmService"

    if-nez v6, :cond_31

    .line 3195
    const-string v6, "agent is not bound"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3197
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3198
    return-object v0

    .line 3200
    :cond_31
    invoke-virtual {v1, p1, p4, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3201
    const-string v2, "setCredentialStorageProperty Response from plugin"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    return-object v0
.end method

.method public setState(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    const-string v0, "setState"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3629
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3631
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v2, "errorresponse"

    if-nez p1, :cond_2f

    .line 3632
    const-string v3, "uri is empty"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    const/16 v1, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3634
    return-object v0

    .line 3637
    :cond_2f
    const/4 v3, 0x0

    .line 3638
    .local v3, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v4, 0x1

    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_40

    .line 3639
    const-string v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    goto :goto_48

    .line 3641
    :cond_40
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    .line 3644
    :goto_48
    const/16 v4, 0xe

    if-nez v3, :cond_68

    .line 3645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3647
    return-object v0

    .line 3651
    :cond_68
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_77

    .line 3652
    const-string v5, "agent is not bound"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3654
    return-object v0

    .line 3657
    :cond_77
    invoke-virtual {v3, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->setState(I)Landroid/os/Bundle;

    move-result-object v0

    .line 3658
    if-nez v0, :cond_8e

    .line 3659
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 3661
    const/16 v1, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3662
    return-object v0

    .line 3665
    :cond_8e
    return-object v0
.end method

.method public showEnforcedLockTypeNotification(ILjava/lang/String;)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "csName"    # Ljava/lang/String;

    .line 5442
    const-string v0, "UCM_KEYGUARD_NOTIFICATION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEnforcedLockTypeNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5443
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 5444
    .local v1, "notiMgr":Landroid/app/NotificationManager;
    if-nez v1, :cond_2a

    .line 5445
    const-string v0, "Failed to get NotificationManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5446
    return-void

    .line 5449
    :cond_2a
    :try_start_2a
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "UCM Keyguard Configuration Notification"

    const/4 v5, 0x4

    invoke-direct {v3, v0, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 5450
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5451
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "CS_NAME"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5452
    const-string v4, "USER_ID"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5454
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, p1, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4e} :catch_9f

    .line 5455
    .local v4, "pi":Landroid/app/PendingIntent;
    const-string v5, ""

    move-object v6, v5

    .line 5456
    .local v6, "notiTitle":Ljava/lang/String;
    if-eqz p2, :cond_6d

    :try_start_53
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 5457
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 5458
    .local v5, "index":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_6d

    .line 5459
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 5462
    .end local v5    # "index":I
    :cond_6d
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040c74

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5464
    .local v5, "notiMessage":Ljava/lang/String;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5465
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v7, 0x1080027

    .line 5466
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5467
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5468
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5469
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5471
    .local v0, "builder":Landroid/app/Notification$Builder;
    add-int/lit16 v7, p1, 0x1f40

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_9e} :catch_9f

    .line 5474
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v5    # "notiMessage":Ljava/lang/String;
    .end local v6    # "notiTitle":Ljava/lang/String;
    goto :goto_b8

    .line 5472
    :catch_9f
    move-exception v0

    .line 5473
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The exception occurs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5475
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b8
    return-void
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 28
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2876
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sign "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UcmService"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 2878
    .local v4, "agentResponse":Landroid/os/Bundle;
    const-string v0, "errorresponse"

    if-nez p2, :cond_2d

    .line 2879
    const/4 v3, 0x4

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2880
    invoke-direct {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2882
    :cond_2d
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    .line 2883
    .local v5, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/16 v12, 0xe

    const/4 v13, 0x0

    const-string v14, "bytearrayresponse"

    if-nez v5, :cond_5b

    .line 2884
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sign : NULL agent for uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    invoke-virtual {v4, v14, v13}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2886
    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2887
    invoke-direct {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2891
    :cond_5b
    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    move-object v15, v6

    .line 2892
    .local v15, "UcmUri":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2893
    .local v6, "uid":I
    invoke-virtual {v15}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v11

    .line 2894
    .local v11, "uriuid":I
    const/4 v7, -0x1

    if-eq v11, v7, :cond_7b

    .line 2895
    if-eq v6, v11, :cond_7b

    .line 2896
    const/16 v8, 0x3e8

    if-eq v6, v8, :cond_78

    invoke-direct {v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 2897
    :cond_78
    move v6, v11

    move v10, v6

    goto :goto_7c

    .line 2901
    :cond_7b
    move v10, v6

    .end local v6    # "uid":I
    .local v10, "uid":I
    :goto_7c
    invoke-direct {v1, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v6

    .line 2902
    .local v6, "user_id":I
    invoke-virtual {v15}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v8

    .line 2903
    .local v8, "uriresource":I
    if-ne v8, v7, :cond_87

    const/4 v8, 0x1

    :cond_87
    move v9, v8

    .line 2905
    .end local v8    # "uriresource":I
    .local v9, "uriresource":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {v1, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 2906
    invoke-virtual {v15}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v8

    .line 2907
    .local v8, "userId":I
    if-eq v8, v7, :cond_b2

    .line 2908
    invoke-virtual {v15}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v6

    .line 2909
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sign new userid-"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v6

    goto :goto_b8

    .line 2911
    :cond_b2
    const-string v7, "sign user id id not valid. Keeping same userid"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    .end local v8    # "userId":I
    :cond_b7
    move v12, v6

    .end local v6    # "user_id":I
    .local v12, "user_id":I
    :goto_b8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 2918
    .local v22, "id":J
    :try_start_bc
    iget-object v6, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v15}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v17

    const/16 v20, 0x0

    invoke-virtual {v15}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v6

    move/from16 v18, v12

    move/from16 v19, v10

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v6
    :try_end_d6
    .catchall {:try_start_bc .. :try_end_d6} :catchall_221

    if-nez v6, :cond_105

    .line 2919
    :try_start_d8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! sign is NOT allowed for URI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    invoke-virtual {v4, v14, v13}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2921
    const/16 v3, 0xf

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2922
    invoke-direct {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0
    :try_end_f8
    .catchall {:try_start_d8 .. :try_end_f8} :catchall_fc

    .line 2925
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2922
    return-object v0

    .line 2925
    :catchall_fc
    move-exception v0

    move-object/from16 v19, v4

    move v2, v9

    move v13, v10

    move/from16 v20, v11

    goto/16 :goto_228

    :cond_105
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2926
    nop

    .line 2929
    invoke-virtual {v5}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v6

    if-nez v6, :cond_121

    .line 2930
    const-string v6, "agent is not bound"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    invoke-virtual {v4, v14, v13}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2932
    const/16 v3, 0xe

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2933
    invoke-direct {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2936
    :cond_121
    :try_start_121
    invoke-static/range {p2 .. p3}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil;->processInput([BLjava/lang/String;)[B

    move-result-object v8
    :try_end_125
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_121 .. :try_end_125} :catch_1fa

    .line 2940
    .end local p2    # "data":[B
    .local v8, "data":[B
    nop

    .line 2941
    invoke-static/range {p3 .. p3}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil;->isMDandPrefixNeeded(Ljava/lang/String;)Z

    move-result v16

    .line 2942
    .local v16, "runEncrypt":Z
    invoke-static/range {p3 .. p3}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignatureUtil;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2944
    .end local p3    # "algo":Ljava/lang/String;
    .local v17, "algo":Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v7, v6

    .line 2945
    .local v7, "argBundle":Landroid/os/Bundle;
    const-string v6, "callerUid"

    invoke-virtual {v7, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2946
    const-string v13, "user_id"

    invoke-virtual {v7, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2947
    const-string v2, "ownerUid"

    invoke-virtual {v7, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2948
    const-string v2, "resource"

    invoke-virtual {v7, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2950
    move-object/from16 v19, v4

    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .local v19, "agentResponse":Landroid/os/Bundle;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v9

    .end local v9    # "uriresource":I
    .local v20, "uriresource":I
    const-string v9, "sign KEY_RESOURCE_ID= "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, -0x2

    invoke-virtual {v7, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sign KEY_USER_ID= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sign KEY_CALLER_UID= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v5

    move-object v4, v7

    .end local v7    # "argBundle":Landroid/os/Bundle;
    .local v4, "argBundle":Landroid/os/Bundle;
    move-object v7, v2

    move/from16 v2, v20

    .end local v20    # "uriresource":I
    .local v2, "uriresource":I
    move-object/from16 v9, v17

    move v13, v10

    .end local v10    # "uid":I
    .local v13, "uid":I
    move/from16 v10, v16

    move/from16 v20, v11

    .end local v11    # "uriuid":I
    .local v20, "uriuid":I
    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->sign(Ljava/lang/String;[BLjava/lang/String;ZLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 2955
    .end local v19    # "agentResponse":Landroid/os/Bundle;
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_1c4

    .line 2956
    const-string v7, "ERROR: Null Response received from agent"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2958
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v3, "agentResponse":Landroid/os/Bundle;
    const/4 v6, 0x0

    invoke-virtual {v3, v14, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2959
    const/16 v6, 0xe

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2960
    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2962
    .end local v3    # "agentResponse":Landroid/os/Bundle;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_1c4
    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 2963
    .local v7, "response":[B
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 2964
    .local v9, "errorcode":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sign Response from plugin:  error code = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    if-nez v7, :cond_1f5

    .line 2967
    const-string v10, "ERROR: Empty data received for sign"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    const/4 v3, 0x0

    invoke-virtual {v6, v14, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2969
    const/16 v3, 0xd

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2970
    invoke-direct {v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2972
    :cond_1f5
    invoke-direct {v1, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0

    .line 2937
    .end local v2    # "uriresource":I
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .end local v7    # "response":[B
    .end local v8    # "data":[B
    .end local v13    # "uid":I
    .end local v16    # "runEncrypt":Z
    .end local v17    # "algo":Ljava/lang/String;
    .end local v20    # "uriuid":I
    .local v4, "agentResponse":Landroid/os/Bundle;
    .local v9, "uriresource":I
    .restart local v10    # "uid":I
    .restart local v11    # "uriuid":I
    .restart local p2    # "data":[B
    .restart local p3    # "algo":Ljava/lang/String;
    :catch_1fa
    move-exception v0

    move-object/from16 v19, v4

    move v2, v9

    move v13, v10

    move/from16 v20, v11

    move-object v4, v0

    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .end local v9    # "uriresource":I
    .end local v10    # "uid":I
    .end local v11    # "uriuid":I
    .restart local v2    # "uriresource":I
    .restart local v13    # "uid":I
    .restart local v19    # "agentResponse":Landroid/os/Bundle;
    .restart local v20    # "uriuid":I
    move-object v0, v4

    .line 2938
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The exception occurs "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    return-object v3

    .line 2925
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "uriresource":I
    .end local v13    # "uid":I
    .end local v19    # "agentResponse":Landroid/os/Bundle;
    .end local v20    # "uriuid":I
    .restart local v4    # "agentResponse":Landroid/os/Bundle;
    .restart local v9    # "uriresource":I
    .restart local v10    # "uid":I
    .restart local v11    # "uriuid":I
    :catchall_221
    move-exception v0

    move-object/from16 v19, v4

    move v2, v9

    move v13, v10

    move/from16 v20, v11

    .end local v4    # "agentResponse":Landroid/os/Bundle;
    .end local v9    # "uriresource":I
    .end local v10    # "uid":I
    .end local v11    # "uriuid":I
    .restart local v2    # "uriresource":I
    .restart local v13    # "uid":I
    .restart local v19    # "agentResponse":Landroid/os/Bundle;
    .restart local v20    # "uriuid":I
    :goto_228
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2926
    throw v0
.end method

.method public systemReady()V
    .registers 3

    .line 365
    const-string v0, "UcmService"

    const-string v1, "systemReady is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUcmServiceAgentManager:Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/UcmServiceAgentManager;->systemReady(Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    .line 367
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 368
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z

    if-nez v0, :cond_1b

    .line 369
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->showODEProgressNotification()V

    .line 371
    :cond_1b
    return-void
.end method

.method public unwrapDek(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "wrappedDek"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1656
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->unwrapDek(Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method public updateAgentList()V
    .registers 4

    .line 4788
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4789
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAgentList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 4791
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 4792
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 4793
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4794
    return-void
.end method

.method public verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyPin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3457
    .local v0, "agentResponse":Landroid/os/Bundle;
    const/16 v2, 0x10

    const-string v3, "errorresponse"

    if-eqz p2, :cond_ee

    const-string v4, ""

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_34

    goto/16 :goto_ee

    .line 3463
    :cond_34
    if-eqz p3, :cond_e5

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_3e

    goto/16 :goto_e5

    .line 3469
    :cond_3e
    const/4 v2, 0x0

    .line 3470
    .local v2, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v4, "boot_test"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_4e

    .line 3471
    const-string v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    goto :goto_56

    .line 3473
    :cond_4e
    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    .line 3476
    :goto_56
    const/16 v4, 0xe

    if-nez v2, :cond_76

    .line 3477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3479
    return-object v0

    .line 3482
    :cond_76
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_85

    .line 3483
    const-string v5, "agent is not bound"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3485
    return-object v0

    .line 3488
    :cond_85
    invoke-virtual {v2, p1, p3, p4}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3489
    if-nez v0, :cond_9c

    .line 3490
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 3492
    const/16 v1, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3493
    return-object v0

    .line 3496
    :cond_9c
    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3497
    .local v3, "state":I
    const-string v5, "remainCnt"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3498
    .local v4, "remainCnt":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOCK_STATE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REMAIN_COUNT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    const/16 v5, 0x83

    if-ne v3, v5, :cond_d8

    .line 3501
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    .line 3504
    :cond_d8
    const/16 v5, 0x85

    if-ne v3, v5, :cond_e4

    .line 3505
    const-string v6, "state changed to blocked"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    invoke-direct {p0, v5, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendStateChangeBroadcast(ILjava/lang/String;)V

    .line 3509
    :cond_e4
    return-object v0

    .line 3464
    .end local v2    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "state":I
    .end local v4    # "remainCnt":I
    :cond_e5
    :goto_e5
    const-string v4, "pin is empty"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3466
    return-object v0

    .line 3458
    :cond_ee
    :goto_ee
    const-string v4, "uri is empty"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3460
    return-object v0
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyPuk : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3517
    .local v0, "agentResponse":Landroid/os/Bundle;
    const/16 v2, 0x10

    const-string v3, "errorresponse"

    if-eqz p1, :cond_d3

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_2c

    goto/16 :goto_d3

    .line 3523
    :cond_2c
    if-eqz p3, :cond_ca

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_36

    goto/16 :goto_ca

    .line 3529
    :cond_36
    const/4 v2, 0x0

    .line 3530
    .local v2, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v4, "boot_test"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_46

    .line 3531
    const-string v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    goto :goto_4e

    .line 3533
    :cond_46
    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    .line 3536
    :goto_4e
    const/16 v4, 0xe

    if-nez v2, :cond_6e

    .line 3537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3538
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3539
    return-object v0

    .line 3543
    :cond_6e
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->isServiceBound()Z

    move-result v5

    if-nez v5, :cond_7d

    .line 3544
    const-string v5, "agent is not bound"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3546
    return-object v0

    .line 3549
    :cond_7d
    invoke-virtual {v2, p2, p3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3550
    if-nez v0, :cond_94

    .line 3551
    const-string v4, "ERROR: Null Response received from agent"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 3553
    const/16 v1, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3554
    return-object v0

    .line 3557
    :cond_94
    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3558
    .local v3, "state":I
    const-string v5, "remainCnt"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3559
    .local v4, "remainCnt":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOCK_STATE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REMAIN_COUNT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    return-object v0

    .line 3524
    .end local v2    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "state":I
    .end local v4    # "remainCnt":I
    :cond_ca
    :goto_ca
    const-string v4, "pin is empty"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3526
    return-object v0

    .line 3518
    :cond_d3
    :goto_d3
    const-string v4, "uri is empty"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3520
    return-object v0
.end method
