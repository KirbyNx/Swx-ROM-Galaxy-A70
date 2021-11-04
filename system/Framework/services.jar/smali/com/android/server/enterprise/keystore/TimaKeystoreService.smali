.class public Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.super Lcom/samsung/android/knox/keystore/ITimaKeystore$Stub;
.source "TimaKeystoreService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;,
        Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_PACKAGE:Ljava/lang/String; = "defaultpackage"

.field private static final DOWNLOADABLEKEYSTORE_BIND_ACTION:Ljava/lang/String; = "com.samsung.android.BIND_TIMA_KS_CCM"

.field private static final DOWNLOADABLEKEYSTORE_PACKAGE:Ljava/lang/String; = "com.sec.downloadablekeystore"

.field private static final FIPS_TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/fips_tima_keystore/"

.field private static final GET_ADMINCONTAINER_CCMBUILDUPDATE:I = 0x5

.field private static final GET_ADMINLUIDLIST:I = 0x0

.field private static final GET_CONTAINEROWNERUID:I = 0x1

.field private static final GET_MUMCONTAINEROWNERUID:I = 0x2

.field private static final KNOX_CCM_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

.field private static final KNOX_DKS_INTERNAL_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DKS_INTERNAL"

.field private static final KNOX_KEYSTORE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

.field private static final KNOX_KEYSTORE_PER_APP_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

.field private static final KNOX_PROTECTED_KEYSTORE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_PROTECTED_KEYSTORE"

.field private static final MSG_BIND_DOWNLOADABLEKS:I = 0x3

.field private static final RESTART_DKS_TIMEOUT_MILLIS:I = 0x1f4

.field private static final SET_ADMIN_INFO_TABLE_FORDEFAULTCCMPROFILE:I = 0x3

.field private static final SET_USER_CCM_PROVISIONED:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMA_KEYSTORE_PATH:Ljava/lang/String; = "/data/misc/tima_keystore/"

.field private static mInternalHandler:Landroid/os/Handler;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimaService:Landroid/service/tima/ITimaService;

