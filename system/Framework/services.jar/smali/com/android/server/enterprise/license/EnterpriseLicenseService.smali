.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;
    }
.end annotation


# static fields
.field private static final INTENT_DEVICE_REGISTRATION_REQUEST_ACTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DEVICE_REGISTRATION_INTERNAL"

.field private static final INTENT_DEVICE_REGISTRATION_REQUEST_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final INTENT_DEVICE_REGISTRATION_REQUEST_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEVICE_REGISTRATION_REQUEST_INTENT_INTERNAL"

.field private static final KLMS_AGENT_PKG:Ljava/lang/String; = "com.samsung.klmsagent"

.field private static final KLMS_PACKAGE_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PACKAGE_REMOVED_INTERNAL"

.field private static final KPM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.pushmanager"

.field private static final MY_PID:I

.field private static final SUCCESS_STATUS_RESULT:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseService"

.field private static final UMCpackageName:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field private allowedCaller:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mELMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mInjector:Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;

.field private mKLMKeyDeactivateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKlmElmChangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/license/IActivationKlmElmObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 116
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;

    .line 172
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;Landroid/content/pm/IPackageManager;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;Landroid/content/pm/IPackageManager;)V
    .registers 11
    .param p1, "injector"    # Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;

    .line 176
    invoke-direct {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 143
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    const-string v1, "com.sec.knox.kccagent"

    const-string v2, "com.sec.knox.klat.agent"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mInjector:Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;

    .line 178
    iget-object v0, p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 179
    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 180
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 107
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callerUserId"    # I

    .line 233
    const-string v0, "EnterpriseLicenseService"

    const/4 v1, 0x1

    if-eqz p2, :cond_db

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_db

    .line 236
    :cond_d
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 237
    return v1

    .line 239
    :cond_14
    const/4 v2, 0x0

    .line 240
    .local v2, "checkCallerPkgName":Z
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1a
    if-ge v6, v4, :cond_3d

    aget-object v7, v3, v6

    .line 241
    .local v7, "caller":Ljava/lang/String;
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller is approved : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v2, 0x1

    .line 244
    goto :goto_3d

    .line 240
    .end local v7    # "caller":Ljava/lang/String;
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 248
    :cond_3d
    :goto_3d
    if-nez v2, :cond_99

    .line 249
    const-string/jumbo v3, "ro.product_ship"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    if-nez v3, :cond_6b

    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v4, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6b

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller is approved by permission : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v1

    .line 255
    :cond_6b
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v4, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_99

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller is not approved (caller:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / target:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v5

    .line 268
    :cond_99
    :try_start_99
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v3

    .line 269
    .local v3, "kpuHelper":Lcom/android/server/enterprise/utils/KpuHelper;
    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d1

    .line 270
    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ac

    goto :goto_d1

    .line 275
    :cond_ac
    iget-object v4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "android"

    invoke-virtual {v4, v6, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_bb

    .line 277
    return v1

    .line 279
    :cond_bb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signature mismatched! caller : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v5

    .line 271
    :cond_d1
    :goto_d1
    invoke-virtual {v3, p2, p3}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(Ljava/lang/String;I)Z

    move-result v0
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_d5} :catch_d6

    return v0

    .line 282
    .end local v3    # "kpuHelper":Lcom/android/server/enterprise/utils/KpuHelper;
    :catch_d6
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    return v5

    .line 234
    .end local v2    # "checkCallerPkgName":Z
    :cond_db
    :goto_db
    const-string v2, "caller is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v1
.end method

.method private deleteELMInfo(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2201
    const-string/jumbo v0, "pkgName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2202
    .local v0, "sColumns":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2203
    .local v1, "sValues":[Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .line 2207
    .local v2, "ret":Z
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.knox.intent.action.KNOX_NDA_LICENSE_CLEARED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2208
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2210
    return v2
.end method

.method private enforcePermission()V
    .registers 5

    .line 196
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v0, v1, :cond_9

    .line 197
    return-void

    .line 200
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_11} :catch_13

    .line 209
    nop

    .line 210
    return-void

    .line 202
    :catch_13
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "finalMsg":Ljava/lang/String;
    if-eqz v1, :cond_2b

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_2b
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static declared-synchronized getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .registers 2

    const-class v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    monitor-enter v0

    .line 311
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-nez v1, :cond_14

    .line 312
    const-string/jumbo v1, "knox_ccm_policy"

    .line 313
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 312
    invoke-static {v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    .line 315
    :cond_14
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    .line 310
    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .line 2186
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .registers 2

    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    if-nez v0, :cond_11

    .line 219
    const-string v0, "com.samsung.ucs.ucsservice"

    .line 220
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    .line 222
    .end local p0    # "this":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 217
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isLicenseLocked(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 2392
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAttributes(I)I

    move-result v0

    .line 2393
    .local v0, "attributes":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 2394
    return v1

    .line 2396
    :cond_9
    and-int/lit8 v2, v0, 0x10

    if-lez v2, :cond_e

    const/4 v1, 0x1

    .line 2397
    .local v1, "isLicenseLocked":Z
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLicenseLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterpriseLicenseService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    return v1
.end method

.method private isSepBasic()Z
    .registers 3

    .line 302
    const-string/jumbo v0, "sep_basic"

    .line 303
    .local v0, "sepCategory":Ljava/lang/String;
    const-string/jumbo v1, "sep_basic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 304
    const/4 v1, 0x1

    return v1

    .line 306
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method private notifyContainerLicenseStatus(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 291
    nop

    .line 292
    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 293
    .local v0, "knoxMUMContainerPolicy":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    if-eqz v0, :cond_10

    .line 294
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifyLicenseStatus(Ljava/lang/String;)Z

    goto :goto_17

    .line 296
    :cond_10
    const-string v1, "EnterpriseLicenseService"

    const-string v2, "failed to get KnoxMUMContainerPolicy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_17
    return-void
.end method

.method private notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "licenseResult"    # Lcom/samsung/android/knox/license/LicenseResult;

    .line 2384
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    .line 2385
    .local v1, "elmKlmObserver":Lcom/android/server/enterprise/license/IActivationKlmElmObserver;
    invoke-interface {v1, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 2386
    .end local v1    # "elmKlmObserver":Lcom/android/server/enterprise/license/IActivationKlmElmObserver;
    goto :goto_6

    .line 2387
    :cond_16
    return-void
.end method

.method private resetELMInfo(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2191
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2192
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 2193
    .local v1, "blob":[B
    const-string/jumbo v2, "rightsObject"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2194
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2195
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .line 2197
    .local v3, "ret":Z
    return v3
.end method

.method private sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDeviceRegistrationIntentToKpmAgent : status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseLicenseService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string/jumbo v0, "success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 654
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.DEVICE_REGISTRATION_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const-string v1, "com.samsung.android.knox.pushmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 658
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.knox.permission.KNOX_DEVICE_REGISTRATION_REQUEST_INTENT_INTERNAL"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 661
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_40
    return-void
.end method


# virtual methods
.method public declared-synchronized activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    .line 1420
    :try_start_5
    const-string v0, "EnterpriseLicenseService"

    const-string v3, "activateKnoxLicense()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v3, v0

    .line 1425
    .local v3, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v4, v0

    .line 1427
    .local v4, "userId":I
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1429
    .local v5, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_393

    .line 1432
    .local v6, "token":J
    const/16 v8, 0x320

    const/4 v9, 0x0

    if-eqz v2, :cond_ee

    :try_start_2a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    goto/16 :goto_ee

    .line 1436
    :cond_36
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 1437
    .local v10, "pkgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1440
    .local v0, "approved":Z
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4a} :catch_e9
    .catchall {:try_start_2a .. :try_end_4a} :catchall_e4

    if-eqz v11, :cond_4f

    .line 1441
    const/4 v0, 0x1

    .line 1442
    move-object/from16 v5, p3

    .line 1446
    :cond_4f
    if-nez v0, :cond_6e

    .line 1447
    :try_start_51
    array-length v11, v10

    move v12, v9

    :goto_53
    if-ge v12, v11, :cond_6e

    aget-object v13, v10, v12

    .line 1448
    .local v13, "pkg":Ljava/lang/String;
    invoke-direct {v1, v2, v13, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v14
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5b} :catch_69
    .catchall {:try_start_51 .. :try_end_5b} :catchall_64

    const/4 v15, 0x1

    if-ne v14, v15, :cond_61

    .line 1449
    const/4 v0, 0x1

    .line 1450
    move v11, v0

    goto :goto_6f

    .line 1447
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_61
    add-int/lit8 v12, v12, 0x1

    goto :goto_53

    .line 1603
    .end local v0    # "approved":Z
    .end local v10    # "pkgs":[Ljava/lang/String;
    :catchall_64
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_38f

    .line 1599
    :catch_69
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_2f1

    .line 1455
    .restart local v0    # "approved":Z
    .restart local v10    # "pkgs":[Ljava/lang/String;
    :cond_6e
    move v11, v0

    .end local v0    # "approved":Z
    .local v11, "approved":Z
    :goto_6f
    if-nez v11, :cond_f4

    .line 1457
    const/16 v12, 0xcc

    :try_start_73
    const-string/jumbo v0, "package"

    .line 1458
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1457
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1459
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v0, v2, v9, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 1461
    .local v13, "info":Landroid/content/pm/PackageInfo;
    if-eqz v13, :cond_ab

    .line 1463
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1465
    .local v14, "intent":Landroid/content/Intent;
    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string v9, "fail"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1467
    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1469
    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    invoke-virtual {v14, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1471
    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1472
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_a6} :catch_ac
    .catchall {:try_start_73 .. :try_end_a6} :catchall_e4

    .line 1603
    :try_start_a6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_393

    .line 1473
    monitor-exit p0

    return-void

    .line 1477
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_ab
    goto :goto_b0

    .line 1475
    :catch_ac
    move-exception v0

    .line 1476
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ad
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1479
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b0
    array-length v0, v10

    const/4 v9, 0x0

    :goto_b2
    if-ge v9, v0, :cond_df

    aget-object v13, v10, v9

    .line 1480
    .local v13, "pkg":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1482
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string v8, "fail"

    invoke-virtual {v14, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1483
    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1485
    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v15, 0x320

    invoke-virtual {v14, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1487
    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_da} :catch_e9
    .catchall {:try_start_ad .. :try_end_da} :catchall_e4

    .line 1479
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "intent":Landroid/content/Intent;
    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x320

    goto :goto_b2

    .line 1603
    :cond_df
    :try_start_df
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_393

    .line 1490
    monitor-exit p0

    return-void

    .line 1603
    .end local v10    # "pkgs":[Ljava/lang/String;
    .end local v11    # "approved":Z
    :catchall_e4
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_38f

    .line 1599
    :catch_e9
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_2f1

    .line 1433
    :cond_ee
    :goto_ee
    :try_start_ee
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f2} :catch_2ee
    .catchall {:try_start_ee .. :try_end_f2} :catchall_2e9

    .line 1434
    .end local p3    # "pkgName":Ljava/lang/String;
    .local v0, "pkgName":Ljava/lang/String;
    move-object v2, v0

    move-object v5, v2

    .line 1494
    .end local v0    # "pkgName":Ljava/lang/String;
    .local v2, "pkgName":Ljava/lang/String;
    :cond_f4
    if-eqz v2, :cond_2d9

    :try_start_f6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d9

    .line 1500
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_106} :catch_2d5
    .catchall {:try_start_f6 .. :try_end_106} :catchall_2d0

    if-nez v0, :cond_128

    .line 1501
    :try_start_108
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10a} :catch_121
    .catchall {:try_start_108 .. :try_end_10a} :catchall_11a

    move-object/from16 v8, p2

    :try_start_10c
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_115
    .catchall {:try_start_10c .. :try_end_10f} :catchall_110

    goto :goto_12a

    .line 1603
    :catchall_110
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_38f

    .line 1599
    :catch_115
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_2f1

    .line 1603
    :catchall_11a
    move-exception v0

    move-object/from16 v8, p2

    move/from16 v16, v4

    goto/16 :goto_38f

    .line 1599
    :catch_121
    move-exception v0

    move-object/from16 v8, p2

    move/from16 v16, v4

    goto/16 :goto_2f1

    .line 1500
    :cond_128
    move-object/from16 v8, p2

    .line 1504
    :goto_12a
    :try_start_12a
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 1506
    .local v0, "dest":Landroid/os/UserHandle;
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->exists(I)Z

    move-result v9
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_139} :catch_2d5
    .catchall {:try_start_12a .. :try_end_139} :catchall_2d0

    if-nez v9, :cond_14f

    :try_start_13b
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 1507
    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isManagedProfile(I)Z

    move-result v9

    if-eqz v9, :cond_148

    goto :goto_14f

    .line 1511
    :cond_148
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_14d} :catch_115
    .catchall {:try_start_13b .. :try_end_14d} :catchall_110

    move-object v0, v9

    goto :goto_152

    .line 1509
    :cond_14f
    :goto_14f
    :try_start_14f
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, v9

    .line 1520
    :goto_152
    const/4 v9, 0x0

    .line 1521
    .local v9, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    iget-object v10, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/SemPersonaManager;

    move-object v9, v10

    .line 1523
    const-string/jumbo v10, "user"

    .line 1524
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    .line 1523
    invoke-static {v10}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v10

    .line 1525
    .local v10, "userManager":Landroid/os/IUserManager;
    const/4 v11, 0x0

    .line 1526
    .local v11, "isBasicContainerExist":Z
    const/4 v12, 0x0

    .line 1527
    .local v12, "isBasicContainerAdmin":Z
    const/4 v13, 0x0

    .line 1528
    .local v13, "basicContainerId":I
    if-eqz v9, :cond_1be

    .line 1529
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v15

    move-object v14, v15

    .line 1530
    .local v14, "personaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v14, :cond_1bb

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_1bb

    .line 1531
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_181
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1b8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 p3, v16

    .line 1532
    .local p3, "id":I
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v16

    if-nez v16, :cond_1b1

    .line 1533
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v16
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_19d} :catch_2d5
    .catchall {:try_start_14f .. :try_end_19d} :catchall_2d0

    if-nez v16, :cond_1ac

    move/from16 v16, v4

    move/from16 v4, p3

    .end local p3    # "id":I
    .local v4, "id":I
    .local v16, "userId":I
    :try_start_1a3
    invoke-direct {v1, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v17

    if-nez v17, :cond_1b5

    .line 1535
    const/4 v11, 0x1

    .line 1536
    move v13, v4

    goto :goto_1b5

    .line 1533
    .end local v16    # "userId":I
    .local v4, "userId":I
    .restart local p3    # "id":I
    :cond_1ac
    move/from16 v16, v4

    move/from16 v4, p3

    .end local p3    # "id":I
    .local v4, "id":I
    .restart local v16    # "userId":I
    goto :goto_1b5

    .line 1532
    .end local v16    # "userId":I
    .local v4, "userId":I
    .restart local p3    # "id":I
    :cond_1b1
    move/from16 v16, v4

    move/from16 v4, p3

    .line 1538
    .end local v4    # "userId":I
    .end local p3    # "id":I
    .restart local v16    # "userId":I
    :cond_1b5
    :goto_1b5
    move/from16 v4, v16

    goto :goto_181

    .line 1531
    .end local v16    # "userId":I
    .restart local v4    # "userId":I
    :cond_1b8
    move/from16 v16, v4

    .end local v4    # "userId":I
    .restart local v16    # "userId":I
    goto :goto_1c0

    .line 1530
    .end local v16    # "userId":I
    .restart local v4    # "userId":I
    :cond_1bb
    move/from16 v16, v4

    .end local v4    # "userId":I
    .restart local v16    # "userId":I
    goto :goto_1c0

    .line 1528
    .end local v14    # "personaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "userId":I
    .restart local v4    # "userId":I
    :cond_1be
    move/from16 v16, v4

    .line 1542
    .end local v4    # "userId":I
    .restart local v16    # "userId":I
    :goto_1c0
    iget-object v4, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v14, "device_policy"

    invoke-virtual {v4, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 1544
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v11, :cond_206

    if-eqz v4, :cond_206

    .line 1545
    invoke-virtual {v4, v13}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v14

    .line 1546
    .local v14, "adminComponent":Landroid/content/ComponentName;
    if-eqz v14, :cond_203

    .line 1547
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_200

    .line 1548
    const/4 v12, 0x1

    .line 1549
    const-string v15, "EnterpriseLicenseService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v9

    .end local v9    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .local p3, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    const-string v9, "activateKnoxLicense.["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] basic container exists. userId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_208

    .line 1547
    .end local p3    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v9    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_200
    move-object/from16 p3, v9

    .end local v9    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local p3    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    goto :goto_208

    .line 1546
    .end local p3    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v9    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_203
    move-object/from16 p3, v9

    .end local v9    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local p3    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    goto :goto_208

    .line 1544
    .end local v14    # "adminComponent":Landroid/content/ComponentName;
    .end local p3    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v9    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_206
    move-object/from16 p3, v9

    .line 1555
    .end local v9    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local p3    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :goto_208
    const/4 v8, 0x0

    .line 1556
    .local v8, "isDeviceOwnerAdmin":Z
    if-nez v12, :cond_259

    if-eqz v4, :cond_259

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v9

    if-eqz v9, :cond_259

    .line 1557
    const/4 v9, 0x0

    invoke-direct {v1, v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v14

    if-nez v14, :cond_256

    .line 1558
    const-string v14, "EnterpriseLicenseService"

    const-string v15, "activateKnoxLicense. isDeviceManaged."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v14

    .line 1560
    .restart local v14    # "adminComponent":Landroid/content/ComponentName;
    if-eqz v14, :cond_253

    .line 1561
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_250

    .line 1562
    const-string v15, "EnterpriseLicenseService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .local v17, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string v4, "activateKnoxLicense. DeviceOwner["

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const/4 v8, 0x1

    goto :goto_25b

    .line 1561
    .end local v17    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_250
    move-object/from16 v17, v4

    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v17    # "dpm":Landroid/app/admin/DevicePolicyManager;
    goto :goto_25b

    .line 1560
    .end local v17    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_253
    move-object/from16 v17, v4

    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v17    # "dpm":Landroid/app/admin/DevicePolicyManager;
    goto :goto_25b

    .line 1557
    .end local v14    # "adminComponent":Landroid/content/ComponentName;
    .end local v17    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_256
    move-object/from16 v17, v4

    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v17    # "dpm":Landroid/app/admin/DevicePolicyManager;
    goto :goto_25b

    .line 1556
    .end local v17    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_259
    move-object/from16 v17, v4

    .line 1568
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v17    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_25b
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v4

    if-eqz v4, :cond_296

    if-nez v12, :cond_267

    if-eqz v8, :cond_296

    .line 1571
    :cond_267
    const-string v4, "EnterpriseLicenseService"

    const-string v9, "activateKnoxLicense needs to confirm."

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.KNOX_LICENSE_ACATIVATE_DIALOG_INTERNAL"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1574
    .local v4, "termsAndconditionsIntent":Landroid/content/Intent;
    const-string v9, "destUserId"

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-virtual {v4, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1575
    const-string/jumbo v9, "targetUserId"

    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1576
    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1581
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1582
    .end local v4    # "termsAndconditionsIntent":Landroid/content/Intent;
    goto :goto_2c4

    .line 1583
    :cond_296
    const-string v4, "EnterpriseLicenseService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "activateKnoxLicense. from "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.KNOX_LICENSE_REGISTRATION_INTERNAL"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1586
    .local v4, "knoxSdkIntent":Landroid/content/Intent;
    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1588
    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1591
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v14, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {v9, v4, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1594
    .end local v4    # "knoxSdkIntent":Landroid/content/Intent;
    :goto_2c4
    const-string v4, "EnterpriseLicenseService"

    const-string v9, "activateKnoxLicense. broadcast intent is completed"

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2cb
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_2cb} :catch_2e7
    .catchall {:try_start_1a3 .. :try_end_2cb} :catchall_38e

    .line 1603
    :try_start_2cb
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2ce
    .catchall {:try_start_2cb .. :try_end_2ce} :catchall_393

    .line 1595
    monitor-exit p0

    return-void

    .line 1603
    .end local v0    # "dest":Landroid/os/UserHandle;
    .end local v8    # "isDeviceOwnerAdmin":Z
    .end local v10    # "userManager":Landroid/os/IUserManager;
    .end local v11    # "isBasicContainerExist":Z
    .end local v12    # "isBasicContainerAdmin":Z
    .end local v13    # "basicContainerId":I
    .end local v16    # "userId":I
    .end local v17    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local p3    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .local v4, "userId":I
    :catchall_2d0
    move-exception v0

    move/from16 v16, v4

    .end local v4    # "userId":I
    .restart local v16    # "userId":I
    goto/16 :goto_38f

    .line 1599
    .end local v16    # "userId":I
    .restart local v4    # "userId":I
    :catch_2d5
    move-exception v0

    move/from16 v16, v4

    .end local v4    # "userId":I
    .restart local v16    # "userId":I
    goto :goto_2f1

    .line 1494
    .end local v16    # "userId":I
    .restart local v4    # "userId":I
    :cond_2d9
    move/from16 v16, v4

    .line 1597
    .end local v4    # "userId":I
    .restart local v16    # "userId":I
    :try_start_2db
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v4, "package name is null"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e3
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_2e3} :catch_2e7
    .catchall {:try_start_2db .. :try_end_2e3} :catchall_38e

    .line 1603
    :try_start_2e3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2e6
    .catchall {:try_start_2e3 .. :try_end_2e6} :catchall_393

    goto :goto_2fe

    .line 1599
    :catch_2e7
    move-exception v0

    goto :goto_2f1

    .line 1603
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v16    # "userId":I
    .restart local v4    # "userId":I
    .local p3, "pkgName":Ljava/lang/String;
    :catchall_2e9
    move-exception v0

    move/from16 v16, v4

    .end local v4    # "userId":I
    .restart local v16    # "userId":I
    goto/16 :goto_38f

    .line 1599
    .end local v16    # "userId":I
    .restart local v4    # "userId":I
    :catch_2ee
    move-exception v0

    move/from16 v16, v4

    .line 1600
    .end local v4    # "userId":I
    .end local p3    # "pkgName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v16    # "userId":I
    :goto_2f1
    :try_start_2f1
    const-string v4, "EnterpriseLicenseService"

    const-string v8, "activateKnoxLicense() failed."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2fb
    .catchall {:try_start_2f1 .. :try_end_2fb} :catchall_38e

    .line 1603
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_2fb
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1604
    :goto_2fe
    nop

    .line 1607
    const/16 v0, 0x12d

    if-nez v2, :cond_348

    .line 1608
    iget-object v4, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1609
    .local v4, "pkgs":[Ljava/lang/String;
    if-eqz v4, :cond_347

    array-length v8, v4

    if-lez v8, :cond_347

    .line 1610
    array-length v8, v4

    const/4 v9, 0x0

    :goto_314
    if-ge v9, v8, :cond_347

    aget-object v10, v4, v9

    .line 1611
    .local v10, "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1612
    .local v11, "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string v13, "fail"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1613
    const-string v12, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1615
    const-string v12, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v13, 0x320

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1617
    invoke-virtual {v11, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    move-wide v6, v12

    .line 1620
    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1621
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1610
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    add-int/lit8 v9, v9, 0x1

    goto :goto_314

    .line 1624
    .end local v4    # "pkgs":[Ljava/lang/String;
    :cond_347
    goto :goto_38c

    .line 1625
    :cond_348
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1626
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string v9, "fail"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1627
    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1629
    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v8, 0x320

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1632
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37a

    .line 1633
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    move-wide v6, v8

    .line 1635
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1636
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1639
    :cond_37a
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1640
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    move-wide v6, v8

    .line 1641
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1642
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_38c
    .catchall {:try_start_2fb .. :try_end_38c} :catchall_393

    .line 1644
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_38c
    monitor-exit p0

    return-void

    .line 1603
    :catchall_38e
    move-exception v0

    :goto_38f
    :try_start_38f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1604
    throw v0
    :try_end_393
    .catchall {:try_start_38f .. :try_end_393} :catchall_393

    .line 1419
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uid":I
    .end local v5    # "callerPackage":Ljava/lang/String;
    .end local v6    # "token":J
    .end local v16    # "userId":I
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "knoxLicenseKey":Ljava/lang/String;
    :catchall_393
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activateKnoxLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    monitor-enter p0

    .line 1651
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1652
    monitor-exit p0

    return-void

    .line 1650
    .end local p0    # "this":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "knoxLicenseKey":Ljava/lang/String;
    .end local p3    # "pkgName":Ljava/lang/String;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "pkgVer"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    .line 1236
    :try_start_5
    const-string v0, "EnterpriseLicenseService"

    const-string v3, "activateLicense()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v3, v0

    .line 1240
    .local v3, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v4, v0

    .line 1242
    .local v4, "userId":I
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1244
    .local v5, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_252

    .line 1246
    .local v6, "token":J
    const/16 v8, 0x320

    const/4 v9, 0x0

    if-eqz v2, :cond_e9

    :try_start_2a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    goto/16 :goto_e9

    .line 1250
    :cond_36
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 1251
    .local v10, "pkgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1254
    .local v0, "approved":Z
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4a} :catch_e4
    .catchall {:try_start_2a .. :try_end_4a} :catchall_1a8

    if-eqz v11, :cond_4f

    .line 1255
    const/4 v0, 0x1

    .line 1256
    move-object/from16 v5, p3

    .line 1260
    :cond_4f
    if-nez v0, :cond_6e

    .line 1261
    :try_start_51
    array-length v11, v10

    move v12, v9

    :goto_53
    if-ge v12, v11, :cond_6e

    aget-object v13, v10, v12

    .line 1262
    .local v13, "pkg":Ljava/lang/String;
    invoke-direct {v1, v2, v13, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v14
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5b} :catch_69
    .catchall {:try_start_51 .. :try_end_5b} :catchall_64

    const/4 v15, 0x1

    if-ne v14, v15, :cond_61

    .line 1263
    const/4 v0, 0x1

    .line 1264
    move v11, v0

    goto :goto_6f

    .line 1261
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_61
    add-int/lit8 v12, v12, 0x1

    goto :goto_53

    .line 1365
    .end local v0    # "approved":Z
    .end local v10    # "pkgs":[Ljava/lang/String;
    :catchall_64
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_24e

    .line 1361
    :catch_69
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_1b1

    .line 1269
    .restart local v0    # "approved":Z
    .restart local v10    # "pkgs":[Ljava/lang/String;
    :cond_6e
    move v11, v0

    .end local v0    # "approved":Z
    .local v11, "approved":Z
    :goto_6f
    if-nez v11, :cond_ef

    .line 1271
    const/16 v12, 0xcc

    :try_start_73
    const-string/jumbo v0, "package"

    .line 1272
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1271
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1273
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v0, v2, v9, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 1275
    .local v13, "info":Landroid/content/pm/PackageInfo;
    if-eqz v13, :cond_ab

    .line 1277
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v14, "intent":Landroid/content/Intent;
    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string v9, "fail"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1280
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual {v14, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1282
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    invoke-virtual {v14, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1284
    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1285
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_a6} :catch_ac
    .catchall {:try_start_73 .. :try_end_a6} :catchall_1a8

    .line 1365
    :try_start_a6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_252

    .line 1286
    monitor-exit p0

    return-void

    .line 1290
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_ab
    goto :goto_b0

    .line 1288
    :catch_ac
    move-exception v0

    .line 1289
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ad
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1292
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b0
    array-length v0, v10

    const/4 v9, 0x0

    :goto_b2
    if-ge v9, v0, :cond_df

    aget-object v13, v10, v9

    .line 1293
    .local v13, "pkg":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string v8, "fail"

    invoke-virtual {v14, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    const-string v8, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual {v14, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1297
    const-string v8, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v15, 0x320

    invoke-virtual {v14, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1299
    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_da} :catch_1ad
    .catchall {:try_start_ad .. :try_end_da} :catchall_1a8

    .line 1292
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "intent":Landroid/content/Intent;
    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x320

    goto :goto_b2

    .line 1365
    :cond_df
    :try_start_df
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_252

    .line 1302
    monitor-exit p0

    return-void

    .line 1361
    .end local v10    # "pkgs":[Ljava/lang/String;
    .end local v11    # "approved":Z
    :catch_e4
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_1b1

    .line 1247
    :cond_e9
    :goto_e9
    :try_start_e9
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ed} :catch_1ad
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_1a8

    .line 1248
    .end local p3    # "pkgName":Ljava/lang/String;
    .local v0, "pkgName":Ljava/lang/String;
    move-object v2, v0

    move-object v5, v2

    .line 1306
    .end local v0    # "pkgName":Ljava/lang/String;
    .local v2, "pkgName":Ljava/lang/String;
    :cond_ef
    if-eqz v2, :cond_197

    :try_start_f1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_197

    .line 1312
    const/4 v0, 0x0

    .line 1313
    .local v0, "pkgVersion":Ljava/lang/String;
    if-eqz p4, :cond_102

    .line 1314
    move-object/from16 v0, p4

    const/4 v9, 0x0

    goto :goto_117

    .line 1317
    :cond_102
    const-string/jumbo v8, "package"

    .line 1318
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 1317
    invoke-static {v8}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v8
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_10d} :catch_192
    .catchall {:try_start_f1 .. :try_end_10d} :catchall_18d

    .line 1319
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    const/4 v9, 0x0

    :try_start_10e
    invoke-interface {v8, v2, v9, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 1320
    .local v10, "info":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_117

    .line 1321
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v0, v11

    .line 1325
    .end local v8    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :cond_117
    :goto_117
    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_127

    .line 1326
    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_121} :catch_189
    .catchall {:try_start_10e .. :try_end_121} :catchall_18d

    move-object/from16 v10, p2

    :try_start_123
    invoke-interface {v8, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_129

    .line 1325
    :cond_127
    move-object/from16 v10, p2

    .line 1328
    :goto_129
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 1330
    .local v8, "dest":Landroid/os/UserHandle;
    iget-object v11, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->exists(I)Z

    move-result v11

    if-nez v11, :cond_14e

    iget-object v11, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 1331
    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isManagedProfile(I)Z

    move-result v11

    if-eqz v11, :cond_147

    goto :goto_14e

    .line 1335
    :cond_147
    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v8, v11

    goto :goto_151

    .line 1333
    :cond_14e
    :goto_14e
    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v8, v11

    .line 1344
    :goto_151
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.action.LICENSE_REGISTRATION_INTERNAL"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v11, "knoxSdkIntent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v11, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1348
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1350
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v11, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v13, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {v12, v11, v8, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1355
    const-string v12, "EnterpriseLicenseService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "activateLicense. from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_184} :catch_1a6
    .catchall {:try_start_123 .. :try_end_184} :catchall_24d

    .line 1365
    :try_start_184
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_187
    .catchall {:try_start_184 .. :try_end_187} :catchall_252

    .line 1357
    monitor-exit p0

    return-void

    .line 1361
    .end local v0    # "pkgVersion":Ljava/lang/String;
    .end local v8    # "dest":Landroid/os/UserHandle;
    .end local v11    # "knoxSdkIntent":Landroid/content/Intent;
    :catch_189
    move-exception v0

    move-object/from16 v10, p2

    goto :goto_1b1

    .line 1365
    :catchall_18d
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_24e

    .line 1361
    :catch_192
    move-exception v0

    move-object/from16 v10, p2

    const/4 v9, 0x0

    goto :goto_1b1

    .line 1306
    :cond_197
    move-object/from16 v10, p2

    const/4 v9, 0x0

    .line 1359
    :try_start_19a
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v8, "package name is null"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1a2} :catch_1a6
    .catchall {:try_start_19a .. :try_end_1a2} :catchall_24d

    .line 1365
    :try_start_1a2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1a5
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_252

    goto :goto_1be

    .line 1361
    :catch_1a6
    move-exception v0

    goto :goto_1b1

    .line 1365
    .end local v2    # "pkgName":Ljava/lang/String;
    .restart local p3    # "pkgName":Ljava/lang/String;
    :catchall_1a8
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_24e

    .line 1361
    :catch_1ad
    move-exception v0

    move-object/from16 v10, p2

    const/4 v9, 0x0

    .line 1362
    .end local p3    # "pkgName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "pkgName":Ljava/lang/String;
    :goto_1b1
    :try_start_1b1
    const-string v8, "EnterpriseLicenseService"

    const-string v11, "activateLicense() failed."

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1bb
    .catchall {:try_start_1b1 .. :try_end_1bb} :catchall_24d

    .line 1365
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_1bb
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1366
    :goto_1be
    nop

    .line 1369
    const/16 v0, 0x12d

    if-nez v2, :cond_207

    .line 1370
    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 1371
    .local v8, "pkgs":[Ljava/lang/String;
    if-eqz v8, :cond_206

    array-length v11, v8

    if-lez v11, :cond_206

    .line 1372
    array-length v11, v8

    :goto_1d3
    if-ge v9, v11, :cond_206

    aget-object v12, v8, v9

    .line 1373
    .local v12, "pkg":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v13, "intent":Landroid/content/Intent;
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string v15, "fail"

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1375
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1377
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v15, 0x320

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1379
    invoke-virtual {v13, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    move-wide v6, v14

    .line 1381
    iget-object v14, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v13, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1382
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1372
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "intent":Landroid/content/Intent;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d3

    .line 1385
    .end local v8    # "pkgs":[Ljava/lang/String;
    :cond_206
    goto :goto_24b

    .line 1386
    :cond_207
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1387
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string v11, "fail"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1388
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1390
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v9, 0x320

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1393
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_239

    .line 1394
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move-wide v6, v11

    .line 1396
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1397
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1400
    :cond_239
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1401
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move-wide v6, v11

    .line 1402
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1403
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_24b
    .catchall {:try_start_1bb .. :try_end_24b} :catchall_252

    .line 1405
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_24b
    monitor-exit p0

    return-void

    .line 1365
    :catchall_24d
    move-exception v0

    :goto_24e
    :try_start_24e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1366
    throw v0
    :try_end_252
    .catchall {:try_start_24e .. :try_end_252} :catchall_252

    .line 1235
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uid":I
    .end local v4    # "userId":I
    .end local v5    # "callerPackage":Ljava/lang/String;
    .end local v6    # "token":J
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "licenseKey":Ljava/lang/String;
    .end local p4    # "pkgVer":Ljava/lang/String;
    :catchall_252
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activateLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "pkgVersion"    # Ljava/lang/String;

    monitor-enter p0

    .line 1412
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1413
    monitor-exit p0

    return-void

    .line 1411
    .end local p0    # "this":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "licenseKey":Ljava/lang/String;
    .end local p3    # "pkgName":Ljava/lang/String;
    .end local p4    # "pkgVersion":Ljava/lang/String;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V
    .registers 3
    .param p1, "elmKlmObserver"    # Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    .line 2368
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 2369
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2370
    return-void
.end method

.method public declared-synchronized deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    .line 1692
    :try_start_5
    const-string v0, "EnterpriseLicenseService"

    const-string v3, "deActivateKnoxLicense()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v3, v0

    .line 1697
    .local v3, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v4, v0

    .line 1699
    .local v4, "userId":I
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1701
    .local v5, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_210

    .line 1704
    .local v6, "token":J
    const/16 v8, 0x322

    const/4 v9, 0x0

    if-eqz v2, :cond_e4

    :try_start_2a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    goto/16 :goto_e4

    .line 1708
    :cond_36
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 1709
    .local v10, "pkgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1712
    .local v0, "approved":Z
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4a} :catch_16b
    .catchall {:try_start_2a .. :try_end_4a} :catchall_166

    if-eqz v11, :cond_4f

    .line 1713
    const/4 v0, 0x1

    .line 1714
    move-object/from16 v5, p3

    .line 1718
    :cond_4f
    if-nez v0, :cond_6e

    .line 1719
    :try_start_51
    array-length v11, v10

    move v12, v9

    :goto_53
    if-ge v12, v11, :cond_6e

    aget-object v13, v10, v12

    .line 1720
    .local v13, "pkg":Ljava/lang/String;
    invoke-direct {v1, v2, v13, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v14
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5b} :catch_69
    .catchall {:try_start_51 .. :try_end_5b} :catchall_64

    const/4 v15, 0x1

    if-ne v14, v15, :cond_61

    .line 1721
    const/4 v0, 0x1

    .line 1722
    move v11, v0

    goto :goto_6f

    .line 1719
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_61
    add-int/lit8 v12, v12, 0x1

    goto :goto_53

    .line 1809
    .end local v0    # "approved":Z
    .end local v10    # "pkgs":[Ljava/lang/String;
    :catchall_64
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_20c

    .line 1805
    :catch_69
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_16e

    .line 1727
    .restart local v0    # "approved":Z
    .restart local v10    # "pkgs":[Ljava/lang/String;
    :cond_6e
    move v11, v0

    .end local v0    # "approved":Z
    .local v11, "approved":Z
    :goto_6f
    if-nez v11, :cond_ea

    .line 1729
    const/16 v12, 0xcc

    :try_start_73
    const-string/jumbo v0, "package"

    .line 1730
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1729
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1731
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v0, v2, v9, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 1733
    .local v13, "info":Landroid/content/pm/PackageInfo;
    if-eqz v13, :cond_ab

    .line 1735
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1737
    .local v14, "intent":Landroid/content/Intent;
    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string v9, "fail"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1739
    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1741
    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    invoke-virtual {v14, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1743
    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1744
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_a6} :catch_ac
    .catchall {:try_start_73 .. :try_end_a6} :catchall_166

    .line 1809
    :try_start_a6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_210

    .line 1745
    monitor-exit p0

    return-void

    .line 1749
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_ab
    goto :goto_b0

    .line 1747
    :catch_ac
    move-exception v0

    .line 1748
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ad
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1751
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b0
    array-length v0, v10

    const/4 v9, 0x0

    :goto_b2
    if-ge v9, v0, :cond_df

    aget-object v13, v10, v9

    .line 1752
    .local v13, "pkg":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1754
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string v8, "fail"

    invoke-virtual {v14, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1755
    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1757
    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v15, 0x322

    invoke-virtual {v14, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1759
    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_da} :catch_16b
    .catchall {:try_start_ad .. :try_end_da} :catchall_166

    .line 1751
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "intent":Landroid/content/Intent;
    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x322

    goto :goto_b2

    .line 1809
    :cond_df
    :try_start_df
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_210

    .line 1762
    monitor-exit p0

    return-void

    .line 1705
    .end local v10    # "pkgs":[Ljava/lang/String;
    .end local v11    # "approved":Z
    :cond_e4
    :goto_e4
    :try_start_e4
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e8} :catch_16b
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_166

    .line 1706
    .end local p3    # "pkgName":Ljava/lang/String;
    .local v0, "pkgName":Ljava/lang/String;
    move-object v2, v0

    move-object v5, v2

    .line 1766
    .end local v0    # "pkgName":Ljava/lang/String;
    .local v2, "pkgName":Ljava/lang/String;
    :cond_ea
    if-eqz v2, :cond_156

    :try_start_ec
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_156

    .line 1772
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 1773
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_100} :catch_152
    .catchall {:try_start_ec .. :try_end_100} :catchall_14d

    move-object/from16 v8, p2

    :try_start_102
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_108

    .line 1772
    :cond_106
    move-object/from16 v8, p2

    .line 1776
    :goto_108
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 1778
    .local v0, "dest":Landroid/os/UserHandle;
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->exists(I)Z

    move-result v9

    if-nez v9, :cond_12d

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 1779
    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isManagedProfile(I)Z

    move-result v9

    if-eqz v9, :cond_126

    goto :goto_12d

    .line 1783
    :cond_126
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, v9

    goto :goto_130

    .line 1781
    :cond_12d
    :goto_12d
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, v9

    .line 1792
    :goto_130
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.action.KNOX_LICENSE_DEACTIVATION_INTERNAL"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1794
    .local v9, "knoxSdkIntent":Landroid/content/Intent;
    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1799
    iget-object v10, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v11, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {v10, v9, v0, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_148} :catch_164
    .catchall {:try_start_102 .. :try_end_148} :catchall_20b

    .line 1809
    :try_start_148
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14b
    .catchall {:try_start_148 .. :try_end_14b} :catchall_210

    .line 1801
    monitor-exit p0

    return-void

    .line 1809
    .end local v0    # "dest":Landroid/os/UserHandle;
    .end local v9    # "knoxSdkIntent":Landroid/content/Intent;
    :catchall_14d
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_20c

    .line 1805
    :catch_152
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_16e

    .line 1766
    :cond_156
    move-object/from16 v8, p2

    .line 1803
    :try_start_158
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v9, "package name is null"

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_160} :catch_164
    .catchall {:try_start_158 .. :try_end_160} :catchall_20b

    .line 1809
    :try_start_160
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_163
    .catchall {:try_start_160 .. :try_end_163} :catchall_210

    goto :goto_17b

    .line 1805
    :catch_164
    move-exception v0

    goto :goto_16e

    .line 1809
    .end local v2    # "pkgName":Ljava/lang/String;
    .restart local p3    # "pkgName":Ljava/lang/String;
    :catchall_166
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_20c

    .line 1805
    :catch_16b
    move-exception v0

    move-object/from16 v8, p2

    .line 1806
    .end local p3    # "pkgName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "pkgName":Ljava/lang/String;
    :goto_16e
    :try_start_16e
    const-string v9, "EnterpriseLicenseService"

    const-string v10, "deActivateKnoxLicense() failed."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_178
    .catchall {:try_start_16e .. :try_end_178} :catchall_20b

    .line 1809
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_178
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1810
    :goto_17b
    nop

    .line 1813
    const/16 v0, 0x12d

    if-nez v2, :cond_1c5

    .line 1814
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1815
    .local v9, "pkgs":[Ljava/lang/String;
    if-eqz v9, :cond_1c4

    array-length v10, v9

    if-lez v10, :cond_1c4

    .line 1816
    array-length v10, v9

    const/4 v11, 0x0

    :goto_191
    if-ge v11, v10, :cond_1c4

    aget-object v12, v9, v11

    .line 1817
    .local v12, "pkg":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1818
    .local v13, "intent":Landroid/content/Intent;
    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string v15, "fail"

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1819
    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1821
    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v15, 0x322

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1823
    invoke-virtual {v13, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1825
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    move-wide v6, v14

    .line 1826
    iget-object v14, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v13, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1827
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1816
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "intent":Landroid/content/Intent;
    add-int/lit8 v11, v11, 0x1

    goto :goto_191

    .line 1830
    .end local v9    # "pkgs":[Ljava/lang/String;
    :cond_1c4
    goto :goto_209

    .line 1831
    :cond_1c5
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v9, "intent":Landroid/content/Intent;
    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string v11, "fail"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1833
    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1835
    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v10, 0x322

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1838
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f7

    .line 1839
    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1840
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-wide v6, v10

    .line 1841
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1842
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1845
    :cond_1f7
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1846
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-wide v6, v10

    .line 1847
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1848
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_209
    .catchall {:try_start_178 .. :try_end_209} :catchall_210

    .line 1850
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_209
    monitor-exit p0

    return-void

    .line 1809
    :catchall_20b
    move-exception v0

    :goto_20c
    :try_start_20c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1810
    throw v0
    :try_end_210
    .catchall {:try_start_20c .. :try_end_210} :catchall_210

    .line 1691
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uid":I
    .end local v4    # "userId":I
    .end local v5    # "callerPackage":Ljava/lang/String;
    .end local v6    # "token":J
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "knoxLicenseKey":Ljava/lang/String;
    :catchall_210
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteAllApiCallData()Z
    .registers 4

    .line 1043
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1046
    :try_start_3
    invoke-static {}, Lcom/android/server/enterprise/license/LicenseLog;->deleteAllLog()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    .line 1047
    :catch_8
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseLicenseService"

    const-string v2, "deleteAllApiCallData() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1051
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z
    .registers 12
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "error"    # Lcom/samsung/android/knox/license/Error;

    .line 970
    const-string/jumbo v0, "pkgName"

    const-string v1, "EnterpriseLicenseService"

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 972
    const/4 v2, 0x0

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_4e

    .line 978
    :cond_16
    const/4 v3, 0x0

    .line 980
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_17
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 981
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v5, "instanceId"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    move-object v5, v0

    .line 984
    .local v5, "column":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v6, v7, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    .line 987
    .local v6, "result":Landroid/content/ContentValues;
    if-nez v6, :cond_33

    .line 988
    const-string v0, "deleteApiCallData(): result is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return v2

    .line 992
    :cond_33
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 994
    .end local v3    # "pkgName":Ljava/lang/String;
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_3f

    .line 995
    const-string v3, "deleteApiCallData(): Record does not exist"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return v2

    .line 1000
    :cond_3f
    invoke-static {v0}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z

    move-result v1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_43} :catch_44

    return v1

    .line 1001
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "column":Ljava/lang/String;
    .end local v6    # "result":Landroid/content/ContentValues;
    :catch_44
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "deleteApiCallData() failed"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1006
    .end local v0    # "e":Ljava/lang/Exception;
    return v2

    .line 973
    :cond_4e
    :goto_4e
    return v2
.end method

.method public deleteApiCallDataByAdmin(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1019
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1021
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_22

    .line 1026
    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return v0

    .line 1027
    :catch_16
    move-exception v1

    .line 1028
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseLicenseService"

    const-string v3, "deleteApiCallDataByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1031
    .end local v1    # "e":Ljava/lang/Exception;
    return v0

    .line 1022
    :cond_22
    :goto_22
    return v0
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .registers 13
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 1979
    const-string/jumbo v0, "pkgName"

    const-string v1, "EnterpriseLicenseService"

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1980
    const/4 v2, 0x0

    .line 1981
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1983
    .local v3, "token":J
    const/4 v5, 0x0

    if-eqz p1, :cond_6d

    :try_start_10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_6d

    .line 1987
    :cond_1b
    const/4 v6, 0x0

    .line 1989
    .local v6, "pkgName":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1990
    .local v7, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "instanceId"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    move-object v8, v0

    .line 1993
    .local v8, "column":Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE"

    invoke-virtual {v9, v10, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v9

    .line 1995
    .local v9, "result":Landroid/content/ContentValues;
    if-nez v9, :cond_3c

    .line 1996
    const-string v0, "deleteLicense(): result is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_5b
    .catchall {:try_start_10 .. :try_end_37} :catchall_59

    .line 1997
    nop

    .line 2016
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1997
    return v5

    .line 2000
    :cond_3c
    :try_start_3c
    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2002
    .end local v6    # "pkgName":Ljava/lang/String;
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_4c

    .line 2003
    const-string v6, "deleteLicense(): pkgName is null, Record does not exist"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_5b
    .catchall {:try_start_3c .. :try_end_47} :catchall_59

    .line 2004
    nop

    .line 2016
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2004
    return v5

    .line 2007
    :cond_4c
    :try_start_4c
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v5

    move v2, v5

    .line 2008
    if-eqz v2, :cond_64

    .line 2010
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v0}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_58} :catch_5b
    .catchall {:try_start_4c .. :try_end_58} :catchall_59

    goto :goto_64

    .line 2016
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    .end local v8    # "column":Ljava/lang/String;
    .end local v9    # "result":Landroid/content/ContentValues;
    :catchall_59
    move-exception v0

    goto :goto_69

    .line 2012
    :catch_5b
    move-exception v0

    .line 2013
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5c
    const-string v5, "deleteLicense() failed"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_59

    .line 2016
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_64
    :goto_64
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2017
    nop

    .line 2018
    return v2

    .line 2016
    :goto_69
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2017
    throw v0

    .line 1984
    :cond_6d
    :goto_6d
    nop

    .line 2016
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1984
    return v5
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2025
    const-string v0, "EnterpriseLicenseService"

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 2026
    const/4 v1, 0x0

    .line 2027
    .local v1, "ret":Z
    const/4 v2, 0x0

    .line 2028
    .local v2, "isElmKey":Z
    const/4 v3, 0x0

    .line 2030
    .local v3, "instanceId":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2032
    .local v4, "token":J
    const/4 v6, 0x0

    if-eqz p1, :cond_63

    :try_start_f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_63

    .line 2036
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 2037
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v7

    move v1, v7

    .line 2038
    if-eqz v1, :cond_2b

    .line 2040
    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2e
    .catchall {:try_start_f .. :try_end_2b} :catchall_2c

    .line 2045
    :cond_2b
    goto :goto_35

    :catchall_2c
    move-exception v0

    goto :goto_5f

    .line 2042
    :catch_2e
    move-exception v7

    .line 2043
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v8, "deleteLicenseByAdmin() failed"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    .line 2045
    nop

    .end local v7    # "e":Ljava/lang/Exception;
    :goto_35
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2046
    nop

    .line 2048
    if-eqz v1, :cond_5e

    .line 2051
    :try_start_3b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_43

    const/4 v6, 0x1

    :cond_43
    move v2, v6

    .line 2054
    if-eqz v2, :cond_57

    .line 2055
    const-string v6, "deleteLicenseByAdmin(): notify ELM observers"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    new-instance v6, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v7, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    sget-object v8, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Lcom/samsung/android/knox/license/LicenseResult$Status;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    .line 2058
    .local v6, "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_57} :catch_58

    .line 2062
    .end local v6    # "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    :cond_57
    goto :goto_5e

    .line 2060
    :catch_58
    move-exception v6

    .line 2061
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v7, "deleteLicenseByAdmin(): invalid number"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_5e
    :goto_5e
    return v1

    .line 2045
    :goto_5f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2046
    throw v0

    .line 2033
    :cond_63
    :goto_63
    nop

    .line 2045
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2033
    return v6
.end method

.method public getAllLicenseActivationsInfos()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/license/ActivationInfo;",
            ">;"
        }
    .end annotation

    .line 2348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2349
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/license/ActivationInfo;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 2350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2353
    .local v1, "token":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/license/LicenseAgentDbContract;->DB_URI:Landroid/net/Uri;

    const-string/jumbo v5, "getAllActivations"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 2358
    .local v3, "resultBundle":Landroid/os/Bundle;
    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_29

    move-object v0, v4

    .line 2360
    .end local v3    # "resultBundle":Landroid/os/Bundle;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2361
    nop

    .line 2363
    return-object v0

    .line 2360
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2361
    throw v3
.end method

.method public getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;
    .registers 15

    .line 1191
    const-string/jumbo v0, "pkgVersion"

    const-string/jumbo v1, "instanceId"

    const-string/jumbo v2, "pkgName"

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1192
    const/4 v3, 0x0

    .line 1193
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/license/LicenseInfo;>;"
    const/4 v4, 0x0

    .line 1196
    .local v4, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_10
    new-array v5, v5, [Ljava/lang/String;

    .line 1197
    .local v5, "columns":[Ljava/lang/String;
    const/4 v7, 0x0

    aput-object v2, v5, v7

    .line 1198
    const/4 v7, 0x1

    aput-object v1, v5, v7

    .line 1199
    const/4 v7, 0x2

    aput-object v0, v5, v7

    .line 1201
    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "LICENSE"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 1204
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_72

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_72

    .line 1205
    const/4 v8, 0x0

    .line 1206
    .local v8, "cv":Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 1207
    .local v9, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1208
    .local v10, "instanceId":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1209
    .local v11, "packageVersion":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v12

    .line 1210
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1212
    .local v12, "it":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5f

    .line 1213
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    move-object v8, v13

    .line 1214
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 1215
    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 1216
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 1217
    new-instance v13, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v13, v9, v10, v11}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v13

    .line 1218
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1220
    :cond_5f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_72

    .line 1221
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/LicenseInfo;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_71} :catch_73

    return-object v0

    .line 1226
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "instanceId":Ljava/lang/String;
    .end local v11    # "packageVersion":Ljava/lang/String;
    .end local v12    # "it":Ljava/util/Iterator;
    :cond_72
    goto :goto_7c

    .line 1224
    :catch_73
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "getLicenseInfo() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7c
    return-object v6
.end method

.method public getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 921
    const-string/jumbo v0, "pkgName"

    const-string v1, "EnterpriseLicenseService"

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 923
    const/4 v2, 0x0

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_51

    .line 929
    :cond_16
    const/4 v3, 0x0

    .line 930
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_17
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 931
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v5, "instanceId"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    move-object v5, v0

    .line 934
    .local v5, "column":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v6, v7, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    .line 936
    .local v6, "result":Landroid/content/ContentValues;
    if-nez v6, :cond_34

    .line 937
    const-string/jumbo v0, "getApiCallData(): result is null, Record does not exist"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-object v2

    .line 941
    :cond_34
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 943
    .end local v3    # "pkgName":Ljava/lang/String;
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_41

    .line 944
    const-string/jumbo v3, "getApiCallData(): pkgName is null, Record does not exist"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-object v2

    .line 949
    :cond_41
    invoke-static {v0}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_45} :catch_46

    return-object v1

    .line 950
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "column":Ljava/lang/String;
    .end local v6    # "result":Landroid/content/ContentValues;
    :catch_46
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getApiCallData() failed"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 955
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v2

    .line 924
    :cond_51
    :goto_51
    return-object v2
.end method

.method public getApiCallDataByAdmin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_8} :catch_26

    .line 1072
    nop

    .line 1073
    if-eqz p2, :cond_25

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_25

    .line 1079
    :cond_16
    :try_start_16
    invoke-static {p2}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object v0

    .line 1080
    :catch_1b
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v3, "getApiCallDataByAdmin() failed"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v2

    .line 1074
    :cond_25
    :goto_25
    return-object v2

    .line 1065
    :catch_26
    move-exception v0

    .line 1066
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "finalMsg":Ljava/lang/String;
    if-eqz v1, :cond_3e

    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1071
    :cond_3e
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getELMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2072
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 2074
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2a

    .line 2078
    :cond_10
    const/4 v0, 0x0

    .line 2080
    .local v0, "elmKey":Ljava/lang/String;
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 2081
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_20

    .line 2084
    goto :goto_29

    .line 2082
    :catch_20
    move-exception v1

    .line 2083
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getELMLicenseKey() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_29
    return-object v0

    .line 2075
    .end local v0    # "elmKey":Ljava/lang/String;
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 5
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

    .line 1892
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1893
    :catch_5
    move-exception v0

    .line 1894
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getELMPermissions() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseLicenseService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2220
    const-string/jumbo v0, "instanceId"

    const-string/jumbo v1, "pkgName"

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 2221
    const/4 v2, 0x0

    .line 2223
    .local v2, "instanceId":Ljava/lang/String;
    if-eqz p1, :cond_63

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_63

    .line 2228
    :cond_17
    const/4 v3, 0x2

    :try_start_18
    new-array v3, v3, [Ljava/lang/String;

    .line 2229
    .local v3, "columns":[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 2230
    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 2232
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 2235
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_58

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_58

    .line 2236
    const/4 v5, 0x0

    .line 2237
    .local v5, "cv":Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 2238
    .local v6, "instId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2239
    .local v7, "pkgName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2241
    .local v8, "it":Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_58

    .line 2242
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    move-object v5, v9

    .line 2243
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 2245
    if-eqz v7, :cond_38

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 2246
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_56} :catch_59

    move-object v2, v9

    goto :goto_38

    .line 2252
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "instId":Ljava/lang/String;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "it":Ljava/util/Iterator;
    :cond_58
    goto :goto_62

    .line 2250
    :catch_59
    move-exception v0

    .line 2251
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v3, "getInstanceId() failed"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_62
    return-object v2

    .line 2224
    :cond_63
    :goto_63
    return-object v2
.end method

.method public getKLMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2093
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 2095
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2a

    .line 2099
    :cond_10
    const/4 v0, 0x0

    .line 2101
    .local v0, "klmKey":Ljava/lang/String;
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 2102
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_20

    .line 2105
    goto :goto_29

    .line 2103
    :catch_20
    move-exception v1

    .line 2104
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getKLMLicenseKey() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_29
    return-object v0

    .line 2096
    .end local v0    # "klmKey":Ljava/lang/String;
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKLMLicenseKeyForDeactivation(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2114
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 2116
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2a

    .line 2120
    :cond_10
    const/4 v0, 0x0

    .line 2122
    .local v0, "klmKey":Ljava/lang/String;
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 2123
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_20

    .line 2126
    goto :goto_29

    .line 2124
    :catch_20
    move-exception v1

    .line 2125
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getKLMLicenseKey() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_29
    return-object v0

    .line 2117
    .end local v0    # "klmKey":Ljava/lang/String;
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLicenseActivationInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo;
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2317
    const/4 v0, 0x0

    .line 2319
    .local v0, "activationInfo":Lcom/samsung/android/knox/license/ActivationInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 2321
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 2325
    .local v2, "callerPackage":Ljava/lang/String;
    if-eqz p2, :cond_15

    .line 2326
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    goto :goto_16

    .line 2328
    :cond_15
    move-object p2, v2

    .line 2331
    :goto_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2334
    .local v3, "token":J
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseAgentDbContract;->DB_URI:Landroid/net/Uri;

    const-string/jumbo v7, "getActivations"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, p2, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 2339
    .local v5, "resultBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "result"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/license/ActivationInfo;
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_39

    move-object v0, v6

    .line 2341
    .end local v5    # "resultBundle":Landroid/os/Bundle;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2342
    nop

    .line 2344
    return-object v0

    .line 2341
    :catchall_39
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2342
    throw v5
.end method

.method public getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .registers 14
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 1094
    const-string/jumbo v0, "pkgVersion"

    const-string/jumbo v1, "instanceId"

    const-string/jumbo v2, "pkgName"

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1095
    const/4 v3, 0x0

    .line 1097
    .local v3, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    if-eqz p1, :cond_72

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_72

    .line 1102
    :cond_1a
    const/4 v4, 0x3

    :try_start_1b
    new-array v4, v4, [Ljava/lang/String;

    .line 1103
    .local v4, "columns":[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 1104
    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 1105
    const/4 v5, 0x2

    aput-object v0, v4, v5

    .line 1107
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1110
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_67

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_67

    .line 1111
    const/4 v6, 0x0

    .line 1112
    .local v6, "cv":Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 1113
    .local v7, "instId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1114
    .local v8, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1115
    .local v9, "packageVersion":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1117
    .local v10, "it":Ljava/util/Iterator;
    :cond_3f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_67

    .line 1118
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    move-object v6, v11

    .line 1119
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 1121
    if-eqz v7, :cond_3f

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 1122
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1123
    .end local v8    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    .end local v9    # "packageVersion":Ljava/lang/String;
    .local v0, "packageVersion":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v2, v1, v7, v0}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_66} :catch_68

    .line 1125
    .end local v3    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .local v2, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    move-object v3, v2

    .line 1131
    .end local v0    # "packageVersion":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "instId":Ljava/lang/String;
    .end local v10    # "it":Ljava/util/Iterator;
    .restart local v3    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    :cond_67
    goto :goto_71

    .line 1129
    :catch_68
    move-exception v0

    .line 1130
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "getLicenseInfo() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_71
    return-object v3

    .line 1098
    :cond_72
    :goto_72
    return-object v3
.end method

.method public getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1143
    const-string/jumbo v0, "pkgVersion"

    const-string/jumbo v1, "instanceId"

    const-string/jumbo v2, "pkgName"

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1144
    const/4 v3, 0x0

    .line 1146
    .local v3, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    if-eqz p1, :cond_72

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_72

    .line 1151
    :cond_1a
    const/4 v4, 0x3

    :try_start_1b
    new-array v4, v4, [Ljava/lang/String;

    .line 1152
    .local v4, "columns":[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 1153
    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 1154
    const/4 v5, 0x2

    aput-object v0, v4, v5

    .line 1156
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1159
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_67

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_67

    .line 1160
    const/4 v6, 0x0

    .line 1161
    .local v6, "cv":Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 1162
    .local v7, "instId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1163
    .local v8, "pkgName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1164
    .local v9, "packageVersion":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1166
    .local v10, "it":Ljava/util/Iterator;
    :cond_3f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_67

    .line 1167
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    move-object v6, v11

    .line 1168
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 1170
    if-eqz v8, :cond_3f

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 1171
    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .end local v7    # "instId":Ljava/lang/String;
    .local v1, "instId":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    .end local v9    # "packageVersion":Ljava/lang/String;
    .local v0, "packageVersion":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v2, p1, v1, v0}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_66} :catch_68

    .line 1174
    .end local v3    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .local v2, "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    move-object v3, v2

    .line 1180
    .end local v0    # "packageVersion":Ljava/lang/String;
    .end local v1    # "instId":Ljava/lang/String;
    .end local v2    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v10    # "it":Ljava/util/Iterator;
    .restart local v3    # "lInfo":Lcom/samsung/android/knox/license/LicenseInfo;
    :cond_67
    goto :goto_71

    .line 1178
    :catch_68
    move-exception v0

    .line 1179
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "getLicenseInfoByAdmin() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_71
    return-object v3

    .line 1147
    :cond_72
    :goto_72
    return-object v3
.end method

.method public getPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 10
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

    .line 1856
    const-string v0, "EnterpriseLicenseService"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1857
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_53

    .line 1862
    if-eqz p1, :cond_51

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_51

    .line 1866
    :cond_1b
    const/4 v2, 0x0

    .line 1867
    .local v2, "ro":Lcom/samsung/android/knox/license/RightsObject;
    const/4 v3, 0x0

    .line 1869
    .local v3, "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1d
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    const-string/jumbo v6, "pkgName"

    const-string/jumbo v7, "rightsObject"

    invoke-virtual {v4, v5, v6, p1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 1873
    .local v4, "blob":[B
    if-eqz v4, :cond_48

    .line 1874
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/license/RightsObject;

    move-object v2, v5

    .line 1875
    const-string/jumbo v5, "getPermissions() - deserializeObject"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    if-eqz v2, :cond_42

    .line 1878
    invoke-virtual {v2}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .end local v3    # "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_48

    .line 1880
    .end local v0    # "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_42
    const-string/jumbo v5, "ro is null!!"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_48} :catch_49

    .line 1885
    .end local v4    # "blob":[B
    :cond_48
    :goto_48
    goto :goto_50

    .line 1883
    :catch_49
    move-exception v4

    .line 1884
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "getPermissions() failed"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_50
    return-object v3

    .line 1863
    .end local v2    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    .end local v3    # "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_51
    :goto_51
    const/4 v0, 0x0

    return-object v0

    .line 1858
    :cond_53
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not SYSTEM_SERVICE OR SYSTEM APP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .registers 8
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 672
    const-string v0, "EnterpriseLicenseService"

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 674
    const/4 v1, 0x0

    .line 675
    .local v1, "ro":Lcom/samsung/android/knox/license/RightsObject;
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_3c

    .line 680
    :cond_13
    :try_start_13
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const-string/jumbo v4, "instanceId"

    const-string/jumbo v5, "rightsObject"

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 684
    .local v2, "blob":[B
    if-eqz v2, :cond_30

    .line 685
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/license/RightsObject;

    move-object v1, v3

    .line 686
    const-string/jumbo v3, "getRightsObject() - deserializeObject"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_30} :catch_31

    .line 691
    .end local v2    # "blob":[B
    :cond_30
    goto :goto_3b

    .line 688
    :catch_31
    move-exception v2

    .line 689
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getRightsObject() failed"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 692
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3b
    return-object v1

    .line 676
    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 703
    const-string v0, "EnterpriseLicenseService"

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 705
    const/4 v1, 0x0

    .line 706
    .local v1, "ro":Lcom/samsung/android/knox/license/RightsObject;
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_3c

    .line 711
    :cond_13
    :try_start_13
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const-string/jumbo v4, "pkgName"

    const-string/jumbo v5, "rightsObject"

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 715
    .local v2, "blob":[B
    if-eqz v2, :cond_30

    .line 716
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/license/RightsObject;

    move-object v1, v3

    .line 717
    const-string/jumbo v3, "getRightsObjectByAdmin() - deserializeObject"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_30} :catch_31

    .line 722
    .end local v2    # "blob":[B
    :cond_30
    goto :goto_3b

    .line 719
    :catch_31
    move-exception v2

    .line 720
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getRightsObjectByAdmin() failed"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 724
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3b
    return-object v1

    .line 707
    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 2264
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v1, "isServiceAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const/4 v1, 0x0

    if-eqz p2, :cond_85

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_85

    .line 2272
    :cond_13
    const-string v2, "LICENSE"

    const-string/jumbo v3, "rightsObject"

    const/4 v4, 0x1

    if-eqz p1, :cond_3e

    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_3e

    .line 2299
    :cond_22
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "pkgName"

    invoke-virtual {v5, v2, v6, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 2302
    .local v2, "blob":[B
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/license/RightsObject;

    .line 2303
    .local v3, "ro":Lcom/samsung/android/knox/license/RightsObject;
    if-eqz v3, :cond_7d

    .line 2304
    invoke-virtual {v3}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v5

    .line 2305
    .local v5, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2306
    return v4

    .line 2273
    .end local v2    # "blob":[B
    .end local v3    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    .end local v5    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3e
    :goto_3e
    new-array v5, v4, [Ljava/lang/String;

    .line 2274
    .local v5, "columns":[Ljava/lang/String;
    aput-object v3, v5, v1

    .line 2276
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v5, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 2279
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_7c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7c

    .line 2280
    const/4 v6, 0x0

    .line 2281
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2283
    .local v7, "it":Ljava/util/Iterator;
    :goto_56
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 2284
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    move-object v6, v8

    .line 2285
    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 2286
    .local v8, "blob":[B
    invoke-static {v8}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/license/RightsObject;

    .line 2287
    .local v9, "ro":Lcom/samsung/android/knox/license/RightsObject;
    if-nez v9, :cond_70

    .line 2288
    goto :goto_56

    .line 2290
    :cond_70
    invoke-virtual {v9}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v10

    .line 2292
    .local v10, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_78} :catch_7e

    if-eqz v11, :cond_7b

    .line 2293
    return v4

    .line 2295
    .end local v8    # "blob":[B
    .end local v9    # "ro":Lcom/samsung/android/knox/license/RightsObject;
    .end local v10    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7b
    goto :goto_56

    .line 2298
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "it":Ljava/util/Iterator;
    :cond_7c
    nop

    .line 2312
    :cond_7d
    goto :goto_84

    .line 2310
    :catch_7e
    move-exception v2

    .line 2311
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "check Service did not find permission"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_84
    return v1

    .line 2267
    :cond_85
    :goto_85
    const-string/jumbo v2, "serviceName is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    return v1
.end method

.method public log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    .registers 5
    .param p1, "contextInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "apiName"    # Ljava/lang/String;
    .param p3, "isGetterApi"    # Z
    .param p4, "isOldNamespace"    # Z

    .line 1901
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/enterprise/license/LicenseLog;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V

    .line 1902
    return-void
.end method

.method public notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "licenseResult"    # Lcom/samsung/android/knox/license/LicenseResult;

    .line 2378
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    .line 2379
    .local v1, "elmKlmObserver":Lcom/android/server/enterprise/license/IActivationKlmElmObserver;
    invoke-interface {v1, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 2380
    .end local v1    # "elmKlmObserver":Lcom/android/server/enterprise/license/IActivationKlmElmObserver;
    goto :goto_6

    .line 2381
    :cond_16
    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 2214
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 2175
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 2179
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 2183
    return-void
.end method

.method public processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z
    .registers 32
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersion"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "error"    # Lcom/samsung/android/knox/license/Error;
    .param p5, "initiator"    # I
    .param p6, "result_type"    # I
    .param p7, "callerPackage"    # Ljava/lang/String;
    .param p8, "RO"    # Lcom/samsung/android/knox/license/RightsObject;
    .param p9, "attestation_status"    # I

    .line 516
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p6

    move-object/from16 v5, p7

    const-string/jumbo v0, "pkgName"

    const-string v6, "LICENSE"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 518
    const-string v7, "EnterpriseLicenseService"

    const-string/jumbo v8, "processKnoxLicenseResponse()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v8, 0x0

    .line 521
    .local v8, "differentCaller":Z
    if-eqz v5, :cond_2e

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_24

    goto :goto_2e

    .line 523
    :cond_24
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 524
    const/4 v8, 0x0

    goto :goto_2f

    .line 526
    :cond_2c
    const/4 v8, 0x1

    goto :goto_2f

    .line 522
    :cond_2e
    :goto_2e
    const/4 v8, 0x0

    .line 529
    :goto_2f
    const/4 v9, 0x0

    .line 530
    .local v9, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 532
    .local v10, "token":J
    const/4 v12, 0x0

    .line 535
    .local v12, "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p8, :cond_180

    .line 537
    :try_start_37
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 538
    .local v14, "cvWhere":Landroid/content/ContentValues;
    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 541
    .local v15, "cv":Landroid/content/ContentValues;
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v16

    move-object/from16 v17, v16

    .line 542
    .local v17, "blob":[B
    const-string/jumbo v13, "rightsObject"
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4d} :catch_175
    .catchall {:try_start_37 .. :try_end_4d} :catchall_16a

    move/from16 v18, v9

    move-object/from16 v9, v17

    .end local v17    # "blob":[B
    .local v9, "blob":[B
    .local v18, "ret":Z
    :try_start_51
    invoke-virtual {v15, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 544
    sget-object v13, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v13, v6, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v13
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_15f
    .catchall {:try_start_51 .. :try_end_5a} :catchall_154

    .line 545
    .local v13, "cnt":I
    if-lez v13, :cond_7c

    .line 547
    :try_start_5c
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v6, v15, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_62} :catch_73
    .catchall {:try_start_5c .. :try_end_62} :catchall_6a

    move-object/from16 v17, v9

    move-object/from16 v19, v12

    move-object/from16 v12, p2

    move v9, v0

    .end local v18    # "ret":Z
    .local v0, "ret":Z
    goto :goto_9a

    .line 644
    .end local v0    # "ret":Z
    .end local v9    # "blob":[B
    .end local v13    # "cnt":I
    .end local v14    # "cvWhere":Landroid/content/ContentValues;
    .end local v15    # "cv":Landroid/content/ContentValues;
    .restart local v18    # "ret":Z
    :catchall_6a
    move-exception v0

    move/from16 v13, p5

    move/from16 v14, p9

    move/from16 v9, v18

    goto/16 :goto_250

    .line 639
    :catch_73
    move-exception v0

    move/from16 v13, p5

    move/from16 v14, p9

    move/from16 v9, v18

    goto/16 :goto_241

    .line 550
    .restart local v9    # "blob":[B
    .restart local v13    # "cnt":I
    .restart local v14    # "cvWhere":Landroid/content/ContentValues;
    .restart local v15    # "cv":Landroid/content/ContentValues;
    :cond_7c
    move-object/from16 v17, v9

    .end local v9    # "blob":[B
    .restart local v17    # "blob":[B
    :try_start_7e
    const-string/jumbo v9, "instanceId"
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_15f
    .catchall {:try_start_7e .. :try_end_81} :catchall_154

    move-object/from16 v19, v12

    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_83
    const-string v12, "-1"

    invoke-virtual {v15, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string/jumbo v9, "pkgVersion"

    move-object/from16 v12, p2

    invoke-virtual {v15, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v6, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_99} :catch_238
    .catchall {:try_start_83 .. :try_end_99} :catchall_22e

    move v9, v0

    .line 556
    .end local v18    # "ret":Z
    .local v9, "ret":Z
    :goto_9a
    if-eqz v9, :cond_14b

    .line 557
    :try_start_9c
    const-string/jumbo v0, "processKnoxLicenseResponse(): License Table update."

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result setLicensePermissionForMDM("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 560
    invoke-interface {v6, v2}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 562
    invoke-interface {v6, v2}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_d0} :catch_140
    .catchall {:try_start_9c .. :try_end_d0} :catchall_135

    move-object v6, v0

    .line 564
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_d1
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->startDeferredServicesIfNeeded()V

    .line 566
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_da} :catch_128
    .catchall {:try_start_d1 .. :try_end_da} :catchall_11b

    move-object/from16 v18, v6

    .end local v6    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_dc
    const-string v6, "KNOX_NDA"
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_de} :catch_110
    .catchall {:try_start_dc .. :try_end_de} :catchall_105

    move/from16 v20, v9

    .end local v9    # "ret":Z
    .local v20, "ret":Z
    :try_start_e0
    const-string/jumbo v9, "licenseActivated"

    move/from16 v21, v13

    const/16 v12, 0x3e8

    const/4 v13, 0x1

    .end local v13    # "cnt":I
    .local v21, "cnt":I
    invoke-virtual {v0, v12, v6, v9, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_eb} :catch_fa
    .catchall {:try_start_e0 .. :try_end_eb} :catchall_ef

    move-object/from16 v12, v18

    goto/16 :goto_151

    .line 644
    .end local v14    # "cvWhere":Landroid/content/ContentValues;
    .end local v15    # "cv":Landroid/content/ContentValues;
    .end local v17    # "blob":[B
    .end local v21    # "cnt":I
    :catchall_ef
    move-exception v0

    move/from16 v13, p5

    move/from16 v14, p9

    move-object/from16 v12, v18

    move/from16 v9, v20

    goto/16 :goto_250

    .line 639
    :catch_fa
    move-exception v0

    move/from16 v13, p5

    move/from16 v14, p9

    move-object/from16 v12, v18

    move/from16 v9, v20

    goto/16 :goto_241

    .line 644
    .end local v20    # "ret":Z
    .restart local v9    # "ret":Z
    :catchall_105
    move-exception v0

    move/from16 v20, v9

    move/from16 v13, p5

    move/from16 v14, p9

    move-object/from16 v12, v18

    .end local v9    # "ret":Z
    .restart local v20    # "ret":Z
    goto/16 :goto_250

    .line 639
    .end local v20    # "ret":Z
    .restart local v9    # "ret":Z
    :catch_110
    move-exception v0

    move/from16 v20, v9

    move/from16 v13, p5

    move/from16 v14, p9

    move-object/from16 v12, v18

    .end local v9    # "ret":Z
    .restart local v20    # "ret":Z
    goto/16 :goto_241

    .line 644
    .end local v18    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "ret":Z
    .restart local v6    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "ret":Z
    :catchall_11b
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v20, v9

    move/from16 v13, p5

    move/from16 v14, p9

    move-object/from16 v12, v18

    .end local v6    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "ret":Z
    .restart local v18    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "ret":Z
    goto/16 :goto_250

    .line 639
    .end local v18    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "ret":Z
    .restart local v6    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "ret":Z
    :catch_128
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v20, v9

    move/from16 v13, p5

    move/from16 v14, p9

    move-object/from16 v12, v18

    .end local v6    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "ret":Z
    .restart local v18    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "ret":Z
    goto/16 :goto_241

    .line 644
    .end local v18    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "ret":Z
    .restart local v9    # "ret":Z
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_135
    move-exception v0

    move/from16 v20, v9

    move/from16 v13, p5

    move/from16 v14, p9

    move-object/from16 v12, v19

    .end local v9    # "ret":Z
    .restart local v20    # "ret":Z
    goto/16 :goto_250

    .line 639
    .end local v20    # "ret":Z
    .restart local v9    # "ret":Z
    :catch_140
    move-exception v0

    move/from16 v20, v9

    move/from16 v13, p5

    move/from16 v14, p9

    move-object/from16 v12, v19

    .end local v9    # "ret":Z
    .restart local v20    # "ret":Z
    goto/16 :goto_241

    .line 556
    .end local v20    # "ret":Z
    .restart local v9    # "ret":Z
    .restart local v13    # "cnt":I
    .restart local v14    # "cvWhere":Landroid/content/ContentValues;
    .restart local v15    # "cv":Landroid/content/ContentValues;
    .restart local v17    # "blob":[B
    :cond_14b
    move/from16 v20, v9

    move/from16 v21, v13

    .end local v9    # "ret":Z
    .end local v13    # "cnt":I
    .restart local v20    # "ret":Z
    .restart local v21    # "cnt":I
    move-object/from16 v12, v19

    .line 569
    .end local v14    # "cvWhere":Landroid/content/ContentValues;
    .end local v15    # "cv":Landroid/content/ContentValues;
    .end local v17    # "blob":[B
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "cnt":I
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_151
    move/from16 v9, v20

    goto :goto_18e

    .line 644
    .end local v20    # "ret":Z
    .local v18, "ret":Z
    :catchall_154
    move-exception v0

    move-object/from16 v19, v12

    move/from16 v13, p5

    move/from16 v14, p9

    move/from16 v9, v18

    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_250

    .line 639
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_15f
    move-exception v0

    move-object/from16 v19, v12

    move/from16 v13, p5

    move/from16 v14, p9

    move/from16 v9, v18

    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_241

    .line 644
    .end local v18    # "ret":Z
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "ret":Z
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_16a
    move-exception v0

    move/from16 v18, v9

    move-object/from16 v19, v12

    move/from16 v13, p5

    move/from16 v14, p9

    .end local v9    # "ret":Z
    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "ret":Z
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_250

    .line 639
    .end local v18    # "ret":Z
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "ret":Z
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_175
    move-exception v0

    move/from16 v18, v9

    move-object/from16 v19, v12

    move/from16 v13, p5

    move/from16 v14, p9

    .end local v9    # "ret":Z
    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "ret":Z
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_241

    .line 570
    .end local v18    # "ret":Z
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "ret":Z
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_180
    move/from16 v18, v9

    move-object/from16 v19, v12

    .end local v9    # "ret":Z
    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "ret":Z
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_184
    const-string/jumbo v0, "processKnoxLicenseResponse().RO is null"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_18a} :catch_238
    .catchall {:try_start_184 .. :try_end_18a} :catchall_22e

    move/from16 v9, v18

    move-object/from16 v12, v19

    .line 575
    .end local v18    # "ret":Z
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "ret":Z
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_18e
    :try_start_18e
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, "knoxSdkIntent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v6, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    .line 578
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v13

    .line 577
    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    const-string v6, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ACTIVATION_INITIATOR"
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1a5} :catch_228
    .catchall {:try_start_18e .. :try_end_1a5} :catchall_222

    move/from16 v13, p5

    :try_start_1a7
    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    const-string v6, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const-string v6, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v6, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 588
    const/16 v6, 0x320

    if-ne v4, v6, :cond_1c5

    .line 589
    const-string v6, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1bf} :catch_220
    .catchall {:try_start_1a7 .. :try_end_1bf} :catchall_21e

    move/from16 v14, p9

    :try_start_1c1
    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1c7

    .line 588
    :cond_1c5
    move/from16 v14, p9

    .line 594
    :goto_1c7
    if-eqz v9, :cond_1e3

    .line 596
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 598
    .local v6, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_1e3

    .line 599
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 600
    .local v15, "extra":Landroid/os/Bundle;
    const-string v4, "Permissions"

    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 602
    const-string v4, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1e3

    .line 639
    .end local v0    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v6    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "extra":Landroid/os/Bundle;
    :catch_1e1
    move-exception v0

    goto :goto_241

    .line 607
    .restart local v0    # "knoxSdkIntent":Landroid/content/Intent;
    :cond_1e3
    :goto_1e3
    if-eqz v8, :cond_1ef

    .line 608
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    iget-object v4, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 612
    :cond_1ef
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    iget-object v4, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v4

    .line 619
    .local v4, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v4, :cond_206

    .line 620
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v6

    invoke-interface {v4, v2, v3, v6}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 627
    .end local v4    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    :cond_206
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V

    .line 632
    new-instance v4, Lcom/samsung/android/knox/license/LicenseResult;

    .line 633
    invoke-static/range {p6 .. p6}, Lcom/samsung/android/knox/license/LicenseResult$Type;->fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v6

    invoke-direct {v4, v3, v6}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    .line 634
    .local v4, "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    invoke-virtual {v1, v2, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 637
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_218} :catch_1e1
    .catchall {:try_start_1c1 .. :try_end_218} :catchall_24f

    .line 644
    .end local v0    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v4    # "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    nop

    .line 647
    const/4 v0, 0x1

    return v0

    .line 644
    :catchall_21e
    move-exception v0

    goto :goto_225

    .line 639
    :catch_220
    move-exception v0

    goto :goto_22b

    .line 644
    :catchall_222
    move-exception v0

    move/from16 v13, p5

    :goto_225
    move/from16 v14, p9

    goto :goto_250

    .line 639
    :catch_228
    move-exception v0

    move/from16 v13, p5

    :goto_22b
    move/from16 v14, p9

    goto :goto_241

    .line 644
    .end local v9    # "ret":Z
    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "ret":Z
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_22e
    move-exception v0

    move/from16 v13, p5

    move/from16 v14, p9

    move/from16 v9, v18

    move-object/from16 v12, v19

    goto :goto_250

    .line 639
    :catch_238
    move-exception v0

    move/from16 v13, p5

    move/from16 v14, p9

    move/from16 v9, v18

    move-object/from16 v12, v19

    .line 640
    .end local v18    # "ret":Z
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v9    # "ret":Z
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_241
    :try_start_241
    const-string/jumbo v4, "processKnoxLicenseResponse() failed"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24a
    .catchall {:try_start_241 .. :try_end_24a} :catchall_24f

    .line 642
    const/4 v4, 0x0

    .line 644
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 642
    return v4

    .line 644
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_24f
    move-exception v0

    :goto_250
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    throw v0
.end method

.method public declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 31
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersion"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "RO"    # Lcom/samsung/android/knox/license/RightsObject;
    .param p6, "error"    # Lcom/samsung/android/knox/license/Error;
    .param p7, "permGroup"    # Ljava/lang/String;
    .param p8, "callerPackage"    # Ljava/lang/String;
    .param p9, "attestation_status"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    monitor-enter p0

    .line 339
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 341
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v8, "processLicenseActivationResponse()"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "differentCaller":Z
    if-eqz v6, :cond_30

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_24

    goto :goto_30

    .line 346
    :cond_24
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 347
    const/4 v0, 0x0

    move v8, v0

    goto :goto_32

    .line 349
    :cond_2d
    const/4 v0, 0x1

    move v8, v0

    goto :goto_32

    .line 345
    .end local p0    # "this":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_30
    :goto_30
    const/4 v0, 0x0

    move v8, v0

    .line 352
    .end local v0    # "differentCaller":Z
    .local v8, "differentCaller":Z
    :goto_32
    const/4 v9, 0x0

    .line 353
    .local v9, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 355
    .local v10, "token":J
    const/4 v12, 0x0

    .line 358
    .local v12, "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v14, 0x12d

    if-nez p5, :cond_c3

    .line 359
    const/4 v0, 0x1

    .line 360
    .end local v9    # "ret":Z
    .local v0, "ret":Z
    nop

    .line 437
    new-instance v9, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v9, "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v0, :cond_88

    .line 439
    if-eqz v8, :cond_6a

    .line 441
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 444
    .local v14, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_60

    .line 445
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v15, "extra":Landroid/os/Bundle;
    const-string v13, "Permissions"

    invoke-virtual {v15, v13, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 448
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v9, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 453
    .end local v15    # "extra":Landroid/os/Bundle;
    :cond_60
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v9, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v9, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    .end local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6a
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v9, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 461
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    .line 460
    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v9, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v9, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v9, v13, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_94

    .line 470
    :cond_88
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string v15, "fail"

    invoke-virtual {v9, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    :goto_94
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    if-eqz v8, :cond_a7

    .line 478
    invoke-virtual {v9, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v9, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 482
    :cond_a7
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v9, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    new-instance v13, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v14, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v13, v4, v14}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    .line 488
    .local v13, "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    invoke-direct {v1, v2, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 490
    invoke-direct {v1, v4, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c1
    .catchall {:try_start_f .. :try_end_c1} :catchall_386

    .line 360
    .end local v9    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v13    # "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    monitor-exit p0

    return v0

    .line 364
    .end local v0    # "ret":Z
    .local v9, "ret":Z
    :cond_c3
    :try_start_c3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v13, "pkgName"

    invoke-virtual {v0, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .local v13, "cv":Landroid/content/ContentValues;
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v15

    .line 369
    .local v15, "blob":[B
    const-string/jumbo v14, "rightsObject"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 370
    const-string/jumbo v14, "instanceId"
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_e0} :catch_25d
    .catchall {:try_start_c3 .. :try_end_e0} :catchall_256

    move/from16 v16, v9

    move-object/from16 v9, p4

    .end local v9    # "ret":Z
    .local v16, "ret":Z
    :try_start_e4
    invoke-virtual {v13, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string/jumbo v14, "pkgVersion"

    invoke-virtual {v13, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object v14, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "LICENSE"

    invoke-virtual {v14, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_f5} :catch_250
    .catchall {:try_start_e4 .. :try_end_f5} :catchall_249

    .line 374
    .local v9, "cnt":I
    if-lez v9, :cond_10e

    .line 376
    :try_start_f7
    sget-object v14, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v17, v9

    .end local v9    # "cnt":I
    .local v17, "cnt":I
    const-string v9, "LICENSE"

    invoke-virtual {v14, v9, v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_101} :catch_109
    .catchall {:try_start_f7 .. :try_end_101} :catchall_104

    move-object/from16 v18, v0

    .end local v16    # "ret":Z
    .local v9, "ret":Z
    goto :goto_141

    .line 437
    .end local v0    # "cvWhere":Landroid/content/ContentValues;
    .end local v9    # "ret":Z
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v15    # "blob":[B
    .end local v17    # "cnt":I
    .restart local v16    # "ret":Z
    :catchall_104
    move-exception v0

    move/from16 v9, v16

    goto/16 :goto_2f6

    .line 431
    :catch_109
    move-exception v0

    move/from16 v9, v16

    goto/16 :goto_262

    .line 379
    .restart local v0    # "cvWhere":Landroid/content/ContentValues;
    .local v9, "cnt":I
    .restart local v13    # "cv":Landroid/content/ContentValues;
    .restart local v15    # "blob":[B
    :cond_10e
    move/from16 v17, v9

    .end local v9    # "cnt":I
    .restart local v17    # "cnt":I
    :try_start_110
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v13, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "LICENSE"

    invoke-virtual {v9, v14, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_11e} :catch_250
    .catchall {:try_start_110 .. :try_end_11e} :catchall_249

    .line 381
    .end local v16    # "ret":Z
    .local v9, "ret":Z
    if-nez v9, :cond_13f

    .line 383
    :try_start_120
    const-string v14, "EnterpriseLicenseService"

    move-object/from16 v18, v0

    .end local v0    # "cvWhere":Landroid/content/ContentValues;
    .local v18, "cvWhere":Landroid/content/ContentValues;
    const-string v0, "check key field"

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string/jumbo v0, "licenseKey"

    const-string/jumbo v14, "na"

    invoke-virtual {v13, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "LICENSE"

    invoke-virtual {v0, v14, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_13a} :catch_13c
    .catchall {:try_start_120 .. :try_end_13a} :catchall_2f5

    move v9, v0

    .end local v9    # "ret":Z
    .local v0, "ret":Z
    goto :goto_141

    .line 431
    .end local v0    # "ret":Z
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v15    # "blob":[B
    .end local v17    # "cnt":I
    .end local v18    # "cvWhere":Landroid/content/ContentValues;
    .restart local v9    # "ret":Z
    :catch_13c
    move-exception v0

    goto/16 :goto_262

    .line 381
    .local v0, "cvWhere":Landroid/content/ContentValues;
    .restart local v13    # "cv":Landroid/content/ContentValues;
    .restart local v15    # "blob":[B
    .restart local v17    # "cnt":I
    :cond_13f
    move-object/from16 v18, v0

    .line 388
    .end local v0    # "cvWhere":Landroid/content/ContentValues;
    .restart local v18    # "cvWhere":Landroid/content/ContentValues;
    :goto_141
    :try_start_141
    const-string v0, "EnterpriseLicenseService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_148} :catch_245
    .catchall {:try_start_141 .. :try_end_148} :catchall_240

    move-object/from16 v19, v12

    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_14a
    const-string/jumbo v12, "processLicenseActivationResponse(): ret = "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-eqz v9, :cond_175

    .line 392
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    sget-object v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 394
    invoke-interface {v12, v2}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_16c} :catch_23c
    .catchall {:try_start_14a .. :try_end_16c} :catchall_237

    move-object v12, v0

    .line 396
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_16d
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->startDeferredServicesIfNeeded()V

    goto :goto_177

    .line 390
    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_175
    move-object/from16 v12, v19

    .line 401
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_177
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    .line 402
    .local v0, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v0, :cond_193

    .line 403
    if-eqz v9, :cond_189

    .line 404
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-interface {v0, v2, v4, v14}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v20, v13

    goto :goto_195

    .line 406
    :cond_189
    const-string v14, "fail"

    move-object/from16 v20, v13

    const/16 v13, 0x12d

    .end local v13    # "cv":Landroid/content/ContentValues;
    .local v20, "cv":Landroid/content/ContentValues;
    invoke-interface {v0, v2, v14, v13}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_195

    .line 402
    .end local v20    # "cv":Landroid/content/ContentValues;
    .restart local v13    # "cv":Landroid/content/ContentValues;
    :cond_193
    move-object/from16 v20, v13

    .line 415
    .end local v0    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .restart local v20    # "cv":Landroid/content/ContentValues;
    :goto_195
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V

    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isSepBasic()Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 422
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    .line 423
    if-eqz v0, :cond_1b3

    .line 424
    invoke-interface {v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->notifyLicenseStatus()Z

    move-result v0

    if-nez v0, :cond_1b3

    .line 425
    const-string v0, "EnterpriseLicenseService"

    const-string v13, "ccm notifyLicenseStatus failed"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_1b3} :catch_13c
    .catchall {:try_start_16d .. :try_end_1b3} :catchall_2f5

    .line 437
    .end local v15    # "blob":[B
    .end local v17    # "cnt":I
    .end local v18    # "cvWhere":Landroid/content/ContentValues;
    .end local v20    # "cv":Landroid/content/ContentValues;
    :cond_1b3
    :try_start_1b3
    new-instance v0, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v9, :cond_1fd

    .line 439
    if-eqz v8, :cond_1df

    .line 441
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 444
    .local v13, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_1d5

    .line 445
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v14, "extra":Landroid/os/Bundle;
    const-string v15, "Permissions"

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 448
    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v0, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 453
    .end local v14    # "extra":Landroid/os/Bundle;
    :cond_1d5
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v0, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1df
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 461
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    .line 460
    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v0, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_20b

    .line 470
    :cond_1fd
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string v14, "fail"

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    :goto_20b
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    if-eqz v8, :cond_21e

    .line 478
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 482
    :cond_21e
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    new-instance v13, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v14, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v13, v4, v14}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    .line 488
    .local v13, "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    invoke-direct {v1, v2, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 490
    invoke-direct {v1, v4, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_235
    .catchall {:try_start_1b3 .. :try_end_235} :catchall_386

    goto/16 :goto_2ef

    .line 437
    .end local v0    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_237
    move-exception v0

    move-object/from16 v12, v19

    goto/16 :goto_2f6

    .line 431
    :catch_23c
    move-exception v0

    move-object/from16 v12, v19

    goto :goto_262

    .line 437
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_240
    move-exception v0

    move-object/from16 v19, v12

    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_2f6

    .line 431
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_245
    move-exception v0

    move-object/from16 v19, v12

    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_262

    .line 437
    .end local v9    # "ret":Z
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "ret":Z
    :catchall_249
    move-exception v0

    move-object/from16 v19, v12

    move/from16 v9, v16

    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_2f6

    .line 431
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_250
    move-exception v0

    move-object/from16 v19, v12

    move/from16 v9, v16

    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_262

    .line 437
    .end local v16    # "ret":Z
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "ret":Z
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_256
    move-exception v0

    move/from16 v16, v9

    move-object/from16 v19, v12

    .end local v9    # "ret":Z
    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "ret":Z
    .restart local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_2f6

    .line 431
    .end local v16    # "ret":Z
    .end local v19    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "ret":Z
    .restart local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_25d
    move-exception v0

    move/from16 v16, v9

    move-object/from16 v19, v12

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    :goto_262
    :try_start_262
    const-string v13, "EnterpriseLicenseService"

    const-string/jumbo v14, "processLicenseActivationResponse() failed"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26d
    .catchall {:try_start_262 .. :try_end_26d} :catchall_2f5

    .line 437
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_26d
    new-instance v0, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v9, :cond_2b7

    .line 439
    if-eqz v8, :cond_299

    .line 441
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 444
    .local v13, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_28f

    .line 445
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 446
    .restart local v14    # "extra":Landroid/os/Bundle;
    const-string v15, "Permissions"

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 448
    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v0, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 453
    .end local v14    # "extra":Landroid/os/Bundle;
    :cond_28f
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v0, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_299
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 461
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    .line 460
    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v0, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2c5

    .line 470
    :cond_2b7
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string v14, "fail"

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    :goto_2c5
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    if-eqz v8, :cond_2d8

    .line 478
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 482
    :cond_2d8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    new-instance v13, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v14, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v13, v4, v14}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    .line 488
    .local v13, "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    invoke-direct {v1, v2, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 490
    invoke-direct {v1, v4, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_2ef
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2f2
    .catchall {:try_start_26d .. :try_end_2f2} :catchall_386

    .line 493
    .end local v0    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v13    # "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    nop

    .line 495
    monitor-exit p0

    return v9

    .line 437
    :catchall_2f5
    move-exception v0

    :goto_2f6
    :try_start_2f6
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v13, "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v9, :cond_348

    .line 439
    if-eqz v8, :cond_328

    .line 441
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 444
    .local v14, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_31b

    .line 445
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v15, "extra":Landroid/os/Bundle;
    move/from16 v16, v9

    .end local v9    # "ret":Z
    .restart local v16    # "ret":Z
    const-string v9, "Permissions"

    invoke-virtual {v15, v9, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 448
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v13, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_31d

    .line 444
    .end local v15    # "extra":Landroid/os/Bundle;
    .end local v16    # "ret":Z
    .restart local v9    # "ret":Z
    :cond_31b
    move/from16 v16, v9

    .line 453
    .end local v9    # "ret":Z
    .restart local v16    # "ret":Z
    :goto_31d
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v13, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v13, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_32a

    .line 439
    .end local v14    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "ret":Z
    .restart local v9    # "ret":Z
    :cond_328
    move/from16 v16, v9

    .line 459
    .end local v9    # "ret":Z
    .restart local v16    # "ret":Z
    :goto_32a
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v13, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    .line 461
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    .line 460
    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v13, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v13, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v13, v9, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_358

    .line 470
    .end local v16    # "ret":Z
    .restart local v9    # "ret":Z
    :cond_348
    move/from16 v16, v9

    .end local v9    # "ret":Z
    .restart local v16    # "ret":Z
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string v14, "fail"

    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    :goto_358
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    if-eqz v8, :cond_36b

    .line 478
    invoke-virtual {v13, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 482
    :cond_36b
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 486
    new-instance v9, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v14, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v9, v4, v14}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    .line 488
    .local v9, "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    invoke-direct {v1, v2, v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 490
    invoke-direct {v1, v4, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    .end local v9    # "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    .end local v13    # "knoxSdkIntent":Landroid/content/Intent;
    throw v0
    :try_end_386
    .catchall {:try_start_2f6 .. :try_end_386} :catchall_386

    .line 338
    .end local v8    # "differentCaller":Z
    .end local v10    # "token":J
    .end local v12    # "grantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "ret":Z
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "packageVersion":Ljava/lang/String;
    .end local p3    # "status":Ljava/lang/String;
    .end local p4    # "instanceId":Ljava/lang/String;
    .end local p5    # "RO":Lcom/samsung/android/knox/license/RightsObject;
    .end local p6    # "error":Lcom/samsung/android/knox/license/Error;
    .end local p7    # "permGroup":Ljava/lang/String;
    .end local p8    # "callerPackage":Ljava/lang/String;
    .end local p9    # "attestation_status":I
    :catchall_386
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 45
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "RO"    # Lcom/samsung/android/knox/license/RightsObject;
    .param p4, "error"    # Lcom/samsung/android/knox/license/Error;
    .param p5, "permGroup"    # Ljava/lang/String;
    .param p6, "pkgName"    # Ljava/lang/String;
    .param p7, "pkgVer"    # Ljava/lang/String;
    .param p8, "callerPackage"    # Ljava/lang/String;

    .line 743
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    const-string v0, "LICENSE"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 745
    const-string v7, "EnterpriseLicenseService"

    const-string/jumbo v8, "processLicenseValidationResult()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v8, 0x0

    .line 748
    .local v8, "differentCaller":Z
    if-eqz v6, :cond_2d

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_23

    goto :goto_2d

    .line 750
    :cond_23
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 751
    const/4 v8, 0x0

    goto :goto_2e

    .line 753
    :cond_2b
    const/4 v8, 0x1

    goto :goto_2e

    .line 749
    :cond_2d
    :goto_2d
    const/4 v8, 0x0

    .line 756
    :goto_2e
    const/4 v9, 0x0

    .line 757
    .local v9, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 760
    .local v10, "token":J
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    const-string v13, "Permissions"

    const-string v14, "com.sec.enterprise.knox.cloudmdm.smdms"

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    move/from16 v16, v9

    .end local v9    # "ret":Z
    .local v16, "ret":Z
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    move-object/from16 v17, v7

    const-string v7, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-wide/from16 v18, v10

    .end local v10    # "token":J
    .local v18, "token":J
    const-string v11, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const-string v10, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    move-object/from16 v20, v14

    const-string v14, "fail"

    move-object/from16 v21, v12

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    move-object/from16 v22, v13

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    if-nez p3, :cond_107

    .line 761
    const/4 v0, 0x1

    .line 762
    .end local v16    # "ret":Z
    .local v0, "ret":Z
    nop

    .line 838
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .local v1, "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v0, :cond_77

    .line 840
    if-eqz v8, :cond_68

    .line 841
    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    invoke-virtual {v1, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    :cond_68
    invoke-virtual {v1, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    nop

    .line 848
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v15

    .line 847
    invoke-virtual {v1, v12, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7f

    .line 852
    :cond_77
    invoke-virtual {v1, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const/16 v15, 0x12d

    invoke-virtual {v1, v12, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    :goto_7f
    const/16 v15, 0x321

    invoke-virtual {v1, v11, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    if-eqz v8, :cond_95

    .line 860
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    move-object/from16 v15, p0

    iget-object v6, v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move/from16 v23, v8

    .end local v8    # "differentCaller":Z
    .local v23, "differentCaller":Z
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_99

    .line 859
    .end local v23    # "differentCaller":Z
    .restart local v8    # "differentCaller":Z
    :cond_95
    move-object/from16 v15, p0

    move/from16 v23, v8

    .line 864
    .end local v8    # "differentCaller":Z
    .restart local v23    # "differentCaller":Z
    :goto_99
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    iget-object v6, v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 869
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 870
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v6, "UMCintent":Landroid/content/Intent;
    if-eqz v0, :cond_c3

    .line 872
    invoke-virtual {v6, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    nop

    .line 874
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v8

    .line 873
    invoke-virtual {v6, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_cb

    .line 878
    :cond_c3
    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const/16 v7, 0x12d

    invoke-virtual {v6, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    :goto_cb
    invoke-virtual {v6, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    invoke-virtual {v15, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 885
    .local v7, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_e5

    .line 886
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 887
    .local v8, "extra":Landroid/os/Bundle;
    move-object/from16 v9, v22

    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 889
    move-object/from16 v9, v21

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 892
    .end local v8    # "extra":Landroid/os/Bundle;
    :cond_e5
    const/16 v8, 0x321

    invoke-virtual {v6, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    move-object/from16 v8, v20

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    iget-object v8, v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 898
    .end local v6    # "UMCintent":Landroid/content/Intent;
    .end local v7    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f6
    new-instance v6, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v7, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v6, v2, v7}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    .line 900
    .local v6, "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    invoke-direct {v15, v4, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 903
    invoke-direct {v15, v2, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    .end local v1    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v6    # "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    return v0

    .line 766
    .end local v0    # "ret":Z
    .end local v23    # "differentCaller":Z
    .local v8, "differentCaller":Z
    .restart local v16    # "ret":Z
    :cond_107
    move/from16 v23, v8

    move-object/from16 v6, v21

    move-object/from16 v8, v22

    .end local v8    # "differentCaller":Z
    .restart local v23    # "differentCaller":Z
    :try_start_10d
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_112} :catch_3db
    .catchall {:try_start_10d .. :try_end_112} :catchall_3c8

    move-object/from16 v22, v21

    .line 767
    .local v22, "cvWhere":Landroid/content/ContentValues;
    move-object/from16 v21, v6

    :try_start_116
    const-string/jumbo v6, "pkgName"
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_3be
    .catchall {:try_start_116 .. :try_end_119} :catchall_3b2

    move-object/from16 v24, v8

    move-object/from16 v8, v22

    .end local v22    # "cvWhere":Landroid/content/ContentValues;
    .local v8, "cvWhere":Landroid/content/ContentValues;
    :try_start_11d
    invoke-virtual {v8, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 771
    .local v6, "cv":Landroid/content/ContentValues;
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v22
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_129} :catch_3a7
    .catchall {:try_start_11d .. :try_end_129} :catchall_398

    move-object/from16 v25, v22

    .line 772
    .local v25, "blob":[B
    move-object/from16 v22, v11

    :try_start_12d
    const-string/jumbo v11, "rightsObject"
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_130} :catch_387
    .catchall {:try_start_12d .. :try_end_130} :catchall_37f

    move-object/from16 v3, v25

    .end local v25    # "blob":[B
    .local v3, "blob":[B
    :try_start_132
    invoke-virtual {v6, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 773
    const-string/jumbo v11, "pkgVersion"

    invoke-virtual {v6, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    sget-object v11, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v11, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v11
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_141} :catch_36d
    .catchall {:try_start_132 .. :try_end_141} :catchall_364

    .line 776
    .local v11, "cnt":I
    if-lez v11, :cond_159

    .line 778
    move-object/from16 v25, v3

    .end local v3    # "blob":[B
    .restart local v25    # "blob":[B
    :try_start_145
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v0, v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_14b} :catch_36d
    .catchall {:try_start_145 .. :try_end_14b} :catchall_14d

    move v3, v0

    .end local v16    # "ret":Z
    .restart local v0    # "ret":Z
    goto :goto_15d

    .line 838
    .end local v0    # "ret":Z
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v11    # "cnt":I
    .end local v25    # "blob":[B
    .restart local v16    # "ret":Z
    :catchall_14d
    move-exception v0

    move-object/from16 v8, p5

    move-object/from16 v3, p8

    move-object v11, v14

    move-object/from16 v34, v20

    move-object/from16 v14, v22

    goto/16 :goto_3a3

    .line 776
    .restart local v3    # "blob":[B
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v11    # "cnt":I
    :cond_159
    move-object/from16 v25, v3

    .end local v3    # "blob":[B
    .restart local v25    # "blob":[B
    move/from16 v3, v16

    .line 781
    .end local v16    # "ret":Z
    .local v3, "ret":Z
    :goto_15d
    :try_start_15d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v6

    .end local v6    # "cv":Landroid/content/ContentValues;
    .local v26, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "processLicenseValidationResult(): ret = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_171} :catch_350
    .catchall {:try_start_15d .. :try_end_171} :catchall_340

    move-object/from16 v6, v17

    :try_start_173
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_176} :catch_339
    .catchall {:try_start_173 .. :try_end_176} :catchall_340

    .line 782
    if-eqz v3, :cond_1a0

    .line 784
    :try_start_178
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_17d} :catch_18e
    .catchall {:try_start_178 .. :try_end_17d} :catchall_17e

    goto :goto_1a0

    .line 838
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v11    # "cnt":I
    .end local v25    # "blob":[B
    .end local v26    # "cv":Landroid/content/ContentValues;
    :catchall_17e
    move-exception v0

    move-object/from16 v8, p5

    move/from16 v16, v3

    move-object v11, v14

    move-object/from16 v34, v20

    move-object/from16 v14, v22

    move-object/from16 v6, v24

    :goto_18a
    move-object/from16 v3, p8

    goto/16 :goto_4a9

    .line 832
    :catch_18e
    move-exception v0

    move-object/from16 v8, p5

    move/from16 v16, v3

    move-object v11, v14

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    move-object/from16 v14, v22

    move-object/from16 v22, v24

    move-object/from16 v3, p8

    goto/16 :goto_3ec

    .line 789
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v11    # "cnt":I
    .restart local v25    # "blob":[B
    .restart local v26    # "cv":Landroid/content/ContentValues;
    :cond_1a0
    :goto_1a0
    :try_start_1a0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1a4} :catch_339
    .catchall {:try_start_1a0 .. :try_end_1a4} :catchall_340

    .line 790
    .local v0, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-eqz v0, :cond_1ba

    .line 791
    if-eqz v3, :cond_1b2

    .line 792
    move-object/from16 v17, v8

    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .local v17, "cvWhere":Landroid/content/ContentValues;
    :try_start_1aa
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v8

    invoke-interface {v0, v4, v2, v8}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1bc

    .line 794
    .end local v17    # "cvWhere":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    :cond_1b2
    move-object/from16 v17, v8

    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v17    # "cvWhere":Landroid/content/ContentValues;
    const/16 v8, 0x12d

    invoke-interface {v0, v4, v14, v8}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1b9} :catch_18e
    .catchall {:try_start_1aa .. :try_end_1b9} :catchall_17e

    goto :goto_1bc

    .line 790
    .end local v17    # "cvWhere":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    :cond_1ba
    move-object/from16 v17, v8

    .line 803
    .end local v0    # "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v17    # "cvWhere":Landroid/content/ContentValues;
    :goto_1bc
    const/4 v0, 0x0

    .line 804
    .local v0, "isPremiumDevice":Z
    const/4 v8, 0x0

    .line 805
    .local v8, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    move/from16 v16, v0

    .end local v0    # "isPremiumDevice":Z
    .local v16, "isPremiumDevice":Z
    :try_start_1c0
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v8

    .end local v8    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .local v27, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    const-string/jumbo v8, "persona"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1cd} :catch_339
    .catchall {:try_start_1c0 .. :try_end_1cd} :catchall_340

    .line 807
    .end local v27    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .local v0, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    const/4 v8, 0x0

    if-eqz v0, :cond_23d

    .line 808
    :try_start_1d0
    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v27

    move-object/from16 v28, v27

    .line 809
    .local v28, "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    move/from16 v8, v27

    .local v8, "i":I
    :goto_1da
    move-object/from16 v27, v0

    .end local v0    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v27    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_236

    .line 810
    move-object/from16 v0, v28

    .end local v28    # "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v0, "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v29, v28

    .line 811
    .local v29, "knoxId":I
    move-object/from16 v28, v0

    move/from16 v0, v29

    .end local v29    # "knoxId":I
    .local v0, "knoxId":I
    .restart local v28    # "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v1, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v29

    move/from16 v30, v29

    .line 812
    .local v30, "isLicenseLocked":Z
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v29

    if-nez v29, :cond_20e

    move/from16 v29, v11

    move/from16 v11, v30

    .end local v30    # "isLicenseLocked":Z
    .local v11, "isLicenseLocked":Z
    .local v29, "cnt":I
    if-eqz v11, :cond_207

    goto :goto_212

    .line 809
    .end local v0    # "knoxId":I
    .end local v11    # "isLicenseLocked":Z
    :cond_207
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v27

    move/from16 v11, v29

    goto :goto_1da

    .line 812
    .end local v29    # "cnt":I
    .restart local v0    # "knoxId":I
    .local v11, "cnt":I
    .restart local v30    # "isLicenseLocked":Z
    :cond_20e
    move/from16 v29, v11

    move/from16 v11, v30

    .line 813
    .end local v30    # "isLicenseLocked":Z
    .local v11, "isLicenseLocked":Z
    .restart local v29    # "cnt":I
    :goto_212
    move/from16 v30, v8

    .end local v8    # "i":I
    .local v30, "i":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_219} :catch_18e
    .catchall {:try_start_1d0 .. :try_end_219} :catchall_17e

    move-object/from16 v31, v14

    :try_start_21b
    const-string/jumbo v14, "processLicenseValidationResult():  u"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " isLicenseLocked ? "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v8, 0x1

    .line 816
    .end local v16    # "isPremiumDevice":Z
    .local v8, "isPremiumDevice":Z
    move v0, v8

    goto :goto_245

    .line 809
    .end local v0    # "knoxId":I
    .end local v29    # "cnt":I
    .end local v30    # "i":I
    .local v8, "i":I
    .local v11, "cnt":I
    .restart local v16    # "isPremiumDevice":Z
    :cond_236
    move/from16 v30, v8

    move/from16 v29, v11

    move-object/from16 v31, v14

    .end local v8    # "i":I
    .end local v11    # "cnt":I
    .restart local v29    # "cnt":I
    .restart local v30    # "i":I
    goto :goto_243

    .line 807
    .end local v27    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v28    # "knoxIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v29    # "cnt":I
    .end local v30    # "i":I
    .local v0, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v11    # "cnt":I
    :cond_23d
    move-object/from16 v27, v0

    move/from16 v29, v11

    move-object/from16 v31, v14

    .line 821
    .end local v0    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v11    # "cnt":I
    .restart local v27    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v29    # "cnt":I
    :goto_243
    move/from16 v0, v16

    .end local v16    # "isPremiumDevice":Z
    .local v0, "isPremiumDevice":Z
    :goto_245
    if-nez v0, :cond_27e

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_27e

    .line 822
    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v11

    if-nez v11, :cond_25a

    .line 823
    invoke-direct {v1, v8}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v8

    if-eqz v8, :cond_27e

    .line 824
    :cond_25a
    const/4 v0, 0x1

    goto :goto_27e

    .line 838
    .end local v0    # "isPremiumDevice":Z
    .end local v17    # "cvWhere":Landroid/content/ContentValues;
    .end local v25    # "blob":[B
    .end local v26    # "cv":Landroid/content/ContentValues;
    .end local v27    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v29    # "cnt":I
    :catchall_25c
    move-exception v0

    move-object/from16 v8, p5

    move/from16 v16, v3

    move-object/from16 v34, v20

    move-object/from16 v14, v22

    move-object/from16 v6, v24

    move-object/from16 v11, v31

    goto/16 :goto_18a

    .line 832
    :catch_26b
    move-exception v0

    move-object/from16 v8, p5

    move/from16 v16, v3

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    move-object/from16 v14, v22

    move-object/from16 v22, v24

    move-object/from16 v11, v31

    move-object/from16 v3, p8

    goto/16 :goto_3ec

    .line 827
    .restart local v0    # "isPremiumDevice":Z
    .restart local v17    # "cvWhere":Landroid/content/ContentValues;
    .restart local v25    # "blob":[B
    .restart local v26    # "cv":Landroid/content/ContentValues;
    .restart local v27    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v29    # "cnt":I
    :cond_27e
    :goto_27e
    if-eqz v0, :cond_283

    .line 828
    invoke-direct {v1, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_283} :catch_26b
    .catchall {:try_start_21b .. :try_end_283} :catchall_25c

    .line 838
    .end local v0    # "isPremiumDevice":Z
    .end local v17    # "cvWhere":Landroid/content/ContentValues;
    .end local v25    # "blob":[B
    .end local v26    # "cv":Landroid/content/ContentValues;
    .end local v27    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v29    # "cnt":I
    :cond_283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .local v0, "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v3, :cond_2a5

    .line 840
    if-eqz v23, :cond_292

    .line 841
    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    invoke-virtual {v0, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    :cond_292
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    nop

    .line 848
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v6

    .line 847
    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    move-object/from16 v8, p5

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v11, v31

    goto :goto_2b1

    .line 852
    :cond_2a5
    move-object/from16 v8, p5

    move-object/from16 v11, v31

    invoke-virtual {v0, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const/16 v6, 0x12d

    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    :goto_2b1
    move-object/from16 v14, v22

    const/16 v6, 0x321

    invoke-virtual {v0, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    if-eqz v23, :cond_2c6

    .line 860
    move-object/from16 v6, p8

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    iget-object v15, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v15, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 864
    :cond_2c6
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    iget-object v6, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 869
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_323

    .line 870
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v6, "UMCintent":Landroid/content/Intent;
    if-eqz v3, :cond_2f0

    .line 872
    invoke-virtual {v6, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    nop

    .line 874
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v10

    .line 873
    invoke-virtual {v6, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f8

    .line 878
    :cond_2f0
    invoke-virtual {v6, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const/16 v7, 0x12d

    invoke-virtual {v6, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    :goto_2f8
    invoke-virtual {v6, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 885
    .restart local v7    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_312

    .line 886
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 887
    .local v9, "extra":Landroid/os/Bundle;
    move-object/from16 v10, v24

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 889
    move-object/from16 v10, v21

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 892
    .end local v9    # "extra":Landroid/os/Bundle;
    :cond_312
    const/16 v9, 0x321

    invoke-virtual {v6, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    move-object/from16 v9, v20

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v6, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 898
    .end local v6    # "UMCintent":Landroid/content/Intent;
    .end local v7    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_323
    new-instance v6, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v7, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v6, v2, v7}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    .line 900
    .local v6, "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    invoke-direct {v1, v4, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 903
    invoke-direct {v1, v2, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    .end local v0    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v6    # "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    move/from16 v16, v3

    move-object/from16 v3, p8

    goto/16 :goto_49f

    .line 832
    :catch_339
    move-exception v0

    move-object/from16 v8, p5

    move/from16 v16, v3

    move-object v11, v14

    goto :goto_358

    .line 838
    :catchall_340
    move-exception v0

    move-object/from16 v8, p5

    move/from16 v16, v3

    move-object v11, v14

    move-object/from16 v14, v22

    move-object/from16 v3, p8

    move-object/from16 v34, v20

    move-object/from16 v6, v24

    .end local v3    # "ret":Z
    .local v16, "ret":Z
    goto/16 :goto_4a9

    .line 832
    .end local v16    # "ret":Z
    .restart local v3    # "ret":Z
    :catch_350
    move-exception v0

    move-object/from16 v8, p5

    move/from16 v16, v3

    move-object v11, v14

    move-object/from16 v6, v17

    :goto_358
    move-object/from16 v32, v20

    move-object/from16 v33, v21

    move-object/from16 v14, v22

    move-object/from16 v22, v24

    move-object/from16 v3, p8

    .end local v3    # "ret":Z
    .restart local v16    # "ret":Z
    goto/16 :goto_3ec

    .line 838
    :catchall_364
    move-exception v0

    move-object/from16 v8, p5

    move-object/from16 v3, p8

    move-object v11, v14

    move-object/from16 v14, v22

    goto :goto_3a1

    .line 832
    :catch_36d
    move-exception v0

    move-object/from16 v8, p5

    move-object/from16 v3, p8

    move-object v11, v14

    move-object/from16 v6, v17

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    move-object/from16 v14, v22

    move-object/from16 v22, v24

    goto/16 :goto_3ec

    .line 838
    :catchall_37f
    move-exception v0

    move-object v8, v3

    move-object v11, v14

    move-object/from16 v14, v22

    move-object/from16 v3, p8

    goto :goto_3a1

    .line 832
    :catch_387
    move-exception v0

    move-object v8, v3

    move-object v11, v14

    move-object/from16 v6, v17

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    move-object/from16 v14, v22

    move-object/from16 v22, v24

    move-object/from16 v3, p8

    goto/16 :goto_3ec

    .line 838
    :catchall_398
    move-exception v0

    move-object v8, v3

    move-object/from16 v3, p8

    move-object/from16 v35, v14

    move-object v14, v11

    move-object/from16 v11, v35

    :goto_3a1
    move-object/from16 v34, v20

    :goto_3a3
    move-object/from16 v6, v24

    goto/16 :goto_4a9

    .line 832
    :catch_3a7
    move-exception v0

    move-object v8, v3

    move-object/from16 v6, v17

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    move-object/from16 v22, v24

    goto :goto_3e5

    .line 838
    :catchall_3b2
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v3

    move-object/from16 v3, p8

    move-object/from16 v35, v14

    move-object v14, v11

    move-object/from16 v11, v35

    goto :goto_3d5

    .line 832
    :catch_3be
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v6, v17

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    goto :goto_3e4

    .line 838
    :catchall_3c8
    move-exception v0

    move-object/from16 v22, v8

    move-object v8, v3

    move-object/from16 v3, p8

    move-object/from16 v35, v14

    move-object v14, v11

    move-object/from16 v11, v35

    move-object/from16 v21, v6

    :goto_3d5
    move-object/from16 v34, v20

    move-object/from16 v6, v22

    goto/16 :goto_4a9

    .line 832
    :catch_3db
    move-exception v0

    move-object/from16 v33, v6

    move-object/from16 v22, v8

    move-object/from16 v6, v17

    move-object/from16 v32, v20

    :goto_3e4
    move-object v8, v3

    :goto_3e5
    move-object/from16 v3, p8

    move-object/from16 v35, v14

    move-object v14, v11

    move-object/from16 v11, v35

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    :goto_3ec
    :try_start_3ec
    const-string/jumbo v1, "processLicenseValidationResult() failed"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f5
    .catchall {:try_start_3ec .. :try_end_3f5} :catchall_4a0

    .line 838
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .local v0, "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v16, :cond_413

    .line 840
    if-eqz v23, :cond_404

    .line 841
    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    invoke-virtual {v0, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    :cond_404
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    nop

    .line 848
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v1

    .line 847
    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_41b

    .line 852
    :cond_413
    invoke-virtual {v0, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const/16 v1, 0x12d

    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    :goto_41b
    const/16 v1, 0x321

    invoke-virtual {v0, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    if-eqz v23, :cond_42f

    .line 860
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    move-object/from16 v1, p0

    iget-object v6, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_431

    .line 859
    :cond_42f
    move-object/from16 v1, p0

    .line 864
    :goto_431
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    iget-object v6, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 869
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48e

    .line 870
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v6, "UMCintent":Landroid/content/Intent;
    if-eqz v16, :cond_45b

    .line 872
    invoke-virtual {v6, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    nop

    .line 874
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v10

    .line 873
    invoke-virtual {v6, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_463

    .line 878
    :cond_45b
    invoke-virtual {v6, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const/16 v7, 0x12d

    invoke-virtual {v6, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    :goto_463
    invoke-virtual {v6, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 885
    .restart local v7    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_47d

    .line 886
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 887
    .restart local v9    # "extra":Landroid/os/Bundle;
    move-object/from16 v10, v22

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 889
    move-object/from16 v10, v33

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 892
    .end local v9    # "extra":Landroid/os/Bundle;
    :cond_47d
    const/16 v9, 0x321

    invoke-virtual {v6, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    move-object/from16 v9, v32

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v6, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 898
    .end local v6    # "UMCintent":Landroid/content/Intent;
    .end local v7    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_48e
    new-instance v6, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v7, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v6, v2, v7}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    .line 900
    .local v6, "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    invoke-direct {v1, v4, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 903
    invoke-direct {v1, v2, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    .end local v0    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v6    # "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    nop

    .line 909
    :goto_49f
    return v16

    .line 838
    :catchall_4a0
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v6, v22

    move-object/from16 v34, v32

    move-object/from16 v21, v33

    :goto_4a9
    move-object/from16 v17, v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .restart local v0    # "knoxSdkIntent":Landroid/content/Intent;
    if-eqz v16, :cond_4c9

    .line 840
    if-eqz v23, :cond_4ba

    .line 841
    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    invoke-virtual {v0, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    :cond_4ba
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    nop

    .line 848
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v15

    .line 847
    invoke-virtual {v0, v12, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 849
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4d1

    .line 852
    :cond_4c9
    invoke-virtual {v0, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const/16 v15, 0x12d

    invoke-virtual {v0, v12, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    :goto_4d1
    const/16 v15, 0x321

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    if-eqz v23, :cond_4e2

    .line 860
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    iget-object v15, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v15, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 864
    :cond_4e2
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 869
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53d

    .line 870
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v3, "UMCintent":Landroid/content/Intent;
    if-eqz v16, :cond_50c

    .line 872
    invoke-virtual {v3, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    nop

    .line 874
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v10

    .line 873
    invoke-virtual {v3, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_514

    .line 878
    :cond_50c
    invoke-virtual {v3, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const/16 v7, 0x12d

    invoke-virtual {v3, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    :goto_514
    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 885
    .restart local v7    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_52c

    .line 886
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 887
    .restart local v9    # "extra":Landroid/os/Bundle;
    invoke-virtual {v9, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 889
    move-object/from16 v6, v21

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 892
    .end local v9    # "extra":Landroid/os/Bundle;
    :cond_52c
    const/16 v6, 0x321

    invoke-virtual {v3, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    move-object/from16 v6, v34

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    iget-object v6, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 898
    .end local v3    # "UMCintent":Landroid/content/Intent;
    .end local v7    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_53d
    new-instance v3, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v3, v2, v6}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    .line 900
    .local v3, "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    invoke-direct {v1, v4, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    .line 903
    invoke-direct {v1, v2, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    .end local v0    # "knoxSdkIntent":Landroid/content/Intent;
    .end local v3    # "licenseResult":Lcom/samsung/android/knox/license/LicenseResult;
    throw v17
.end method

.method public removeElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V
    .registers 3
    .param p1, "elmKlmObserver"    # Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    .line 2373
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 2374
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2375
    return-void
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .registers 13
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 1908
    const-string/jumbo v0, "pkgName"

    const-string v1, "EnterpriseLicenseService"

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1909
    const/4 v2, 0x0

    .line 1910
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1912
    .local v3, "token":J
    const/4 v5, 0x0

    if-eqz p1, :cond_70

    :try_start_10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_70

    .line 1916
    :cond_1b
    const/4 v6, 0x0

    .line 1918
    .local v6, "pkgName":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1919
    .local v7, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "instanceId"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    move-object v8, v0

    .line 1922
    .local v8, "column":Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE"

    invoke-virtual {v9, v10, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v9

    .line 1924
    .local v9, "result":Landroid/content/ContentValues;
    if-nez v9, :cond_3d

    .line 1925
    const-string/jumbo v0, "resetLicense(): result is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_5d
    .catchall {:try_start_10 .. :try_end_38} :catchall_5b

    .line 1926
    nop

    .line 1945
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1926
    return v5

    .line 1929
    :cond_3d
    :try_start_3d
    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1931
    .end local v6    # "pkgName":Ljava/lang/String;
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_4e

    .line 1932
    const-string/jumbo v6, "resetLicense(): pkgName is null, Record does not exist"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_49} :catch_5d
    .catchall {:try_start_3d .. :try_end_49} :catchall_5b

    .line 1933
    nop

    .line 1945
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1933
    return v5

    .line 1936
    :cond_4e
    :try_start_4e
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v5

    move v2, v5

    .line 1937
    if-eqz v2, :cond_67

    .line 1939
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v0}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5a} :catch_5d
    .catchall {:try_start_4e .. :try_end_5a} :catchall_5b

    goto :goto_67

    .line 1945
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    .end local v8    # "column":Ljava/lang/String;
    .end local v9    # "result":Landroid/content/ContentValues;
    :catchall_5b
    move-exception v0

    goto :goto_6c

    .line 1941
    :catch_5d
    move-exception v0

    .line 1942
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5e
    const-string/jumbo v5, "resetLicense() failed"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_5b

    .line 1945
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_67
    :goto_67
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1946
    nop

    .line 1947
    return v2

    .line 1945
    :goto_6c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1946
    throw v0

    .line 1913
    :cond_70
    :goto_70
    nop

    .line 1945
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1913
    return v5
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1954
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1955
    const/4 v0, 0x0

    .line 1956
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1958
    .local v1, "token":J
    if-eqz p1, :cond_37

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_37

    .line 1962
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 1963
    if-eqz v0, :cond_21

    .line 1965
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_24
    .catchall {:try_start_a .. :try_end_21} :catchall_22

    .line 1970
    :cond_21
    goto :goto_2e

    :catchall_22
    move-exception v3

    goto :goto_33

    .line 1967
    :catch_24
    move-exception v3

    .line 1968
    .local v3, "e":Ljava/lang/Exception;
    :try_start_25
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "resetLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_22

    .line 1970
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1971
    nop

    .line 1972
    return v0

    .line 1970
    :goto_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1971
    throw v3

    .line 1959
    :cond_37
    :goto_37
    const/4 v3, 0x0

    .line 1970
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1959
    return v3
.end method

.method public systemReady()V
    .registers 1

    .line 2171
    return-void
.end method

.method public updateAdminPermissions()V
    .registers 10

    .line 2132
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v1, "pkgName"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    sget v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v2, v3, :cond_6a

    .line 2137
    const/4 v2, 0x1

    :try_start_e
    new-array v2, v2, [Ljava/lang/String;

    .line 2138
    .local v2, "columns":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 2140
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 2143
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_5e

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5e

    .line 2144
    const/4 v4, 0x0

    .line 2145
    .local v4, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 2146
    .local v5, "pkgName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2148
    .local v6, "it":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 2149
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    move-object v4, v7

    .line 2150
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 2152
    if-eqz v5, :cond_2a

    .line 2153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAdminPermissions() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_53} :catch_5f

    .line 2156
    :try_start_53
    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v5}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_5d

    .line 2157
    :catch_59
    move-exception v7

    .line 2158
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_5a
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5f

    .line 2159
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_5d
    goto :goto_2a

    .line 2166
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_5e
    goto :goto_69

    .line 2163
    :catch_5f
    move-exception v1

    .line 2164
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "updateAdminPermissions() failed"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2167
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_69
    return-void

    .line 2133
    :cond_6a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized validateLicenses()V
    .registers 2

    monitor-enter p0

    .line 1660
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->validateLicenses(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1661
    monitor-exit p0

    return-void

    .line 1659
    .end local p0    # "this":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized validateLicenses(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 1670
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_45

    .line 1674
    .local v0, "token":J
    :try_start_8
    const-string v2, "EnterpriseLicenseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "validateLicenses to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    if-eqz p1, :cond_19

    move-object v4, p1

    goto :goto_1b

    :cond_19
    const-string v4, "all packages"

    :goto_1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1674
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.LICENSE_VALIDATION_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1678
    .local v2, "knoxSdkIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v5, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_40

    .line 1683
    .end local v2    # "knoxSdkIntent":Landroid/content/Intent;
    :try_start_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45

    .line 1684
    nop

    .line 1685
    monitor-exit p0

    return-void

    .line 1683
    .end local p0    # "this":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :catchall_40
    move-exception v2

    :try_start_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1684
    throw v2
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    .line 1669
    .end local v0    # "token":J
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method