.field private pReceiver:Landroid/content/BroadcastReceiver;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 107
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    .line 111
    const-string v0, "TimaKeystoreService"

    sput-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/ITimaKeystore$Stub;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    .line 115
    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 117
    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 134
    const-string/jumbo v1, "tima"

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TIMA_SERVICE:Ljava/lang/String;

    .line 138
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    .line 140
    new-instance v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-direct {v2, p0, v0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;)V

    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    .line 185
    new-instance v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$2;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->pReceiver:Landroid/content/BroadcastReceiver;

    .line 971
    new-instance v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_39

    .line 148
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v3, "TimaKeystoreService Constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_39
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    .line 151
    const-string/jumbo v2, "persona"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    .line 152
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mPersonaObr:Lcom/android/server/enterprise/keystore/TimaKeystoreService$SystemPersonaObserver;

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 155
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 156
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->setupIntentFilters()V

    .line 160
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_8c

    .line 162
    :try_start_65
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_70

    .line 163
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v2, "Called TIMA service getTimaVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_70
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_81} :catch_82

    .line 169
    :cond_81
    goto :goto_8c

    .line 167
    :catch_82
    move-exception v1

    .line 168
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8c
    :goto_8c
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->supportDKS()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 173
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v1, "bootCompleteFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, "packageAddedFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->pReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    .end local v0    # "packageAddedFilter":Landroid/content/IntentFilter;
    .end local v1    # "bootCompleteFilter":Landroid/content/IntentFilter;
    :cond_bf
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 105
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 105
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->supportDKS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # I

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->systemReady(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 105
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    .line 105
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # I

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->scheduleDKSRestart(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # I

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->bindDownlodableKeystoreService(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 105
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # Ljava/io/File;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 105
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bindDownlodableKeystoreService(I)I
    .registers 5
    .param p1, "val"    # I

    .line 274
    const/4 v0, -0x1

    .line 275
    .local v0, "ret":I
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v2, "bindDownlodableKeystoreService - DOWNLOADABLEKEYSTORE_BIND_ACTION -- "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->getDKSService(I)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v1

    .line 278
    .local v1, "service":Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    if-eqz v1, :cond_f

    .line 279
    const/4 v0, 0x0

    .line 281
    :cond_f
    return v0
.end method

.method private deletePackageRecord(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1089
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "uid"

    const-string/jumbo v2, "pkgName"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 1091
    .local v1, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1092
    .local v2, "sUid":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v0

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 1093
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "TimaKeystorePolicy"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    return v0

    .line 1094
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sUid":Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :catch_20
    move-exception v1

    .line 1095
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackageRecord() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private deletePackageRecord(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1116
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "pkgName"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, "sColumns":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    .line 1118
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "TimaKeystorePolicy"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_16

    return v0

    .line 1119
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :catch_16
    move-exception v1

    .line 1120
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackageRecord() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private deletePackageRecordPerApp(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1102
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "uid"

    const-string/jumbo v2, "pkgName"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 1104
    .local v1, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1105
    .local v2, "sUid":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v0

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 1106
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "TimaKeystorePerAppPolicy"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    return v0

    .line 1108
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sUid":Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :catch_20
    move-exception v1

    .line 1109
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackageRecordPerApp() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private enforcePermission()V
    .registers 4

    .line 321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 322
    return-void

    .line 325
    :cond_9
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method private enforcePermissionDks()V
    .registers 4

    .line 354
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 355
    return-void

    .line 358
    :cond_9
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.knox.permission.KNOX_DKS_INTERNAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private enforcePermissionForUKS()V
    .registers 7

    .line 363
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_9

    .line 374
    goto :goto_23

    .line 364
    :catch_9
    move-exception v1

    .line 366
    .local v1, "e1":Ljava/lang/SecurityException;
    :try_start_a
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_11} :catch_12

    .line 373
    goto :goto_23

    .line 367
    :catch_12
    move-exception v2

    .line 369
    .local v2, "e2":Ljava/lang/SecurityException;
    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 372
    goto :goto_23

    .line 370
    :catch_1b
    move-exception v3

    .line 371
    .local v3, "e3":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.knox.permission.KNOX_PROTECTED_KEYSTORE"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v1    # "e1":Ljava/lang/SecurityException;
    .end local v2    # "e2":Ljava/lang/SecurityException;
    .end local v3    # "e3":Ljava/lang/SecurityException;
    :goto_23
    return-void
.end method

.method private enforcePermissionPerApp()V
    .registers 5

    .line 330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 331
    return-void

    .line 337
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_11} :catch_12

    .line 340
    goto :goto_1a

    .line 338
    :catch_12
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_1a
    return-void
.end method

.method private enforcePermissionPerAppOnly()V
    .registers 4

    .line 345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 346
    return-void

    .line 348
    :cond_9
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private getDKSService(I)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    .registers 6
    .param p1, "val"    # I

    .line 236
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    if-nez v0, :cond_1b

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.BIND_TIMA_KS_CCM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.downloadablekeystore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    new-instance v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$3;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V

    .line 267
    .local v1, "connection":Landroid/content/ServiceConnection;
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 270
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "connection":Landroid/content/ServiceConnection;
    :cond_1b
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mDKSService:Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    return-object v0
.end method

.method private insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .line 1054
    const-string/jumbo v0, "pkgName"

    const-string/jumbo v1, "uid"

    :try_start_6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1055
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1056
    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v3, "enabled"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1059
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1060
    .local v3, "whereValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1061
    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "TimaKeystorePolicy"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    return v0

    .line 1064
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "whereValues":Landroid/content/ContentValues;
    :catch_36
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertOrUpdatePackageRecord() failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private insertOrUpdatePackageRecordPerApp(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1072
    const-string/jumbo v0, "pkgName"

    const-string/jumbo v1, "uid"

    :try_start_6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1073
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1074
    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1077
    .local v3, "whereValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1078
    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "TimaKeystorePerAppPolicy"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_2d

    return v0

    .line 1081
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "whereValues":Landroid/content/ContentValues;
    :catch_2d
    move-exception v0

    .line 1082
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertOrUpdatePackageRecordPerApp() failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private removeUserKeyDirectory(Ljava/io/File;)Z
    .registers 8
    .param p1, "path"    # Ljava/io/File;

    .line 1034
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1035
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1036
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2d

    .line 1037
    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_2d

    aget-object v3, v0, v2

    .line 1038
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1039
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z

    goto :goto_2a

    .line 1041
    :cond_1c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1042
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "removeUserKeyDirectory file is delete."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    .end local v3    # "file":Ljava/io/File;
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1047
    :cond_2d
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    return v1

    .line 1049
    .end local v0    # "files":[Ljava/io/File;
    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleDKSRestart(I)V
    .registers 6
    .param p1, "val"    # I

    .line 285
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scheduleDKSRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 287
    const/4 v1, 0x3

    if-ne p1, v1, :cond_22

    .line 288
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_22

    .line 292
    :cond_1a
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scheduleDKSRestart Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_22
    :goto_22
    return-void
.end method

.method private setupIntentFilters()V
    .registers 6

    .line 955
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_c

    .line 956
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in setupIntentFilters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_c
    new-instance v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    .line 958
    .local v0, "receiver":Lcom/android/server/enterprise/keystore/TimaKeystoreService$KeystoreReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 959
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 960
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 961
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 964
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 965
    .local v2, "addRemoveUserFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 966
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 967
    const-string v3, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 968
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 969
    return-void
.end method

.method private static supportDKS()Z
    .registers 5

    .line 1239
    const-string v0, ""

    .line 1240
    .local v0, "product":Ljava/lang/String;
    const-string/jumbo v1, "ro.build.flavor"

    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1241
    const-string/jumbo v1, "great"

    .line 1242
    .local v1, "PRODUCT_GREAT":Ljava/lang/String;
    const-string v2, "dream"

    .line 1243
    .local v2, "PRODUCT_DREAM":Ljava/lang/String;
    const-string v3, "cruiser"

    .line 1244
    .local v3, "PRODUCT_CRUISER":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v4, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v4, 0x1

    :goto_2c
    return v4
.end method

.method private systemReady(I)V
    .registers 6
    .param p1, "currentPhase"    # I

    .line 1156
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady() Phase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1c

    goto :goto_2b

    .line 1173
    :cond_1c
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2b

    .line 1174
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1175
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1179
    :cond_2b
    :goto_2b
    return-void
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method


# virtual methods
.method public enableTimaKeystore(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .line 382
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const/4 v2, 0x1

    const-string v3, "API_TIMA:enableTimaKeystore"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 383
    .local v0, "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 385
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_19

    .line 386
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in enableTimaKeystore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_19
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V

    .line 390
    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    .line 391
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_2c

    .line 392
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v3, "enableTimaKeystore - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_2c
    return v2

    .line 396
    :cond_2d
    if-eqz p1, :cond_61

    .line 399
    :try_start_2f
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 401
    .local v1, "userId":I
    const-string v3, "defaultpackage"

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecord(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 402
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v4, "enableTimaKeystore: deletePackageRecord failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_42
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "caller":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4, v3, p2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z

    move-result v2
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_58} :catch_59

    return v2

    .line 408
    .end local v1    # "userId":I
    .end local v3    # "caller":Ljava/lang/String;
    :catch_59
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v4, "enableTimaKeystore() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_61
    return v2
.end method

.method public enableTimaKeystorePerApp(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z

    .line 557
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const/4 v2, 0x1

    const-string v3, "API_TIMA:enableTimaKeystorePerApp"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 558
    .local v0, "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 561
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_19

    .line 562
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in enableTimaKeystorePerApp"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_19
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionPerApp()V

    .line 566
    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v3, 0x0

    if-nez v1, :cond_2d

    .line 567
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_2c

    .line 568
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v2, "enableTimaKeystorePerApp - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_2c
    return v3

    .line 573
    :cond_2d
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "caller":Ljava/lang/String;
    if-eqz p2, :cond_46

    .line 575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v2

    return v2

    .line 577
    :cond_46
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 578
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_57

    .line 579
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v4, "disable is called, and caller is enabled. try to delete and return the result"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->deletePackageRecordPerApp(ILjava/lang/String;)Z

    move-result v2

    return v2

    .line 582
    :cond_60
    sget-boolean v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v4, :cond_6b

    .line 583
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v5, "disable is called, but caller is not enabled. return true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6b} :catch_6c

    .line 584
    :cond_6b
    return v2

    .line 587
    .end local v1    # "caller":Ljava/lang/String;
    :catch_6c
    move-exception v1

    .line 588
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v4, "enableTimaKeystorePerApp() failed"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 591
    .end local v1    # "e":Ljava/lang/Exception;
    return v3
.end method

.method public encryptPassword(Ljava/lang/String;)[C
    .registers 6
    .param p1, "pwd"    # Ljava/lang/String;

    .line 937
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1e

    .line 942
    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_1d

    .line 945
    :try_start_e
    invoke-interface {v1, p1}, Landroid/service/tima/ITimaService;->encryptPassword(Ljava/lang/String;)[C

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return-object v0

    .line 947
    :catch_13
    move-exception v1

    .line 948
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    return-object v0

    .line 938
    :cond_1e
    :goto_1e
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v2, "encryptPassword, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    return-object v0
.end method

.method public getContainerAdminDetails(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20
    .param p1, "cmd"    # I
    .param p2, "input"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 424
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "adminUid"

    sget-boolean v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v4, :cond_14

    .line 425
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in getContainerAdminDetails"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionDks()V

    .line 429
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 431
    .local v4, "resultbundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 433
    .local v5, "token":J
    const-string v7, "ADMINLUIDLIST"

    if-eqz v2, :cond_169

    const/4 v8, 0x1

    if-eq v2, v8, :cond_15d

    const/4 v9, 0x2

    if-eq v2, v9, :cond_151

    const/4 v9, 0x3

    if-eq v2, v9, :cond_119

    const/4 v0, 0x4

    if-eq v2, v0, :cond_105

    const/4 v0, 0x5

    if-eq v2, v0, :cond_35

    goto/16 :goto_19a

    .line 487
    :cond_35
    const/4 v9, 0x0

    .line 488
    .local v9, "DB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 489
    .local v10, "c":Landroid/database/Cursor;
    :try_start_37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 490
    .local v11, "containerId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_19f

    move-object v12, v0

    .line 492
    .local v12, "adminUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_43
    iget-object v0, v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string v13, "/data/system/enterprise.db"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v0, v13, v15, v14}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v9, v0

    .line 493
    if-eqz v9, :cond_7f

    .line 494
    const-string v0, "SELECT * FROM MUMCONTAINER;"

    invoke-virtual {v9, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 495
    if-eqz v10, :cond_7f

    .line 496
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 497
    :goto_5f
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 498
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_7e} :catch_97
    .catchall {:try_start_43 .. :try_end_7e} :catchall_8a

    goto :goto_5f

    .line 507
    :cond_7f
    if-eqz v10, :cond_84

    .line 508
    :try_start_81
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_84
    if-eqz v9, :cond_a0

    .line 510
    :goto_86
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_a0

    .line 507
    :catchall_8a
    move-exception v0

    if-eqz v10, :cond_90

    .line 508
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_90
    if-eqz v9, :cond_95

    .line 510
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 511
    :cond_95
    nop

    .end local v4    # "resultbundle":Landroid/os/Bundle;
    .end local v5    # "token":J
    .end local p0    # "this":Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .end local p1    # "cmd":I
    .end local p2    # "input":I
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v0

    .line 505
    .restart local v4    # "resultbundle":Landroid/os/Bundle;
    .restart local v5    # "token":J
    .restart local p0    # "this":Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    .restart local p1    # "cmd":I
    .restart local p2    # "input":I
    .restart local p3    # "extras":Landroid/os/Bundle;
    :catch_97
    move-exception v0

    .line 507
    if-eqz v10, :cond_9d

    .line 508
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_9d
    if-eqz v9, :cond_a0

    .line 510
    goto :goto_86

    .line 513
    :cond_a0
    :goto_a0
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19a

    .line 514
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string v8, "Container list"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d7

    .line 517
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 518
    .local v0, "values":[I
    const/4 v8, 0x0

    .line 519
    .local v8, "tempcount":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_be
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 520
    .local v14, "adminId":I
    aput v14, v0, v8

    .line 521
    nop

    .end local v14    # "adminId":I
    add-int/lit8 v8, v8, 0x1

    .line 522
    goto :goto_be

    .line 524
    :cond_d4
    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 527
    .end local v0    # "values":[I
    .end local v8    # "tempcount":I
    :cond_d7
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19a

    .line 528
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 529
    .restart local v0    # "values":[I
    const/4 v7, 0x0

    .line 530
    .local v7, "tempcount":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_fe

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 531
    .local v13, "container":I
    aput v13, v0, v7

    .line 532
    nop

    .end local v13    # "container":I
    add-int/lit8 v7, v7, 0x1

    .line 533
    goto :goto_e8

    .line 535
    :cond_fe
    const-string v8, "CONTAINERIDLIST"

    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_19a

    .line 478
    .end local v0    # "values":[I
    .end local v7    # "tempcount":I
    .end local v9    # "DB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "containerId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "adminUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_105
    move/from16 v0, p2

    .line 479
    .local v0, "userId":I
    const-string/jumbo v7, "user"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 480
    .local v7, "b":Landroid/os/IBinder;
    invoke-static {v7}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerService;

    .line 481
    .local v8, "umService":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v8, v0}, Lcom/android/server/pm/UserManagerService;->setUserCCMProvisioned(I)V

    .line 483
    .end local v0    # "userId":I
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v8    # "umService":Lcom/android/server/pm/UserManagerService;
    goto/16 :goto_19a

    .line 462
    :cond_119
    move/from16 v7, p2

    .line 463
    .local v7, "callerUID":I
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 464
    .local v9, "cvUid":Landroid/content/ContentValues;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    const-string v10, "adminName"

    const-string v11, "CCM-System"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v10, "canRemove"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 468
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 469
    .local v8, "cvUidWhere":Landroid/content/ContentValues;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    iget-object v0, v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ADMIN_INFO"

    invoke-virtual {v0, v10, v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    .line 473
    .local v0, "ret":Z
    const-string v10, "SET_ADMIN_INFO_TABLE_FORDEFAULTCCMPROFILE"

    invoke-virtual {v4, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 475
    .end local v0    # "ret":Z
    .end local v7    # "callerUID":I
    .end local v8    # "cvUidWhere":Landroid/content/ContentValues;
    .end local v9    # "cvUid":Landroid/content/ContentValues;
    goto :goto_19a

    .line 456
    :cond_151
    iget-object v0, v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 457
    .local v0, "mumContainerOwnerUid":I
    const-string v7, "MUMCONTAINEROWNERUID"

    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    .end local v0    # "mumContainerOwnerUid":I
    goto :goto_19a

    .line 450
    :cond_15d
    iget-object v0, v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v0

    .line 451
    .local v0, "ownerUid":I
    const-string v7, "CONTAINEROWNERUID"

    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    .end local v0    # "ownerUid":I
    goto :goto_19a

    .line 435
    :cond_169
    iget-object v0, v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 436
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_199

    .line 437
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [J

    .line 438
    .local v8, "values":[J
    const/4 v9, 0x0

    .line 439
    .local v9, "tempcount":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_180
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_196

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 440
    .local v11, "adminId":Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    aput-wide v12, v8, v9

    .line 441
    nop

    .end local v11    # "adminId":Ljava/lang/Long;
    add-int/lit8 v9, v9, 0x1

    .line 442
    goto :goto_180

    .line 444
    :cond_196
    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V
    :try_end_199
    .catchall {:try_start_81 .. :try_end_199} :catchall_19f

    .line 447
    .end local v0    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "values":[J
    .end local v9    # "tempcount":I
    :cond_199
    nop

    .line 543
    :cond_19a
    :goto_19a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    nop

    .line 546
    return-object v4

    .line 543
    :catchall_19f
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    throw v0
.end method

.method public isTimaKeyStoreDefaultForContainer(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "ret":Z
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_d

    .line 600
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in isTimaKeyStoreDefaultForContainer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_d
    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 603
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1e

    .line 604
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeyStoreDefaultForContainer - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1e
    return v2

    .line 609
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const v3, 0x186a0

    div-int/2addr v1, v3

    const/4 v3, 0x1

    if-le v1, v3, :cond_2b

    move v2, v3

    :cond_2b
    move v1, v2

    .line 610
    .local v1, "isUserContainer":Z
    if-eqz v1, :cond_33

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_34

    return v2

    .line 615
    .end local v1    # "isUserContainer":Z
    :cond_33
    goto :goto_50

    .line 613
    :catch_34
    move-exception v1

    .line 614
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTimaKeyStoreDefaultForContainer() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_50
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_6b

    .line 618
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTimaKeyStoreDefaultForContainer returning - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_6b
    return v0
.end method

.method public isTimaKeystoreEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 784
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_c

    .line 785
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in isTimaKeystoreEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 788
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_1d

    .line 789
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isTimaKeystoreEnabled - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_1d
    return v1

    .line 793
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-ne v0, v2, :cond_28

    .line 794
    return v3

    .line 797
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 798
    return v3

    .line 799
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 800
    return v3

    .line 802
    :cond_36
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binder.getCallingPid() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Binder.getCallingUid()"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v0

    if-nez v0, :cond_65

    .line 805
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 807
    :cond_65
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v5, "knox_timakeystore_policy"

    const-string/jumbo v6, "isTimaKeystoreEnabled"

    invoke-static {v0, v2, v4, v5, v6}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7c

    .line 809
    return v3

    .line 812
    :cond_7c
    return v1
.end method

.method public isTimaKeystoreEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 882
    const-string v0, "enabled"

    const/4 v1, 0x0

    .line 883
    .local v1, "ret":Z
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_f

    .line 884
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in isTimaKeystoreEnabledForPackage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_f
    iget-boolean v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v2, :cond_21

    .line 887
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_1f

    .line 888
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isTimaKeystoreEnabledForPackage - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_1f
    const/4 v0, 0x0

    return v0

    .line 893
    :cond_21
    :try_start_21
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 895
    .local v2, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 897
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/16 v4, 0x80

    invoke-interface {v3, p2, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 898
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 900
    .local v5, "columns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "TimaKeystorePolicy"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 903
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_68

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_68

    .line 904
    const/4 v7, 0x0

    .line 905
    .local v7, "cv":Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 906
    .local v8, "isEnabled":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 908
    .local v9, "it":Ljava/util/Iterator;
    :cond_4a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_68

    .line 909
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    move-object v7, v10

    .line 910
    if-eqz v7, :cond_64

    .line 911
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    .line 912
    .local v10, "bisEnabled":Ljava/lang/Boolean;
    if-eqz v10, :cond_64

    .line 913
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    move v8, v11

    .line 916
    .end local v10    # "bisEnabled":Ljava/lang/Boolean;
    :cond_64
    if-eqz v8, :cond_4a

    .line 917
    const/4 v0, 0x1

    .line 918
    .end local v1    # "ret":Z
    .local v0, "ret":Z
    move v1, v0

    .line 923
    .end local v0    # "ret":Z
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "isEnabled":Z
    .end local v9    # "it":Ljava/util/Iterator;
    .restart local v1    # "ret":Z
    :cond_68
    if-nez v1, :cond_73

    if-eqz v4, :cond_73

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6e} :catch_74

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_73

    .line 924
    const/4 v1, 0x1

    .line 928
    .end local v2    # "userId":I
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_73
    goto :goto_90

    .line 926
    :catch_74
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTimaKeystoreEnabledForPackage() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_90
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_ab

    .line 931
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTimaKeystoreEnabledForPackage returning - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_ab
    return v1
.end method

.method public isTimaKeystoreEnabledForUKS(II)Z
    .registers 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 734
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_c

    .line 735
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in isTimaKeystoreEnabledForUKS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_c
    const/4 v0, 0x1

    .line 738
    .local v0, "isTKSEnabledPerApp":Z
    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 739
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1e

    .line 740
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledForUKS - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_1e
    return v2

    .line 744
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    if-ne v1, v3, :cond_29

    .line 745
    return v4

    .line 748
    :cond_29
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v1, p2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 750
    .local v1, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 751
    return v4

    .line 753
    :cond_39
    const/4 v0, 0x0

    .line 755
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binder.getCallingPid() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Binder.getCallingUid()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 755
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v3

    if-nez v3, :cond_69

    .line 758
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 760
    :cond_69
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "knox_timakeystore_policy"

    const-string/jumbo v6, "isTimaKeystoreEnabled"

    invoke-static {v3, p1, p2, v5, v6}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_78

    .line 762
    return v4

    .line 766
    :cond_78
    if-nez v0, :cond_93

    .line 769
    :try_start_7a
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionPerAppOnly()V

    .line 770
    sget-boolean v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v3, :cond_89

    .line 771
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isTimaKeystoreEnabledInternal - this ctx is not in TKSperappDB, but has TKSperapp permission"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/SecurityException; {:try_start_7a .. :try_end_89} :catch_8a

    .line 772
    :cond_89
    return v4

    .line 773
    :catch_8a
    move-exception v3

    .line 774
    .local v3, "e":Ljava/lang/SecurityException;
    sget-object v4, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isTimaKeystoreEnabledInDBPerApp() no permission"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_93
    return v2
.end method

.method public isTimaKeystoreEnabledInDB(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 627
    const-string v0, "enabled"

    const/4 v1, 0x0

    .line 628
    .local v1, "ret":Z
    sget-boolean v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v2, :cond_f

    .line 629
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in isTimaKeystoreEnabledInDB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_f
    iget-boolean v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v2, :cond_21

    .line 632
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_1f

    .line 633
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isTimaKeystoreEnabledInDB - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1f
    const/4 v0, 0x0

    return v0

    .line 638
    :cond_21
    :try_start_21
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, "columns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "TimaKeystorePolicy"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 643
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_59

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_59

    .line 644
    const/4 v4, 0x0

    .line 645
    .local v4, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 646
    .local v5, "isEnabled":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 648
    .local v6, "it":Ljava/util/Iterator;
    :cond_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 649
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    move-object v4, v7

    .line 650
    if-eqz v4, :cond_56

    .line 651
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 652
    .local v7, "bisEnabled":Ljava/lang/Boolean;
    if-eqz v7, :cond_56

    .line 653
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_55} :catch_5a

    move v5, v8

    .line 657
    .end local v7    # "bisEnabled":Ljava/lang/Boolean;
    :cond_56
    if-eqz v5, :cond_3c

    .line 658
    const/4 v1, 0x1

    .line 665
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "isEnabled":Z
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_59
    goto :goto_76

    .line 663
    :catch_5a
    move-exception v0

    .line 664
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTimaKeystoreEnabledInDB() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_76
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_91

    .line 668
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTimaKeystoreEnabledInDB returning - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_91
    return v1
.end method

.method public isTimaKeystoreEnabledInDBPerApp(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 678
    const-string/jumbo v0, "pkgName"

    const-string/jumbo v1, "uid"

    const/4 v2, 0x0

    .line 679
    .local v2, "ret":Z
    const/4 v3, 0x0

    .line 680
    .local v3, "callingUid":I
    const/4 v4, 0x0

    .line 681
    .local v4, "caller":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v5, :cond_15

    .line 682
    sget-object v5, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "in isTimaKeystoreEnabledInDBPerApp"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_15
    iget-boolean v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    if-nez v5, :cond_27

    .line 685
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_25

    .line 686
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isTimaKeystoreEnabledInDBPerApp - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_25
    const/4 v0, 0x0

    return v0

    .line 691
    :cond_27
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move v3, v5

    .line 692
    iget-object v5, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_36} :catch_38

    move-object v4, v5

    .line 696
    goto :goto_44

    .line 693
    :catch_38
    move-exception v5

    .line 694
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isTimaKeystoreEnabledInDBPerApp() get callingUid, caller failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 699
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_44
    :try_start_44
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    .line 702
    .local v5, "columns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "TimaKeystorePerAppPolicy"

    const/4 v8, 0x0

    .line 703
    invoke-virtual {v6, v7, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 705
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_b2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b2

    .line 706
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 707
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 708
    .local v9, "callerUid":Ljava/lang/Integer;
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 710
    .local v10, "callerPkg":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isTimaKeystoreEnabledInDBPerApp, callingUid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", caller = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", callerUid in DB = , callerPkg in DB = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    if-eqz v9, :cond_b1

    .line 712
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v3, v11, :cond_b1

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b1

    .line 713
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isTimaKeystoreEnabledInDBPerApp matched. caller app can use TKS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_ae} :catch_b3

    .line 714
    const/4 v0, 0x1

    .line 715
    .end local v2    # "ret":Z
    .local v0, "ret":Z
    move v2, v0

    goto :goto_b2

    .line 718
    .end local v0    # "ret":Z
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v9    # "callerUid":Ljava/lang/Integer;
    .end local v10    # "callerPkg":Ljava/lang/String;
    .restart local v2    # "ret":Z
    :cond_b1
    goto :goto_5d

    .line 722
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_b2
    :goto_b2
    goto :goto_cf

    .line 720
    :catch_b3
    move-exception v0

    .line 721
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isTimaKeystoreEnabledInDBPerApp() failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_cf
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_ea

    .line 724
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTimaKeystoreEnabledInDBPerApp returning -"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_ea
    return v2
.end method

.method public isTimaKeystoreEnabledInternal(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 819
    sget-boolean v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v0, :cond_c

    .line 820
    sget-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in isTimaKeystoreEnabledInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_c
    const/4 v0, 0x1

    .line 823
    .local v0, "isTKSEnabledPerApp":Z
    iget-boolean v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mIsTimaVersion30:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 824
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_1e

    .line 825
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledInternal - TimaKeystore is available only on TIMA version 3.0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_1e
    return v2

    .line 829
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    if-ne v1, v3, :cond_29

    .line 830
    return v4

    .line 835
    :cond_29
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionForUKS()V

    .line 836
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_38

    .line 837
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledInternal - check KNOX CCM TKS Permission for redirection"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_38} :catch_39

    .line 838
    :cond_38
    return v4

    .line 839
    :catch_39
    move-exception v1

    .line 840
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isTimaKeystoreEnabledInDBPerApp() no permission for redirection"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .end local v1    # "e":Ljava/lang/SecurityException;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 845
    return v4

    .line 846
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledInDBPerApp(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 847
    return v4

    .line 849
    :cond_50
    const/4 v0, 0x0

    .line 851
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binder.getCallingPid() "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Binder.getCallingUid()"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 851
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v1

    if-nez v1, :cond_80

    .line 854
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 856
    :cond_80
    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v6, "knox_timakeystore_policy"

    const-string/jumbo v7, "isTimaKeystoreEnabled"

    invoke-static {v1, v3, v5, v6, v7}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_97

    .line 858
    return v4

    .line 862
    :cond_97
    if-nez v0, :cond_b2

    .line 865
    :try_start_99
    invoke-direct {p0}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermissionPerAppOnly()V

    .line 866
    sget-boolean v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z

    if-eqz v1, :cond_a8

    .line 867
    sget-object v1, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isTimaKeystoreEnabledInternal - this ctx is not in TKSperappDB, but has TKSperapp permission"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/SecurityException; {:try_start_99 .. :try_end_a8} :catch_a9

    .line 868
    :cond_a8
    return v4

    .line 869
    :catch_a9
    move-exception v1

    .line 870
    .restart local v1    # "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isTimaKeystoreEnabledInDBPerApp() no permission"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_b2
    return v2
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 1215
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1195
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1209
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1202
    return-void
.end method

.method public systemReady()V
    .registers 4

    .line 1182
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->supportDKS()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1183
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "Tima Keystore InternalHandlerThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->thread:Landroid/os/HandlerThread;

    .line 1185
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1186
    new-instance v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$InternalHandler;-><init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->mInternalHandler:Landroid/os/Handler;

    .line 1188
    :cond_21
    return-void
.end method
